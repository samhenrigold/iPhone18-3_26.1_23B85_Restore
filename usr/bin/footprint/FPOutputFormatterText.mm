@interface FPOutputFormatterText
- (void)endAtTime:(id)time;
- (void)endProcessHeader:(id)header;
- (void)printGlobalAuxData:(id)data;
- (void)printHeader;
- (void)printProcessAuxData:(id)data forProcess:(id)process;
- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process;
- (void)printProcessHeader:(id)header;
- (void)printProcessTotal:(id)total forProcess:(id)process;
- (void)printProcessesWithWarnings:(id)warnings processesWithErrors:(id)errors globalErrors:(id)globalErrors;
- (void)printSharedCache:(id)cache categories:(id)categories sharedWith:(id)with total:(id *)total;
- (void)printSharedCategories:(id)categories sharedWith:(id)with forProcess:(id)process hasProcessView:(BOOL)view total:(id *)total;
- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors;
- (void)printVmmapLikeOutputForProcess:(id)process regions:(id)regions;
- (void)startAtTime:(id)time;
@end

@implementation FPOutputFormatterText

- (void)startAtTime:(id)time
{
  self->_processCount = 0;
  if (self->_multipleOutputs)
  {
    dateFormatter = self->_dateFormatter;
    v7 = sub_100017000(time);
    v6 = [(NSISO8601DateFormatter *)dateFormatter stringFromDate:v7];
    sub_1000182F4(self, 0, 0, "Time: %s\n", [v6 UTF8String]);
  }
}

- (void)printVmmapLikeOutputForProcess:(id)process regions:(id)regions
{
  self->_verbose = 1;
  if ((~LODWORD(self->_options) & 7) != 0)
  {
    v6 = 0xFFFFFFFFFFLL;
  }

  else
  {
    v6 = -1;
  }

  output = self->_output;
  regionsCopy = regions;
  processCopy = process;
  displayString = [processCopy displayString];
  fprintf(output, "%s\n\n", [displayString UTF8String]);

  options = self->_options;
  v12 = 4 * (options & 2);
  v13 = "     SWP";
  if ((options & 2) == 0)
  {
    v13 = "";
  }

  v14 = "    WIRE";
  if ((self->_options & 1) == 0)
  {
    v14 = "";
  }

  if ((~LODWORD(self->_options) & 7) != 0)
  {
    v15 = 12;
  }

  else
  {
    v15 = 18;
  }

  fprintf(self->_output, "           start                end %*s     VRT     DRT%*s     CLN     RCL%*s   tag (detail)\n", v15, "[object-id]", v12, v13, 8 * (self->_options & 1), v14);
  v16 = self->_options;
  v17 = 4 * (v16 & 2);
  v18 = "   -----";
  if ((v16 & 2) != 0)
  {
    v19 = "   -----";
  }

  else
  {
    v19 = "";
  }

  if ((self->_options & 1) == 0)
  {
    v18 = "";
  }

  if ((~LODWORD(self->_options) & 7) != 0)
  {
    v20 = 12;
  }

  else
  {
    v20 = 18;
  }

  fprintf(self->_output, "      ----------         ---------- %*s   -----   -----%*s   -----   -----%*s   ------------\n", v20, "------------", v17, v19, 8 * (self->_options & 1), v18);
  pageSize = [processCopy pageSize];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100018638;
  v22[3] = &unk_100029EB8;
  v22[4] = self;
  v22[5] = v6;
  v22[6] = pageSize;
  [regionsCopy fp_enumerateObjectsWithBatchSize:128 usingBlock:v22];

  fputc(10, self->_output);
}

- (void)printHeader
{
  if (self && !sub_10000EDEC(FPFootprint))
  {

    sub_100019D50(self, "VM Object Dirty Analysis: Enabled\n", v3, v4, v5, v6, v7, v8, v10);
  }
}

