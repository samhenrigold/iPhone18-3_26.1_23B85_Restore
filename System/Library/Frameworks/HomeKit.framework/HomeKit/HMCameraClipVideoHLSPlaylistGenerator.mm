@interface HMCameraClipVideoHLSPlaylistGenerator
+ (id)_hlsPlaylistEncryptionMethodNameForScheme:(unint64_t)scheme;
- (HMCameraClipVideoHLSPlaylistGenerator)initWithClip:(id)clip url:(id)url;
- (NSData)hlsPlaylist;
- (void)addSegment:(id)segment;
- (void)addSegments:(id)segments;
- (void)finish;
@end

@implementation HMCameraClipVideoHLSPlaylistGenerator

- (void)finish
{
  hlsPlaylistString = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
  [hlsPlaylistString appendString:@"#EXT-X-ENDLIST\n"];
}

- (void)addSegments:(id)segments
{
  v14 = *MEMORY[0x1E69E9840];
  segmentsCopy = segments;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [segmentsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(segmentsCopy);
        }

        [(HMCameraClipVideoHLSPlaylistGenerator *)self addSegment:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [segmentsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addSegment:(id)segment
{
  v29 = *MEMORY[0x1E69E9840];
  segmentCopy = segment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = segmentCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    hlsPlaylistString = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
    v8 = [(HMCameraClipVideoHLSPlaylistGenerator *)self url];
    absoluteString = [v8 absoluteString];
    [hlsPlaylistString appendFormat:@"#EXT-X-MAP:URI=%@, ", absoluteString];

    hlsPlaylistString2 = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
    [hlsPlaylistString2 appendFormat:@"BYTERANGE=%llu@%llu\n", objc_msgSend(v6, "byteLength"), objc_msgSend(v6, "byteOffset")];
  }

  else
  {
    v11 = segmentCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    hlsPlaylistString2 = v12;

    if (hlsPlaylistString2)
    {
      hlsPlaylistString3 = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
      [hlsPlaylistString2 duration];
      [hlsPlaylistString3 appendFormat:@"#EXTINF:%.6f, \n", v14];

      hlsPlaylistString4 = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
      [hlsPlaylistString4 appendFormat:@"#EXT-X-BYTERANGE:%llu@%llu\n", objc_msgSend(hlsPlaylistString2, "byteLength"), objc_msgSend(hlsPlaylistString2, "byteOffset")];

      hlsPlaylistString5 = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
      v17 = [(HMCameraClipVideoHLSPlaylistGenerator *)self url];
      absoluteString2 = [v17 absoluteString];
      [hlsPlaylistString5 appendFormat:@"%@\n", absoluteString2];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v24 = v22;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = objc_opt_class();
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unknown segment type: %@ (%@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }
}

- (NSData)hlsPlaylist
{
  hlsPlaylistString = [(HMCameraClipVideoHLSPlaylistGenerator *)self hlsPlaylistString];
  v3 = [hlsPlaylistString dataUsingEncoding:4];

  return v3;
}

- (HMCameraClipVideoHLSPlaylistGenerator)initWithClip:(id)clip url:(id)url
{
  v32 = *MEMORY[0x1E69E9840];
  clipCopy = clip;
  urlCopy = url;
  v27.receiver = self;
  v27.super_class = HMCameraClipVideoHLSPlaylistGenerator;
  v8 = [(HMCameraClipVideoHLSPlaylistGenerator *)&v27 init];
  if (!v8)
  {
    goto LABEL_6;
  }

  string = [MEMORY[0x1E696AD60] string];
  hlsPlaylistString = v8->_hlsPlaylistString;
  v8->_hlsPlaylistString = string;

  objc_storeStrong(&v8->_url, url);
  [(NSMutableString *)v8->_hlsPlaylistString appendString:@"#EXTM3U\n"];
  [(NSMutableString *)v8->_hlsPlaylistString appendFormat:@"#EXT-X-VERSION:%u\n", 7];
  v11 = v8->_hlsPlaylistString;
  [clipCopy targetFragmentDuration];
  [(NSMutableString *)v11 appendFormat:@"#EXT-X-TARGETDURATION:%u\n", v12];
  v13 = v8->_hlsPlaylistString;
  isComplete = [clipCopy isComplete];
  v15 = @"EVENT";
  if (isComplete)
  {
    v15 = @"VOD";
  }

  [(NSMutableString *)v13 appendFormat:@"#EXT-X-PLAYLIST-TYPE:%@\n", v15];
  [(NSMutableString *)v8->_hlsPlaylistString appendString:@"#EXT-X-INDEPENDENT-SEGMENTS\n"];
  v16 = objc_opt_class();
  encryptionContext = [clipCopy encryptionContext];
  v18 = [v16 _hlsPlaylistEncryptionMethodNameForScheme:{objc_msgSend(encryptionContext, "scheme")}];

  if (v18)
  {
    [(NSMutableString *)v8->_hlsPlaylistString appendFormat:@"#EXT-X-KEY:METHOD=%@", v18];
    [(NSMutableString *)v8->_hlsPlaylistString appendFormat:@", URI=%@\n", @"HMCC://encryptionKey"];

LABEL_6:
    v19 = v8;
    goto LABEL_10;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = v8;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    encryptionContext2 = [clipCopy encryptionContext];
    scheme = [encryptionContext2 scheme];
    *buf = 138543618;
    v29 = v23;
    v30 = 2048;
    v31 = scheme;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not determine HLS playlist encryption method name for scheme: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v19 = 0;
LABEL_10:

  return v19;
}

+ (id)_hlsPlaylistEncryptionMethodNameForScheme:(unint64_t)scheme
{
  if (scheme == 1)
  {
    return @"AES-256-GCM";
  }

  else
  {
    return 0;
  }
}

@end