@interface UARPPacketDumper
- (UARPPacketDumper)initWithFileName:(id)name;
- (void)dump:(id)dump accessoryID:(id)d uarpStatus:(unsigned int)status direction:(unint64_t)direction;
- (void)dump:(id)dump uuid:(id)uuid uarpStatus:(unsigned int)status direction:(unint64_t)direction;
@end

@implementation UARPPacketDumper

- (UARPPacketDumper)initWithFileName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = UARPPacketDumper;
  v5 = [(UARPPacketDumper *)&v10 init];
  if (v5 && (v6 = [[BloodhoundPacketDumper alloc] initWithFileName:nameCopy], bloodhoundDumper = v5->_bloodhoundDumper, v5->_bloodhoundDumper = v6, bloodhoundDumper, !v5->_bloodhoundDumper))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)dump:(id)dump accessoryID:(id)d uarpStatus:(unsigned int)status direction:(unint64_t)direction
{
  v7 = *&status;
  dumpCopy = dump;
  uuid = [d uuid];
  [(UARPPacketDumper *)self dump:dumpCopy uuid:uuid uarpStatus:v7 direction:direction];
}

- (void)dump:(id)dump uuid:(id)uuid uarpStatus:(unsigned int)status direction:(unint64_t)direction
{
  directionCopy = direction;
  v13 = *MEMORY[0x277D85DE8];
  memset(&v12[3], 0, 15);
  dumpCopy = dump;
  [uuid getUUIDBytes:{v12, 23}];
  *&v12[8] = status;
  LOBYTE(v12[10]) = directionCopy;
  [(BloodhoundPacketDumper *)self->_bloodhoundDumper dumpPacket:dumpCopy type:3 metadata:&v11 metadataLength:23];
}

@end