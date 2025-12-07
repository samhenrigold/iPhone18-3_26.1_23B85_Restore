@interface MCMCommandReplaceContainer
+ (BOOL)recoverFromReplaceOperationsWithContext:(id)context error:(id *)error;
+ (Class)incomingMessageClass;
+ (id)_readAndValidateReplaceFileAtUrl:(id)url error:(id *)error;
- (BOOL)_writeToDiskReplaceAt:(id)at old:(id)old withNew:(id)new usingStaging:(id)staging toDestination:(id)destination error:(id *)error;
- (BOOL)preflightClientAllowed;
- (MCMCommandReplaceContainer)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandReplaceContainer

- (BOOL)_writeToDiskReplaceAt:(id)at old:(id)old withNew:(id)new usingStaging:(id)staging toDestination:(id)destination error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  atCopy = at;
  oldCopy = old;
  newCopy = new;
  stagingCopy = staging;
  destinationCopy = destination;
  v18 = +[MCMFileManager defaultManager];
  v19 = [v18 dataWritingOptionsForFileAtURL:atCopy];

  if (oldCopy && newCopy && stagingCopy && destinationCopy)
  {
    errorCopy = error;
    v39[0] = @"MCMReplaceOperationOldURL";
    path = [oldCopy path];
    v40[0] = path;
    v39[1] = @"MCMReplaceOperationNewURL";
    path2 = [newCopy path];
    v40[1] = path2;
    v39[2] = @"MCMReplaceOperationStagingURL";
    path3 = [stagingCopy path];
    v40[2] = path3;
    v39[3] = @"MCMReplaceOperationDestURL";
    v36 = destinationCopy;
    path4 = [destinationCopy path];
    v40[3] = path4;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];

    v38 = 0;
    LOBYTE(path4) = [v24 MCM_writeToURL:atCopy withOptions:v19 error:&v38];
    v25 = v38;
    if (path4)
    {
      v26 = 0;
      v27 = 1;
      destinationCopy = v36;
      goto LABEL_16;
    }

    v26 = [[MCMError alloc] initWithNSError:v25 url:atCopy defaultErrorType:86];
    v28 = container_log_handle_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      path5 = [atCopy path];
      *buf = 138412546;
      v42 = path5;
      v43 = 2112;
      v44 = v25;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Failed to write replace dictionary to URL %@; error = %@", buf, 0x16u);
    }

    error = errorCopy;
    destinationCopy = v36;
  }

  else
  {
    v26 = [[MCMError alloc] initWithErrorType:33 category:4];
    v28 = container_log_handle_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      path6 = [oldCopy path];
      path7 = [newCopy path];
      path8 = [stagingCopy path];
      [destinationCopy path];
      *buf = 138413058;
      v42 = path6;
      v43 = 2112;
      v44 = path7;
      v45 = 2112;
      v46 = path8;
      v48 = v47 = 2112;
      v32 = v48;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Invalid Replace File Info: old: %@, new: %@, staging: %@, dest: %@", buf, 0x2Au);
    }

    v24 = 0;
    v25 = 0;
  }

  if (error)
  {
    v29 = v26;
    v27 = 0;
    *error = v26;
  }

  else
  {
    v27 = 0;
  }

LABEL_16:

  return v27;
}

