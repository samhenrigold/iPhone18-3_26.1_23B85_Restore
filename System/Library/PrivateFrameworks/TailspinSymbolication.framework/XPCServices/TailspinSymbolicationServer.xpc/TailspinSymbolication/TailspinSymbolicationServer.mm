@interface TailspinSymbolicationServer
- (BOOL)_connectionIsEntitled:(id)entitled toEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)symbolicateUUID:(id)d pid:(int)pid path:(id)path offsets:(id)offsets options:(id)options completionBlock:(id)block;
@end

@implementation TailspinSymbolicationServer

- (void)symbolicateUUID:(id)d pid:(int)pid path:(id)path offsets:(id)offsets options:(id)options completionBlock:(id)block
{
  v12 = *&pid;
  dCopy = d;
  pathCopy = path;
  offsetsCopy = offsets;
  optionsCopy = options;
  blockCopy = block;
  v110 = +[SABinaryLocator sharedBinaryLocator];
  context = objc_autoreleasePoolPush();
  v111 = +[NSMutableDictionary dictionary];
  v17 = [offsetsCopy count];
  v18 = sub_100001714(v17);
  v19 = v18;
  if (v17)
  {
    v105 = blockCopy;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100001FCC(dCopy, offsetsCopy, v19);
    }

    v107 = offsetsCopy;

    v20 = [optionsCopy objectForKeyedSubscript:@"useDsymForUUID"];
    if (v20 && (v21 = v20, [optionsCopy objectForKeyedSubscript:@"useDsymForUUID"], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "BOOLValue"), v22, v21, (v23 & 1) != 0))
    {
      v24 = 1151;
    }

    else
    {
      v24 = 1143;
    }

    v25 = [optionsCopy objectForKeyedSubscript:@"hasTextExec"];
    if (v25)
    {
      v26 = [optionsCopy objectForKeyedSubscript:@"hasTextExec"];
      bOOLValue = [v26 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v29 = v111;
    v30 = dCopy;
    v108 = pathCopy;
    v31 = v107;
    if (!v29)
    {
      sub_100002074();
    }

    if (!v30)
    {
      sub_100002074();
    }

    v32 = v31;
    v103 = pathCopy;
    v33 = sub_100001714(v31);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [v30 UUIDString];
      v97 = v96 = v30;
      path = [v108 path];
      *buf = 138413058;
      *&buf[4] = v97;
      v134 = 1024;
      v135 = v12;
      v136 = 2112;
      v137 = path;
      v138 = 2048;
      v139 = [v32 count];
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "got %@ %d %@ with %zu addresses", buf, 0x26u);

      v30 = v96;
    }

    path2 = [v108 path];
    v35 = path2;
    if (path2 && [path2 length] && objc_msgSend(v35, "characterAtIndex:", 0) == 47)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v102 = v36;
    v37 = [SABinary binaryWithUUID:v30 absolutePath:v36];
    if (!v37)
    {
      sub_100002074();
    }

    v112 = v37;
    path3 = [v37 path];
    v39 = v35;
    v40 = path3;
    v106 = v39;
    if (v39 && !path3 && [v39 length])
    {
      v41 = v106;
      if ([v106 characterAtIndex:0])
      {
        [v112 addPath:v106];
      }
    }

    else
    {

      v41 = v106;
    }

    v42 = v112;
    if ([v112 cacheSymbolOwnerWithOptions:v24 pid:v12])
    {
      v101 = dCopy;
      if (bOOLValue)
      {
        v43 = [v112 segmentWithName:@"__TEXT_EXEC"];
        if (!v43)
        {
          v44 = sub_100001714(0);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            [v112 debugDescription];
            v46 = v45 = v30;
            uTF8String = [v46 UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String;
            v48 = "Binary %s has no text exec";
LABEL_70:
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v48, buf, 0xCu);

            v30 = v45;
            goto LABEL_71;
          }

          goto LABEL_71;
        }
      }

      else
      {
        v43 = [v112 segmentWithName:@"__TEXT"];
        if (!v43)
        {
          v44 = sub_100001714(0);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            [v112 debugDescription];
            v46 = v45 = v30;
            uTF8String2 = [v46 UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String2;
            v48 = "Binary %s has no text";
            goto LABEL_70;
          }

LABEL_71:
          offsetsCopy = v107;
          v28 = optionsCopy;

          v41 = v106;
LABEL_72:

          v80 = v29;
          v81 = [v80 objectForKeyedSubscript:@"Size"];
          unsignedLongLongValue = [v81 unsignedLongLongValue];

          if (unsignedLongLongValue)
          {
            *buf = 0;
            v83 = [NSPropertyListSerialization dataWithPropertyList:v80 format:200 options:0 error:buf];
            v84 = *buf;
            v85 = v84;
            if (!v83)
            {
              v86 = sub_100001714(v84);
              if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
              {
                sub_100002090(v85);
              }

              v88 = sub_100001714(v87);
              if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
                sub_100002128(v80);
              }

              v90 = sub_100001714(v89);
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                sub_1000021C0(v90);
              }
            }
          }

          else
          {
            v83 = 0;
          }

          [v83 length];
          v105[2](v105, v83);
          v91 = [v28 objectForKeyedSubscript:@"shouldCacheSymbols"];
          if (v91 && (v92 = v91, [v28 objectForKeyedSubscript:@"shouldCacheSymbols"], v93 = objc_claimAutoreleasedReturnValue(), v94 = objc_msgSend(v93, "BOOLValue"), v93, v92, (v94 & 1) != 0))
          {
            +[SABinary clearCoreSymbolicationCaches];
          }

          else
          {
            +[SABinary clearCaches];
          }

          v95 = sub_100001714([v110 done]);
          pathCopy = v103;
          blockCopy = v105;
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
          {
            sub_100002204(v95);
          }

          v27 = v110;
          goto LABEL_90;
        }
      }

      v49 = v43;
      v100 = v30;
      v50 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v32, "count")}];
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v99 = v32;
      v51 = v32;
      v52 = [v51 countByEnumeratingWithState:&v122 objects:buf count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v123;
        do
        {
          for (i = 0; i != v53; i = i + 1)
          {
            if (*v123 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = [v49 instructionAtOffsetIntoSegment:{objc_msgSend(*(*(&v122 + 1) + 8 * i), "unsignedLongLongValue")}];
            if (v56)
            {
              [v50 addObject:v56];
            }
          }

          v53 = [v51 countByEnumeratingWithState:&v122 objects:buf count:16];
        }

        while (v53);
      }

      [v112 symbolicateAllInstructionsWithOptions:v24 pid:v12];
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      obj = v50;
      v117 = [obj countByEnumeratingWithState:&v118 objects:v132 count:16];
      if (v117)
      {
        v116 = *v119;
        v115 = v49;
        do
        {
          for (j = 0; j != v117; j = j + 1)
          {
            if (*v119 != v116)
            {
              objc_enumerationMutation(obj);
            }

            v58 = *(*(&v118 + 1) + 8 * j);
            if ([v58 numSymbols])
            {
              v59 = v29;
              v60 = v29;
              v61 = v58;
              if (!v61)
              {
                sub_100002074();
              }

              v62 = v61;
              binary = [v61 binary];
              if (!binary)
              {
                sub_100002074();
              }

              v64 = binary;
              numSymbols = [v62 numSymbols];
              if (!numSymbols)
              {
                sub_100002074();
              }

              v66 = numSymbols;
              v67 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v62 offsetIntoSegment]);
              if (!v67)
              {
                sub_100002074();
              }

              v68 = v67;
              v69 = [v60 objectForKeyedSubscript:@"Symbols"];
              if (v69)
              {
                v70 = v69;
              }

              else
              {
                v70 = +[NSMutableDictionary dictionary];
                [v60 setObject:v70 forKeyedSubscript:@"Symbols"];
                if (!v70)
                {
                  sub_100002074();
                }
              }

              stringValue = [v68 stringValue];
              v72 = [v70 objectForKeyedSubscript:stringValue];

              if (v72)
              {
                sub_100002074();
              }

              if (v66 == 1)
              {
                v73 = 0;
              }

              else
              {
                v73 = [NSMutableArray arrayWithCapacity:v66 - 1];
              }

              v126[0] = _NSConcreteStackBlock;
              v126[1] = 3221225472;
              v126[2] = sub_100001C40;
              v126[3] = &unk_1000042C8;
              v127 = v62;
              v128 = v64;
              v129 = v73;
              v130 = v70;
              v131 = v68;
              v74 = v68;
              v75 = v70;
              v76 = v73;
              v77 = v64;
              v78 = v62;
              [v78 enumerateSymbols:v126];

              v29 = v59;
              v49 = v115;
            }
          }

          v117 = [obj countByEnumeratingWithState:&v118 objects:v132 count:16];
        }

        while (v117);
      }

      v30 = v100;
      dCopy = v101;
      v32 = v99;
      v41 = v106;
      v42 = v112;
    }

    add_binary_info_to_binary_dictionary(v29, v42);
    offsetsCopy = v107;
    v28 = optionsCopy;
    if (bOOLValue)
    {
      [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:@"TEXT_EXEC"];
    }

    goto LABEL_72;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100002248(dCopy, offsetsCopy);
  }

  v27 = v110;
  [v110 done];
  v28 = optionsCopy;
LABEL_90:

  objc_autoreleasePoolPop(context);
}

- (BOOL)_connectionIsEntitled:(id)entitled toEntitlement:(id)entitlement
{
  v4 = [entitled valueForEntitlement:entitlement];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v7 = [(TailspinSymbolicationServer *)self _connectionIsEntitled:connectionCopy toEntitlement:@"com.apple.tailspin.symbolication"];
  if (v7)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TailspinSymbolicationServerInterface];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
    objc_storeStrong(&self->_connection, connection);
  }

  else
  {
    v9 = proc_name([connectionCopy processIdentifier], buffer, 0x20u);
    v10 = sub_100001714(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000022FC(buffer);
    }
  }

  return v7;
}

@end