@interface GQPProcessorFactory
+ (BOOL)isTangierTEFDocumentUti:(__CFString *)uti;
+ (BOOL)isTemplateUti:(__CFString *)uti;
+ (__CFString)createUtiForDocument:(__CFString *)document;
+ (__CFURL)newEmbeddedSageUrlForTangierDocumentUrl:(__CFURL *)url uti:(__CFString *)uti isBundle:(BOOL *)bundle;
+ (id)retainedProcessorForDocument:(__CFURL *)document zipArchive:(id)archive uti:(__CFString *)uti outputType:(int)type outputPath:(__CFString *)path previewRequest:(__QLPreviewRequest *)request progressiveHelper:(id)helper;
+ (id)retainedProcessorForDocument:(__CFURL *)document zipArchive:(id)archive uti:(__CFString *)uti outputType:(int)type outputPath:(__CFString *)path previewRequest:(__QLPreviewRequest *)request progressiveHelper:(id)helper cryptoKey:(id)self0;
+ (int)applicationForDocumentUti:(__CFString *)uti;
@end

@implementation GQPProcessorFactory

+ (BOOL)isTangierTEFDocumentUti:(__CFString *)uti
{
  v4 = 0;
  do
  {
    v5 = CFStringCompare(uti, off_80878[v4], 0);
    if (v5)
    {
      v6 = v4 > 1;
    }

    else
    {
      v6 = 1;
    }

    ++v4;
  }

  while (!v6);
  return v5 == kCFCompareEqualTo;
}

+ (BOOL)isTemplateUti:(__CFString *)uti
{
  v4 = 0;
  do
  {
    v5 = CFStringCompare(uti, off_80890[v4], 0);
    if (v5)
    {
      v6 = v4 > 4;
    }

    else
    {
      v6 = 1;
    }

    ++v4;
  }

  while (!v6);
  return v5 == kCFCompareEqualTo;
}