- (void)execute
{
  v257 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  containerIdentityNew = [(MCMCommandReplaceContainer *)self containerIdentityNew];
  containerIdentityOld = [(MCMCommandReplaceContainer *)self containerIdentityOld];
  uuid = [(MCMError *)containerIdentityOld uuid];
  containerClass = [(MCMError *)containerIdentityNew containerClass];
  containerClass2 = [(MCMError *)containerIdentityOld containerClass];
  identifier = [(MCMError *)containerIdentityNew identifier];
  identifier2 = [(MCMError *)containerIdentityOld identifier];
  userIdentity = [(MCMError *)containerIdentityNew userIdentity];
  userIdentity2 = [(MCMError *)containerIdentityOld userIdentity];
  v9 = containermanager_copy_global_configuration();
  managedPathRegistry = [v9 managedPathRegistry];
  containermanagerReplaceOperations = [managedPathRegistry containermanagerReplaceOperations];

  v212 = containermanagerReplaceOperations;
  v214 = [containermanagerReplaceOperations url];
  v224 = uuid;
  v225 = identifier;
  if (!v214)
  {
    v205 = containerClass2;
    v15 = [[MCMError alloc] initWithErrorType:84];
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to get url for storing replace operations.", buf, 2u);
    }

    v210 = 0;
    v211 = 0;
    v17 = 0;
    v226 = 0;
    containerRootURL7 = 0;
    v18 = 0;
    v217 = 0;
    v221 = 0;
    goto LABEL_51;
  }

  if (uuid && containerClass2 != containerClass)
  {
    v12 = [[MCMError alloc] initWithErrorType:23];
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v246 = containerClass2;
      v247 = 2048;
      v248 = containerClass;
      v14 = "Can't replace containers of different class types: %ld and %ld";
LABEL_26:
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  if (!uuid)
  {
    v205 = containerClass2;
    v221 = 0;
    v26 = 0;
LABEL_16:
    context = [(MCMCommand *)self context];
    containerCache = [context containerCache];
    v242 = v26;
    v29 = [containerCache entryForContainerIdentity:containerIdentityNew error:&v242];
    v15 = v242;

    v204 = containerIdentityNew;
    if (v29)
    {
      uuid2 = [v29 uuid];
      uuid3 = [(MCMError *)containerIdentityNew uuid];
      v32 = [uuid2 isEqual:uuid3];

      if (v32)
      {
        v241 = v15;
        v211 = v29;
        v18 = [v29 metadataWithError:&v241];
        v33 = v241;

        if (v18)
        {
          transient = [v18 transient];
          if (v221)
          {
            containerPath = [v18 containerPath];
            containerPath2 = [v221 containerPath];
            v37 = [containerPath isEqual:containerPath2];

            if (v37)
            {
              v15 = [[MCMError alloc] initWithErrorType:22];

              v16 = container_log_handle_for_category();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                containerPath3 = [v18 containerPath];
                *buf = 138412290;
                v246 = containerPath3;
                _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Can't replace the same container at %@", buf, 0xCu);
              }

              v17 = 0;
              v210 = 0;
              v226 = 0;
              containerRootURL7 = 0;
              goto LABEL_50;
            }
          }

          v193 = v33;
          selfCopy = self;
          v186 = transient;
          v203 = identifier2;
          v41 = v224;
          context2 = [(MCMCommand *)self context];
          clientIdentity = [context2 clientIdentity];
          [clientIdentity platform];
          [v18 containerClass];
          [v18 transient];
          v44 = container_class_supports_randomized_path();

          containerPath4 = [v18 containerPath];
          containerRootURL = [containerPath4 containerRootURL];
          lastPathComponent = [containerRootURL lastPathComponent];

          v40 = v225;
          containerIdentityNew = v204;
          v210 = lastPathComponent;
          if (v44)
          {
            v48 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:lastPathComponent];
            if (!v48)
            {
              v15 = [[MCMError alloc] initWithErrorType:10];

              v16 = container_log_handle_for_category();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                containerPath5 = [v18 containerPath];
                containerRootURL2 = [containerPath5 containerRootURL];
                path = [containerRootURL2 path];
                *buf = 138412290;
                v246 = path;
                _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Invalid URL (last path component not UUID): %@", buf, 0xCu);
              }

              v17 = 0;
              v226 = 0;
              containerRootURL7 = 0;
              v217 = 0;
              goto LABEL_99;
            }
          }

          containerPath6 = [v221 containerPath];
          v17 = containerPath6;
          if (!((v224 == 0) | v44 & 1))
          {
            v217 = 0;
            v82 = containerPath6;
            goto LABEL_86;
          }

          v50 = objc_opt_class();
          if ([v221 transient])
          {
            v50 = objc_opt_class();
          }

          v51 = [v50 containerPathForUserIdentity:userIdentity containerClass:containerClass containerPathIdentifier:lastPathComponent];
          containerClassPath = [v51 containerClassPath];
          v240 = 0;
          v53 = [containerClassPath createIfNecessaryWithError:&v240];
          v54 = v240;

          v217 = v54;
          if (v53)
          {

            v55 = +[MCMFileManager defaultManager];
            v215 = v51;
            containerRootURL3 = [v51 containerRootURL];
            v57 = [v55 itemExistsAtURL:containerRootURL3];

            if (v57)
            {
              v15 = [[MCMError alloc] initWithErrorType:27];

              v16 = container_log_handle_for_category();
              identifier2 = v203;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                containerRootURL4 = [(MCMError *)v215 containerRootURL];
                path2 = [containerRootURL4 path];
                *buf = 138412290;
                v246 = path2;
                _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Container already exists at %@", buf, 0xCu);
              }

              v226 = 0;
              containerRootURL7 = 0;
              v17 = v215;
              self = selfCopy;
              goto LABEL_51;
            }

            identifier2 = v203;
            if (!v224)
            {
              v129 = [(MCMError *)v204 identityByChangingTransient:0];
              containerIdentity = [v129 containerIdentity];

              context3 = [(MCMCommand *)selfCopy context];
              containerCache2 = [context3 containerCache];
              v239 = v193;
              v132 = [containerCache2 entryForContainerIdentity:containerIdentity error:&v239];
              v12 = v239;

              if (v132)
              {
                v133 = [[MCMError alloc] initWithErrorType:27];

                v134 = container_log_handle_for_category();
                if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                {
                  identifier3 = [v18 identifier];
                  transient2 = [v221 transient];
                  *buf = 138412802;
                  v246 = identifier3;
                  v247 = 2048;
                  v248 = containerClass;
                  v249 = 1024;
                  LODWORD(v250) = transient2;
                  _os_log_error_impl(&dword_1DF2C3000, v134, OS_LOG_TYPE_ERROR, "Container with identifier: %@, class: %ld, transient: %d already exists", buf, 0x1Cu);
                }

                v12 = v133;
              }

              else if ([(MCMError *)v12 type]== 21)
              {

                v153 = container_log_handle_for_category();
                if (os_signpost_enabled(v153))
                {
                  containerPath7 = [v18 containerPath];
                  containerPathIdentifier = [containerPath7 containerPathIdentifier];
                  identifier4 = [v18 identifier];
                  containerClass3 = [v18 containerClass];
                  *buf = 138478339;
                  v246 = containerPathIdentifier;
                  v247 = 2113;
                  v248 = identifier4;
                  v249 = 2050;
                  v250 = containerClass3;
                  _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v153, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PromotingTransientContainer", " uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu ", buf, 0x20u);
                }

                v226 = 0;
                containerRootURL7 = 0;
                v12 = 0;
                self = selfCopy;
                identifier2 = v203;
                goto LABEL_131;
              }

              v41 = v224;
              identifier2 = v203;

              v226 = 0;
              containerRootURL7 = 0;
              self = selfCopy;
              goto LABEL_69;
            }

            v82 = v215;
LABEL_86:
            uUID = [MEMORY[0x1E696AFB0] UUID];
            uUIDString = [uUID UUIDString];

            containerPath8 = [v221 containerPath];
            containerRootURL5 = [containerPath8 containerRootURL];

            containerPath9 = [v18 containerPath];
            containerRootURL6 = [containerPath9 containerRootURL];

            v87 = MEMORY[0x1E695DFF8];
            v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", uUIDString];
            v226 = [v87 URLWithString:v88 relativeToURL:v214];

            v215 = v82;
            v180 = uUIDString;
            v89 = [MCMContainerStagingPath stagingContainerPathForDestinationContainerPath:v82 stagingPathIdentifier:uUIDString];
            containerClassPath2 = [(MCMError *)v89 containerClassPath];
            v238 = v217;
            LOBYTE(uUIDString) = [containerClassPath2 createIfNecessaryWithError:&v238];
            v178 = v238;

            v179 = v89;
            if (uUIDString)
            {
              containerRootURL7 = [(MCMError *)v89 containerRootURL];
              v91 = [MCMContainerCacheEntry birthtimeForURL:containerRootURL5];
              if (v91 | v92)
              {
                birthtime = v91;
                v98 = v92;
                self = selfCopy;
              }

              else
              {
                v93 = +[MCMFileManager defaultManager];
                v237 = 0;
                v94 = [v93 fsNodeOfURL:containerRootURL5 followSymlinks:0 error:&v237];
                v95 = v237;

                if (v94)
                {
                  birthtime = [v94 birthtime];
                  v98 = v97;
                }

                else
                {
                  v112 = container_log_handle_for_category();
                  if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v246 = containerRootURL5;
                    v247 = 2112;
                    v248 = v95;
                    _os_log_error_impl(&dword_1DF2C3000, v112, OS_LOG_TYPE_ERROR, "Could not read fs node for old container at [%@] (non-fatal); error = %@", buf, 0x16u);
                  }

                  v98 = 0;
                  birthtime = 0;
                }

                self = selfCopy;
              }

              if (birthtime | v98)
              {
                [MCMContainerCacheEntry setBirthtime:birthtime forURL:v98, containerRootURL6];
              }

              containerRootURL8 = [(MCMError *)v215 containerRootURL];
              v236 = v193;
              v114 = [(MCMCommandReplaceContainer *)self _writeToDiskReplaceAt:v226 old:containerRootURL5 withNew:containerRootURL6 usingStaging:containerRootURL7 toDestination:containerRootURL8 error:&v236];
              v115 = v236;

              v181 = v115;
              if (v114)
              {
                v116 = container_log_handle_for_category();
                if (os_signpost_enabled(v116))
                {
                  containerPath10 = [v221 containerPath];
                  containerPathIdentifier2 = [containerPath10 containerPathIdentifier];
                  identifier5 = [v221 identifier];
                  containerClass4 = [v221 containerClass];
                  containerPath11 = [v18 containerPath];
                  containerPathIdentifier3 = [containerPath11 containerPathIdentifier];
                  identifier6 = [v18 identifier];
                  containerClass5 = [v18 containerClass];
                  *buf = 138479107;
                  v246 = containerPathIdentifier2;
                  v247 = 2113;
                  v248 = identifier5;
                  v249 = 2050;
                  v250 = containerClass4;
                  v251 = 2113;
                  v252 = containerPathIdentifier3;
                  v253 = 2113;
                  v254 = identifier6;
                  v255 = 2050;
                  v256 = containerClass5;
                  _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v116, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReplacingContainer", " uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu  -->  uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu ", buf, 0x3Eu);
                }

                v121 = +[MCMFileManager defaultManager];
                containerPath12 = [v221 containerPath];
                containerRootURL9 = [containerPath12 containerRootURL];
                v235 = v178;
                v195 = [v121 moveItemAtURL:containerRootURL9 toURL:containerRootURL7 error:&v235];
                v217 = v235;

                if (v195)
                {
                  context4 = [(MCMCommand *)self context];
                  containerCache3 = [context4 containerCache];
                  v234 = v181;
                  v126 = [containerCache3 removeContainerForUserIdentity:userIdentity2 contentClass:v205 identifier:identifier2 transient:objc_msgSend(v221 error:{"transient"), &v234}];
                  v12 = v234;

                  if (v126)
                  {
                    v127 = 1;
                    v41 = v224;
                    v40 = v225;
                    v106 = v179;
                    goto LABEL_130;
                  }

                  v181 = [[MCMError alloc] initWithErrorType:46];

                  v105 = container_log_handle_for_category();
                  v106 = v179;
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                  {
                    transient3 = [v221 transient];
                    *buf = 138412802;
                    v246 = identifier2;
                    v247 = 2048;
                    v248 = v205;
                    v249 = 1024;
                    LODWORD(v250) = transient3;
                    _os_log_error_impl(&dword_1DF2C3000, v105, OS_LOG_TYPE_ERROR, "Failed to remove from cache id: %@, class: %ld, transient: %d", buf, 0x1Cu);
                  }

                  v104 = v217;
                }

                else
                {
                  v128 = [[MCMError alloc] initWithErrorType:14];

                  v105 = container_log_handle_for_category();
                  v106 = v179;
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                  {
                    containerPath13 = [v221 containerPath];
                    containerRootURL10 = [containerPath13 containerRootURL];
                    path3 = [containerRootURL10 path];
                    path4 = [containerRootURL7 path];
                    *buf = 138412546;
                    v246 = path3;
                    v247 = 2112;
                    v248 = path4;
                    _os_log_error_impl(&dword_1DF2C3000, v105, OS_LOG_TYPE_ERROR, "Failed to move old %@ to staging %@", buf, 0x16u);
                  }

                  v104 = v217;
                  v181 = v128;
                }

                v41 = v224;
                v40 = v225;
              }

              else
              {
                v105 = container_log_handle_for_category();
                v41 = v224;
                if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v246 = v115;
                  _os_log_error_impl(&dword_1DF2C3000, v105, OS_LOG_TYPE_ERROR, "Failed to write replace file: %@", buf, 0xCu);
                }

                v40 = v225;
                v104 = v178;
                v106 = v179;
              }
            }

            else
            {
              v101 = [MCMError alloc];
              containerClassPath3 = [(MCMError *)v89 containerClassPath];
              classURL = [containerClassPath3 classURL];
              v104 = v178;
              v181 = [MCMError initWithNSError:v101 url:"initWithNSError:url:defaultErrorType:" defaultErrorType:?];

              v105 = container_log_handle_for_category();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v106 = v179;
                v246 = v179;
                v247 = 2112;
                v248 = v178;
                _os_log_error_impl(&dword_1DF2C3000, v105, OS_LOG_TYPE_ERROR, "Failed to create class path dir for %@: %@", buf, 0x16u);
                containerRootURL7 = 0;
                self = selfCopy;
              }

              else
              {
                containerRootURL7 = 0;
                self = selfCopy;
                v106 = v179;
              }
            }

            v127 = 0;
            v217 = v104;
            v12 = v181;
