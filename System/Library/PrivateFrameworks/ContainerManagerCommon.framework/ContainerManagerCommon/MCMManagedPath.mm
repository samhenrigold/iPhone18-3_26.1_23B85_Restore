@interface MCMManagedPath
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToManagedPath:(id)path;
- (MCMManagedPath)initWithURL:(id)l flags:(unint64_t)flags ACLConfig:(unint64_t)config mode:(unsigned __int16)mode dpClass:(int)class owner:(id)owner parent:(id)parent;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)managedPathByAppendingPathComponent:(id)component flags:(unint64_t)flags ACLConfig:(unint64_t)config mode:(unsigned __int16)mode dpClass:(int)class owner:(id)owner;
- (unint64_t)hash;
- (void)setFsNode:(id)node;
@end

@implementation MCMManagedPath

- (void)setFsNode:(id)node
{
  p_fsNode = &self->_fsNode;

  objc_storeStrong(p_fsNode, node);
}

- (NSString)description
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__MCMManagedPath_description__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __29__MCMManagedPath_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v33 = NSStringFromClass(v5);
  v6 = *(a1 + 32);
  v7 = [v6 flags];
  v32 = [*(a1 + 32) ACLConfig];
  v31 = [*(a1 + 32) mode];
  v8 = [*(a1 + 32) dpClass];
  v9 = [*(a1 + 32) owner];
  v10 = v9;
  v11 = v9;
  if (v2)
  {
    v11 = [v9 redactedDescription];
  }

  v12 = [*(a1 + 32) parent];
  v13 = [*(a1 + 32) fsNode];
  v14 = v13;
  if (v2)
  {
    v15 = [v13 redactedDescription];
    v16 = [*(a1 + 32) url];
    [v16 path];
    v30 = v10;
    v18 = v17 = v4;
    v19 = [v18 redactedDescription];
    v20 = v7;
    v21 = v19;
    v29 = v19;
    v27 = v6;
    v22 = v33;
    v23 = v17;
    v10 = v30;
    v24 = [v23 stringWithFormat:@"<%@: %p flags = 0x%lx, ACLConfig = 0x%lx, mode = 0%o, dpClass = %d, owner = %@, parent = %p, fsNode = %@, url = [%@]>", v33, v27, v20, v32, v31, v8, v11, v12, v15, v29];;

    v25 = v14;
    v14 = v12;
    v12 = v11;
  }

  else
  {
    v25 = [*(a1 + 32) url];
    v15 = [v25 path];
    v28 = v6;
    v22 = v33;
    v24 = [v4 stringWithFormat:@"<%@: %p flags = 0x%lx, ACLConfig = 0x%lx, mode = 0%o, dpClass = %d, owner = %@, parent = %p, fsNode = %@, url = [%@]>", v33, v28, v7, v32, v31, v8, v11, v12, v14, v15];;
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSURL *)self->_url copyWithZone:zone];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    *(v5 + 24) = self->_flags;
    *(v5 + 32) = self->_ACLConfig;
    *(v5 + 8) = self->_mode;
    *(v5 + 12) = self->_dpClass;
    v8 = [(MCMPOSIXUser *)self->_owner copyWithZone:zone];
    v9 = *(v5 + 40);
    *(v5 + 40) = v8;

    objc_storeStrong((v5 + 48), self->_parent);
    v10 = [(MCMFSNode *)self->_fsNode copyWithZone:zone];
    v11 = *(v5 + 56);
    *(v5 + 56) = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MCMManagedPath *)self isEqualToManagedPath:equalCopy];
    }
  }

  return v5;
}

- (BOOL)isEqualToManagedPath:(id)path
{
  url = self->_url;
  v4 = *(path + 2);

  return [(NSURL *)url isEqual:v4];
}

- (unint64_t)hash
{
  url = self->_url;

  return [(NSURL *)url hash];
}

- (id)managedPathByAppendingPathComponent:(id)component flags:(unint64_t)flags ACLConfig:(unint64_t)config mode:(unsigned __int16)mode dpClass:(int)class owner:(id)owner
{
  v8 = *&class;
  modeCopy = mode;
  ownerCopy = owner;
  componentCopy = component;
  v16 = [(MCMManagedPath *)self url];
  v17 = [v16 URLByAppendingPathComponent:componentCopy isDirectory:1];

  v18 = [objc_alloc(objc_opt_class()) initWithURL:v17 flags:flags ACLConfig:config mode:modeCopy dpClass:v8 owner:ownerCopy parent:self];

  return v18;
}

- (MCMManagedPath)initWithURL:(id)l flags:(unint64_t)flags ACLConfig:(unint64_t)config mode:(unsigned __int16)mode dpClass:(int)class owner:(id)owner parent:(id)parent
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  ownerCopy = owner;
  parentCopy = parent;
  v23.receiver = self;
  v23.super_class = MCMManagedPath;
  v18 = [(MCMManagedPath *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_url, l);
    v19->_flags = flags;
    v19->_ACLConfig = config;
    v19->_mode = mode;
    v19->_dpClass = class;
    objc_storeStrong(&v19->_owner, owner);
    objc_storeStrong(&v19->_parent, parent);
    fsNode = v19->_fsNode;
    v19->_fsNode = 0;
  }

  return v19;
}

@end