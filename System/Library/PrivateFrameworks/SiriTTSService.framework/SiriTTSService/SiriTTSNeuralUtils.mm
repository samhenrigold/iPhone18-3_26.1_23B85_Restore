@interface SiriTTSNeuralUtils
+ (BOOL)compileANEModel:(id)model error:(id *)error;
+ (BOOL)hasCompactNeuralFallback:(id)fallback;
+ (BOOL)isANEModelCompiled:(id)compiled;
+ (BOOL)isNeuralVoiceReady:(id)ready;
+ (BOOL)shouldUseNeuralVoice:(id)voice;
+ (float)currentSampleRate:(id)rate;
@end

@implementation SiriTTSNeuralUtils

+ (BOOL)compileANEModel:(id)model error:(id *)error
{
  modelCopy = model;
  uTF8String = [modelCopy UTF8String];
  NeuralTTSUtils::compile_ane_model(uTF8String, v6);

  return 1;
}

+ (BOOL)isANEModelCompiled:(id)compiled
{
  compiledCopy = compiled;
  uTF8String = [compiledCopy UTF8String];
  is_ane_model_compiled = NeuralTTSUtils::is_ane_model_compiled(uTF8String, v5);

  return is_ane_model_compiled;
}

+ (float)currentSampleRate:(id)rate
{
  rateCopy = rate;
  uTF8String = [rateCopy UTF8String];
  NeuralTTSUtils::current_model_sample_rate(uTF8String, v5);
  v7 = v6;

  return v7;
}

+ (BOOL)shouldUseNeuralVoice:(id)voice
{
  voiceCopy = voice;
  uTF8String = [voiceCopy UTF8String];
  should_use_neural_voice = NeuralTTSUtils::should_use_neural_voice(uTF8String, v5);

  return should_use_neural_voice;
}

+ (BOOL)hasCompactNeuralFallback:(id)fallback
{
  fallbackCopy = fallback;
  uTF8String = [fallbackCopy UTF8String];
  has_compact_neural_fallback = NeuralTTSUtils::has_compact_neural_fallback(uTF8String, v5);

  return has_compact_neural_fallback;
}

+ (BOOL)isNeuralVoiceReady:(id)ready
{
  readyCopy = ready;
  uTF8String = [readyCopy UTF8String];
  is_neural_voice_ready = NeuralTTSUtils::is_neural_voice_ready(uTF8String, v5);

  return is_neural_voice_ready;
}

@end