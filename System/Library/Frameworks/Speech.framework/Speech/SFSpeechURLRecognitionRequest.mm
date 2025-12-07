@interface SFSpeechURLRecognitionRequest
- (SFSpeechURLRecognitionRequest)init;
- (SFSpeechURLRecognitionRequest)initWithURL:(NSURL *)URL;
- (id)_startedConnectionWithLanguageCode:(id)code delegate:(id)delegate taskHint:(int64_t)hint requestIdentifier:(id)identifier;
- (id)_startedLocalConnectionWithLanguageCode:(id)code delegate:(id)delegate taskHint:(int64_t)hint requestIdentifier:(id)identifier taskIdentifier:(id)taskIdentifier;
- (void)_handlePreRecordedAudioWithAsset:(void *)asset audioTracks:(char)tracks narrowband:(void *)narrowband addSpeechDataBlock:(void *)block stopSpeechBlock:(void *)speechBlock cancelSpeechWithErrorBlock:;
@end

@implementation SFSpeechURLRecognitionRequest

- (id)_startedLocalConnectionWithLanguageCode:(id)code delegate:(id)delegate taskHint:(int64_t)hint requestIdentifier:(id)identifier taskIdentifier:(id)taskIdentifier
{
  v38[1] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  taskIdentifierCopy = taskIdentifier;
  identifierCopy = identifier;
  codeCopy = code;
  v16 = [[SFLocalSpeechRecognitionClient alloc] initWithDelegate:delegateCopy];
  v17 = MEMORY[0x1E6988168];
  URL = self->_URL;
  v37 = *MEMORY[0x1E6987378];
  v38[0] = MEMORY[0x1E695E118];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v20 = [v17 URLAssetWithURL:URL options:v19];

  v21 = [v20 tracksWithMediaType:*MEMORY[0x1E69875A0]];
  v22 = IsNarrowBand(v21);
  v23 = [(SFSpeechRecognitionRequest *)self _requestParametersWithTaskHint:hint requestIdentifier:identifierCopy taskIdentifier:taskIdentifierCopy narrowband:v22 language:codeCopy];

  v24 = [SFSpeechRecognitionRequest _sandboxExtensionsWithError:?];
  [(SFLocalSpeechRecognitionClient *)v16 initializeWithSandboxExtensions:v24];
  [(SFLocalSpeechRecognitionClient *)v16 startRecordedAudioDictationWithParameters:v23];
  LOBYTE(identifierCopy) = [v23 narrowband];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __124__SFSpeechURLRecognitionRequest__startedLocalConnectionWithLanguageCode_delegate_taskHint_requestIdentifier_taskIdentifier___block_invoke;
  v35[3] = &unk_1E797CA90;
  v36 = v16;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __124__SFSpeechURLRecognitionRequest__startedLocalConnectionWithLanguageCode_delegate_taskHint_requestIdentifier_taskIdentifier___block_invoke_2;
  v33[3] = &unk_1E797CAB8;
  v34 = v36;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __124__SFSpeechURLRecognitionRequest__startedLocalConnectionWithLanguageCode_delegate_taskHint_requestIdentifier_taskIdentifier___block_invoke_3;
  v30[3] = &unk_1E797CAE0;
  v25 = v34;
  v31 = v25;
  v32 = delegateCopy;
  v26 = delegateCopy;
  [(SFSpeechURLRecognitionRequest *)self _handlePreRecordedAudioWithAsset:v20 audioTracks:v21 narrowband:identifierCopy addSpeechDataBlock:v35 stopSpeechBlock:v33 cancelSpeechWithErrorBlock:v30];
  v27 = v32;
  v28 = v25;

  return v25;
}

void __124__SFSpeechURLRecognitionRequest__startedLocalConnectionWithLanguageCode_delegate_taskHint_requestIdentifier_taskIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 cancelSpeech];
  [*(a1 + 40) localSpeechRecognitionClient:*(a1 + 32) speechRecordingDidFail:v4];
}

- (void)_handlePreRecordedAudioWithAsset:(void *)asset audioTracks:(char)tracks narrowband:(void *)narrowband addSpeechDataBlock:(void *)block stopSpeechBlock:(void *)speechBlock cancelSpeechWithErrorBlock:
{
  v13 = a2;
  assetCopy = asset;
  narrowbandCopy = narrowband;
  blockCopy = block;
  speechBlockCopy = speechBlock;
  if (self)
  {
    v18 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __151__SFSpeechURLRecognitionRequest__handlePreRecordedAudioWithAsset_audioTracks_narrowband_addSpeechDataBlock_stopSpeechBlock_cancelSpeechWithErrorBlock___block_invoke;
    block[3] = &unk_1E797CA38;
    v20 = v13;
    tracksCopy = tracks;
    v21 = assetCopy;
    selfCopy = self;
    v23 = narrowbandCopy;
    v24 = blockCopy;
    v25 = speechBlockCopy;
    dispatch_async(v18, block);
  }
}

