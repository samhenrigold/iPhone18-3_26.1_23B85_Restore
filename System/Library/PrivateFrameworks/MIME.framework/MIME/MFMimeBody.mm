@interface MFMimeBody
+ (id)copyNewMimeBoundary;
+ (id)versionString;
- (BOOL)hasEncryptedDescendantPart;
- (BOOL)isHTML;
- (BOOL)isRich;
- (MFMimeBody)init;
- (NSString)mimeSubtype;
- (NSString)mimeType;
- (id)attachmentURLs;
- (id)attachments;
- (id)contentToOffset:(unint64_t)offset resultOffset:(unint64_t *)resultOffset asHTML:(BOOL)l isComplete:(BOOL *)complete;
- (id)partWithNumber:(id)number;
- (id)preferredBodyPart;
- (id)textHtmlPart;
- (int64_t)numberOfAlternatives;
- (int64_t)preferredAlternative;
- (unsigned)numberOfAttachmentsSigned:(BOOL *)signed encrypted:(BOOL *)encrypted;
- (void)hasEncryptedDescendantPart;
- (void)setPreferredAlternative:(int64_t)alternative;
- (void)setTopLevelPart:(id)part;
@end

@implementation MFMimeBody

uint64_t ___ef_log_MFMimeBody_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MFMimeBody");
  _ef_log_MFMimeBody_log = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)versionString
{
  if (versionString_onceToken != -1)
  {
    +[MFMimeBody versionString];
  }

  v3 = versionString_mime_version;

  return v3;
}

void __27__MFMimeBody_versionString__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"1.0 (%@)", @"1.0"];
  v2 = versionString_mime_version;
  versionString_mime_version = v1;

  objc_autoreleasePoolPop(v0);
}

+ (id)copyNewMimeBoundary
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithFormat:@"Apple-Mail-%@", uUIDString];

  return v5;
}

- (MFMimeBody)init
{
  v3.receiver = self;
  v3.super_class = MFMimeBody;
  result = [(MFMimeBody *)&v3 init];
  if (result)
  {
    *(result + 16) = -1;
  }

  return result;
}

- (void)setTopLevelPart:(id)part
{
  partCopy = part;
  if (self->_topLevelPart != partCopy)
  {
    v6 = partCopy;
    objc_storeStrong(&self->_topLevelPart, part);
    partCopy = v6;
    *(self + 17) = -1;
  }
}

- (NSString)mimeType
{
  preferredBodyPart = [(MFMimeBody *)self preferredBodyPart];
  type = [preferredBodyPart type];

  return type;
}

- (NSString)mimeSubtype
{
  preferredBodyPart = [(MFMimeBody *)self preferredBodyPart];
  subtype = [preferredBodyPart subtype];

  return subtype;
}

- (id)partWithNumber:(id)number
{
  numberCopy = number;
  topLevelPart = [(MFMimeBody *)self topLevelPart];
  v6 = [topLevelPart childPartWithNumber:numberCopy];

  return v6;
}

