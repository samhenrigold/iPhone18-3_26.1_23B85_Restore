@interface APOdmlRecipeParser
- (id)_attachmentURLWithName:(id)name fileName:(id)fileName;
- (id)formatRecipe:(id)recipe attachments:(id)attachments error:(id *)error;
@end

@implementation APOdmlRecipeParser

- (id)formatRecipe:(id)recipe attachments:(id)attachments error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  attachmentsCopy = attachments;
  if ([attachmentsCopy count])
  {
    modelFileName = [recipeCopy modelFileName];
    v11 = [(APOdmlRecipeParser *)self _attachmentURLWithName:attachmentsCopy fileName:modelFileName];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v14 = OdmlLogForCategory(0xBuLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412546;
        v18 = objc_opt_class();
        v19 = 2112;
        v20 = 0;
        v15 = v18;
        _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "[%@]: No network found at URL: %@", &v17, 0x16u);
      }

      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:8009 userInfo:0];
      }
    }
  }

  else
  {
    v13 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "There are no attachments.", &v17, 2u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:8011 userInfo:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_attachmentURLWithName:(id)name fileName:(id)fileName
{
  nameCopy = name;
  fileNameCopy = fileName;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_260EF0E18;
  v13[3] = &unk_279AC6998;
  v7 = fileNameCopy;
  v14 = v7;
  v8 = [nameCopy indexOfObjectPassingTest:v13];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "Network not found.", v12, 2u);
    }

    v10 = 0;
  }

  else
  {
    v10 = [nameCopy objectAtIndexedSubscript:v8];
  }

  return v10;
}

@end