void __151__SFSpeechURLRecognitionRequest__handlePreRecordedAudioWithAsset_audioTracks_narrowband_addSpeechDataBlock_stopSpeechBlock_cancelSpeechWithErrorBlock___block_invoke(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__2448;
  v12[4] = __Block_byref_object_dispose__2449;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __151__SFSpeechURLRecognitionRequest__handlePreRecordedAudioWithAsset_audioTracks_narrowband_addSpeechDataBlock_stopSpeechBlock_cancelSpeechWithErrorBlock___block_invoke_135;
  v7[3] = &unk_1E797CA10;
  v2 = *(a1 + 32);
  v10 = v12;
  v11 = *(a1 + 80);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v8 = v5;
  v9 = v6;
  if (__151__SFSpeechURLRecognitionRequest__handlePreRecordedAudioWithAsset_audioTracks_narrowband_addSpeechDataBlock_stopSpeechBlock_cancelSpeechWithErrorBlock___block_invoke_135(v7))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }

  _Block_object_dispose(v12, 8);
}

uint64_t __151__SFSpeechURLRecognitionRequest__handlePreRecordedAudioWithAsset_audioTracks_narrowband_addSpeechDataBlock_stopSpeechBlock_cancelSpeechWithErrorBlock___block_invoke_135(uint64_t a1)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v26 = 0;
  v3 = [MEMORY[0x1E6987E78] assetReaderWithAsset:v2 error:&v26];
  v4 = v26;
  v5 = v4;
  if (v3)
  {
    if (*(a1 + 72))
    {
      v6 = 8000;
    }

    else
    {
      v6 = 16000;
    }

    v30[0] = &unk_1F214A1A0;
    v7 = *MEMORY[0x1E6958348];
    v29[0] = *MEMORY[0x1E69582B0];
    v29[1] = v7;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v9 = *MEMORY[0x1E6958300];
    v30[1] = v8;
    v30[2] = &unk_1F214A1B8;
    v10 = *MEMORY[0x1E69582C8];
    v29[2] = v9;
    v29[3] = v10;
    v11 = *MEMORY[0x1E69582D0];
    v30[3] = &unk_1F214A1D0;
    v30[4] = MEMORY[0x1E695E110];
    v12 = *MEMORY[0x1E69582E8];
    v29[4] = v11;
    v29[5] = v12;
    v30[5] = MEMORY[0x1E695E110];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:6];

    v14 = [MEMORY[0x1E6987E80] assetReaderAudioMixOutputWithAudioTracks:*(a1 + 40) audioSettings:v13];
    if (v14)
    {
      if ([v3 canAddOutput:v14])
      {
        [v3 addOutput:v14];
        [v3 startReading];
        v15 = [v14 copyNextSampleBuffer];
        if (v15)
        {
          v16 = v15;
          do
          {
            if (CMSampleBufferGetNumSamples(v16))
            {
              totalLengthOut = 0;
              dataPointerOut = 0;
              DataBuffer = CMSampleBufferGetDataBuffer(v16);
              if (CMBlockBufferGetDataPointer(DataBuffer, 0, 0, &totalLengthOut, &dataPointerOut))
              {
                DataLength = CMBlockBufferGetDataLength(DataBuffer);
                v19 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:DataLength];
                v20 = CMBlockBufferCopyDataBytes(DataBuffer, 0, DataLength, [v19 mutableBytes]);
                if (v20)
                {
                  NSLog(&cfstr_Cmblockbufferc.isa, v20);
                  v21 = 0;
                }

                else
                {
                  v21 = v19;
                }
              }

              else
              {
                v21 = [MEMORY[0x1E695DEF0] dataWithBytes:dataPointerOut length:totalLengthOut];
              }
            }

            else
            {
              v21 = 0;
            }

            CFRelease(v16);
            if (v21)
            {
              (*(*(a1 + 56) + 16))();
            }

            v16 = [v14 copyNextSampleBuffer];
          }

          while (v16);
        }

        v22 = 1;
        goto LABEL_24;
      }

      NSLog(&cfstr_CouldNotAddOut.isa, *(*(a1 + 48) + 104));
    }

    v22 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v23 = *(*(a1 + 64) + 8);
  v24 = v4;
  v22 = 0;
  v13 = *(v23 + 40);
  *(v23 + 40) = v24;
LABEL_25:

  return v22;
}

