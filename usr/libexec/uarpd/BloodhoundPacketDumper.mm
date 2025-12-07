@interface BloodhoundPacketDumper
- (BloodhoundPacketDumper)initWithDumper:(pcap_dumper *)dumper;
- (BloodhoundPacketDumper)initWithFileName:(id)name;
- (void)dealloc;
- (void)dumpPacket:(id)packet type:(unsigned int)type metadata:(void *)metadata metadataLength:(unint64_t)length;
@end

@implementation BloodhoundPacketDumper

- (BloodhoundPacketDumper)initWithFileName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = BloodhoundPacketDumper;
  v5 = [(BloodhoundPacketDumper *)&v12 init];
  if (v5)
  {
    v6 = pcap_open_dead(157, 0x80000);
    v5->_pcap = v6;
    if (!v6 || ([nameCopy stringByExpandingTildeInPath], v7 = objc_claimAutoreleasedReturnValue(), fileName = v5->_fileName, v5->_fileName = v7, fileName, v9 = pcap_dump_open(v5->_pcap, -[NSString UTF8String](v5->_fileName, "UTF8String")), (v5->_dumper = v9) == 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    pcap_dump_flush(v9);
  }

  v10 = v5;
LABEL_7:

  return v10;
}

- (BloodhoundPacketDumper)initWithDumper:(pcap_dumper *)dumper
{
  v5.receiver = self;
  v5.super_class = BloodhoundPacketDumper;
  result = [(BloodhoundPacketDumper *)&v5 init];
  if (result)
  {
    result->_dumper = dumper;
    result->_externalDumper = 1;
  }

  return result;
}

- (void)dealloc
{
  pcap = self->_pcap;
  if (pcap)
  {
    pcap_close(pcap);
  }

  dumper = self->_dumper;
  if (dumper && !self->_externalDumper)
  {
    pcap_dump_close(dumper);
  }

  v5.receiver = self;
  v5.super_class = BloodhoundPacketDumper;
  [(BloodhoundPacketDumper *)&v5 dealloc];
}

- (void)dumpPacket:(id)packet type:(unsigned int)type metadata:(void *)metadata metadataLength:(unint64_t)length
{
  v8 = *&type;
  packetCopy = packet;
  v11 = objc_autoreleasePoolPush();
  v12 = +[NSMutableData data];
  [v12 appendLittleInt32:v8];
  if (metadata)
  {
    [v12 appendBytes:metadata length:length];
  }

  if (packetCopy)
  {
    [v12 appendData:packetCopy];
  }

  memset(&v13, 0, sizeof(v13));
  gettimeofday(&v13.ts, 0);
  v13.caplen = [v12 length];
  v13.len = [v12 length];
  pcap_dump(self->_dumper, &v13, [v12 bytes]);
  pcap_dump_flush(self->_dumper);

  objc_autoreleasePoolPop(v11);
}

@end