@interface VCPProtoFilesystemMovieHumanActionClassificationResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (unsigned)identifierAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoFilesystemMovieHumanActionClassificationResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v28[16] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
  v19 = [v4 objectForKeyedSubscript:@"humanActions"];

  memset(&v27, 0, sizeof(v27));
  CMTimeRangeMakeFromDictionary(&v27, dictionaryCopy);
  start = v27.start;
  duration = v27.duration;
  if ((v27.start.flags & 1) == 0)
  {
    goto LABEL_2;
  }

  v5 = 0;
  if ((v27.duration.flags & 1) != 0 && !v27.duration.epoch && (v27.duration.value & 0x8000000000000000) == 0)
  {
    if (![v19 count])
    {
LABEL_2:
      v5 = 0;
      goto LABEL_17;
    }

    v5 = objc_alloc_init(VCPProtoFilesystemMovieHumanActionClassificationResult);
    v24 = start;
    Seconds = CMTimeGetSeconds(&v24);
    *&Seconds = Seconds;
    [(VCPProtoFilesystemMovieHumanActionClassificationResult *)v5 setStart:Seconds];
    v24 = duration;
    v7 = CMTimeGetSeconds(&v24);
    *&v7 = v7;
    [(VCPProtoFilesystemMovieHumanActionClassificationResult *)v5 setDuration:v7];
    v8 = [v19 count];
    MEMORY[0x1EEE9AC00](v8);
    v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [v19 allKeys];
    v12 = [allKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v12)
    {
      v18 = &v18;
      LODWORD(v13) = 0;
      v14 = *v21;
      do
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = (v16 + 1);
          *&v10[4 * v16++] = [*(*(&v20 + 1) + 8 * v15++) longLongValue];
        }

        while (v12 != v15);
        v12 = [allKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    [(VCPProtoFilesystemMovieHumanActionClassificationResult *)v5 setIdentifiers:v10 count:v13];
  }

LABEL_17:

  return v5;
}

- (id)exportToLegacyDictionary
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[VCPProtoFilesystemMovieHumanActionClassificationResult identifiersCount](self, "identifiersCount")}];
  for (i = 0; i < [(VCPProtoFilesystemMovieHumanActionClassificationResult *)self identifiersCount]; ++i)
  {
    v5 = [(VCPProtoFilesystemMovieHumanActionClassificationResult *)self identifierAtIndex:i];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    stringValue = [v6 stringValue];
    [v3 setObject:&unk_1F49BB078 forKey:stringValue];
  }

  memset(&v17, 0, sizeof(v17));
  objc_msgSend_start(self);
  CMTimeMakeWithSeconds(&v17, v8, 600);
  memset(&v16, 0, sizeof(v16));
  objc_msgSend_duration(self);
  CMTimeMakeWithSeconds(&v16, v9, 600);
  memset(&v15, 0, sizeof(v15));
  start.start = v17;
  v14 = v16;
  CMTimeRangeMake(&v15, &start.start, &v14);
  start = v15;
  v10 = CMTimeRangeCopyAsDictionary(&start, 0);
  v11 = [(__CFDictionary *)v10 mutableCopy];

  v19 = @"humanActions";
  v20[0] = v3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v11 setObject:v12 forKeyedSubscript:@"attributes"];

  return v11;
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = VCPProtoFilesystemMovieHumanActionClassificationResult;
  [(VCPProtoFilesystemMovieHumanActionClassificationResult *)&v3 dealloc];
}

- (unsigned)identifierAtIndex:(unint64_t)index
{
  p_identifiers = &self->_identifiers;
  count = self->_identifiers.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_identifiers->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoFilesystemMovieHumanActionClassificationResult;
  v4 = [(VCPProtoFilesystemMovieHumanActionClassificationResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoFilesystemMovieHumanActionClassificationResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_start;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v5 forKey:@"start"];

  *&v6 = self->_duration;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [dictionary setObject:v7 forKey:@"duration"];

  v8 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v8 forKey:@"identifier"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  p_identifiers = &self->_identifiers;
  if (p_identifiers->count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v5;
    }

    while (v5 < p_identifiers->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[9] = LODWORD(self->_start);
  v8 = toCopy;
  toCopy[8] = LODWORD(self->_duration);
  if ([(VCPProtoFilesystemMovieHumanActionClassificationResult *)self identifiersCount])
  {
    [v8 clearIdentifiers];
    identifiersCount = [(VCPProtoFilesystemMovieHumanActionClassificationResult *)self identifiersCount];
    if (identifiersCount)
    {
      v6 = identifiersCount;
      for (i = 0; i != v6; ++i)
      {
        [v8 addIdentifier:{-[VCPProtoFilesystemMovieHumanActionClassificationResult identifierAtIndex:](self, "identifierAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v4[9] = self->_start;
  v4[8] = self->_duration;
  PBRepeatedUInt32Copy();
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_start == equalCopy[9] && self->_duration == equalCopy[8])
  {
    IsEqual = PBRepeatedUInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  start = self->_start;
  if (start < 0.0)
  {
    start = -start;
  }

  *v3.i32 = floorf(start + 0.5);
  v6 = (start - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8 = vbslq_s8(v7, v4, v3);
  v9 = 2654435761u * *v8.i32;
  v10 = v9 + v6;
  if (v6 <= 0.0)
  {
    v10 = 2654435761u * *v8.i32;
  }

  v11 = v9 - fabsf(v6);
  if (v6 >= 0.0)
  {
    v11 = v10;
  }

  duration = self->_duration;
  if (duration < 0.0)
  {
    duration = -duration;
  }

  *v2.i32 = floorf(duration + 0.5);
  v13 = (duration - *v2.i32) * 1.8447e19;
  *v8.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v2.i32[0] = vbslq_s8(v7, v8, v2).i32[0];
  v14 = 2654435761u * *v2.i32;
  v15 = v14 + v13;
  if (v13 <= 0.0)
  {
    v15 = 2654435761u * *v2.i32;
  }

  v16 = v14 - fabsf(v13);
  if (v13 >= 0.0)
  {
    v16 = v15;
  }

  return v16 ^ v11 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_start = fromCopy[9];
  self->_duration = fromCopy[8];
  v8 = fromCopy;
  identifiersCount = [fromCopy identifiersCount];
  if (identifiersCount)
  {
    v6 = identifiersCount;
    for (i = 0; i != v6; ++i)
    {
      -[VCPProtoFilesystemMovieHumanActionClassificationResult addIdentifier:](self, "addIdentifier:", [v8 identifierAtIndex:i]);
    }
  }
}

@end