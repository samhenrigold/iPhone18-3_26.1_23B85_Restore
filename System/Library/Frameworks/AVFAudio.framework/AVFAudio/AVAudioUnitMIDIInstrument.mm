@interface AVAudioUnitMIDIInstrument
- (AVAudioUnitMIDIInstrument)initWithAudioComponentDescription:(AudioComponentDescription *)description;
- (void)sendController:(uint8_t)controller withValue:(uint8_t)value onChannel:(uint8_t)channel;
- (void)sendMIDIEvent:(uint8_t)midiStatus data1:(uint8_t)data1;
- (void)sendMIDIEvent:(uint8_t)midiStatus data1:(uint8_t)data1 data2:(uint8_t)data2;
- (void)sendMIDIEventList:(const MIDIEventList *)eventList;
- (void)sendMIDISysExEvent:(NSData *)midiData;
- (void)sendPitchBend:(uint16_t)pitchbend onChannel:(uint8_t)channel;
- (void)sendPressure:(uint8_t)pressure onChannel:(uint8_t)channel;
- (void)sendPressureForKey:(uint8_t)key withValue:(uint8_t)value onChannel:(uint8_t)channel;
- (void)sendProgramChange:(uint8_t)program bankMSB:(uint8_t)bankMSB bankLSB:(uint8_t)bankLSB onChannel:(uint8_t)channel;
- (void)sendProgramChange:(uint8_t)program onChannel:(uint8_t)channel;
- (void)startNote:(uint8_t)note withVelocity:(uint8_t)velocity onChannel:(uint8_t)channel;
- (void)stopNote:(uint8_t)note onChannel:(uint8_t)channel;
@end

@implementation AVAudioUnitMIDIInstrument

- (void)sendMIDIEventList:(const MIDIEventList *)eventList
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = (*(*self->super.super._impl + 40))(self->super.super._impl, a2);
  if (((*(*v4 + 144))(v4, 0, 0, eventList) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v8 = "AVAudioUnitMIDIInstrument.mm";
      v9 = 1024;
      v10 = 78;
      v11 = 2048;
      v12 = eventList;
      v13 = 1024;
      v14 = 0;
      v15 = 1024;
      LODWORD(v16) = 0;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Unable to send midi event list %p, offset = %d, cable = %d\n", buf, 0x28u);
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v8 = "AVAEInternal.h";
      v9 = 1024;
      v10 = 71;
      v11 = 2080;
      v12 = "AVAudioUnitMIDIInstrument.mm";
      v13 = 1024;
      v14 = 170;
      v15 = 2080;
      v16 = "[AVAudioUnitMIDIInstrument sendMIDIEventList:]";
      v17 = 2080;
      v18 = "_IMPL->SendMIDIEventList(eventList, 0, 0)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDIEventList(eventList, 0, 0)"}];
  }
}

- (void)sendMIDISysExEvent:(NSData *)midiData
{
  v21 = *MEMORY[0x1E69E9840];
  impl = self->super.super._impl;
  Length = CFDataGetLength(midiData);
  BytePtr = CFDataGetBytePtr(midiData);
  v7 = (*(*impl + 40))(impl);
  if (((*(*v7 + 136))(v7, 1, 0, 0, Length, BytePtr) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v10 = "AVAEInternal.h";
      v11 = 1024;
      v12 = 71;
      v13 = 2080;
      v14 = "AVAudioUnitMIDIInstrument.mm";
      v15 = 1024;
      v16 = 165;
      v17 = 2080;
      v18 = "[AVAudioUnitMIDIInstrument sendMIDISysExEvent:]";
      v19 = 2080;
      v20 = "_IMPL->SendMIDISysexEvent((CFDataRef)midiData)";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDISysexEvent((CFDataRef)midiData)"}];
  }
}

- (void)sendMIDIEvent:(uint8_t)midiStatus data1:(uint8_t)data1
{
  v17 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(self->super.super._impl, midiStatus, data1, 0, 0) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v6 = "AVAEInternal.h";
      v7 = 1024;
      v8 = 71;
      v9 = 2080;
      v10 = "AVAudioUnitMIDIInstrument.mm";
      v11 = 1024;
      v12 = 160;
      v13 = 2080;
      v14 = "[AVAudioUnitMIDIInstrument sendMIDIEvent:data1:]";
      v15 = 2080;
      v16 = "_IMPL->SendMIDIEvent(midiStatus, data1, 0, 0, 0)";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDIEvent(midiStatus, data1, 0, 0, 0)"}];
  }
}