LABEL_130:

            if ((v127 & 1) == 0)
            {
              goto LABEL_53;
            }

LABEL_131:
            if (v186)
            {
              v135 = [v18 metadataBySettingTransient:0];

              v18 = v135;
              v136 = v215;
            }

            else
            {
              v136 = v215;
              if (!v221)
              {
LABEL_136:
                v215 = v136;
                v138 = +[MCMFileManager defaultManager];
                containerPath14 = [v18 containerPath];
                containerRootURL11 = [containerPath14 containerRootURL];
                containerRootURL12 = [(MCMError *)v136 containerRootURL];
                v232 = v217;
                v184 = [v138 moveItemAtURL:containerRootURL11 toURL:containerRootURL12 error:&v232];
                v196 = v232;

                if ((v184 & 1) == 0)
                {
                  v150 = [MCMError alloc];
                  containerRootURL13 = [(MCMError *)v136 containerRootURL];
                  v15 = [(MCMError *)v150 initWithNSError:v196 url:containerRootURL13 defaultErrorType:15];

                  v16 = container_log_handle_for_category();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    containerPath15 = [v221 containerPath];
                    containerRootURL14 = [containerPath15 containerRootURL];
                    path5 = [containerRootURL14 path];
                    containerPath16 = [v18 containerPath];
                    containerRootURL15 = [containerPath16 containerRootURL];
                    path6 = [containerRootURL15 path];
                    containerRootURL16 = [(MCMError *)v215 containerRootURL];
                    path7 = [containerRootURL16 path];
                    *buf = 138412802;
                    v246 = path5;
                    v247 = 2112;
                    v248 = path6;
                    v249 = 2112;
                    v250 = path7;
                    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to replace: %@ with: %@ at: %@", buf, 0x20u);
                  }

                  v17 = v215;
                  v217 = v196;
                  goto LABEL_51;
                }

                context5 = [(MCMCommand *)self context];
                containerCache4 = [context5 containerCache];
                v231 = v12;
                v219 = [containerCache4 removeContainerForUserIdentity:userIdentity contentClass:containerClass identifier:v225 transient:v186 error:&v231];
                v143 = v231;

                if ((v219 & 1) == 0)
                {
                  v15 = [[MCMError alloc] initWithErrorType:46];

                  v16 = container_log_handle_for_category();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    transient4 = [v18 transient];
                    *buf = 138412802;
                    v246 = v225;
                    v247 = 2048;
                    v248 = containerClass;
                    v249 = 1024;
                    LODWORD(v250) = transient4;
                    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to remove from cache id: %@, class: %ld, transient: %d", buf, 0x1Cu);
                  }

                  v17 = v215;
                  v217 = v196;
                  goto LABEL_51;
                }

                selfCopy2 = self;
                v145 = [v18 metadataByChangingContainerPath:v215];

                [(MCMCommand *)selfCopy2 context];
                v147 = v146 = v143;
                containerCache5 = [v147 containerCache];
                v230 = v146;
                v149 = [containerCache5 addContainerMetadata:v145 error:&v230];
                v12 = v230;

                if (v149)
                {
                  v217 = v196;
                  v18 = v145;
                  self = selfCopy;
                  identifier2 = v203;
LABEL_52:
                  v41 = v224;
                  v40 = v225;
                  if (!v224)
                  {
                    goto LABEL_70;
                  }

LABEL_53:
                  v207 = v18;
                  v58 = containerIdentityNew;
                  if (containerRootURL7)
                  {
                    v200 = containerIdentityOld;
                    v59 = containermanager_copy_global_configuration();
                    v60 = [v59 isGlobalContainerClass:v205];

                    if (v60)
                    {
                      v61 = 0;
                    }

                    else
                    {
                      v61 = userIdentity2;
                    }

                    selfCopy3 = self;
                    context6 = [(MCMCommand *)self context];
                    containerFactory = [context6 containerFactory];
                    v229 = v12;
                    v65 = [containerFactory deleteURL:containerRootURL7 forUserIdentity:v61 error:&v229];
                    v66 = v229;

                    if ((v65 & 1) == 0)
                    {
                      v67 = container_log_handle_for_category();
                      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                      {
                        path8 = [containerRootURL7 path];
                        *buf = 138412546;
                        v246 = path8;
                        v247 = 2112;
                        v248 = v66;
                        _os_log_error_impl(&dword_1DF2C3000, v67, OS_LOG_TYPE_ERROR, "Failed to remove staging dir: %@; error = %@", buf, 0x16u);
                      }

                      v66 = 0;
                    }

                    self = selfCopy3;

                    v12 = v66;
                    v58 = containerIdentityNew;
                    v41 = v224;
                    v40 = v225;
                    containerIdentityOld = v200;
                  }

                  if (v226)
                  {
                    v68 = identifier2;
                    selfCopy4 = self;
                    context7 = [(MCMCommand *)self context];
                    containerFactory2 = [context7 containerFactory];
                    v228 = v12;
                    v72 = [containerFactory2 deleteURL:v226 forUserIdentity:0 error:&v228];
                    v13 = v228;

                    if ((v72 & 1) == 0)
                    {
                      v81 = container_log_handle_for_category();
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                      {
                        path9 = [v226 path];
                        *buf = 138412546;
                        v246 = path9;
                        v247 = 2112;
                        v248 = v13;
                        _os_log_error_impl(&dword_1DF2C3000, v81, OS_LOG_TYPE_ERROR, "Failed to remove replace file: %@; error = %@", buf, 0x16u);
                      }

                      v12 = 0;
                      self = selfCopy4;
                      identifier2 = v68;
                      containerIdentityNew = v58;
                      v18 = v207;
                      goto LABEL_35;
                    }

                    v12 = v13;
                    self = selfCopy4;
                    identifier2 = v68;
                    v41 = v224;
                    v40 = v225;
                  }

                  else
                  {
                    v226 = 0;
                  }

                  containerIdentityNew = v58;
                  v18 = v207;
                  goto LABEL_67;
                }

                v15 = [[MCMError alloc] initWithErrorType:45];

                v16 = container_log_handle_for_category();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  transient5 = [v221 transient];
                  *buf = 138412802;
                  v246 = v145;
                  v247 = 2112;
                  v17 = v215;
                  v248 = v215;
                  v249 = 1024;
                  LODWORD(v250) = transient5;
                  _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@, transient: %d", buf, 0x1Cu);
                }

                else
                {
                  v17 = v215;
                }

                v18 = v145;
                v217 = v196;
                goto LABEL_99;
              }
            }

            v233 = v12;
            v137 = [v18 writeMetadataToDiskWithError:&v233];
            v15 = v233;

            if ((v137 & 1) == 0)
            {
              v16 = container_log_handle_for_category();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                containerPath17 = [v221 containerPath];
                containerRootURL17 = [containerPath17 containerRootURL];
                [containerRootURL17 path];
                v163 = v136;
                v164 = v216 = v136;
                containerPath18 = [v18 containerPath];
                containerRootURL18 = [containerPath18 containerRootURL];
                path10 = [containerRootURL18 path];
                containerRootURL19 = [(MCMError *)v163 containerRootURL];
                path11 = [containerRootURL19 path];
                *buf = 138413058;
                v246 = v164;
                v247 = 2112;
                v248 = path10;
                v249 = 2112;
                v250 = path11;
                v251 = 2112;
                v252 = v15;
                _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to write metadata during replace: %@ with: %@ at: %@, error = %@", buf, 0x2Au);

                v17 = v216;
              }

              else
              {
                v17 = v136;
              }

              goto LABEL_51;
            }

            v12 = v15;
            goto LABEL_136;
          }

          v107 = [MCMError alloc];
          containerClassPath4 = [v51 containerClassPath];
          [containerClassPath4 classURL];
          v110 = v109 = v51;
          v15 = [(MCMError *)v107 initWithNSError:v54 url:v110 defaultErrorType:3];

          v111 = container_log_handle_for_category();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v246 = v109;
            v247 = 2112;
            v248 = v54;
            _os_log_error_impl(&dword_1DF2C3000, v111, OS_LOG_TYPE_ERROR, "Failed to create class path dir for %@: %@", buf, 0x16u);
          }

          v226 = 0;
          containerRootURL7 = 0;
          v16 = v109;