- (id)_startedConnectionWithLanguageCode:(id)code delegate:(id)delegate taskHint:(int64_t)hint requestIdentifier:(id)identifier
{
  v50[1] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  delegateCopy = delegate;
  v12 = MEMORY[0x1E698D118];
  identifierCopy = identifier;
  v14 = objc_alloc_init(v12);
  v39 = delegateCopy;
  [v14 setDelegate:delegateCopy];
  v15 = [(SFSpeechRecognitionRequest *)self _dictationOptionsWithTaskHint:hint requestIdentifier:identifierCopy];

  [v15 setFieldLabel:@"SFSpeechPreecordedRequest"];
  if (![(__CFString *)codeCopy caseInsensitiveCompare:@"hi-IN-translit"])
  {
    v16 = @"hi-IN";

    [v15 setKeyboardIdentifier:@"Translit"];
    codeCopy = @"hi-IN";
  }

  if (hint == 1002)
  {
    [v15 setOriginalAudioFileURL:self->_URL];
  }

  v17 = MEMORY[0x1E6988168];
  URL = self->_URL;
  v49 = *MEMORY[0x1E6987378];
  v50[0] = MEMORY[0x1E695E118];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v20 = [v17 URLAssetWithURL:URL options:v19];

  v21 = [v20 tracksWithMediaType:*MEMORY[0x1E69875A0]];
  v22 = IsNarrowBand(v21);
  if (+[SFUtilities isSpeechXPCEnabled])
  {
    if (codeCopy)
    {
      v23 = codeCopy;
    }

    else
    {
      v23 = @"none";
    }

    v48[0] = v23;
    v47[0] = @"language";
    v47[1] = @"task";
    v24 = [SFUtilities taskNameFromTaskHint:hint];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = @"none";
    }

    v48[1] = v26;
    v47[2] = @"narrowband";
    [MEMORY[0x1E696AD98] numberWithBool:v22];
    v38 = v20;
    v28 = v27 = self;
    v48[2] = v28;
    v47[3] = @"appname";
    applicationName = [v15 applicationName];
    v30 = applicationName;
    if (applicationName)
    {
      v31 = applicationName;
    }

    else
    {
      v31 = @"none";
    }

    v47[4] = @"ondevice";
    v48[3] = v31;
    v48[4] = MEMORY[0x1E695E110];
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:5];

    self = v27;
    v20 = v38;

    [SFLocalSpeechRecognitionClient logCoreAnalyticsEvent:@"com.apple.speechapi.RequestStarted" withAnalytics:v32];
    objc_storeStrong(&self->super._afDictationRequestParams, v32);
  }

  [v14 startRecordedAudioDictationWithOptions:v15 forLanguage:codeCopy narrowband:v22];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __104__SFSpeechURLRecognitionRequest__startedConnectionWithLanguageCode_delegate_taskHint_requestIdentifier___block_invoke;
  v45[3] = &unk_1E797CA90;
  v46 = v14;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __104__SFSpeechURLRecognitionRequest__startedConnectionWithLanguageCode_delegate_taskHint_requestIdentifier___block_invoke_2;
  v43[3] = &unk_1E797CAB8;
  v44 = v46;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __104__SFSpeechURLRecognitionRequest__startedConnectionWithLanguageCode_delegate_taskHint_requestIdentifier___block_invoke_3;
  v40[3] = &unk_1E797CAE0;
  v33 = v44;
  v41 = v33;
  v42 = v39;
  v34 = v39;
  [(SFSpeechURLRecognitionRequest *)self _handlePreRecordedAudioWithAsset:v20 audioTracks:v21 narrowband:v22 addSpeechDataBlock:v45 stopSpeechBlock:v43 cancelSpeechWithErrorBlock:v40];
  v35 = v42;
  v36 = v33;

  return v33;
}

void __104__SFSpeechURLRecognitionRequest__startedConnectionWithLanguageCode_delegate_taskHint_requestIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 cancelSpeech];
  [*(a1 + 40) dictationConnection:*(a1 + 32) speechRecordingDidFail:v4];
}

- (SFSpeechURLRecognitionRequest)initWithURL:(NSURL *)URL
{
  v4 = URL;
  v9.receiver = self;
  v9.super_class = SFSpeechURLRecognitionRequest;
  v5 = [(SFSpeechRecognitionRequest *)&v9 init];
  if (v5)
  {
    v6 = [(NSURL *)v4 copy];
    v7 = v5->_URL;
    v5->_URL = v6;
  }

  return v5;
}

- (SFSpeechURLRecognitionRequest)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Use -[SFSpeechURLRecognitionRequest initWithURL:]"];

  return 0;
}

@end