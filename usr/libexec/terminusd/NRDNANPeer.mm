@interface NRDNANPeer
- (NRDNANPeer)init;
- (id)description;
@end

@implementation NRDNANPeer

- (id)description
{
  v3 = [NSString alloc];
  if (self->_isInitiator)
  {
    v4 = "I";
  }

  else
  {
    v4 = "R";
  }

  peerInstanceID = self->_peerInstanceID;
  identifier = self->_identifier;
  hostname = [(NWAddressEndpoint *)self->_peerEndpoint hostname];
  v8 = [v3 initWithFormat:@"NRDNANPeer[%u, %s, id %u, %@]", identifier, v4, peerInstanceID, hostname];

  return v8;
}

- (NRDNANPeer)init
{
  v10.receiver = self;
  v10.super_class = NRDNANPeer;
  result = [(NRDNANPeer *)&v10 init];
  if (!result)
  {
    v3 = sub_10014A248();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = sub_10014A248();
      _NRLogWithArgs(v5, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDNANPeer init]"", 141);
    }

    v6 = _os_log_pack_size();
    v7 = __error();
    v8 = _os_log_pack_fill(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, *v7, &_mh_execute_header, "%{public}s [super init] failed");
    *v8 = 136446210;
    *(v8 + 4) = "[NRDNANPeer init]";
    sub_10014A248();
    _NRLogAbortWithPack();
  }

  result->_identifier = ++dword_100229390;
  return result;
}

@end