@interface SHSignatureBuffer
- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)duration maximumSignatureDuration:(double)signatureDuration bufferDuration:(double)bufferDuration musicalFeaturesConfiguration:(id)configuration;
- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)duration maximumSignatureDuration:(double)signatureDuration bufferDuration:(double)bufferDuration signatureGenerator:(id)generator;
- (double)currentSignatureDuration;
- (double)duration;
- (id)generateCurrentSignature;
- (void)discardSignatureWithID:(id)d;
- (void)flow:(id)flow time:(id)time;
- (void)reset;
- (void)setShouldGenerateSpectralOutput:(BOOL)output;
@end

@implementation SHSignatureBuffer

- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)duration maximumSignatureDuration:(double)signatureDuration bufferDuration:(double)bufferDuration musicalFeaturesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = SHSignatureBuffer;
  v11 = [(SHSignatureBuffer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_minimumSignatureDuration = duration;
    v11->_maximumSignatureDuration = signatureDuration;
    v11->_bufferMaxSize = bufferDuration;
    v11->_clipStyle = 1;
    [configurationCopy minimumDuration];
    v12->_minimumMusicalFeaturesDuration = v13;
    v14 = [[SHMutableSignature alloc] initWithMaximumSeconds:v12->_clipStyle clipStyle:configurationCopy musicalFeaturesConfiguration:bufferDuration];
    v15 = [[SHSignatureGenerator alloc] initWithMutableSignature:v14];
    signatureGenerator = v12->_signatureGenerator;
    v12->_signatureGenerator = v15;
  }

  return v12;
}

- (SHSignatureBuffer)initWithMinimumSignatureDuration:(double)duration maximumSignatureDuration:(double)signatureDuration bufferDuration:(double)bufferDuration signatureGenerator:(id)generator
{
  generatorCopy = generator;
  musicalFeaturesConfiguration = [generatorCopy musicalFeaturesConfiguration];
  v13 = [(SHSignatureBuffer *)self initWithMinimumSignatureDuration:musicalFeaturesConfiguration maximumSignatureDuration:duration bufferDuration:signatureDuration musicalFeaturesConfiguration:bufferDuration];

  if (v13)
  {
    objc_storeStrong(&v13->_signatureGenerator, generator);
    [(SHSignatureGenerator *)v13->_signatureGenerator updateRingBufferDuration:0 error:bufferDuration];
    v13->_clipStyle = [generatorCopy clipStyle];
  }

  return v13;
}

- (void)discardSignatureWithID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  currentSignature = [(SHSignatureBuffer *)self currentSignature];
  v6 = [currentSignature _ID];
  v7 = [v6 isEqual:dCopy];

  if (v7)
  {
    signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
    [signatureGenerator duration];
    v10 = v9;
    currentSignature2 = [(SHSignatureBuffer *)self currentSignature];
    [currentSignature2 duration];
    v13 = v12;
    [(SHSignatureBuffer *)self signatureOffset];
    v15 = v10 - (v13 + v14);

    signatureGenerator2 = [(SHSignatureBuffer *)self signatureGenerator];
    v28 = 0;
    v17 = [signatureGenerator2 updateRingBufferDuration:&v28 error:v15];
    v18 = v28;

    if (v17)
    {
      signatureGenerator3 = [(SHSignatureBuffer *)self signatureGenerator];
      [(SHSignatureBuffer *)self bufferMaxSize];
      v27 = v18;
      v21 = [signatureGenerator3 updateRingBufferDuration:&v27 error:?];
      v22 = v27;

      if (v21)
      {
        [(SHSignatureBuffer *)self setCurrentSignature:0];
        [(SHSignatureBuffer *)self setSignatureOffset:0.0];
      }

      else
      {
        v25 = sh_log_object(v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [(SHSignatureBuffer *)self bufferMaxSize];
          *buf = 134218242;
          v30 = v26;
          v31 = 2112;
          v32 = v22;
          _os_log_impl(&dword_230F52000, v25, OS_LOG_TYPE_ERROR, "Failed to update ring buffer duration to %f, resetting %@", buf, 0x16u);
        }

        [(SHSignatureBuffer *)self reset];
      }

      v18 = v22;
    }

    else
    {
      v24 = sh_log_object(v19);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v30 = v15;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&dword_230F52000, v24, OS_LOG_TYPE_ERROR, "Failed to update ring buffer duration to %f, resetting %@", buf, 0x16u);
      }

      [(SHSignatureBuffer *)self reset];
    }
  }
}

- (void)reset
{
  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  [signatureGenerator reset];

  [(SHSignatureBuffer *)self setCurrentSignature:0];

  [(SHSignatureBuffer *)self setSignatureOffset:0.0];
}

- (double)duration
{
  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  [signatureGenerator duration];
  v4 = v3;

  return v4;
}

- (double)currentSignatureDuration
{
  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  [signatureGenerator duration];
  v5 = v4;
  [(SHSignatureBuffer *)self signatureOffset];
  v7 = v5 - v6;

  [(SHSignatureBuffer *)self maximumSignatureDuration];
  if (v7 < result)
  {
    return v7;
  }

  return result;
}

- (void)flow:(id)flow time:(id)time
{
  v20 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  timeCopy = time;
  format = [flowCopy format];
  [(SHSignatureBuffer *)self setFormat:format];

  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  v17 = 0;
  v10 = [signatureGenerator appendBuffer:flowCopy atTime:timeCopy error:&v17];
  v11 = v17;

  if ((v10 & 1) == 0)
  {
    v13 = sh_log_object(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_230F52000, v13, OS_LOG_TYPE_ERROR, "Failed to append to signature buffer, resetting %@", buf, 0xCu);
    }

    [(SHSignatureBuffer *)self reset];
    signatureGenerator2 = [(SHSignatureBuffer *)self signatureGenerator];
    v16 = v11;
    [signatureGenerator2 appendBuffer:flowCopy atTime:timeCopy error:&v16];
    v15 = v16;

    v11 = v15;
  }
}