LABEL_99:
          self = selfCopy;
          identifier2 = v203;
          goto LABEL_51;
        }

        v15 = v33;
      }

      else
      {
        v38 = [[MCMError alloc] initWithErrorType:21 category:3];

        v211 = 0;
        v15 = v38;
      }
    }

    else
    {
      v211 = 0;
    }

    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v246 = containerIdentityNew;
      v247 = 2112;
      v248 = v15;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "No Container with identity: %@; error = %@", buf, 0x16u);
      v17 = 0;
      v210 = 0;
      v226 = 0;
      containerRootURL7 = 0;
      v18 = 0;
      v217 = 0;
      goto LABEL_51;
    }

    v17 = 0;
    v210 = 0;
    v226 = 0;
    containerRootURL7 = 0;
    v18 = 0;
LABEL_50:
    v217 = 0;
    containerIdentityNew = v204;
LABEL_51:

    v215 = v17;
    v12 = v15;
    goto LABEL_52;
  }

  if ([(MCMError *)userIdentity2 isEqual:userIdentity])
  {
    context8 = [(MCMCommand *)self context];
    containerCache6 = [context8 containerCache];
    v244 = 0;
    v13 = [containerCache6 entryForContainerIdentity:containerIdentityOld error:&v244];
    v12 = v244;

    if (v13)
    {
      v205 = containerClass2;
      selfCopy5 = self;
      uuid4 = [v13 uuid];
      uuid5 = [(MCMError *)containerIdentityOld uuid];
      v24 = [uuid4 isEqual:uuid5];

      if (v24)
      {
        v243 = v12;
        v25 = [v13 metadataWithError:&v243];
        v26 = v243;

        v221 = v25;
        if (v25)
        {

          self = selfCopy5;
          goto LABEL_16;
        }
      }

      else
      {
        v26 = [[MCMError alloc] initWithErrorType:21 category:3];

        v13 = 0;
      }

      v12 = v26;
      self = selfCopy5;
    }

    v39 = container_log_handle_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v246 = containerIdentityOld;
      v247 = 2112;
      v248 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "No Container with identity: %@; error = %@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  v12 = [[MCMError alloc] initWithErrorType:76];
  v13 = container_log_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v246 = userIdentity2;
    v247 = 2112;
    v248 = userIdentity;
    v14 = "Can't replace containers of different personas: %@ and %@";
    goto LABEL_26;
  }