- (void)printProcessHeader:(id)header
{
  headerCopy = header;
  v5 = headerCopy;
  processCount = self->_processCount;
  if (processCount != 2)
  {
    self->_processCount = processCount + 1;
  }

  orderedProcesses = self->_orderedProcesses;
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [headerCopy pid]);
  [(NSMutableArray *)orderedProcesses addObject:v8];

  self->_pageSize = [v5 pageSize];
  options = self->_options;
  v10 = options << 62;
  if ((options & 2) != 0)
  {
    v11 = "==========";
  }

  else
  {
    v11 = "";
  }

  v12 = options << 63 >> 63;
  if (options)
  {
    v13 = "==========";
  }

  else
  {
    v13 = "";
  }

  sub_1000182F4(self, v5, 1, "%s%s%s%*s%s%s%*s%s%s\n", "==========", "==========", "==========", (v10 >> 63) & 0xA, v11, "==========", "==========", v12 & 0xA, v13, "==========", "==========");
  displayString = [v5 displayString];
  uTF8String = [displayString UTF8String];
  if ([v5 is64bit])
  {
    v16 = "64";
  }

  else
  {
    v16 = "32";
  }

  isTranslated = [v5 isTranslated];
  v18 = " (translated)";
  if (!isTranslated)
  {
    v18 = "";
  }

  sub_1000182F4(self, v5, 1, "%s: %s-bit%s", uTF8String, v16, v18);

  warnings = [v5 warnings];
  errors = [v5 errors];
  if ([warnings count])
  {
    sub_1000182F4(self, v5, 1, "\nWarnings were encountered while examining the process.\n");
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = warnings;
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      do
      {
        v25 = 0;
        do
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          sub_1000182F4(self, v5, 1, "%s%s\n", "    ", [*(*(&v35 + 1) + 8 * v25) UTF8String]);
          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v23);
    }
  }

  if ([errors count])
  {
    sub_1000182F4(self, v5, 1, "\nErrors were encountered while examining the process. Results may be incomplete or incorrect.\n");
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = errors;
    v27 = [v26 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v32;
      do
      {
        v30 = 0;
        do
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(v26);
          }

          sub_1000182F4(self, v5, 1, "%s%s\n", "    ", [*(*(&v31 + 1) + 8 * v30) UTF8String]);
          v30 = v30 + 1;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v28);
    }
  }
}

- (void)printProcessTotal:(id)total forProcess:(id)process
{
  processCopy = process;
  v8 = sub_100018EC4(self, [total longLongValue]);
  v7 = v8;
  sub_1000182F4(self, processCopy, 1, "%sFootprint: %s (%lu bytes per page)\n", "    ", [v8 UTF8String], objc_msgSend(processCopy, "pageSize"));
}

- (void)endProcessHeader:(id)header
{
  options = self->_options;
  v4 = options << 62;
  if ((options & 2) != 0)
  {
    v5 = "==========";
  }

  else
  {
    v5 = "";
  }

  v6 = options << 63 >> 63;
  if (options)
  {
    v7 = "==========";
  }

  else
  {
    v7 = "";
  }

  sub_1000182F4(self, header, 1, "%s%s%s%*s%s%s%*s%s%s\n\n", "==========", "==========", "==========", (v4 >> 63) & 0xA, v5, "==========", "==========", v6 & 0xA, v7, "==========", "==========");
}

- (void)printProcessCategories:(id)categories total:(id *)total forProcess:(id)process
{
  summaryFormat = self->_summaryFormat;
  processCopy = process;
  categoriesCopy = categories;
  uTF8String = [@"Dirty" UTF8String];
  if ((self->_options & 2) != 0)
  {
    if (self->_summaryFormat == 1)
    {
      v8 = 11;
    }

    else
    {
      v8 = 14;
    }

    v33 = v8;
    uTF8String2 = [(NSString *)self->_swappedColumnName UTF8String];
  }

  else
  {
    v33 = 0;
    uTF8String2 = "";
  }

  v9 = self->_summaryFormat;
  uTF8String3 = [@"Clean" UTF8String];
  v11 = self->_summaryFormat;
  uTF8String4 = [@"Reclaimable" UTF8String];
  if (self->_options)
  {
    if (self->_summaryFormat == 1)
    {
      v13 = 11;
    }

    else
    {
      v13 = 14;
    }

    uTF8String5 = [(NSString *)self->_wiredColumnName UTF8String];
  }

  else
  {
    v13 = 0;
    uTF8String5 = "";
  }

  uTF8String6 = [@"Regions" UTF8String];
  uTF8String7 = [@"Category" UTF8String];
  if (v11 == 1)
  {
    v15 = 13;
  }

  else
  {
    v15 = 14;
  }

  v29 = v15;
  if (v9 == 1)
  {
    v16 = 11;
  }

  else
  {
    v16 = 14;
  }

  v28 = v16;
  if (summaryFormat == 1)
  {
    v17 = 7;
  }

  else
  {
    v17 = 11;
  }

  sub_1000182F4(self, processCopy, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v17, uTF8String, v33, uTF8String2, v28, uTF8String3, v29, uTF8String4, v13, uTF8String5, uTF8String6, uTF8String7);
  v18 = self->_summaryFormat;
  options = self->_options;
  v20 = v18 == 1;
  if (v18 == 1)
  {
    v21 = 11;
  }

  else
  {
    v21 = 14;
  }

  if (v20)
  {
    v22 = 7;
  }

  else
  {
    v22 = 11;
  }

  if (v20)
  {
    v23 = 11;
  }

  else
  {
    v23 = 14;
  }

  if (v20)
  {
    v24 = 13;
  }

  else
  {
    v24 = 14;
  }

  if ((options & 2) != 0)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  if ((options & 2) != 0)
  {
    v26 = "---";
  }

  else
  {
    v26 = "";
  }

  if (options)
  {
    v27 = "---";
  }

  else
  {
    v21 = 0;
    v27 = "";
  }

  sub_1000182F4(self, processCopy, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v22, "---", v25, v26, v23, "---", v24, "---", v21, v27, "---", "---");
  sub_100019290(self, categoriesCopy, processCopy);

  sub_1000194D4(self, total, processCopy);
  sub_1000182F4(self, processCopy, 1, "\n");
}