- (void)sendMIDIEvent:(uint8_t)midiStatus data1:(uint8_t)data1 data2:(uint8_t)data2
{
  v18 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(self->super.super._impl, midiStatus, data1, data2, 0) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v7 = "AVAEInternal.h";
      v8 = 1024;
      v9 = 71;
      v10 = 2080;
      v11 = "AVAudioUnitMIDIInstrument.mm";
      v12 = 1024;
      v13 = 155;
      v14 = 2080;
      v15 = "[AVAudioUnitMIDIInstrument sendMIDIEvent:data1:data2:]";
      v16 = 2080;
      v17 = "_IMPL->SendMIDIEvent(midiStatus, data1, data2, 0, 0)";
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDIEvent(midiStatus, data1, data2, 0, 0)"}];
  }
}

- (void)sendProgramChange:(uint8_t)program bankMSB:(uint8_t)bankMSB bankLSB:(uint8_t)bankLSB onChannel:(uint8_t)channel
{
  v19 = *MEMORY[0x1E69E9840];
  if (((*(*self->super.super._impl + 464))(self->super.super._impl, program, bankMSB, bankLSB, channel) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v8 = "AVAEInternal.h";
      v9 = 1024;
      v10 = 71;
      v11 = 2080;
      v12 = "AVAudioUnitMIDIInstrument.mm";
      v13 = 1024;
      v14 = 150;
      v15 = 2080;
      v16 = "[AVAudioUnitMIDIInstrument sendProgramChange:bankMSB:bankLSB:onChannel:]";
      v17 = 2080;
      v18 = "_IMPL->SendProgramChange(program, bankMSB, bankLSB, channel)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendProgramChange(program, bankMSB, bankLSB, channel)"}];
  }
}

- (void)sendProgramChange:(uint8_t)program onChannel:(uint8_t)channel
{
  v17 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(self->super.super._impl, 192, program, 0, channel) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v6 = "AVAEInternal.h";
      v7 = 1024;
      v8 = 71;
      v9 = 2080;
      v10 = "AVAudioUnitMIDIInstrument.mm";
      v11 = 1024;
      v12 = 144;
      v13 = 2080;
      v14 = "[AVAudioUnitMIDIInstrument sendProgramChange:onChannel:]";
      v15 = 2080;
      v16 = "_IMPL->SendMIDIEvent(kMIDIMessage_PatchChange, program, 0, 0, channel)";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDIEvent(kMIDIMessage_PatchChange, program, 0, 0, channel)"}];
  }
}

- (void)sendPressureForKey:(uint8_t)key withValue:(uint8_t)value onChannel:(uint8_t)channel
{
  v18 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(self->super.super._impl, 160, key, ((value * 127.0) + 0.5), channel) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v7 = "AVAEInternal.h";
      v8 = 1024;
      v9 = 71;
      v10 = 2080;
      v11 = "AVAudioUnitMIDIInstrument.mm";
      v12 = 1024;
      v13 = 138;
      v14 = 2080;
      v15 = "[AVAudioUnitMIDIInstrument sendPressureForKey:withValue:onChannel:]";
      v16 = 2080;
      v17 = "_IMPL->SendMIDIEvent(kMIDIMessage_KeyPressure, key, pressureValue, 0, channel)";
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDIEvent(kMIDIMessage_KeyPressure, key, pressureValue, 0, channel)"}];
  }
}

- (void)sendPressure:(uint8_t)pressure onChannel:(uint8_t)channel
{
  v17 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(self->super.super._impl, 208, pressure, 0, channel) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v6 = "AVAEInternal.h";
      v7 = 1024;
      v8 = 71;
      v9 = 2080;
      v10 = "AVAudioUnitMIDIInstrument.mm";
      v11 = 1024;
      v12 = 132;
      v13 = 2080;
      v14 = "[AVAudioUnitMIDIInstrument sendPressure:onChannel:]";
      v15 = 2080;
      v16 = "_IMPL->SendMIDIEvent(kMIDIMessage_ChannelPressure, pressureValue, 0, 0, channel)";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDIEvent(kMIDIMessage_ChannelPressure, pressureValue, 0, 0, channel)"}];
  }
}

- (void)sendPitchBend:(uint16_t)pitchbend onChannel:(uint8_t)channel
{
  v17 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(self->super.super._impl, 224, pitchbend & 0x7F, (pitchbend >> 7), channel) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v6 = "AVAEInternal.h";
      v7 = 1024;
      v8 = 71;
      v9 = 2080;
      v10 = "AVAudioUnitMIDIInstrument.mm";
      v11 = 1024;
      v12 = 125;
      v13 = 2080;
      v14 = "[AVAudioUnitMIDIInstrument sendPitchBend:onChannel:]";
      v15 = 2080;
      v16 = "_IMPL->SendMIDIEvent(kMIDIMessage_PitchBend, value&0x7F, value>>7, 0, channel)";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDIEvent(kMIDIMessage_PitchBend, value&0x7F, value>>7, 0, channel)"}];
  }
}