LABEL_34:
  v217 = 0;
  v221 = 0;
  v18 = 0;
  v226 = 0;
  containerRootURL7 = 0;
  v210 = 0;
  v211 = 0;
  v215 = 0;
LABEL_35:

  v41 = v224;
  v40 = v225;
LABEL_67:
  if (![(MCMCommandReplaceContainer *)self asyncReclaim])
  {
    goto LABEL_70;
  }

  v73 = [MCMCommandOperationReclaimDiskSpace alloc];
  context9 = [(MCMCommand *)self context];
  containerIdentity = [(MCMCommandOperationReclaimDiskSpace *)v73 initWithAsynchronously:1 context:context9 resultPromise:0];

  [(MCMCommandOperationReclaimDiskSpace *)containerIdentity execute];
LABEL_69:

LABEL_70:
  if (v12)
  {

    v18 = 0;
  }

  v76 = container_log_handle_for_category();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v246 = v12;
    _os_log_debug_impl(&dword_1DF2C3000, v76, OS_LOG_TYPE_DEBUG, "Replace; error = %@", buf, 0xCu);
  }

  if (v18)
  {
    v77 = [[MCMResultWithContainerBase alloc] initWithMetadata:v18 sandboxToken:0 includePath:1 includeInfo:0 includeUserManagedAssetsRelPath:0 includeCreator:0];
  }

  else
  {
    if (!v12)
    {
      v12 = [[MCMError alloc] initWithErrorType:15 category:4];
      v78 = container_log_handle_for_category();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1DF2C3000, v78, OS_LOG_TYPE_FAULT, "Did not generate metadata, but found no error during replace.", buf, 2u);
      }
    }

    v77 = [(MCMResultBase *)[MCMResultWithContainerBase alloc] initWithError:v12];
  }

  v79 = v77;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v79];

  objc_autoreleasePoolPop(context);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToReplaceContainers = [clientIdentity isAllowedToReplaceContainers];

  return isAllowedToReplaceContainers;
}