- (void)printSharedCategories:(id)categories sharedWith:(id)with forProcess:(id)process hasProcessView:(BOOL)view total:(id *)total
{
  categoriesCopy = categories;
  withCopy = with;
  processCopy = process;
  processes = [withCopy processes];
  v13 = [processes count] - (processCopy != 0);

  processes2 = [withCopy processes];
  v15 = [processes2 count];

  v52 = withCopy;
  if (v15 < 0x15)
  {
    sub_1000182F4(self, processCopy, 1, "Shared with");
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    processes3 = [withCopy processes];
    v17 = [processes3 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v55;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(processes3);
          }

          v21 = *(*(&v54 + 1) + 8 * i);
          if (v21 != processCopy)
          {
            displayString = [v21 displayString];
            sub_1000182F4(self, processCopy, 1, " %s", [displayString UTF8String]);

            if (--v13)
            {
              sub_1000182F4(self, processCopy, 1, ",");
            }
          }
        }

        v18 = [processes3 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v18);
    }

    sub_1000182F4(self, processCopy, 1, ":\n");
  }

  else
  {
    sub_1000182F4(self, processCopy, 1, "Shared with %lu processes:\n");
  }

  summaryFormat = self->_summaryFormat;
  uTF8String = [@"Dirty" UTF8String];
  if ((self->_options & 2) != 0)
  {
    if (self->_summaryFormat == 1)
    {
      v23 = 11;
    }

    else
    {
      v23 = 14;
    }

    v48 = v23;
    uTF8String2 = [(NSString *)self->_swappedColumnName UTF8String];
  }

  else
  {
    uTF8String2 = "";
    v48 = 0;
  }

  v24 = self->_summaryFormat;
  uTF8String3 = [@"Clean" UTF8String];
  v26 = self->_summaryFormat;
  uTF8String4 = [@"Reclaimable" UTF8String];
  if (self->_options)
  {
    if (self->_summaryFormat == 1)
    {
      v28 = 11;
    }

    else
    {
      v28 = 14;
    }

    uTF8String5 = [(NSString *)self->_wiredColumnName UTF8String];
  }

  else
  {
    v28 = 0;
    uTF8String5 = "";
  }

  uTF8String6 = [@"Regions" UTF8String];
  uTF8String7 = [@"Category" UTF8String];
  if (v26 == 1)
  {
    v30 = 13;
  }

  else
  {
    v30 = 14;
  }

  v44 = v30;
  if (v24 == 1)
  {
    v31 = 11;
  }

  else
  {
    v31 = 14;
  }

  v43 = v31;
  if (summaryFormat == 1)
  {
    v32 = 7;
  }

  else
  {
    v32 = 11;
  }

  sub_1000182F4(self, processCopy, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v32, uTF8String, v48, uTF8String2, v43, uTF8String3, v44, uTF8String4, v28, uTF8String5, uTF8String6, uTF8String7);
  v33 = self->_summaryFormat;
  options = self->_options;
  v35 = v33 == 1;
  if (v33 == 1)
  {
    v36 = 11;
  }

  else
  {
    v36 = 14;
  }

  if (v35)
  {
    v37 = 7;
  }

  else
  {
    v37 = 11;
  }

  if (v35)
  {
    v38 = 11;
  }

  else
  {
    v38 = 14;
  }

  if (v35)
  {
    v39 = 13;
  }

  else
  {
    v39 = 14;
  }

  if ((options & 2) != 0)
  {
    v40 = v36;
  }

  else
  {
    v40 = 0;
  }

  if ((options & 2) != 0)
  {
    v41 = "---";
  }

  else
  {
    v41 = "";
  }

  if (options)
  {
    v42 = "---";
  }

  else
  {
    v36 = 0;
    v42 = "";
  }

  sub_1000182F4(self, processCopy, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v37, "---", v40, v41, v38, "---", v39, "---", v36, v42, "---", "---");
  sub_100019290(self, categoriesCopy, processCopy);
  sub_1000194D4(self, total, processCopy);
  sub_1000182F4(self, processCopy, 1, "\n");
}

