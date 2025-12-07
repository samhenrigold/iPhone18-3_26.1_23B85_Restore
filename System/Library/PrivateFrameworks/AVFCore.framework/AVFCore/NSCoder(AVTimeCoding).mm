@interface NSCoder(AVTimeCoding)
- (CMTime)decodeCMTimeForKey:()AVTimeCoding;
- (CMTimeRange)decodeCMTimeRangeForKey:()AVTimeCoding;
- (double)decodeCMTimeMappingForKey:()AVTimeCoding;
- (void)encodeCMTime:()AVTimeCoding forKey:;
- (void)encodeCMTimeMapping:()AVTimeCoding forKey:;
- (void)encodeCMTimeRange:()AVTimeCoding forKey:;
@end

@implementation NSCoder(AVTimeCoding)

- (void)encodeCMTime:()AVTimeCoding forKey:
{
  v6 = *MEMORY[0x1E695E480];
  v8 = *a3;
  v7 = CMTimeCopyAsDictionary(&v8, v6);
  [self encodeObject:v7 forKey:a4];
  if (v7)
  {
    CFRelease(v7);
  }
}

- (CMTime)decodeCMTimeForKey:()AVTimeCoding
{
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [self decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, objc_opt_class(), 0), a3}];

  return CMTimeMakeFromDictionary(a4, v10);
}

- (void)encodeCMTimeRange:()AVTimeCoding forKey:
{
  v6 = *MEMORY[0x1E695E480];
  v7 = a3[1];
  *&v9.start.value = *a3;
  *&v9.start.epoch = v7;
  *&v9.duration.timescale = a3[2];
  v8 = CMTimeRangeCopyAsDictionary(&v9, v6);
  [self encodeObject:v8 forKey:a4];
  if (v8)
  {
    CFRelease(v8);
  }
}

- (CMTimeRange)decodeCMTimeRangeForKey:()AVTimeCoding
{
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [self decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, objc_opt_class(), 0), a3}];

  return CMTimeRangeMakeFromDictionary(a4, v10);
}

- (void)encodeCMTimeMapping:()AVTimeCoding forKey:
{
  v7 = *MEMORY[0x1E695E480];
  v8 = a3[1];
  *&range.start.value = *a3;
  *&range.start.epoch = v8;
  *&range.duration.timescale = a3[2];
  v9 = CMTimeRangeCopyAsDictionary(&range, v7);
  v10 = a3[4];
  *&range.start.value = a3[3];
  *&range.start.epoch = v10;
  *&range.duration.timescale = a3[5];
  v11 = CMTimeRangeCopyAsDictionary(&range, v7);
  v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v9, v11, 0}];
  [self encodeObject:v12 forKey:a4];

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

- (double)decodeCMTimeMappingForKey:()AVTimeCoding
{
  v7 = MEMORY[0x1E6960C98];
  v8 = *MEMORY[0x1E6960C98];
  v9 = *(MEMORY[0x1E6960C98] + 16);
  *a4 = *MEMORY[0x1E6960C98];
  *(a4 + 16) = v9;
  v10 = *(v7 + 32);
  *(a4 + 32) = v10;
  *(a4 + 48) = v8;
  *(a4 + 64) = v9;
  *(a4 + 80) = v10;
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [self decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, v13, v14, objc_opt_class(), 0), a3}];
  if ([v15 count] == 2)
  {
    CMTimeRangeMakeFromDictionary(a4, [v15 objectAtIndex:0]);
    CMTimeRangeMakeFromDictionary(&v18, [v15 objectAtIndex:1]);
    v17 = *&v18.start.epoch;
    *(a4 + 48) = *&v18.start.value;
    *(a4 + 64) = v17;
    result = *&v18.duration.timescale;
    *(a4 + 80) = *&v18.duration.timescale;
  }

  return result;
}

@end