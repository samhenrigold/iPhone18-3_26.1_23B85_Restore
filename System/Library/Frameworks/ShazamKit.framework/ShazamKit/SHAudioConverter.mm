@interface SHAudioConverter
- (SHAudioConverter)audioConverterWithInputFormat:(id)format outputFormat:(id)outputFormat;
- (id)supportedPCMBufferFromBuffer:(id)buffer error:(id *)error;
@end

@implementation SHAudioConverter

- (id)supportedPCMBufferFromBuffer:(id)buffer error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  format = [bufferCopy format];
  channelCount = [format channelCount];

  if (channelCount >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = channelCount;
  }

  v11 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:v10 channels:1 interleaved:48000.0];
  if ([bufferCopy frameLength])
  {
    frameLength = [bufferCopy frameLength];
    format2 = [bufferCopy format];
    [format2 sampleRate];
    LODWORD(v4) = vcvtad_u64_f64(48000.0 / v14 * frameLength);

    v15 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v11 frameCapacity:v4];
    format3 = [bufferCopy format];
    v17 = [(SHAudioConverter *)self audioConverterWithInputFormat:format3 outputFormat:v11];

    v18 = MEMORY[0x277CCACA8];
    format4 = [bufferCopy format];
    v20 = [v18 stringWithFormat:@"Failed to convert input buffer with format %@ to standard format %@", objc_msgSend(format4, "formatDescription"), objc_msgSend(v11, "formatDescription")];

    if (v15)
    {
      v21 = v17 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v33 = *MEMORY[0x277CCA450];
      v34[0] = v20;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      [SHError annotateClientError:error code:100 underlyingError:0 keyOverrides:v22];
      v23 = 0;
    }

    else
    {
      v30 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __55__SHAudioConverter_supportedPCMBufferFromBuffer_error___block_invoke;
      v28[3] = &unk_2788F8190;
      v29 = bufferCopy;
      v24 = [v17 convertToBuffer:v15 error:&v30 withInputFromBlock:v28];
      v25 = v30;
      v22 = v25;
      if (v24 == 3)
      {
        v31 = *MEMORY[0x277CCA450];
        v32 = v20;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        [SHError annotateClientError:error code:100 underlyingError:v22 keyOverrides:v26];

        v23 = 0;
      }

      else
      {
        v23 = v15;
      }
    }
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v11 frameCapacity:0];
  }

  return v23;
}

- (SHAudioConverter)audioConverterWithInputFormat:(id)format outputFormat:(id)outputFormat
{
  formatCopy = format;
  outputFormatCopy = outputFormat;
  converter = [(SHAudioConverter *)self converter];
  inputFormat = [converter inputFormat];
  if (([formatCopy isEqual:inputFormat] & 1) == 0)
  {

    goto LABEL_5;
  }

  converter2 = [(SHAudioConverter *)self converter];
  outputFormat = [converter2 outputFormat];
  v12 = [outputFormatCopy isEqual:outputFormat];

  if ((v12 & 1) == 0)
  {
LABEL_5:
    v13 = [objc_alloc(MEMORY[0x277CB8380]) initFromFormat:formatCopy toFormat:outputFormatCopy];
    [(SHAudioConverter *)self setConverter:v13];
  }

  converter3 = [(SHAudioConverter *)self converter];

  return converter3;
}

@end