- (void)sendController:(uint8_t)controller withValue:(uint8_t)value onChannel:(uint8_t)channel
{
  v18 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(self->super.super._impl, 176, controller, value, channel) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v7 = "AVAEInternal.h";
      v8 = 1024;
      v9 = 71;
      v10 = 2080;
      v11 = "AVAudioUnitMIDIInstrument.mm";
      v12 = 1024;
      v13 = 117;
      v14 = 2080;
      v15 = "[AVAudioUnitMIDIInstrument sendController:withValue:onChannel:]";
      v16 = 2080;
      v17 = "_IMPL->SendMIDIEvent(kMIDIMessage_ControlChange, controller, controllerValue, 0, channel)";
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->SendMIDIEvent(kMIDIMessage_ControlChange, controller, controllerValue, 0, channel)"}];
  }
}

- (void)stopNote:(uint8_t)note onChannel:(uint8_t)channel
{
  v4 = note;
  v19 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(self->super.super._impl, 128, note, 0, channel) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v8 = "AVAudioUnitMIDIInstrument.mm";
      v9 = 1024;
      v10 = 36;
      v11 = 1024;
      LODWORD(v12) = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Unable to stop playing the note %d\n", buf, 0x18u);
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v8 = "AVAEInternal.h";
      v9 = 1024;
      v10 = 71;
      v11 = 2080;
      v12 = "AVAudioUnitMIDIInstrument.mm";
      v13 = 1024;
      v14 = 111;
      v15 = 2080;
      v16 = "[AVAudioUnitMIDIInstrument stopNote:onChannel:]";
      v17 = 2080;
      v18 = "_IMPL->StopNote(note, channel)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->StopNote(note, channel)"}];
  }
}

- (void)startNote:(uint8_t)note withVelocity:(uint8_t)velocity onChannel:(uint8_t)channel
{
  v5 = note;
  v20 = *MEMORY[0x1E69E9840];
  if ((AVAudioUnitMIDIInstrumentImpl::SendMIDIEvent(self->super.super._impl, 144, note, velocity, channel) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v9 = "AVAudioUnitMIDIInstrument.mm";
      v10 = 1024;
      v11 = 27;
      v12 = 1024;
      LODWORD(v13) = v5;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Unable to start playing the note %d\n", buf, 0x18u);
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 71;
      v12 = 2080;
      v13 = "AVAudioUnitMIDIInstrument.mm";
      v14 = 1024;
      v15 = 106;
      v16 = 2080;
      v17 = "[AVAudioUnitMIDIInstrument startNote:withVelocity:onChannel:]";
      v18 = 2080;
      v19 = "_IMPL->StartNote(note, velocity, channel)";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_IMPL->StartNote(note, velocity, channel)"}];
  }
}

- (AVAudioUnitMIDIInstrument)initWithAudioComponentDescription:(AudioComponentDescription *)description
{
  v22 = *MEMORY[0x1E69E9840];
  if ((description->componentFlags & 4) != 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v11 = "AVAEInternal.h";
      v12 = 1024;
      v13 = 71;
      v14 = 2080;
      v15 = "AVAudioUnitMIDIInstrument.mm";
      v16 = 1024;
      v17 = 92;
      v18 = 2080;
      v19 = "[AVAudioUnitMIDIInstrument initWithAudioComponentDescription:]";
      v20 = 2080;
      v21 = "isAUv2";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isAUv2"}];
  }

  componentType = description->componentType;
  if (description->componentType != 1635085673 && componentType != 1635085685 && componentType != 1635086953)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v11 = "AVAEInternal.h";
      v12 = 1024;
      v13 = 71;
      v14 = 2080;
      v15 = "AVAudioUnitMIDIInstrument.mm";
      v16 = 1024;
      v17 = 98;
      v18 = 2080;
      v19 = "[AVAudioUnitMIDIInstrument initWithAudioComponentDescription:]";
      v20 = 2080;
      v21 = "(description.componentType == kAudioUnitType_MusicDevice) || (description.componentType == kAudioUnitType_MIDIProcessor) || (description.componentType == kAudioUnitType_RemoteInstrument)";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "(description.componentType == kAudioUnitType_MusicDevice) || (description.componentType == kAudioUnitType_MIDIProcessor) || (description.componentType == kAudioUnitType_RemoteInstrument)"}];
  }

  operator new();
}

@end