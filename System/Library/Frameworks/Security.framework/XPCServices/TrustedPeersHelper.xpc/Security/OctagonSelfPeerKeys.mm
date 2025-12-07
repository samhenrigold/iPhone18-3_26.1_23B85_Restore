@interface OctagonSelfPeerKeys
- (_TtC18TrustedPeersHelper19OctagonSelfPeerKeys)init;
- (void)setEncryptionKey:(id)key;
- (void)setPeerID:(id)d;
- (void)setPublicEncryptionKey:(id)key;
- (void)setPublicSigningKey:(id)key;
- (void)setSigningKey:(id)key;
@end

@implementation OctagonSelfPeerKeys

- (void)setEncryptionKey:(id)key
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey) = key;
  keyCopy = key;
}

- (void)setSigningKey:(id)key
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey) = key;
  keyCopy = key;
}

- (void)setPeerID:(id)d
{
  v4 = sub_100216974();
  v12 = (self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID);
  v13 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID + 8);
  *v12 = v4;
  v12[1] = v5;

  v13, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24;
}

- (void)setPublicEncryptionKey:(id)key
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicEncryptionKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicEncryptionKey) = key;
  keyCopy = key;
}

- (void)setPublicSigningKey:(id)key
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicSigningKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicSigningKey) = key;
  keyCopy = key;
}

- (_TtC18TrustedPeersHelper19OctagonSelfPeerKeys)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end