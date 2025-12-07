@interface __NSFileSecurity
+ (id)__new:(_filesec *)__new;
- (BOOL)clearProperties:(unint64_t)properties;
- (BOOL)copyAccessControlList:(_acl *)list;
- (BOOL)getGroup:(unsigned int *)group;
- (BOOL)getGroupUUID:(unsigned __int8 *)(a3;
- (BOOL)getMode:(unsigned __int16 *)mode;
- (BOOL)getOwner:(unsigned int *)owner;
- (BOOL)getOwnerUUID:(unsigned __int8 *)(a3;
- (BOOL)isEqual:(id)equal;
- (BOOL)setAccessControlList:(_acl *)list;
- (BOOL)setGroup:(unsigned int)group;
- (BOOL)setMode:(unsigned __int16)mode;
- (BOOL)setOwner:(unsigned int)owner;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation __NSFileSecurity

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  filesec = self->_filesec;
  if (filesec)
  {
    filesec_free(filesec);
  }

  v4.receiver = self;
  v4.super_class = __NSFileSecurity;
  [(__NSFileSecurity *)&v4 dealloc];
}

+ (id)__new:(_filesec *)__new
{
  result = __CFAllocateObject(self, 0);
  *(result + 1) = __new;
  return result;
}

- (BOOL)getOwner:(unsigned int *)owner
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  property = filesec_get_property(self->_filesec, FILESEC_OWNER, &v6);
  if (!property)
  {
    *owner = v6;
  }

  return property == 0;
}

- (BOOL)setOwner:(unsigned int)owner
{
  v5 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  return filesec_set_property(self->_filesec, FILESEC_OWNER, &ownerCopy) == 0;
}

- (BOOL)getGroup:(unsigned int *)group
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  property = filesec_get_property(self->_filesec, FILESEC_GROUP, &v6);
  if (!property)
  {
    *group = v6;
  }

  return property == 0;
}

- (BOOL)setGroup:(unsigned int)group
{
  v5 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  return filesec_set_property(self->_filesec, FILESEC_GROUP, &groupCopy) == 0;
}

- (BOOL)getMode:(unsigned __int16 *)mode
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  property = filesec_get_property(self->_filesec, FILESEC_MODE, &v6);
  if (!property)
  {
    *mode = v6;
  }

  return property == 0;
}

- (BOOL)setMode:(unsigned __int16)mode
{
  v5 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  return filesec_set_property(self->_filesec, FILESEC_MODE, &modeCopy) == 0;
}

- (BOOL)getOwnerUUID:(unsigned __int8 *)(a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0uLL;
  property = filesec_get_property(self->_filesec, FILESEC_UUID, &v6);
  if (!property)
  {
    *a3 = v6;
  }

  return property == 0;
}

- (BOOL)getGroupUUID:(unsigned __int8 *)(a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0uLL;
  property = filesec_get_property(self->_filesec, FILESEC_GRPUUID, &v6);
  if (!property)
  {
    *a3 = v6;
  }

  return property == 0;
}

- (BOOL)copyAccessControlList:(_acl *)list
{
  acl[1] = *MEMORY[0x1E69E9840];
  acl[0] = 0;
  property = filesec_get_property(self->_filesec, FILESEC_ACL, acl);
  if (!property)
  {
    v5 = acl_dup(acl[0]);
    *list = v5;
    if (v5)
    {
      acl_free(acl[0]);
    }

    else
    {
      *list = acl[0];
    }
  }

  return property == 0;
}

