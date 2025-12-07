@interface MRUpdateContentItemArtworkMessage
- (MRPlayerPath)playerPath;
- (MRUpdateContentItemArtworkMessage)initWithContentItems:(id)items forPlayerPath:(id)path encoding:(int64_t)encoding;
- (NSArray)contentItems;
@end

@implementation MRUpdateContentItemArtworkMessage

- (MRUpdateContentItemArtworkMessage)initWithContentItems:(id)items forPlayerPath:(id)path encoding:(int64_t)encoding
{
  v27 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  pathCopy = path;
  v25.receiver = self;
  v25.super_class = MRUpdateContentItemArtworkMessage;
  v10 = [(MRProtocolMessage *)&v25 init];
  if (v10)
  {
    v11 = objc_alloc_init(_MRUpdateContentItemArtworkMessageProtobuf);
    skeleton = [pathCopy skeleton];
    protobuf = [skeleton protobuf];
    [(_MRUpdateContentItemArtworkMessageProtobuf *)v11 setPlayerPath:protobuf];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = itemsCopy;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v21 + 1) + 8 * v18) protobufWithEncoding:{encoding, v21}];
          [(_MRUpdateContentItemArtworkMessageProtobuf *)v11 addContentItems:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v16);
    }

    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v11];
  }

  return v10;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  playerPath = [underlyingCodableMessage playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:playerPath];

  return v6;
}

- (NSArray)contentItems
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  contentItems = [underlyingCodableMessage contentItems];
  v4 = [contentItems mr_map:&__block_literal_global_114];

  return v4;
}

MRContentItem *__49__MRUpdateContentItemArtworkMessage_contentItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRContentItem alloc] initWithProtobuf:v2];

  return v3;
}

@end