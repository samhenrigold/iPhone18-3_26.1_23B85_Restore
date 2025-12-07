@interface _KSControlFileController
- (BOOL)checkIfExists;
- (_KSControlFileController)initWithName:(id)name inDirectory:(id)directory;
- (id)description;
- (void)reset;
- (void)setContents:(id)contents;
@end

@implementation _KSControlFileController

- (_KSControlFileController)initWithName:(id)name inDirectory:(id)directory
{
  nameCopy = name;
  directoryCopy = directory;
  v15.receiver = self;
  v15.super_class = _KSControlFileController;
  v8 = [(_KSControlFileController *)&v15 init];
  if (v8)
  {
    v9 = MEMORY[0x277CBEBC0];
    v10 = [nameCopy stringByAppendingString:@".ctrl"];
    v11 = [directoryCopy stringByAppendingPathComponent:v10];
    v12 = [v9 fileURLWithPath:v11];
    url = v8->_url;
    v8->_url = v12;
  }

  return v8;
}

- (BOOL)checkIfExists
{
  if (![(NSURL *)self->_url checkResourceIsReachableAndReturnError:0])
  {
    return 0;
  }

  url = self->_url;
  v8 = 0;
  v4 = [(NSURL *)url getResourceValue:&v8 forKey:*MEMORY[0x277CBE878] error:0];
  v5 = v8;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v5 BOOLValue] & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    [(_KSControlFileController *)self reset];
    v6 = 0;
  }

  return v6;
}

- (void)reset
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2557E2000, v0, v1, "%s  Failed to delete %@", v2, v3, v4, v5, v6);
}

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  v5 = open([(NSURL *)self->_url fileSystemRepresentation], 1573, 384);
  if ((v5 & 0x80000000) != 0)
  {
    v11 = KSCategory(v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_KSControlFileController setContents:];
    }
  }

  else
  {
    v6 = v5;
    if (contentsCopy)
    {
      write(v5, [contentsCopy bytes], objc_msgSend(contentsCopy, "length"));
    }

    close(v6);
    url = self->_url;
    v8 = *MEMORY[0x277CBE878];
    v13 = 0;
    v9 = [(NSURL *)url setResourceValue:MEMORY[0x277CBEC38] forKey:v8 error:&v13];
    v10 = v13;
    v11 = v10;
    if (!v9)
    {
      v12 = KSCategory(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_KSControlFileController setContents:];
      }

      [(_KSControlFileController *)self reset];
    }
  }
}

- (id)description
{
  if (![(NSURL *)self->_url checkResourceIsReachableAndReturnError:0])
  {
    v8 = @"Absent";
    goto LABEL_12;
  }

  url = self->_url;
  v15 = 0;
  v4 = *MEMORY[0x277CBE878];
  v14 = 0;
  v5 = [(NSURL *)url getResourceValue:&v15 forKey:v4 error:&v14];
  v6 = v15;
  v7 = v14;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 BOOLValue])
      {
        v8 = @"Present";
      }

      else
      {
        v8 = @"Error: wrong tag value";
      }

      goto LABEL_11;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad tag '%@'", v6];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Error: not tagged (%@)", v7];
  }
  v8 = ;
LABEL_11:

LABEL_12:
  v9 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = _KSControlFileController;
  v10 = [(_KSControlFileController *)&v13 description];
  v11 = [v9 stringWithFormat:@"<%@ %@: %@>", v10, self->_url, v8];;

  return v11;
}

- (void)setContents:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_2557E2000, v2, OS_LOG_TYPE_ERROR, "%s  Failed to mark %@ as non-backup: %@", v3, 0x20u);
}

- (void)setContents:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2557E2000, v0, v1, "%s  Failed to create %@", v2, v3, v4, v5, v6);
}

@end