- (id)generateCurrentSignature
{
  v66 = *MEMORY[0x277D85DE8];
  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  signature = [signatureGenerator signature];

  currentSignature = [(SHSignatureBuffer *)self currentSignature];
  if (currentSignature)
  {
    currentSignature2 = [(SHSignatureBuffer *)self currentSignature];
    uUID = [currentSignature2 _ID];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  [(SHSignatureBuffer *)self minimumMusicalFeaturesDuration];
  if (v8 > 0.0 && ([signature musicalFeaturesDuration], v10 = v9, v11 = -[SHSignatureBuffer minimumMusicalFeaturesDuration](self, "minimumMusicalFeaturesDuration"), v10 >= v12))
  {
    v14 = sh_log_object(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      [signature musicalFeaturesDuration];
      v16 = v15;
      [(SHSignatureBuffer *)self minimumMusicalFeaturesDuration];
      *buf = 134218240;
      v63 = v16;
      v64 = 2048;
      v65 = v17;
      _os_log_impl(&dword_230F52000, v14, OS_LOG_TYPE_DEFAULT, "Musical features component (%.2fs) does meet duration threshold (%.2fs)", buf, 0x16u);
    }

    musicalFeaturesData = [signature musicalFeaturesData];
  }

  else
  {
    musicalFeaturesData = 0;
  }

  v18 = [SHSignature alloc];
  spectralPeaksData = [signature spectralPeaksData];
  time = [signature time];
  v61 = 0;
  v21 = [(SHSignature *)v18 initWithID:uUID spectralPeaksData:spectralPeaksData musicalFeaturesData:musicalFeaturesData startTime:time error:&v61];
  v22 = v61;
  [(SHSignatureBuffer *)self setCurrentSignature:v21];

  currentSignature3 = [(SHSignatureBuffer *)self currentSignature];

  if (!currentSignature3)
  {
    [(SHSignatureBuffer *)self reset];
    currentSignature5 = objc_opt_new();
LABEL_19:
    v55 = currentSignature5;
    goto LABEL_20;
  }

  currentSignature4 = [(SHSignatureBuffer *)self currentSignature];
  [currentSignature4 spectralPeaksDuration];
  v26 = v25;
  [(SHSignatureBuffer *)self maximumSignatureDuration];
  if (v26 <= v27)
  {
    [(SHSignatureBuffer *)self signatureOffset];
    v30 = v29;

    if (v30 <= 0.0)
    {
LABEL_18:
      currentSignature5 = [(SHSignatureBuffer *)self currentSignature];
      goto LABEL_19;
    }
  }

  else
  {
  }

  currentSignature6 = [(SHSignatureBuffer *)self currentSignature];
  spectralPeaksData2 = [currentSignature6 spectralPeaksData];
  [(SHSignatureBuffer *)self signatureOffset];
  v34 = v33;
  [(SHSignatureBuffer *)self maximumSignatureDuration];
  v60 = v22;
  v36 = [SigCrop cropSignature:spectralPeaksData2 atPosition:&v60 withDuration:v34 error:v35];
  v37 = v60;

  if (v36)
  {
    v57 = musicalFeaturesData;
    [(SHSignatureBuffer *)self signatureOffset];
    v39 = v38;
    format = [(SHSignatureBuffer *)self format];
    [format sampleRate];
    v42 = uUID;
    v43 = (v39 * v41);

    v44 = objc_alloc(MEMORY[0x277CB8428]);
    time2 = [signature time];
    [time2 sampleRate];
    v47 = (v46 + v43);
    format2 = [(SHSignatureBuffer *)self format];
    [format2 sampleRate];
    v49 = [v44 initWithSampleTime:v47 atRate:?];

    v50 = [SHSignature alloc];
    currentSignature7 = [(SHSignatureBuffer *)self currentSignature];
    musicalFeaturesData2 = [currentSignature7 musicalFeaturesData];
    v58 = v42;
    v59 = v37;
    v53 = [(SHSignature *)v50 initWithID:v42 spectralPeaksData:v36 musicalFeaturesData:musicalFeaturesData2 startTime:v49 error:&v59];
    v22 = v59;

    [(SHSignatureBuffer *)self setCurrentSignature:v53];
    currentSignature8 = [(SHSignatureBuffer *)self currentSignature];

    if (currentSignature8)
    {

      musicalFeaturesData = v57;
      uUID = v58;
      goto LABEL_18;
    }

    [(SHSignatureBuffer *)self reset];
    v55 = objc_opt_new();

    musicalFeaturesData = v57;
    uUID = v58;
  }

  else
  {
    [(SHSignatureBuffer *)self reset];
    v55 = objc_opt_new();
    v22 = v37;
  }

LABEL_20:

  return v55;
}

- (void)setShouldGenerateSpectralOutput:(BOOL)output
{
  outputCopy = output;
  self->_shouldGenerateSpectralOutput = output;
  signatureGenerator = [(SHSignatureBuffer *)self signatureGenerator];
  v5 = signatureGenerator;
  if (outputCopy)
  {
    [signatureGenerator enableSpectralOutput];
  }

  else
  {
    [signatureGenerator disableSpectralOutput];
  }
}

@end