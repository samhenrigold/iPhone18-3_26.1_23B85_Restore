@interface NRGIconCatalog
- (NRGIconCatalog)init;
- (NRGIconCatalog)initWithURL:(id)l readonly:(BOOL)readonly;
- (id)readIcon;
- (void)readIcons:(id)icons;
- (void)remove;
- (void)writeIcon:(id)icon;
@end

@implementation NRGIconCatalog

- (NRGIconCatalog)init
{
  v3 = +[NSFileManager defaultManager];
  temporaryDirectory = [v3 temporaryDirectory];

  v5 = +[NSUUID UUID];
  v6 = [NSString stringWithFormat:@"%@.nrg", v5];

  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/%@", [temporaryDirectory fileSystemRepresentation], v6);
  v8 = [NSURL fileURLWithPath:v7];
  v9 = [(NRGIconCatalog *)self initWithURL:v8 readonly:0];

  return v9;
}

- (NRGIconCatalog)initWithURL:(id)l readonly:(BOOL)readonly
{
  readonlyCopy = readonly;
  lCopy = l;
  v20.receiver = self;
  v20.super_class = NRGIconCatalog;
  v8 = [(NRGIconCatalog *)&v20 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_13;
  }

  objc_storeStrong(&v8->_url, l);
  v10 = [NSString stringWithCString:[(NSURL *)v9->_url fileSystemRepresentation] encoding:4];
  path = v9->_path;
  v9->_path = v10;

  v9->_readonly = readonlyCopy;
  url = v9->_url;
  if (readonlyCopy)
  {
    v13 = [NSInputStream inputStreamWithURL:url];
    if (v13)
    {
      objc_storeStrong(&v9->_stream, v13);
      v14 = [[PBMessageStreamReader alloc] initWithStream:v13];
      v15 = 16;
LABEL_7:
      v16 = *(&v9->super.isa + v15);
      *(&v9->super.isa + v15) = v14;
    }
  }

  else
  {
    v13 = [NSOutputStream outputStreamWithURL:url append:0];
    if (v13)
    {
      objc_storeStrong(&v9->_stream, v13);
      v14 = [[PBMessageStreamWriter alloc] initWithOutputStream:v13];
      v15 = 24;
      goto LABEL_7;
    }
  }

  stream = v9->_stream;
  if (!stream)
  {
    v18 = nrg_daemon_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100010D1C(&v9->_path, readonlyCopy, v18);
    }

    stream = v9->_stream;
  }

  [(NSStream *)stream open];
LABEL_13:

  return v9;
}

- (void)writeIcon:(id)icon
{
  iconCopy = icon;
  v5 = objc_alloc_init(NRGPBDataHeader);
  iconData = [iconCopy iconData];
  checksumData = [iconData checksumData];
  [(NRGPBDataHeader *)v5 setChecksumData:checksumData];

  if (![(PBMessageStreamWriter *)self->_pbWriter writeMessage:v5]|| ([(PBMessageStreamWriter *)self->_pbWriter writeMessage:iconCopy]& 1) == 0)
  {
    v8 = nrg_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100010DB0(iconCopy, self, v8);
    }
  }
}

- (id)readIcon
{
  [(PBMessageStreamReader *)self->_pbReader setClassOfNextMessage:objc_opt_class()];
  nextMessage = [(PBMessageStreamReader *)self->_pbReader nextMessage];
  if (nextMessage)
  {
    [(PBMessageStreamReader *)self->_pbReader setClassOfNextMessage:objc_opt_class()];
    nextMessage2 = [(PBMessageStreamReader *)self->_pbReader nextMessage];
    iconData = [nextMessage2 iconData];
    checksumData = [nextMessage checksumData];
    v7 = [iconData matchesChecksumData:checksumData];

    if (v7)
    {
      goto LABEL_7;
    }

    v8 = nrg_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100010E2C(v8);
    }
  }

  nextMessage2 = 0;
LABEL_7:

  return nextMessage2;
}

- (void)readIcons:(id)icons
{
  iconsCopy = icons;
  readIcon = [(NRGIconCatalog *)self readIcon];
  if (readIcon)
  {
    v5 = readIcon;
    do
    {
      v6 = objc_autoreleasePoolPush();
      if (iconsCopy)
      {
        iconsCopy[2]();
      }

      objc_autoreleasePoolPop(v6);
      readIcon2 = [(NRGIconCatalog *)self readIcon];

      v5 = readIcon2;
    }

    while (readIcon2);
  }
}

- (void)remove
{
  [(NRGIconCatalog *)self close];
  v3 = +[NSFileManager defaultManager];
  path = self->_path;
  p_path = &self->_path;
  v8 = 0;
  [v3 removeItemAtPath:path error:&v8];
  v6 = v8;

  if (v6)
  {
    v7 = nrg_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100010E70(p_path, v6, v7);
    }
  }
}

@end