- (void)printSharedCache:(id)cache categories:(id)categories sharedWith:(id)with total:(id *)total
{
  withCopy = with;
  categoriesCopy = categories;
  cacheCopy = cache;
  sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n", v11, v12, v13, v14, v15, v16, "==========");
  if (cacheCopy)
  {
    v17 = cacheCopy[2];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  uUIDString = [v18 UUIDString];
  uTF8String = [uUIDString UTF8String];
  sub_100019D50(self, "Shared Cache %s\n", v21, v22, v23, v24, v25, v26, uTF8String);

  sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n\n", v27, v28, v29, v30, v31, v32, "==========");
  [(FPOutputFormatterText *)self printSharedCategories:categoriesCopy sharedWith:withCopy forProcess:0 hasProcessView:0 total:total];
}

- (void)printProcessAuxData:(id)data forProcess:(id)process
{
  if (data)
  {
    processCopy = process;
    v9 = processCopy;
    if (self)
    {
      v7 = processCopy;
      dataCopy = data;
      sub_1000182F4(self, v7, 1, "Auxiliary data:\n");
      sub_10001A8FC(self, dataCopy, 1, v7);

      processCopy = v9;
    }

    sub_1000182F4(self, processCopy, 1, "\n");
  }
}

- (void)printProcessesWithWarnings:(id)warnings processesWithErrors:(id)errors globalErrors:(id)globalErrors
{
  warningsCopy = warnings;
  errorsCopy = errors;
  globalErrorsCopy = globalErrors;
  v61 = globalErrorsCopy;
  v62 = warningsCopy;
  if ([warningsCopy count])
  {
    sub_100019D50(self, "\nWarnings were encountered while examining the following processes:\n", v11, v12, v13, v14, v15, v16, v60);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v17 = warningsCopy;
    v18 = [v17 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v72;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v72 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v71 + 1) + 8 * i);
          name = [v22 name];
          sub_1000182F4(self, v22, 1, "%s%s\n", "    ", [name UTF8String]);
        }

        v19 = [v17 countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v19);
    }

    globalErrorsCopy = v61;
    warningsCopy = v62;
  }

  if ([errorsCopy count])
  {
    sub_100019D50(self, "\nErrors were encountered while examining the following processes:\n", v24, v25, v26, v27, v28, v29, v60);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v30 = errorsCopy;
    v31 = [v30 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v68;
      do
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v68 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v67 + 1) + 8 * j);
          name2 = [v35 name];
          sub_1000182F4(self, v35, 1, "%s%s\n", "    ", [name2 UTF8String]);
        }

        v32 = [v30 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v32);
    }

    globalErrorsCopy = v61;
    warningsCopy = v62;
  }

  if ([globalErrorsCopy count])
  {
    sub_100019D50(self, "\nErrors were encountered:\n", v37, v38, v39, v40, v41, v42, v60);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v43 = globalErrorsCopy;
    v44 = [v43 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v64;
      do
      {
        for (k = 0; k != v45; k = k + 1)
        {
          if (*v64 != v46)
          {
            objc_enumerationMutation(v43);
          }

          [*(*(&v63 + 1) + 8 * k) UTF8String];
          sub_100019D50(self, "%s%s\n", v48, v49, v50, v51, v52, v53, "    ");
        }

        v45 = [v43 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v45);
    }
  }

  if ([errorsCopy count] || objc_msgSend(globalErrorsCopy, "count"))
  {
    sub_100019D50(self, "\nDue to errors, summary results may be incomplete or incorrect\n", v54, v55, v56, v57, v58, v59, v60);
  }
}