- (MCMCommandReplaceContainer)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v15.receiver = self;
  v15.super_class = MCMCommandReplaceContainer;
  v9 = [(MCMCommand *)&v15 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentityOld = [messageCopy containerIdentityOld];
    containerIdentityOld = v9->_containerIdentityOld;
    v9->_containerIdentityOld = containerIdentityOld;

    containerIdentityNew = [messageCopy containerIdentityNew];
    containerIdentityNew = v9->_containerIdentityNew;
    v9->_containerIdentityNew = containerIdentityNew;

    v9->_asyncReclaim = 1;
  }

  return v9;
}

+ (id)_readAndValidateReplaceFileAtUrl:(id)url error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  urlCopy = url;
  v53 = 0;
  v6 = [MEMORY[0x1E695DF90] MCM_dictionaryWithContentsOfURL:urlCopy options:1 error:&v53];
  v7 = v53;
  v51 = v7;
  v52 = urlCopy;
  if (!v6)
  {
    v10 = [[MCMError alloc] initWithNSError:v7 url:urlCopy defaultErrorType:35];
    v11 = container_log_handle_for_category();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_23:
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
LABEL_24:

      if (error)
      {
        v26 = v10;
        v8 = 0;
        *error = v10;
      }

      else
      {
        v8 = 0;
      }

      v27 = v22;
      v28 = v23;
      v29 = v24;
      goto LABEL_28;
    }

    path = [urlCopy path];
    *buf = 138412290;
    v55 = path;
    _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to read replace file at URL %@", buf, 0xCu);