- (BOOL)hasEncryptedDescendantPart
{
  v49 = *MEMORY[0x1E69E9840];
  encryptedDescendantState = self->_encryptedDescendantState;
  if (!encryptedDescendantState)
  {
    selfCopy = self;
    v32 = selfCopy;
    topLevelPart = [(MFMimeBody *)selfCopy topLevelPart];
    [topLevelPart decodeIfNecessary];
    if ([topLevelPart isMultipartSigned])
    {
      subparts = [topLevelPart subparts];
      v7 = [subparts count];
      if (v7 != 2)
      {
        v8 = _ef_log_MFMimeBody(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          -[MFMimeBody hasEncryptedDescendantPart].cold.1(buf, [subparts count], v8);
        }

LABEL_39:
        goto LABEL_40;
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v8 = subparts;
      v9 = [v8 countByEnumeratingWithState:&v37 objects:v48 count:16];
      if (v9)
      {
        v10 = 0;
        v11 = *v38;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v38 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v37 + 1) + 8 * i);
            if (([v13 isDetatchedSignature] & 1) == 0)
            {
              buf[0] = 0;
              v14 = [v13 decryptedMessageBodyIsEncrypted:buf isSigned:0];
              if (buf[0] == 1)
              {
                v15 = v13;

                [v15 decodeIfNecessary];
                v14 = [v15 decryptedMessageBodyIsEncrypted:0 isSigned:0];
                ++v10;
              }

              else
              {
                v15 = topLevelPart;
              }

              if (v10 >= 2)
              {
                v30 = _ef_log_MFMimeBody(v14);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  [(MFMimeBody *)v30 hasEncryptedDescendantPart];
                }

                topLevelPart = v15;
                goto LABEL_39;
              }

              topLevelPart = v15;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v37 objects:v48 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v16 = [topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = selfCopy;
      }

      v19 = v18;

      topLevelPart2 = [v19 topLevelPart];

      topLevelPart = topLevelPart2;
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    *buf = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __computeHasEncryptedDescendant_block_invoke;
    v45 = &unk_1E84551E8;
    v46 = topLevelPart;
    v47 = &v33;
    v21 = v46;
    v22 = buf;
    v41 = 0;
    v23 = v21;
    v24 = v23;
    if (v23)
    {
      v25 = v23;
      while (1)
      {
        v44(v22, v25, &v41);
        if (v41)
        {
          break;
        }

        firstChildPart = [v25 firstChildPart];
        if (!firstChildPart)
        {
          while (1)
          {
            firstChildPart = [v25 nextSiblingPart];
            if (firstChildPart)
            {
              break;
            }

            parentPart = [v25 parentPart];

            v25 = parentPart;
            if (!parentPart)
            {
              goto LABEL_30;
            }
          }
        }

        v28 = v25;
        v25 = firstChildPart;
      }

LABEL_30:
    }

    v29 = *(v34 + 24);
    _Block_object_dispose(&v33, 8);

    if ((v29 & 1) == 0)
    {
      encryptedDescendantState = 2;
LABEL_41:
      self->_encryptedDescendantState = encryptedDescendantState;
      return encryptedDescendantState == 1;
    }

LABEL_40:
    encryptedDescendantState = 1;
    goto LABEL_41;
  }

  return encryptedDescendantState == 1;
}

- (unsigned)numberOfAttachmentsSigned:(BOOL *)signed encrypted:(BOOL *)encrypted
{
  v10 = 0;
  topLevelPart = [(MFMimeBody *)self topLevelPart];
  v7 = topLevelPart;
  if (topLevelPart)
  {
    [topLevelPart decodeIfNecessary];
    [v7 getNumberOfAttachments:&v10 isSigned:signed isEncrypted:encrypted];
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)attachments
{
  topLevelPart = [(MFMimeBody *)self topLevelPart];
  [topLevelPart decodeIfNecessary];
  attachments = [topLevelPart attachments];

  return attachments;
}

- (id)attachmentURLs
{
  topLevelPart = [(MFMimeBody *)self topLevelPart];
  [topLevelPart decodeIfNecessary];
  attachmentURLs = [topLevelPart attachmentURLs];

  return attachmentURLs;
}

- (BOOL)isHTML
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isHTML = [v3 isHTML];
  }

  else
  {
    preferredBodyPart = [(MFMimeBody *)self preferredBodyPart];
    isHTML = [preferredBodyPart isHTML];
  }

  return isHTML;
}

- (BOOL)isRich
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isRich = [v3 isRich];
  }

  else
  {
    startPart = [(MFMimePart *)self->_topLevelPart startPart];
    isRich = [startPart isRich];
  }

  return isRich;
}