- (void)printSummaryCategories:(id)categories total:(id *)total hadErrors:(BOOL)errors
{
  categoriesCopy = categories;
  if (self->_processCount != 1)
  {
    v43 = categoriesCopy;
    sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n", v8, v9, v10, v11, v12, v13, "==========");
    v14 = sub_100018EC4(self, total->var1 + total->var0);
    uTF8String = [v14 UTF8String];
    sub_100019D50(self, "Summary Footprint: %s%s\n", v16, v17, v18, v19, v20, v21, uTF8String);

    sub_100019D50(self, "%s%s%s%*s%s%s%*s%s%s\n\n", v22, v23, v24, v25, v26, v27, "==========");
    categoriesCopy = v43;
    if (v43)
    {
      if (self->_summaryFormat == 1)
      {
        v28 = 7;
      }

      else
      {
        v28 = 11;
      }

      v42 = v28;
      [@"Dirty" UTF8String];
      if ((self->_options & 2) != 0)
      {
        [(NSString *)self->_swappedColumnName UTF8String];
      }

      [@"Clean" UTF8String];
      [@"Reclaimable" UTF8String];
      if (self->_options)
      {
        [(NSString *)self->_wiredColumnName UTF8String];
      }

      [@"Regions" UTF8String];
      [@"Category" UTF8String];
      sub_100019D50(self, "%*s%*s%*s%*s%*s %10s    %s\n", v29, v30, v31, v32, v33, v34, v42);
      v41 = 7;
      if (self->_summaryFormat != 1)
      {
        v41 = 11;
      }

      sub_100019D50(self, "%*s%*s%*s%*s%*s %10s    %s\n", v35, v36, v37, v38, v39, v40, v41);
      sub_100019290(self, v43, 0);
      sub_1000194D4(self, total, 0);
      categoriesCopy = v43;
    }
  }
}

- (void)printGlobalAuxData:(id)data
{
  dataCopy = data;
  if (self->_processCount != 1)
  {
    v40 = dataCopy;
    sub_100019D50(self, "\n", v5, v6, v7, v8, v9, v10, v38);
    if (v40)
    {
      sub_1000182F4(self, 0, 1, "System auxiliary data:\n");
      v17 = v40;
      v18 = &off_10002C428;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v19 = [&off_10002C428 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v42;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v42 != v21)
            {
              objc_enumerationMutation(&off_10002C428);
            }

            v23 = *(*(&v41 + 1) + 8 * i);
            v24 = [v17 objectForKeyedSubscript:v23];
            v25 = strlen([v23 UTF8String]);
            v26 = [v17 objectForKeyedSubscript:v23];

            if (v26)
            {
              if ([v24 fp_isContainer])
              {
                sub_1000182F4(self, 0, 1, "%s:\n", [v23 UTF8String]);
              }

              else
              {
                v27 = v24;
                if ([v23 isEqualToString:@"sys_footprint"])
                {
                  sub_100019D50(self, "%s%s\n", v28, v29, v30, v31, v32, v33, "    ");
                }

                v34 = 33 - v25;
                if ([v27 supportsFormattedValue])
                {
                  sub_1000182F4(self, 0, 1, "%s%s:%*s\n", "    ", [v23 UTF8String], v34, objc_msgSend(v27, "formattedValue"));
                }

                else
                {
                  value = [v27 value];
                  uTF8String = [v23 UTF8String];
                  v37 = sub_100018EC4(self, value);
                  sub_1000182F4(self, 0, 1, "%s%s:%*s\n", "    ", uTF8String, v34, [v37 UTF8String]);
                }
              }
            }
          }

          v20 = [&off_10002C428 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v20);
      }
    }

    sub_100019D50(self, "\n", v11, v12, v13, v14, v15, v16, v39);
    dataCopy = v40;
  }
}

