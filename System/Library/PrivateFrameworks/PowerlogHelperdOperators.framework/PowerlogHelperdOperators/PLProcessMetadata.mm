@interface PLProcessMetadata
- (PLProcessMetadata)initWithPid:(int)pid;
- (id)description;
@end

@implementation PLProcessMetadata

- (PLProcessMetadata)initWithPid:(int)pid
{
  v3 = *&pid;
  v11.receiver = self;
  v11.super_class = PLProcessMetadata;
  v4 = [(PLProcessMetadata *)&v11 init];
  v5 = v4;
  if (v4)
  {
    [(PLProcessMetadata *)v4 setPid:v3];
    v6 = [PLUtilities bundleIDFromPid:v3];
    [(PLProcessMetadata *)v5 setBundleId:v6];

    v7 = [PLUtilities fullProcessNameForPid:v3];
    [(PLProcessMetadata *)v5 setName:v7];

    [(PLProcessMetadata *)v5 setCoalitionID:[PLUtilities coalitionIDForPid:v3]];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [(PLProcessMetadata *)v5 setLastActiveStart:distantPast];

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    [(PLProcessMetadata *)v5 setLastSuspendStart:distantFuture];

    [(PLProcessMetadata *)v5 setApplicationState:0];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(PLProcessMetadata *)self name];
  v5 = [(PLProcessMetadata *)self pid];
  bundleId = [(PLProcessMetadata *)self bundleId];
  v7 = [v3 stringWithFormat:@"%@ (%d) bundle=%@ cid=<%llu>", name, v5, bundleId, -[PLProcessMetadata coalitionID](self, "coalitionID")];

  return v7;
}

@end