- (id)contentToOffset:(unint64_t)offset resultOffset:(unint64_t *)resultOffset asHTML:(BOOL)l isComplete:(BOOL *)complete
{
  lCopy = l;
  startPart = [(MFMimePart *)self->_topLevelPart startPart];
  v12 = [startPart contentToOffset:offset resultOffset:resultOffset downloadIfNecessary:1 asHTML:lCopy isComplete:complete];

  if (!v12)
  {
    numberOfAlternatives = [(MFMimeBody *)self numberOfAlternatives];
    preferredAlternative = [(MFMimeBody *)self preferredAlternative];
    if (numberOfAlternatives >= 1 && preferredAlternative)
    {
      if (preferredAlternative == -1)
      {
        preferredAlternative = [(MFMimeBody *)self numberOfAlternatives]- 1;
      }

      [(MFMimeBody *)self setPreferredAlternative:preferredAlternative - 1];
      v15 = [(MFMimeBody *)self contentToOffset:offset resultOffset:resultOffset asHTML:lCopy isComplete:complete];
      goto LABEL_9;
    }

    rawData = [(MFMessageBody *)self rawData];
    v17 = [rawData length];

    if (v17)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInt:4294967254];
LABEL_9:
      v12 = v15;
      goto LABEL_10;
    }

    v12 = 0;
  }

LABEL_10:

  return v12;
}

- (int64_t)numberOfAlternatives
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    numberOfAlternatives = [v3 numberOfAlternatives];
  }

  else
  {
    v5 = *(self + 17);
    if (v5 < 0)
    {
      topLevelPart = self->_topLevelPart;
      if (topLevelPart)
      {
        startPart = [(MFMimePart *)topLevelPart startPart];
        *(self + 17) = [startPart numberOfAlternatives];

        LOWORD(v5) = *(self + 17);
      }
    }

    numberOfAlternatives = v5;
  }

  return numberOfAlternatives;
}

- (void)setPreferredAlternative:(int64_t)alternative
{
  v5 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 setPreferredAlternative:alternative];
  }

  else if ([(MFMimeBody *)self numberOfAlternatives]>= 2)
  {
    *(self + 16) = alternative;
  }
}

- (int64_t)preferredAlternative
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    preferredAlternative = *(self + 16);
    if (preferredAlternative != -1)
    {
      goto LABEL_20;
    }

    message = [(MFMessageBody *)self message];
    topLevelPart = [(MFMimeBody *)self topLevelPart];
    v7 = [message defaultAlternativeInPart:topLevelPart];

    if (v7)
    {
      subparts = [(MFMimePart *)self->_topLevelPart subparts];
      v9 = [subparts count];
      if (v9)
      {
        v10 = 1;
        do
        {
          preferredAlternative = v10 - 1;
          v11 = [subparts objectAtIndex:v10 - 1];
          if (v11 != v7)
          {
            preferredAlternative = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        while (preferredAlternative == 0x7FFFFFFFFFFFFFFFLL && v10++ < v9);

        if (preferredAlternative != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    preferredAlternative = -1;
LABEL_19:

    goto LABEL_20;
  }

  preferredAlternative = [v3 preferredAlternative];
LABEL_20:

  return preferredAlternative;
}

- (id)preferredBodyPart
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    preferredBodyPart = [v3 preferredBodyPart];
  }

  else
  {
    startPart = [(MFMimePart *)self->_topLevelPart startPart];
    preferredBodyPart = [startPart alternativeAtIndex:{-[MFMimeBody preferredAlternative](self, "preferredAlternative")}];
  }

  return preferredBodyPart;
}

- (id)textHtmlPart
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 || ([(MFMimePart *)self->_topLevelPart decodeIfNecessary], [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0], (v3 = objc_claimAutoreleasedReturnValue()) != 0)) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    textHtmlPart = [v3 textHtmlPart];
  }

  else
  {
    preferredBodyPart = [(MFMimeBody *)self preferredBodyPart];
    textHtmlPart = [preferredBodyPart textHtmlPart];
  }

  return textHtmlPart;
}

- (void)hasEncryptedDescendantPart
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_1D36B2000, log, OS_LOG_TYPE_ERROR, "Error: Multipart Signed should have exactly 2 direct children, here the count is %lu", buf, 0xCu);
}

@end