- (void)endAtTime:(id)time
{
  if (self->_layoutStyle == 1)
  {
    v4 = objc_autoreleasePoolPush();
    if ([(NSMutableString *)self->_prefix length])
    {
      fprintf(self->_output, "%s\n", [(NSMutableString *)self->_prefix UTF8String]);
    }

    v46 = [(NSMutableArray *)self->_orderedProcesses count];
    if ([(NSMutableArray *)self->_orderedProcesses count])
    {
      v39 = v4;
      v5 = 0;
LABEL_6:
      v40 = objc_autoreleasePoolPush();
      v44 = objc_alloc_init(NSMutableString);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = self->_orderedProcesses;
      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v52;
        v41 = *v52;
        do
        {
          v9 = 0;
          v42 = v7;
          do
          {
            if (*v52 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v51 + 1) + 8 * v9);
            context = objc_autoreleasePoolPush();
            v11 = [(NSMutableDictionary *)self->_outputLinesByPID objectForKeyedSubscript:v10];
            if (v5 < [v11 count])
            {
              v12 = [(NSMutableArray *)self->_orderedProcesses indexOfObject:v10];
              v13 = 0;
              v14 = v12 - 1;
              if ((v12 - 1) >= 0)
              {
                do
                {
                  v15 = [(NSMutableArray *)self->_orderedProcesses objectAtIndexedSubscript:v14];
                  v16 = [(NSMutableDictionary *)self->_maxTextLengthByPID objectForKeyedSubscript:v15];
                  v13 = &v13[[v16 integerValue]];

                  --v14;
                }

                while (v14 != -1);
              }

              v17 = [v11 objectAtIndexedSubscript:v5];
              v18 = [v44 length];
              v19 = v13 - v18;
              if (v13 == v18)
              {
                v20 = v17;
              }

              else
              {
                v20 = objc_alloc_init(NSMutableString);
                do
                {
                  [v20 appendString:@" "];
                  --v19;
                }

                while (v19);
                [v20 appendString:v17];
              }

              if (v12 != [(NSMutableArray *)self->_orderedProcesses count]- 1)
              {
                v21 = v12 + 1;
                while (v21 < v46)
                {
                  v22 = [(NSMutableArray *)self->_orderedProcesses objectAtIndexedSubscript:v21];
                  v23 = [(NSMutableDictionary *)self->_outputLinesByPID objectForKeyedSubscript:v22];
                  v24 = [v23 count];

                  ++v21;
                  if (v24 > v5)
                  {
                    v25 = +[NSCharacterSet newlineCharacterSet];
                    v26 = [v20 stringByTrimmingCharactersInSet:v25];

                    [v44 appendString:v26];
                    goto LABEL_25;
                  }
                }
              }

              [v44 appendString:v20];
LABEL_25:

              v8 = v41;
              v7 = v42;
            }

            objc_autoreleasePoolPop(context);
            v9 = v9 + 1;
          }

          while (v9 != v7);
          v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v7);
      }

      fputs([v44 UTF8String], self->_output);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v27 = self->_orderedProcesses;
      v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v48;
        while (2)
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v48 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [(NSMutableDictionary *)self->_outputLinesByPID objectForKeyedSubscript:*(*(&v47 + 1) + 8 * i)];
            v33 = [v32 count];

            if (v33 > v5)
            {

              objc_autoreleasePoolPop(v40);
              ++v5;
              goto LABEL_6;
            }
          }

          v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      objc_autoreleasePoolPop(v40);
      v4 = v39;
      if (![(NSMutableString *)self->_suffix length])
      {
        goto LABEL_42;
      }

      fputc(10, self->_output);
    }

    else if (![(NSMutableString *)self->_suffix length])
    {
LABEL_42:
      [(NSMutableDictionary *)self->_maxTextLengthByPID removeAllObjects];
      [(NSMutableArray *)self->_orderedProcesses removeAllObjects];
      [(NSMutableDictionary *)self->_outputLinesByPID removeAllObjects];
      v34 = objc_alloc_init(NSMutableString);
      prefix = self->_prefix;
      self->_prefix = v34;

      v36 = objc_alloc_init(NSMutableString);
      suffix = self->_suffix;
      self->_suffix = v36;

      objc_autoreleasePoolPop(v4);
      goto LABEL_43;
    }

    fputs([(NSMutableString *)self->_suffix UTF8String], self->_output);
    goto LABEL_42;
  }

LABEL_43:
  output = self->_output;

  fflush(output);
}

@end