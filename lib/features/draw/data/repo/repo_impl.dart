import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '/core/errors/failure.dart';
import '../../domain/entity/drawing_param.dart';
import '../../domain/repository/draw_repo.dart';

class DrawRepoImpl extends DrawRepo {
  DrawRepoImpl();

  @override
  Future<Either<Failure, String>> submit(DrawingParams params) async {
    try {
      final imageBytes = await params.image.readAsBytes();
      final base64Image = base64Encode(imageBytes);

      final response = await http.post(
        Uri.parse('https://api.openai.com/v1/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'Bearer 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',
        },
        body: json.encode({
          'model': 'gpt-4o',
          'messages': [
            {
              'role': 'system',
              'content':
                  'You are a helpful assistant that identifies numbers in image and you should compare it with actual number, only return the number(percentage), no other words allowed only percentage!'
            },
            {
              'role': 'user',
              "content": [
                {
                  "type": "text",
                  "text":
                      "What is the number in the image? how much it is like an actual number(${params.number})?, percents should be from 0 to 100"
                },
                {
                  "type": "image_url",
                  "image_url": {"url": 'data:image/jpeg;base64,$base64Image'}
                }
              ]
            }
          ],
          'max_tokens': 100
        }),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final String? numberString =
            responseData['choices']?[0]['message']?['content'];

        if (numberString != null && numberString.isNotEmpty) {
          return Right(numberString.trim());
        } else {
          return Left(ServerFailure(errorMessage: "Invalid response format"));
        }
      } else {
        return Left(
            ServerFailure(errorMessage: "API error: ${response.statusCode}"));
      }
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
