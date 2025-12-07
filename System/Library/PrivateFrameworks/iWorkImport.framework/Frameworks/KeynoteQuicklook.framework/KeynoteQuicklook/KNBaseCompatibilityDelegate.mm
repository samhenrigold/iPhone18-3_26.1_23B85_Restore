@interface KNBaseCompatibilityDelegate
- (BOOL)isSageDocumentType:(id)type;
- (Class)exportOptionsControllerClass;
- (Class)exporterClassForType:(id)type options:(id)options;
- (Class)pdfExporterClassForOptions:(id)options;
- (id)backwardsCompatibleTypeForType:(id)type;
- (id)exportableTypes;
- (id)newExportableDocumentTypesForFlag:(unint64_t)flag;
@end

@implementation KNBaseCompatibilityDelegate

- (id)newExportableDocumentTypesForFlag:(unint64_t)flag
{
  flagCopy = flag;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = v4;
  if (flagCopy)
  {
    tsa_sharedPropertiesProvider = [MEMORY[0x277D7FF90] tsa_sharedPropertiesProvider];
    v14 = MEMORY[0x277D7FFB0];
    nativeDocumentType = [tsa_sharedPropertiesProvider nativeDocumentType];
    applicationDisplayName = [tsa_sharedPropertiesProvider applicationDisplayName];
    v17 = [v14 exportableTypeWithType:nativeDocumentType localizedName:applicationDisplayName exportProgressMessage:0];
    [v5 addObject:v17];

    if ((flagCopy & 4) == 0)
    {
LABEL_3:
      if ((flagCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((flagCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  v18 = MEMORY[0x277D7FFB0];
  identifier = [*MEMORY[0x277CE1E08] identifier];
  v20 = sub_275DC204C(identifier);
  v21 = [v20 localizedStringForKey:@"PDF" value:&stru_2884D8E20 table:@"Keynote"];
  v22 = sub_275DC204C(v21);
  v23 = [v22 localizedStringForKey:@"Creating a PDF file\\U2026" value:&stru_2884D8E20 table:@"Keynote"];
  v24 = [v18 exportableTypeWithType:identifier localizedName:v21 exportProgressMessage:v23];
  [v5 addObject:v24];

  if ((flagCopy & 8) == 0)
  {
LABEL_4:
    if ((flagCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v25 = MEMORY[0x277D7FFB0];
  v26 = sub_275DC204C(v4);
  v27 = [v26 localizedStringForKey:@"PowerPoint" value:&stru_2884D8E20 table:@"Keynote"];
  v28 = sub_275DC204C(v27);
  v29 = [v28 localizedStringForKey:@"Creating a PowerPoint file\\U2026" value:&stru_2884D8E20 table:@"Keynote"];
  v30 = [v25 exportableTypeWithType:@"org.openxmlformats.presentationml.presentation" localizedName:v27 exportProgressMessage:v29];
  [v5 addObject:v30];

  if ((flagCopy & 0x10) == 0)
  {
LABEL_5:
    if ((flagCopy & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v31 = MEMORY[0x277D7FFB0];
  identifier2 = [*MEMORY[0x277CE1E40] identifier];
  v33 = sub_275DC204C(identifier2);
  v34 = [v33 localizedStringForKey:@"Movie" value:&stru_2884D8E20 table:@"Keynote"];
  v35 = sub_275DC204C(v34);
  v36 = [v35 localizedStringForKey:@"Creating movie\\U2026" value:&stru_2884D8E20 table:@"Keynote"];
  v37 = [v31 exportableTypeWithType:identifier2 localizedName:v34 exportProgressMessage:v36];
  [v5 addObject:v37];

  if ((flagCopy & 0x100) == 0)
  {
LABEL_6:
    if ((flagCopy & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v38 = MEMORY[0x277D7FFB0];
  identifier3 = [*MEMORY[0x277CE1D88] identifier];
  v40 = sub_275DC204C(identifier3);
  v41 = [v40 localizedStringForKey:@"Animated GIF" value:&stru_2884D8E20 table:@"Keynote"];
  v42 = sub_275DC204C(v41);
  v43 = [v42 localizedStringForKey:@"Creating animated GIF…" value:&stru_2884D8E20 table:@"Keynote"];
  v44 = [v38 exportableTypeWithType:identifier3 localizedName:v41 exportProgressMessage:v43];
  [v5 addObject:v44];

  if ((flagCopy & 0x40) == 0)
  {
LABEL_7:
    if ((flagCopy & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v45 = MEMORY[0x277D7FFB0];
  identifier4 = [*MEMORY[0x277CE1DB0] identifier];
  v47 = sub_275DC204C(identifier4);
  v48 = [v47 localizedStringForKey:@"Images" value:&stru_2884D8E20 table:@"Keynote"];
  v49 = sub_275DC204C(v48);
  v50 = [v49 localizedStringForKey:@"Creating images\\U2026" value:&stru_2884D8E20 table:@"Keynote"];
  v51 = [v45 exportableTypeWithType:identifier4 localizedName:v48 exportProgressMessage:v50];
  [v5 addObject:v51];

  if ((flagCopy & 0x20) == 0)
  {
LABEL_8:
    if ((flagCopy & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v58 = MEMORY[0x277D7FFB0];
    v59 = sub_275DC204C(v4);
    v60 = [v59 localizedStringForKey:@"Keynote \\U201909" value:&stru_2884D8E20 table:@"Keynote"];
    v61 = sub_275DC204C(v60);
    v62 = [v61 localizedStringForKey:@"Creating a Keynote \\U201909 file\\U2026" value:&stru_2884D8E20 table:@"Keynote"];
    v63 = [v58 exportableTypeWithType:@"com.apple.iwork.keynote.sffkey" localizedName:v60 exportProgressMessage:v62];
    [v5 addObject:v63];

    if ((flagCopy & 0x80) == 0)
    {
      return v5;
    }

    goto LABEL_10;
  }

LABEL_18:
  v52 = MEMORY[0x277D7FFB0];
  v53 = sub_275DC204C(v4);
  v54 = [v53 localizedStringForKey:@"HTML" value:&stru_2884D8E20 table:@"Keynote"];
  v55 = sub_275DC204C(v54);
  v56 = [v55 localizedStringForKey:@"Creating HTML document\\U2026" value:&stru_2884D8E20 table:@"Keynote"];
  v57 = [v52 exportableTypeWithType:@"com.apple.iwork.keynote.kpf-html" localizedName:v54 exportProgressMessage:v56];
  [v5 addObject:v57];

  if ((flagCopy & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((flagCopy & 0x80) != 0)
  {
LABEL_10:
    v6 = MEMORY[0x277D7FFB0];
    v7 = sub_275DC204C(v4);
    v8 = [v7 localizedStringForKey:@"Keynote Theme" value:&stru_2884D8E20 table:@"Keynote"];
    v9 = sub_275DC204C(v8);
    v10 = [v9 localizedStringForKey:@"Creating a theme file…" value:&stru_2884D8E20 table:@"Keynote"];
    v11 = [v6 exportableTypeWithType:@"com.apple.iwork.keynote.sffkth" localizedName:v8 exportProgressMessage:v10];
    [v5 addObject:v11];
  }

  return v5;
}

- (Class)exporterClassForType:(id)type options:(id)options
{
  typeCopy = type;
  optionsCopy = options;
  if (typeCopy && ([*MEMORY[0x277CE1E08] identifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(typeCopy, "tsu_conformsToUTI:", v7), v7, v8))
  {
    v9 = objc_opt_class();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (Class)pdfExporterClassForOptions:(id)options
{
  v3 = [options objectForKey:@"KNPrintLayoutKey"];
  v4 = v3;
  if (!v3 || ([v3 integerValue], (v5 = objc_opt_class()) == 0))
  {
    v5 = objc_opt_class();
  }

  v6 = v5;

  return v5;
}

- (Class)exportOptionsControllerClass
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBaseCompatibilityDelegate exportOptionsControllerClass]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBaseCompatibilityDelegate.m"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:228 isFatal:0 description:{"Abstract method not overridden by %{public}@", v6}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "-[KNBaseCompatibilityDelegate exportOptionsControllerClass]"];
  v13 = [v7 exceptionWithName:v8 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)exportableTypes
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBaseCompatibilityDelegate exportableTypes]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBaseCompatibilityDelegate.m"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:232 isFatal:0 description:{"Abstract method not overridden by %{public}@", v6}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "-[KNBaseCompatibilityDelegate exportableTypes]"];
  v13 = [v7 exceptionWithName:v8 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)isSageDocumentType:(id)type
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"com.apple.iwork.keynote.key";
  v7[1] = @"com.apple.iwork.keynote.sffkey";
  v3 = MEMORY[0x277CBEA60];
  typeCopy = type;
  v5 = [v3 arrayWithObjects:v7 count:2];
  LOBYTE(v3) = [typeCopy tsu_conformsToAnyUTI:v5];

  return v3;
}

- (id)backwardsCompatibleTypeForType:(id)type
{
  if ([type isEqualToString:@"org.openxmlformats.presentationml.presentation"])
  {
    v3 = @"com.microsoft.powerpoint.ppt";
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end