- (BOOL)setAccessControlList:(_acl *)list
{
  v7[1] = *MEMORY[0x1E69E9840];
  filesec = self->_filesec;
  v7[0] = list;
  v4 = v7;
  if (!list)
  {
    v4 = 0;
  }

  if (list == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return filesec_set_property(filesec, FILESEC_ACL, v5) == 0;
}

- (BOOL)clearProperties:(unint64_t)properties
{
  propertiesCopy = properties;
  if (properties)
  {
    v5 = filesec_unset_property(self->_filesec, FILESEC_OWNER) == 0;
    if ((propertiesCopy & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 1;
  if ((properties & 2) != 0)
  {
LABEL_5:
    v5 &= filesec_unset_property(self->_filesec, FILESEC_GROUP) == 0;
  }

LABEL_6:
  if ((propertiesCopy & 4) != 0)
  {
    v5 &= filesec_unset_property(self->_filesec, FILESEC_MODE) == 0;
    if ((propertiesCopy & 8) == 0)
    {
LABEL_8:
      if ((propertiesCopy & 0x10) == 0)
      {
        goto LABEL_9;
      }

LABEL_14:
      v5 &= filesec_unset_property(self->_filesec, FILESEC_GRPUUID) == 0;
      if ((propertiesCopy & 0x20) == 0)
      {
        return v5;
      }

      return (filesec_unset_property(self->_filesec, FILESEC_ACL) == 0) & v5;
    }
  }

  else if ((propertiesCopy & 8) == 0)
  {
    goto LABEL_8;
  }

  v5 &= filesec_unset_property(self->_filesec, FILESEC_UUID) == 0;
  if ((propertiesCopy & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((propertiesCopy & 0x20) != 0)
  {
    return (filesec_unset_property(self->_filesec, FILESEC_ACL) == 0) & v5;
  }

  return v5;
}

- (unint64_t)hash
{
  selfCopy = self;
  v10[1] = *MEMORY[0x1E69E9840];
  _filesec = [(__NSFileSecurity *)self _filesec];
  if (_filesec)
  {
    v4 = _filesec;
    v10[0] = 0;
    v9[0] = 0;
    v9[1] = 0;
    v8 = 0;
    v6[1] = 0;
    obj_p = 0;
    v6[0] = 0;
    if (filesec_get_property(_filesec, FILESEC_OWNER, v10 + 4))
    {
      selfCopy = 1;
    }

    else
    {
      selfCopy = 3;
    }

    if (!filesec_get_property(v4, FILESEC_GROUP, v10))
    {
      selfCopy |= 4uLL;
    }

    if (!filesec_get_property(v4, FILESEC_UUID, v9))
    {
      selfCopy |= 8uLL;
    }

    if (!filesec_get_property(v4, FILESEC_MODE, &v8))
    {
      selfCopy |= 0x10uLL;
    }

    if (!filesec_get_property(v4, FILESEC_ACL, &obj_p))
    {
      acl_free(obj_p);
      selfCopy |= 0x20uLL;
    }

    if (!filesec_get_property(v4, FILESEC_GRPUUID, v6))
    {
      selfCopy |= 0x40uLL;
    }
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x1E69E9840];
  if (self == equal)
  {
    return 1;
  }

  if (!equal || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  _filesec = [(__NSFileSecurity *)self _filesec];
  _filesec2 = [equal _filesec];
  v7 = _filesec2;
  if (!_filesec || !_filesec2)
  {
    return (_filesec | _filesec2) == 0;
  }

  LODWORD(acl) = 0;
  LODWORD(v26) = 0;
  property = filesec_get_property(_filesec, FILESEC_OWNER, &acl);
  if ((property == 0) == (filesec_get_property(v7, FILESEC_OWNER, &v26) != 0) || !property && acl != v26)
  {
    return 0;
  }

  LODWORD(acl) = 0;
  LODWORD(v26) = 0;
  v9 = filesec_get_property(_filesec, FILESEC_GROUP, &acl);
  if ((v9 == 0) == (filesec_get_property(v7, FILESEC_GROUP, &v26) != 0) || !v9 && acl != v26)
  {
    return 0;
  }

  LOWORD(acl) = 0;
  LOWORD(v26) = 0;
  v10 = filesec_get_property(_filesec, FILESEC_MODE, &acl);
  if ((v10 == 0) == (filesec_get_property(v7, FILESEC_MODE, &v26) != 0) || !v10 && acl != v26)
  {
    return 0;
  }

  acl = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v11 = filesec_get_property(_filesec, FILESEC_UUID, &acl);
  if ((v11 == 0) == (filesec_get_property(v7, FILESEC_UUID, &v26) != 0))
  {
    return 0;
  }

  if (!v11 && (acl != v26 || v29 != v27))
  {
    return 0;
  }

  acl = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v12 = filesec_get_property(_filesec, FILESEC_GRPUUID, &acl);
  if ((v12 == 0) == (filesec_get_property(v7, FILESEC_GRPUUID, &v26) != 0))
  {
    return 0;
  }

  if (!v12 && (acl != v26 || v29 != v27))
  {
    return 0;
  }

  acl = 0;
  v26 = 0;
  v13 = filesec_get_property(_filesec, FILESEC_ACL, &acl);
  v14 = filesec_get_property(v7, FILESEC_ACL, &v26);
  v15 = v14;
  if (v14 | v13)
  {
    v16 = (v13 == 0) == (v14 == 0);
    if (v13)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v24 = 0;
  len_p = 0;
  v20 = acl_to_text(acl, &len_p);
  v21 = acl_to_text(v26, &v24);
  v22 = v21;
  if (v20 && v21)
  {
    v23 = len_p == v24 && memcmp(v20, v21, len_p) == 0;
    goto LABEL_43;
  }

  v23 = 0;
  v16 = 0;
  if (v20)
  {
LABEL_43:
    acl_free(v20);
    v16 = v23;
  }

  if (v22)
  {
    acl_free(v22);
  }

LABEL_46:
  acl_free(acl);
LABEL_47:
  if (!v15)
  {
    acl_free(v26);
  }

  return v16;
}

- (id)description
{
  v30[1] = *MEMORY[0x1E69E9840];
  _filesec = [(__NSFileSecurity *)self _filesec];
  v4 = _filesec;
  if (!_filesec)
  {
LABEL_47:
    result = CFStringCreateWithFormat(0, 0, @"<FileSecurity %p> [%p]", self, v4);
    v19 = result;
    if (!result)
    {
      return result;
    }

    return _CFAutoreleasePoolAddObject(0, v19);
  }

  v30[0] = 0;
  v29 = 0;
  *&v28.byte0 = 0;
  *&v28.byte8 = 0;
  *&v27.byte0 = 0;
  *&v27.byte8 = 0;
  acl = 0;
  property = filesec_get_property(_filesec, FILESEC_OWNER, v30 + 4);
  v6 = filesec_get_property(v4, FILESEC_GROUP, v30);
  v24 = filesec_get_property(v4, FILESEC_MODE, &v29);
  v7 = filesec_get_property(v4, FILESEC_UUID, &v28);
  v8 = filesec_get_property(v4, FILESEC_GRPUUID, &v27);
  v9 = filesec_get_property(v4, FILESEC_ACL, &acl);
  v10 = 0;
  if (v7)
  {
    if (v8)
    {
LABEL_4:
      cf = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v10 = CFUUIDCreateFromUUIDBytes(0, v28);
    if (v8)
    {
      goto LABEL_4;
    }
  }

  cf = CFUUIDCreateFromUUIDBytes(0, v27);
LABEL_7:
  v22 = v9;
  if (v9)
  {
    v21 = 0;
    v11 = @"(null)";
    if (property)
    {
LABEL_9:
      v12 = @"(null)";
      goto LABEL_20;
    }
  }

  else
  {
    if (acl == 1)
    {
      v11 = @"_FILESEC_REMOVE_ACL";
    }

    else
    {
      len_p = 0;
      v13 = acl_to_text(acl, &len_p);
      if (v13)
      {
        v14 = v13;
        v15 = CFStringCreateWithBytes(0, v13, len_p, 0x8000100u, 0);
        acl_free(v14);
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v11 = v15;
      }

      else
      {
        v11 = @"(acl_to_text failed)";
      }
    }

    v21 = v11;
    if (property)
    {
      goto LABEL_9;
    }
  }

  v12 = CFStringCreateWithFormat(0, 0, @"%d", HIDWORD(v30[0]));
LABEL_20:
  v16 = v6;
  if (v6)
  {
    v17 = @"(null)";
  }

  else
  {
    v17 = CFStringCreateWithFormat(0, 0, @"%d", LODWORD(v30[0]));
  }

  if (v24)
  {
    v18 = @"(null)";
  }

  else
  {
    v18 = CFStringCreateWithFormat(0, 0, @"%d", v29);
  }

  v19 = 0;
  if (v12 && v17 && v18)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"<FileSecurity %p> [%p] {FILESEC_OWNER = %@, FILESEC_GROUP = %@, FILESEC_MODE = %@, FILESEC_UUID = %@, FILESEC_GRPUUID = %@, FILESEC_ACL = %@}", self, v4, v12, v17, v18, v10, cf, v11, v21);
  }

  if (!property && v12)
  {
    CFRelease(v12);
  }

  if (!v16 && v17)
  {
    CFRelease(v17);
  }

  if (!v24 && v18)
  {
    CFRelease(v18);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    if (!v19)
    {
      goto LABEL_47;
    }
  }

  else
  {
    acl_free(acl);
    CFRelease(v21);
    if (!v19)
    {
      goto LABEL_47;
    }
  }

  return _CFAutoreleasePoolAddObject(0, v19);
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = filesec_dup([(__NSFileSecurity *)self _filesec]);
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_class() allocWithZone:zone];

    return [v6 initWithFileSec:v5];
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  len_p[1] = *MEMORY[0x1E69E9840];
  if (![coder allowsKeyedCoding])
  {
    objc_exception_throw([NSException exceptionWithName:@"NSInvalidArgumentException" reason:@"NSFileSecurity cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  _filesec = [(__NSFileSecurity *)self _filesec];
  acl = 0;
  len_p[0] = 0;
  if (filesec_get_property(_filesec, FILESEC_ACL, &acl))
  {
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 0x48uLL, 0x6A291AB2uLL);
    if (!Typed)
    {
      return;
    }

    v7 = Typed;
    *(Typed + 64) = 0;
    *(Typed + 32) = 0u;
    *(Typed + 48) = 0u;
    *Typed = 0u;
    *(Typed + 16) = 0u;
    *Typed = 0;
    v8 = 72;
    *(Typed + 64) = 0;
    goto LABEL_8;
  }

  v9 = acl_to_text(acl, len_p);
  if (!v9)
  {
LABEL_20:
    acl_free(acl);
    return;
  }

  v10 = v9;
  v8 = len_p[0] + 65;
  v11 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, len_p[0] + 65, 0xC8AB72DCuLL);
  if (!v11)
  {
    free(v10);
    goto LABEL_20;
  }

  v7 = v11;
  bzero(v11, v8);
  *v7 = 0;
  strlcpy(v7 + 64, v10, len_p[0] + 1);
  *v7 |= 0x20u;
  free(v10);
  acl_free(acl);
LABEL_8:
  v13 = 0;
  v12 = 0;
  if (!filesec_get_property(_filesec, FILESEC_OWNER, &v13 + 4))
  {
    *(v7 + 1) = HIDWORD(v13);
    *v7 |= 1u;
  }

  if (!filesec_get_property(_filesec, FILESEC_GROUP, &v13))
  {
    *(v7 + 2) = v13;
    *v7 |= 2u;
  }

  if (!filesec_get_property(_filesec, FILESEC_MODE, &v12))
  {
    *(v7 + 3) = v12;
    *v7 |= 0x10u;
  }

  if (!filesec_get_property(_filesec, FILESEC_UUID, v7 + 32))
  {
    *v7 |= 4u;
  }

  if (!filesec_get_property(_filesec, FILESEC_GRPUUID, v7 + 48))
  {
    *v7 |= 8u;
  }

  [coder encodeBytes:v7 length:v8 forKey:@"NS.filesec"];
  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v7);
}

@end