LABEL_32:

    goto LABEL_23;
  }

  objc_opt_class();
  v8 = v6;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = [[MCMError alloc] initWithErrorType:35 category:5];
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Bad Data in replace file: %@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v13 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
  objc_opt_class();
  v14 = v13;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!v14)
  {
LABEL_21:

LABEL_22:
    v10 = [[MCMError alloc] initWithErrorType:35 category:5];
    v11 = container_log_handle_for_category();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    path = [v8 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
    v32 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationNewURL"];
    v33 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
    v34 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationDestURL"];
    *buf = 138413058;
    v55 = path;
    v56 = 2112;
    v57 = v32;
    v58 = 2112;
    v59 = v33;
    v60 = 2112;
    v61 = v34;
    _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Invalid replace data: Old: %@, New: %@, Staging: %@, Dest: %@", buf, 0x2Au);

    goto LABEL_32;
  }

  v15 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationNewURL"];
  objc_opt_class();
  v16 = v15;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!v16)
  {
LABEL_20:

    goto LABEL_21;
  }

  v17 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
  objc_opt_class();
  v18 = v17;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_19;
  }

  if (!v18)
  {
LABEL_19:

    goto LABEL_20;
  }

  v19 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationDestURL"];
  objc_opt_class();
  v20 = v19;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (!v21)
  {
    goto LABEL_22;
  }

  errorCopy = error;
  v35 = MEMORY[0x1E695DFF8];
  v36 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
  v37 = [v35 fileURLWithPath:v36 isDirectory:1];

  v38 = MEMORY[0x1E695DFF8];
  v39 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationNewURL"];
  v24 = [v38 fileURLWithPath:v39 isDirectory:1];

  v40 = MEMORY[0x1E695DFF8];
  v41 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
  v23 = [v40 fileURLWithPath:v41 isDirectory:1];

  v42 = MEMORY[0x1E695DFF8];
  v43 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationDestURL"];
  v22 = [v42 fileURLWithPath:v43 isDirectory:1];

  objc_opt_class();
  v25 = v37;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (!v25)
  {
LABEL_46:
    v10 = [[MCMError alloc] initWithErrorType:35 category:5];
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      path2 = [v25 path];
      path3 = [v24 path];
      path4 = [v23 path];
      path5 = [v22 path];
      *buf = 138413058;
      v55 = path2;
      v56 = 2112;
      v57 = path3;
      v58 = 2112;
      v59 = path4;
      v60 = 2112;
      v61 = path5;
      v48 = path5;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Invalid replace data: Old: %@, New: %@, Staging: %@, Dest: %@", buf, 0x2Au);
    }

    error = errorCopy;
    goto LABEL_24;
  }

  objc_opt_class();
  v29 = v24;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_44;
  }

  if (!v29)
  {
LABEL_45:

    goto LABEL_46;
  }

  objc_opt_class();
  v28 = v23;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_44;
  }

  if (!v28)
  {
LABEL_44:

    goto LABEL_45;
  }

  objc_opt_class();
  v27 = v22;
  if (objc_opt_isKindOfClass())
  {
    v44 = v27;
  }

  else
  {
    v44 = 0;
  }

  if (!v44)
  {
    goto LABEL_46;
  }

  [v8 setObject:v25 forKeyedSubscript:@"MCMReplaceOperationOldURL"];
  [v8 setObject:v29 forKeyedSubscript:@"MCMReplaceOperationNewURL"];
  [v8 setObject:v28 forKeyedSubscript:@"MCMReplaceOperationStagingURL"];
  [v8 setObject:v27 forKeyedSubscript:@"MCMReplaceOperationDestURL"];
  v10 = 0;
LABEL_28:
  v30 = [v8 copy];

  return v30;
}