+ (__CFURL)newEmbeddedSageUrlForTangierDocumentUrl:(__CFURL *)url uti:(__CFString *)uti isBundle:(BOOL *)bundle
{
  if (qword_A4320 != -1)
  {
    sub_57DE8();
  }

  result = [qword_A4328 objectForKey:uti];
  if (result)
  {
    v9 = [-[__CFURL path](url "path")];
    v10 = 0;
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]
    {
      if (bundle)
      {
        *bundle = v10;
      }

      return [NSURL fileURLWithPath:v9];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (__CFString)createUtiForDocument:(__CFString *)document
{
  v3 = CFURLCreateWithFileSystemPath(0, document, kCFURLPOSIXPathStyle, 1u);
  v4 = CFURLCopyPathExtension(v3);
  CFRelease(v3);
  if (v4)
  {
    if (CFStringCompare(v4, @"pages", 1uLL))
    {
      if (CFStringCompare(v4, @"key", 1uLL))
      {
        if (CFStringCompare(v4, @"numbers", 1uLL))
        {
          Copy = 0;
LABEL_11:
          CFRelease(v4);
          return Copy;
        }

        v6 = @"com.apple.iwork.numbers.numbers";
      }

      else
      {
        v6 = @"com.apple.iwork.keynote.key";
      }
    }

    else
    {
      v6 = @"com.apple.iwork.pages.pages";
    }

    Copy = CFStringCreateCopy(0, v6);
    goto LABEL_11;
  }

  return 0;
}

+ (int)applicationForDocumentUti:(__CFString *)uti
{
  v4 = qword_A4330;
  if (!qword_A4330)
  {
    v5 = [[NSNumber alloc] initWithInt:1];
    v6 = [[NSNumber alloc] initWithInt:3];
    v7 = [[NSNumber alloc] initWithInt:2];
    qword_A4330 = [[NSDictionary alloc] initWithObjectsAndKeys:{v7, @"com.apple.iwork.pages.pages", v7, @"com.apple.iwork.pages.sffpages", v7, @"com.apple.iwork.pages.pages-tef", v7, @"com.apple.iwork.pages.sfftemplate", v7, @"com.apple.iwork.pages.template", v5, @"com.apple.iwork.keynote.key", v5, @"com.apple.iwork.keynote.sffkey", v5, @"com.apple.keynote.key", v5, @"com.apple.iwork.keynote.key-tef", v5, @"com.apple.iwork.keynote.sffkth", v5, @"com.apple.iwork.keynote.kth", v6, @"com.apple.iwork.numbers.numbers", v6, @"com.apple.iwork.numbers.sffnumbers", v6, @"com.apple.iwork.numbers.numbers-tef", v6, @"com.apple.iwork.numbers.sfftemplate", v6, @"com.apple.iwork.numbers.template", 0}];

    v4 = qword_A4330;
  }

  v8 = [v4 objectForKey:{-[__CFString lowercaseString](uti, "lowercaseString")}];
  if (v8)
  {

    LODWORD(v8) = [v8 intValue];
  }

  return v8;
}

+ (id)retainedProcessorForDocument:(__CFURL *)document zipArchive:(id)archive uti:(__CFString *)uti outputType:(int)type outputPath:(__CFString *)path previewRequest:(__QLPreviewRequest *)request progressiveHelper:(id)helper cryptoKey:(id)self0
{
  v12 = *&type;
  if (uti)
  {
    utiCopy = uti;
    CFRetain(uti);
  }

  else
  {
    utiCopy = [self createUtiForDocument:{-[__CFURL path](document, "path")}];
  }

  v17 = [self applicationForDocumentUti:utiCopy];
  v18 = [GQHGeneratorLookup generatorForApplication:v17];
  if (v17 == 1)
  {
    v22 = [GQPBGProcessor alloc];
    if (document)
    {
      v21 = [(GQPBGProcessor *)v22 initWithURL:document indexFileName:@"index.apxl" outputType:v12 outputPath:path previewRequest:request progressiveHelper:helper generator:v18 zipArchive:archive cryptoKey:key];
    }

    else
    {
      v21 = [(GQPBGProcessor *)v22 initWithURL:0 zipArchive:archive indexFileName:@"index.apxl" outputType:v12 outputPath:path previewRequest:request progressiveHelper:helper generator:v18 cryptoKey:key];
    }
  }

  else
  {
    if (v17 == 3)
    {
      v19 = GQPLSProcessor;
    }

    else
    {
      if (v17 != 2)
      {
        v23 = 0;
        if (!utiCopy)
        {
          return v23;
        }

        goto LABEL_18;
      }

      v19 = GQPSLProcessor;
    }

    v20 = [v19 alloc];
    if (document)
    {
      v21 = [v20 initWithURL:document indexFileName:@"index.xml" outputType:v12 outputPath:path previewRequest:request progressiveHelper:helper generator:v18 zipArchive:archive cryptoKey:key];
    }

    else
    {
      v21 = [v20 initWithURL:0 zipArchive:archive indexFileName:@"index.xml" outputType:v12 outputPath:path previewRequest:request progressiveHelper:helper generator:v18 cryptoKey:key];
    }
  }

  v23 = v21;
  if (utiCopy)
  {
LABEL_18:
    CFRelease(utiCopy);
  }

  return v23;
}

+ (id)retainedProcessorForDocument:(__CFURL *)document zipArchive:(id)archive uti:(__CFString *)uti outputType:(int)type outputPath:(__CFString *)path previewRequest:(__QLPreviewRequest *)request progressiveHelper:(id)helper
{
  v11 = *&type;
  v14 = [self applicationForDocumentUti:uti];
  v15 = [GQHGeneratorLookup generatorForApplication:v14];
  if ((v14 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return [objc_alloc(*off_808C0[v14 - 1]) initWithURL:document zipArchive:archive indexFileName:off_808D8[v16] outputType:v11 outputPath:path previewRequest:request progressiveHelper:helper generator:v15 cryptoKey:0];
  }
}

@end