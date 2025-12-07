@interface FPDMoveAtom
+ (id)atomForMoving:(id)moving toTargetFolder:(id)folder as:(id)as root:(id)root atomically:(BOOL)atomically sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption useDiskWriter:(BOOL)self0;
+ (id)atomForPostFolderUnderRoot:(id)root atomically:(BOOL)atomically useDiskWriter:(BOOL)writer;
- (BOOL)shouldAccountForDownloadOfSourceItemForMoveInfo:(id)info extensionManager:(id)manager;
- (FPDMoveAtom)initWithKind:(unsigned __int8)kind source:(id)source targetName:(id)name targetFolder:(id)folder root:(id)root atomically:(BOOL)atomically sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)self0 useDiskWriter:(BOOL)self1;
- (id)description;
@end

@implementation FPDMoveAtom

- (FPDMoveAtom)initWithKind:(unsigned __int8)kind source:(id)source targetName:(id)name targetFolder:(id)folder root:(id)root atomically:(BOOL)atomically sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)self0 useDiskWriter:(BOOL)self1
{
  sourceCopy = source;
  nameCopy = name;
  folderCopy = folder;
  rootCopy = root;
  v27.receiver = self;
  v27.super_class = FPDMoveAtom;
  v22 = [(FPDMoveAtom *)&v27 init];
  v23 = v22;
  if (v22)
  {
    v22->_kind = kind;
    objc_storeStrong(&v22->_source, source);
    v24 = [nameCopy fp_filenameFromDisplayNameWithExtension:0];
    targetName = v23->_targetName;
    v23->_targetName = v24;

    objc_storeStrong(&v23->_targetFolder, folder);
    objc_storeStrong(&v23->_root, root);
    v23->_useAtomicMove = atomically;
    v23->_useDiskWriter = writer;
    v23->_materializeOption = option;
    v23->_targetMaterializeOption = materializeOption;
  }

  return v23;
}

+ (id)atomForMoving:(id)moving toTargetFolder:(id)folder as:(id)as root:(id)root atomically:(BOOL)atomically sourceMaterializeOption:(unint64_t)option targetMaterializeOption:(unint64_t)materializeOption useDiskWriter:(BOOL)self0
{
  atomicallyCopy = atomically;
  rootCopy = root;
  asCopy = as;
  folderCopy = folder;
  movingCopy = moving;
  isFolder = [movingCopy isFolder];
  v20 = [FPDMoveAtom alloc];
  LOBYTE(v24) = writer;
  if (isFolder)
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  v22 = [(FPDMoveAtom *)v20 initWithKind:v21 source:movingCopy targetName:asCopy targetFolder:folderCopy root:rootCopy atomically:atomicallyCopy sourceMaterializeOption:option targetMaterializeOption:materializeOption useDiskWriter:v24];

  return v22;
}

+ (id)atomForPostFolderUnderRoot:(id)root atomically:(BOOL)atomically useDiskWriter:(BOOL)writer
{
  atomicallyCopy = atomically;
  rootCopy = root;
  LOBYTE(v10) = writer;
  v8 = [[FPDMoveAtom alloc] initWithKind:1 source:0 targetName:0 targetFolder:0 root:rootCopy atomically:atomicallyCopy sourceMaterializeOption:0 targetMaterializeOption:0 useDiskWriter:v10];

  return v8;
}

- (BOOL)shouldAccountForDownloadOfSourceItemForMoveInfo:(id)info extensionManager:(id)manager
{
  infoCopy = info;
  managerCopy = manager;
  if ([(FPDMoveAtom *)self kind]== 2)
  {
    source = [(FPDMoveAtom *)self source];
    targetFolder = [infoCopy targetFolder];
    v10 = [source materializeOptionForDestinationItem:targetFolder recursively:0 isCopy:objc_msgSend(infoCopy extensionManager:{"byCopy"), managerCopy}];

    v11 = v10 == 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  if (self->_kind == 2)
  {
    v4 = @"<item-atom %@ -> %@ as %@; useDiskWriter %@>";
    goto LABEL_5;
  }

  if (!self->_kind)
  {
    v4 = @"<folder-atom %@ -> %@ as %@; useDiskWriter %@>";
LABEL_5:
    if (self->_useDiskWriter)
    {
      v5 = @"yes";
    }

    else
    {
      v5 = @"no";
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v4, self->_source, self->_targetFolder, self->_targetName, v5, v2];

    return v6;
  }

  v6 = @"<post-folder-atom>";

  return v6;
}

@end