+ (BOOL)recoverFromReplaceOperationsWithContext:(id)context error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = containermanager_copy_global_configuration();
  managedPathRegistry = [v7 managedPathRegistry];
  containermanagerReplaceOperations = [managedPathRegistry containermanagerReplaceOperations];

  v10 = [containermanagerReplaceOperations url];
  if (v10)
  {
    v11 = +[MCMFileManager defaultManager];
    v69 = 0;
    v12 = [v11 urlsForItemsInDirectoryAtURL:v10 error:&v69];
    v13 = v69;

    if (v12)
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      containerCache = v12;
      v65 = [containerCache countByEnumeratingWithState:&v77 objects:v76 count:16];
      if (v65)
      {
        v55 = v12;
        errorCopy = error;
        v62 = v13;
        v57 = v10;
        v58 = containermanagerReplaceOperations;
        v59 = contextCopy;
        v61 = 0;
        v15 = 0;
        v64 = *v78;
        p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
        obj = containerCache;
        selfCopy = self;
LABEL_5:
        v17 = 0;
        while (1)
        {
          if (*v78 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v77 + 1) + 8 * v17);
          v68 = v15;
          v19 = [self _readAndValidateReplaceFileAtUrl:v18 error:&v68];
          v20 = v68;

          v21 = container_log_handle_for_category();
          defaultManager = v21;
          if (v19)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              path = [v18 path];
              *buf = 138412546;
              v71 = path;
              v72 = 2112;
              v73 = v19;
              _os_log_debug_impl(&dword_1DF2C3000, defaultManager, OS_LOG_TYPE_DEBUG, "Doing a replace of %@ with info: %@", buf, 0x16u);
            }

            defaultManager = [p_superclass + 409 defaultManager];
            v23 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
            if (![defaultManager itemExistsAtURL:v23])
            {
              defaultManager2 = [p_superclass + 409 defaultManager];
              v25 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationDestURL"];
              v26 = [defaultManager2 itemExistsAtURL:v25];

              if ((v26 & 1) == 0)
              {
                v27 = container_log_handle_for_category();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v38 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
                  v39 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
                  *buf = 138412546;
                  v71 = v38;
                  v72 = 2112;
                  v73 = v39;
                  _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Recovering from failed replace by moving: %@ to %@", buf, 0x16u);
                }

                v28 = +[MCMFileManager defaultManager];
                v29 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
                v30 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
                v67 = v62;
                v31 = [v28 moveItemAtURL:v29 toURL:v30 error:&v67];
                v32 = v67;

                if ((v31 & 1) == 0)
                {
                  v48 = [MCMError alloc];
                  v49 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
                  v15 = [(MCMError *)v48 initWithNSError:v32 url:v49 defaultErrorType:35];

                  v45 = container_log_handle_for_category();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    v50 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
                    v51 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
                    *buf = 138412802;
                    v71 = v50;
                    v72 = 2112;
                    v73 = v51;
                    v74 = 2112;
                    v75 = v32;
                    _os_log_error_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_ERROR, "Failed to recover replace move: %@ to %@; error = %@", buf, 0x20u);
                  }

                  goto LABEL_37;
                }

                v61 = 1;
                v62 = v32;
                self = selfCopy;
              }

              p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
              goto LABEL_22;
            }
          }

          else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            path2 = [v18 path];
            *buf = 138412546;
            v71 = path2;
            v72 = 2112;
            v73 = v20;
            _os_log_error_impl(&dword_1DF2C3000, defaultManager, OS_LOG_TYPE_ERROR, "Pending replace operation found, but not valid at [%@], ignoring: %@", buf, 0x16u);
          }

LABEL_22:
          v33 = +[MCMCommandContext privileged];
          containerFactory = [v33 containerFactory];
          v66 = v20;
          v35 = [containerFactory deleteURL:v18 forUserIdentity:0 error:&v66];
          v15 = v66;

          if ((v35 & 1) == 0)
          {
            v45 = container_log_handle_for_category();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              path3 = [v18 path];
              *buf = 138412546;
              v71 = path3;
              v72 = 2112;
              v73 = v15;
              _os_log_error_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_ERROR, "Failed to remove replace file at %@; error = %@", buf, 0x16u);
            }

            v32 = v62;
LABEL_37:
            containermanagerReplaceOperations = v58;
            contextCopy = v59;
            v10 = v57;
            v42 = obj;

            v41 = 0;
            v13 = v32;
            goto LABEL_45;
          }

          if (v65 == ++v17)
          {
            v65 = [obj countByEnumeratingWithState:&v77 objects:v76 count:16];
            if (v65)
            {
              goto LABEL_5;
            }

            if (v61)
            {
              contextCopy = v59;
              containerCache = [v59 containerCache];
              [containerCache flush];
              v10 = v57;
              containermanagerReplaceOperations = v58;
              v13 = v62;
              v12 = v55;
              error = errorCopy;
              goto LABEL_42;
            }

            containermanagerReplaceOperations = v58;
            contextCopy = v59;
            error = errorCopy;
            v10 = v57;
            v13 = v62;
            v12 = v55;
            if (!errorCopy)
            {
LABEL_44:
              v41 = 1;
              v42 = v12;
              goto LABEL_45;
            }

LABEL_43:
            v46 = v15;
            *error = v15;
            goto LABEL_44;
          }
        }
      }
    }

    else
    {
      domain = [(MCMError *)v13 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A798]])
      {
        code = [(MCMError *)v13 code];

        if (code == 2)
        {
          v15 = 0;
          if (!error)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      else
      {
      }

      containerCache = container_log_handle_for_category();
      if (os_log_type_enabled(containerCache, OS_LOG_TYPE_ERROR))
      {
        v53 = [containermanagerReplaceOperations url];
        path4 = [v53 path];
        *buf = 138412546;
        v71 = path4;
        v72 = 2112;
        v73 = v13;
        _os_log_error_impl(&dword_1DF2C3000, containerCache, OS_LOG_TYPE_ERROR, "Failed to get items at replace URL %@ : %@", buf, 0x16u);
      }
    }

    v15 = 0;
LABEL_42:

    if (!error)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v15 = [[MCMError alloc] initWithErrorType:84 category:1];
  v40 = container_log_handle_for_category();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Failed to get url for storing replace operations.", buf, 2u);
  }

  v13 = 0;
  v41 = 0;
  v42 = 0;
LABEL_45:

  return v41;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end