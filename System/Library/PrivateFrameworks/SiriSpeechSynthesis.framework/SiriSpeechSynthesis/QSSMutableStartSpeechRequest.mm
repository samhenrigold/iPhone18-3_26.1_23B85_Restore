@interface QSSMutableStartSpeechRequest
- (BOOL)disable_auto_punctuation;
- (BOOL)enable_endpoint_candidate;
- (BOOL)enable_hybrid_endpoint;
- (BOOL)enable_server_side_endpoint;
- (BOOL)enable_utterance_detection;
- (BOOL)is_far_field;
- (BOOL)keyboard_dictation;
- (BOOL)store_audio;
- (BOOL)stream_results;
- (BOOL)stream_unstable_results;
- (BOOL)tandem_mode;
- (QSSMutableStartSpeechRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)start_audio_bookmark;
- (int)udm_port;
- (int64_t)codec;
- (int64_t)end_point_mode;
- (int64_t)speech_request_source;
- (unint64_t)start_endpointing_at;
- (unint64_t)start_recognition_at;
- (unsigned)initial_recognition_candidate_id;
- (void)setApplication_name:(id)application_name;
- (void)setClient_endpointer_model_version:(id)client_endpointer_model_version;
- (void)setCodec:(int64_t)codec;
- (void)setDevice_os:(id)device_os;
- (void)setDevice_type:(id)device_type;
- (void)setDisable_auto_punctuation:(BOOL)disable_auto_punctuation;
- (void)setEnable_endpoint_candidate:(BOOL)enable_endpoint_candidate;
- (void)setEnable_hybrid_endpoint:(BOOL)enable_hybrid_endpoint;
- (void)setEnable_server_side_endpoint:(BOOL)enable_server_side_endpoint;
- (void)setEnable_utterance_detection:(BOOL)enable_utterance_detection;
- (void)setEnd_point_mode:(int64_t)end_point_mode;
- (void)setExperiment_id:(id)experiment_id;
- (void)setFork_id:(id)fork_id;
- (void)setInitial_recognition_candidate_id:(unsigned int)initial_recognition_candidate_id;
- (void)setInput_origin:(id)input_origin;
- (void)setIs_far_field:(BOOL)is_far_field;
- (void)setKeyboard_dictation:(BOOL)keyboard_dictation;
- (void)setKeyboard_identifier:(id)keyboard_identifier;
- (void)setLanguage:(id)language;
- (void)setMetadata:(id)metadata;
- (void)setMic_type:(id)mic_type;
- (void)setRequest_locale:(id)request_locale;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setSpeech_request_source:(int64_t)speech_request_source;
- (void)setStart_audio_bookmark:(int)start_audio_bookmark;
- (void)setStart_endpointing_at:(unint64_t)start_endpointing_at;
- (void)setStart_recognition_at:(unint64_t)start_recognition_at;
- (void)setStore_audio:(BOOL)store_audio;
- (void)setStream_results:(BOOL)stream_results;
- (void)setStream_unstable_results:(BOOL)stream_unstable_results;
- (void)setTandem_mode:(BOOL)tandem_mode;
- (void)setTask_name:(id)task_name;
- (void)setUdm_host:(id)udm_host;
- (void)setUdm_port:(int)udm_port;
@end

@implementation QSSMutableStartSpeechRequest

- (void)setMetadata:(id)metadata
{
  v4 = [metadata copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setApplication_name:(id)application_name
{
  v4 = [application_name copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setFork_id:(id)fork_id
{
  v4 = [fork_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_request_source:(int64_t)speech_request_source
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:speech_request_source];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)speech_request_source
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"speech_request_source"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setExperiment_id:(id)experiment_id
{
  v4 = [experiment_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setKeyboard_dictation:(BOOL)keyboard_dictation
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:keyboard_dictation];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)keyboard_dictation
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"keyboard_dictation"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setDisable_auto_punctuation:(BOOL)disable_auto_punctuation
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:disable_auto_punctuation];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)disable_auto_punctuation
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_auto_punctuation"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setInitial_recognition_candidate_id:(unsigned int)initial_recognition_candidate_id
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:initial_recognition_candidate_id];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)initial_recognition_candidate_id
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"initial_recognition_candidate_id"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setInput_origin:(id)input_origin
{
  v4 = [input_origin copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setKeyboard_identifier:(id)keyboard_identifier
{
  v4 = [keyboard_identifier copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setClient_endpointer_model_version:(id)client_endpointer_model_version
{
  v4 = [client_endpointer_model_version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setEnable_hybrid_endpoint:(BOOL)enable_hybrid_endpoint
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:enable_hybrid_endpoint];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)enable_hybrid_endpoint
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_hybrid_endpoint"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setStart_endpointing_at:(unint64_t)start_endpointing_at
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:start_endpointing_at];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)start_endpointing_at
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_endpointing_at"];
  unsignedLongValue = [v2 unsignedLongValue];

  return unsignedLongValue;
}

- (void)setStart_recognition_at:(unint64_t)start_recognition_at
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:start_recognition_at];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)start_recognition_at
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_recognition_at"];
  unsignedLongValue = [v2 unsignedLongValue];

  return unsignedLongValue;
}

- (void)setEnable_endpoint_candidate:(BOOL)enable_endpoint_candidate
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:enable_endpoint_candidate];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)enable_endpoint_candidate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_endpoint_candidate"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setEnable_utterance_detection:(BOOL)enable_utterance_detection
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:enable_utterance_detection];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)enable_utterance_detection
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_utterance_detection"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIs_far_field:(BOOL)is_far_field
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:is_far_field];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)is_far_field
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"is_far_field"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setStart_audio_bookmark:(int)start_audio_bookmark
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&start_audio_bookmark];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)start_audio_bookmark
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_audio_bookmark"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setEnd_point_mode:(int64_t)end_point_mode
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:end_point_mode];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)end_point_mode
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"end_point_mode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setRequest_locale:(id)request_locale
{
  v4 = [request_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setStream_unstable_results:(BOOL)stream_unstable_results
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:stream_unstable_results];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)stream_unstable_results
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"stream_unstable_results"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setStore_audio:(BOOL)store_audio
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:store_audio];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)store_audio
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"store_audio"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setTandem_mode:(BOOL)tandem_mode
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:tandem_mode];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)tandem_mode
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"tandem_mode"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setUdm_port:(int)udm_port
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&udm_port];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)udm_port
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"udm_port"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setUdm_host:(id)udm_host
{
  v4 = [udm_host copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMic_type:(id)mic_type
{
  v4 = [mic_type copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDevice_os:(id)device_os
{
  v4 = [device_os copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDevice_type:(id)device_type
{
  v4 = [device_type copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setEnable_server_side_endpoint:(BOOL)enable_server_side_endpoint
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:enable_server_side_endpoint];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)enable_server_side_endpoint
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_server_side_endpoint"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setStream_results:(BOOL)stream_results
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:stream_results];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)stream_results
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"stream_results"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setCodec:(int64_t)codec
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:codec];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)codec
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"codec"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setTask_name:(id)task_name
{
  v4 = [task_name copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableStartSpeechRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableStartSpeechRequest;
  v2 = [(QSSMutableStartSpeechRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end