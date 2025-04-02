import 'dart:convert';

import 'package:dart_openai/dart_openai.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/entity/drawing_param.dart';
import '../../domain/repository/draw_repo.dart';

/*class DrawRepoImpl extends DrawRepo {
  DrawRepoImpl() {
    OpenAI.apiKey =
        "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";
  }

  @override
  Future<Either<Failure, String>> submit(DrawingParams params) async {
    try {
      // Read image and encode as base64
      final imageBytes = await params.image.readAsBytes();
      final base64Image = base64Encode(imageBytes);

      // Send the image using OpenAI's vision-supported model
      final response = await OpenAI.instance.chat.create(
        model: 'gpt-4o', // Ensure a vision-supported model
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            role: OpenAIChatMessageRole.system,
            content: [
              OpenAIChatCompletionChoiceMessageContentItemModel.text(
                  'You are an AI that analyzes children’s drawings. Given an image and a number, compare the drawn number to the expected number and return only the similarity percentage (0-100) in numeric form.'),
            ],
          ),
          OpenAIChatCompletionChoiceMessageModel(
            role: OpenAIChatMessageRole.user,
            content: [
              OpenAIChatCompletionChoiceMessageContentItemModel.text(
                  "Here is a drawing. The expected number is: ${params.number}. Analyze it and provide a similarity percentage (0-100)."),
              OpenAIChatCompletionChoiceMessageContentItemModel.text(
                'data:image/png;base64,$base64Image',
              ),
            ],
          ),
        ],
        temperature: 0.7,
        maxTokens: 5, // Adjusted to limit the response length
      );
      final responseText =
          (response.choices.first.message.content?.first.text ?? '').trim();
      return Right(responseText);
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
*/