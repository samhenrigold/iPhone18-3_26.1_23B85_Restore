@interface AFAudioSessionCoordinationSnapshot
+ (id)newWithBuilder:(id)builder;
- (AFAudioSessionCoordinationSnapshot)initWithBuilder:(id)builder;
- (AFAudioSessionCoordinationSnapshot)initWithCoder:(id)coder;
- (AFAudioSessionCoordinationSnapshot)initWithCurrentOrUpNextDateInterval:(id)interval isAudioSessionActive:(BOOL)active localActiveAssertionContexts:(id)contexts localPendingAssertionContexts:(id)assertionContexts remoteActiveAssertionContexts:(id)activeAssertionContexts remotePendingAssertionContexts:(id)pendingAssertionContexts localDevice:(id)device remoteQualifiedInRangeDevices:(id)self0 remoteQualifiedOutOfRangeDevices:(id)self1 remoteDisqualifiedDevices:(id)self2;
- (AFAudioSessionCoordinationSnapshot)initWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFAudioSessionCoordinationSnapshot

- (id)buildDictionaryRepresentation
{
  v102 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  currentOrUpNextDateInterval = self->_currentOrUpNextDateInterval;
  if (currentOrUpNextDateInterval)
  {
    [v3 setObject:currentOrUpNextDateInterval forKey:@"currentOrUpNextDateInterval"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAudioSessionActive];
  [v4 setObject:v6 forKey:@"isAudioSessionActive"];

  if (self->_localActiveAssertionContexts)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_localActiveAssertionContexts, "count")}];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v8 = self->_localActiveAssertionContexts;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v91 objects:v101 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v92;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v92 != v11)
          {
            objc_enumerationMutation(v8);
          }

          buildDictionaryRepresentation = [*(*(&v91 + 1) + 8 * i) buildDictionaryRepresentation];
          [v7 addObject:buildDictionaryRepresentation];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v91 objects:v101 count:16];
      }

      while (v10);
    }

    v14 = [v7 copy];
    [v4 setObject:v14 forKey:@"localActiveAssertionContexts"];
  }

  if (self->_localPendingAssertionContexts)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_localPendingAssertionContexts, "count")}];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v16 = self->_localPendingAssertionContexts;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v87 objects:v100 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v88;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v88 != v19)
          {
            objc_enumerationMutation(v16);
          }

          buildDictionaryRepresentation2 = [*(*(&v87 + 1) + 8 * j) buildDictionaryRepresentation];
          [v15 addObject:buildDictionaryRepresentation2];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v87 objects:v100 count:16];
      }

      while (v18);
    }

    v22 = [v15 copy];
    [v4 setObject:v22 forKey:@"localPendingAssertionContexts"];
  }

  if (self->_remoteActiveAssertionContexts)
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_remoteActiveAssertionContexts, "count")}];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v24 = self->_remoteActiveAssertionContexts;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v83 objects:v99 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v84;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v84 != v27)
          {
            objc_enumerationMutation(v24);
          }

          buildDictionaryRepresentation3 = [*(*(&v83 + 1) + 8 * k) buildDictionaryRepresentation];
          [v23 addObject:buildDictionaryRepresentation3];
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v83 objects:v99 count:16];
      }

      while (v26);
    }

    v30 = [v23 copy];
    [v4 setObject:v30 forKey:@"remoteActiveAssertionContexts"];
  }

  if (self->_remotePendingAssertionContexts)
  {
    v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_remotePendingAssertionContexts, "count")}];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v32 = self->_remotePendingAssertionContexts;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v79 objects:v98 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v80;
      do
      {
        for (m = 0; m != v34; ++m)
        {
          if (*v80 != v35)
          {
            objc_enumerationMutation(v32);
          }

          buildDictionaryRepresentation4 = [*(*(&v79 + 1) + 8 * m) buildDictionaryRepresentation];
          [v31 addObject:buildDictionaryRepresentation4];
        }

        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v79 objects:v98 count:16];
      }

      while (v34);
    }

    v38 = [v31 copy];
    [v4 setObject:v38 forKey:@"remotePendingAssertionContexts"];
  }

  localDevice = self->_localDevice;
  if (localDevice)
  {
    buildDictionaryRepresentation5 = [(AFAudioSessionCoordinationDeviceInfo *)localDevice buildDictionaryRepresentation];
    [v4 setObject:buildDictionaryRepresentation5 forKey:@"localDevice"];
  }

  if (self->_remoteQualifiedInRangeDevices)
  {
    v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_remoteQualifiedInRangeDevices, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v42 = self->_remoteQualifiedInRangeDevices;
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v75 objects:v97 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v76;
      do
      {
        for (n = 0; n != v44; ++n)
        {
          if (*v76 != v45)
          {
            objc_enumerationMutation(v42);
          }

          buildDictionaryRepresentation6 = [*(*(&v75 + 1) + 8 * n) buildDictionaryRepresentation];
          [v41 addObject:buildDictionaryRepresentation6];
        }

        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v75 objects:v97 count:16];
      }

      while (v44);
    }

    v48 = [v41 copy];
    [v4 setObject:v48 forKey:@"remoteQualifiedInRangeDevices"];
  }

  if (self->_remoteQualifiedOutOfRangeDevices)
  {
    v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_remoteQualifiedOutOfRangeDevices, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v50 = self->_remoteQualifiedOutOfRangeDevices;
    v51 = [(NSArray *)v50 countByEnumeratingWithState:&v71 objects:v96 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v72;
      do
      {
        for (ii = 0; ii != v52; ++ii)
        {
          if (*v72 != v53)
          {
            objc_enumerationMutation(v50);
          }

          buildDictionaryRepresentation7 = [*(*(&v71 + 1) + 8 * ii) buildDictionaryRepresentation];
          [v49 addObject:buildDictionaryRepresentation7];
        }

        v52 = [(NSArray *)v50 countByEnumeratingWithState:&v71 objects:v96 count:16];
      }

      while (v52);
    }

    v56 = [v49 copy];
    [v4 setObject:v56 forKey:@"remoteQualifiedOutOfRangeDevices"];
  }

  if (self->_remoteDisqualifiedDevices)
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_remoteDisqualifiedDevices, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v58 = self->_remoteDisqualifiedDevices;
    v59 = [(NSArray *)v58 countByEnumeratingWithState:&v67 objects:v95 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v68;
      do
      {
        for (jj = 0; jj != v60; ++jj)
        {
          if (*v68 != v61)
          {
            objc_enumerationMutation(v58);
          }

          buildDictionaryRepresentation8 = [*(*(&v67 + 1) + 8 * jj) buildDictionaryRepresentation];
          [v57 addObject:buildDictionaryRepresentation8];
        }

        v60 = [(NSArray *)v58 countByEnumeratingWithState:&v67 objects:v95 count:16];
      }

      while (v60);
    }

    v64 = [v57 copy];
    [v4 setObject:v64 forKey:@"remoteDisqualifiedDevices"];
  }

  v65 = [v4 copy];

  return v65;
}

- (AFAudioSessionCoordinationSnapshot)initWithDictionaryRepresentation:(id)representation
{
  v123 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"currentOrUpNextDateInterval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v86 = v6;
    }

    else
    {
      v86 = 0;
    }

    v8 = [v5 objectForKey:@"isAudioSessionActive"];
    objc_opt_class();
    selfCopy = self;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    bOOLValue = [v9 BOOLValue];
    v10 = [v5 objectForKey:@"localActiveAssertionContexts"];
    objc_opt_class();
    v87 = v5;
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v112 objects:v122 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v113;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v113 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v112 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[AFAssertionContext alloc] initWithDictionaryRepresentation:v17];

              if (v18)
              {
                [v11 addObject:v18];
              }
            }

            else
            {

              v18 = 0;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v112 objects:v122 count:16];
        }

        while (v14);
      }

      v83 = [v11 copy];
      v5 = v87;
    }

    else
    {
      v83 = 0;
    }

    v19 = [v5 objectForKey:@"localPendingAssertionContexts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v21 = v19;
      v22 = [v21 countByEnumeratingWithState:&v108 objects:v121 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v109;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v109 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v108 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [[AFAssertionContext alloc] initWithDictionaryRepresentation:v26];

              if (v27)
              {
                [v20 addObject:v27];
              }
            }

            else
            {

              v27 = 0;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v108 objects:v121 count:16];
        }

        while (v23);
      }

      v82 = [v20 copy];
      v5 = v87;
    }

    else
    {
      v82 = 0;
    }

    v28 = [v5 objectForKey:@"remoteActiveAssertionContexts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v28, "count")}];
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v30 = v28;
      v31 = [v30 countByEnumeratingWithState:&v104 objects:v120 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v105;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v105 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v104 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = [[AFAssertionContext alloc] initWithDictionaryRepresentation:v35];

              if (v36)
              {
                [v29 addObject:v36];
              }
            }

            else
            {

              v36 = 0;
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v104 objects:v120 count:16];
        }

        while (v32);
      }

      v81 = [v29 copy];
      v5 = v87;
    }

    else
    {
      v81 = 0;
    }

    v37 = [v5 objectForKey:@"remotePendingAssertionContexts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v37, "count")}];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v39 = v37;
      v40 = [v39 countByEnumeratingWithState:&v100 objects:v119 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v101;
        do
        {
          for (m = 0; m != v41; ++m)
          {
            if (*v101 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v100 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = [[AFAssertionContext alloc] initWithDictionaryRepresentation:v44];

              if (v45)
              {
                [v38 addObject:v45];
              }
            }

            else
            {

              v45 = 0;
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v100 objects:v119 count:16];
        }

        while (v41);
      }

      v80 = [v38 copy];
      v5 = v87;
    }

    else
    {
      v80 = 0;
    }

    v46 = [v5 objectForKey:@"localDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = [[AFAudioSessionCoordinationDeviceInfo alloc] initWithDictionaryRepresentation:v46];
    }

    else
    {
      v79 = 0;
    }

    v47 = [v5 objectForKey:@"remoteQualifiedInRangeDevices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v47, "count")}];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v49 = v47;
      v50 = [v49 countByEnumeratingWithState:&v96 objects:v118 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v97;
        do
        {
          for (n = 0; n != v51; ++n)
          {
            if (*v97 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v96 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v55 = [[AFAudioSessionCoordinationDeviceInfo alloc] initWithDictionaryRepresentation:v54];

              if (v55)
              {
                [v48 addObject:v55];
              }
            }

            else
            {

              v55 = 0;
            }
          }

          v51 = [v49 countByEnumeratingWithState:&v96 objects:v118 count:16];
        }

        while (v51);
      }

      v56 = [v48 copy];
      v5 = v87;
    }

    else
    {
      v56 = 0;
    }

    v57 = [v5 objectForKey:@"remoteQualifiedOutOfRangeDevices"];
    objc_opt_class();
    v78 = v56;
    if (objc_opt_isKindOfClass())
    {
      v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v57, "count")}];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v59 = v57;
      v60 = [v59 countByEnumeratingWithState:&v92 objects:v117 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v93;
        do
        {
          for (ii = 0; ii != v61; ++ii)
          {
            if (*v93 != v62)
            {
              objc_enumerationMutation(v59);
            }

            v64 = *(*(&v92 + 1) + 8 * ii);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v65 = [[AFAudioSessionCoordinationDeviceInfo alloc] initWithDictionaryRepresentation:v64];

              if (v65)
              {
                [v58 addObject:v65];
              }
            }

            else
            {

              v65 = 0;
            }
          }

          v61 = [v59 countByEnumeratingWithState:&v92 objects:v117 count:16];
        }

        while (v61);
      }

      v77 = [v58 copy];
      v5 = v87;
      v56 = v78;
    }

    else
    {
      v77 = 0;
    }

    v66 = [v5 objectForKey:@"remoteDisqualifiedDevices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v66, "count")}];
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v68 = v66;
      v69 = [v68 countByEnumeratingWithState:&v88 objects:v116 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v89;
        do
        {
          for (jj = 0; jj != v70; ++jj)
          {
            if (*v89 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = *(*(&v88 + 1) + 8 * jj);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v74 = [[AFAudioSessionCoordinationDeviceInfo alloc] initWithDictionaryRepresentation:v73];

              if (v74)
              {
                [v67 addObject:v74];
              }
            }

            else
            {

              v74 = 0;
            }
          }

          v70 = [v68 countByEnumeratingWithState:&v88 objects:v116 count:16];
        }

        while (v70);
      }

      v75 = [v67 copy];
      v5 = v87;
      v56 = v78;
    }

    else
    {
      v75 = 0;
    }

    self = [(AFAudioSessionCoordinationSnapshot *)selfCopy initWithCurrentOrUpNextDateInterval:v86 isAudioSessionActive:bOOLValue localActiveAssertionContexts:v83 localPendingAssertionContexts:v82 remoteActiveAssertionContexts:v81 remotePendingAssertionContexts:v80 localDevice:v79 remoteQualifiedInRangeDevices:v56 remoteQualifiedOutOfRangeDevices:v77 remoteDisqualifiedDevices:v75];
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  currentOrUpNextDateInterval = self->_currentOrUpNextDateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:currentOrUpNextDateInterval forKey:@"AFAudioSessionCoordinationSnapshot::currentOrUpNextDateInterval"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAudioSessionActive];
  [coderCopy encodeObject:v5 forKey:@"AFAudioSessionCoordinationSnapshot::isAudioSessionActive"];

  [coderCopy encodeObject:self->_localActiveAssertionContexts forKey:@"AFAudioSessionCoordinationSnapshot::localActiveAssertionContexts"];
  [coderCopy encodeObject:self->_localPendingAssertionContexts forKey:@"AFAudioSessionCoordinationSnapshot::localPendingAssertionContexts"];
  [coderCopy encodeObject:self->_remoteActiveAssertionContexts forKey:@"AFAudioSessionCoordinationSnapshot::remoteActiveAssertionContexts"];
  [coderCopy encodeObject:self->_remotePendingAssertionContexts forKey:@"AFAudioSessionCoordinationSnapshot::remotePendingAssertionContexts"];
  [coderCopy encodeObject:self->_localDevice forKey:@"AFAudioSessionCoordinationSnapshot::localDevice"];
  [coderCopy encodeObject:self->_remoteQualifiedInRangeDevices forKey:@"AFAudioSessionCoordinationSnapshot::remoteQualifiedInRangeDevices"];
  [coderCopy encodeObject:self->_remoteQualifiedOutOfRangeDevices forKey:@"AFAudioSessionCoordinationSnapshot::remoteQualifiedOutOfRangeDevices"];
  [coderCopy encodeObject:self->_remoteDisqualifiedDevices forKey:@"AFAudioSessionCoordinationSnapshot::remoteDisqualifiedDevices"];
}

- (AFAudioSessionCoordinationSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSnapshot::currentOrUpNextDateInterval"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSnapshot::isAudioSessionActive"];
  bOOLValue = [v4 BOOLValue];

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v35 = [coderCopy decodeObjectOfClasses:v7 forKey:@"AFAudioSessionCoordinationSnapshot::localActiveAssertionContexts"];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v34 = [coderCopy decodeObjectOfClasses:v10 forKey:@"AFAudioSessionCoordinationSnapshot::localPendingAssertionContexts"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"AFAudioSessionCoordinationSnapshot::remoteActiveAssertionContexts"];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"AFAudioSessionCoordinationSnapshot::remotePendingAssertionContexts"];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSnapshot::localDevice"];
  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"AFAudioSessionCoordinationSnapshot::remoteQualifiedInRangeDevices"];

  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"AFAudioSessionCoordinationSnapshot::remoteQualifiedOutOfRangeDevices"];

  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"AFAudioSessionCoordinationSnapshot::remoteDisqualifiedDevices"];

  v32 = [(AFAudioSessionCoordinationSnapshot *)self initWithCurrentOrUpNextDateInterval:v37 isAudioSessionActive:bOOLValue localActiveAssertionContexts:v35 localPendingAssertionContexts:v34 remoteActiveAssertionContexts:v14 remotePendingAssertionContexts:v18 localDevice:v19 remoteQualifiedInRangeDevices:v23 remoteQualifiedOutOfRangeDevices:v27 remoteDisqualifiedDevices:v31];
  return v32;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isAudioSessionActive = self->_isAudioSessionActive;
      if (isAudioSessionActive == [(AFAudioSessionCoordinationSnapshot *)v5 isAudioSessionActive])
      {
        currentOrUpNextDateInterval = [(AFAudioSessionCoordinationSnapshot *)v5 currentOrUpNextDateInterval];
        currentOrUpNextDateInterval = self->_currentOrUpNextDateInterval;
        if (currentOrUpNextDateInterval == currentOrUpNextDateInterval || [(NSDateInterval *)currentOrUpNextDateInterval isEqual:currentOrUpNextDateInterval])
        {
          localActiveAssertionContexts = [(AFAudioSessionCoordinationSnapshot *)v5 localActiveAssertionContexts];
          localActiveAssertionContexts = self->_localActiveAssertionContexts;
          if (localActiveAssertionContexts == localActiveAssertionContexts || [(NSArray *)localActiveAssertionContexts isEqual:localActiveAssertionContexts])
          {
            localPendingAssertionContexts = [(AFAudioSessionCoordinationSnapshot *)v5 localPendingAssertionContexts];
            localPendingAssertionContexts = self->_localPendingAssertionContexts;
            if (localPendingAssertionContexts == localPendingAssertionContexts || [(NSArray *)localPendingAssertionContexts isEqual:localPendingAssertionContexts])
            {
              remoteActiveAssertionContexts = [(AFAudioSessionCoordinationSnapshot *)v5 remoteActiveAssertionContexts];
              remoteActiveAssertionContexts = self->_remoteActiveAssertionContexts;
              if (remoteActiveAssertionContexts == remoteActiveAssertionContexts || [(NSArray *)remoteActiveAssertionContexts isEqual:remoteActiveAssertionContexts])
              {
                remotePendingAssertionContexts = [(AFAudioSessionCoordinationSnapshot *)v5 remotePendingAssertionContexts];
                remotePendingAssertionContexts = self->_remotePendingAssertionContexts;
                if (remotePendingAssertionContexts == remotePendingAssertionContexts || [(NSArray *)remotePendingAssertionContexts isEqual:remotePendingAssertionContexts])
                {
                  localDevice = [(AFAudioSessionCoordinationSnapshot *)v5 localDevice];
                  localDevice = self->_localDevice;
                  if (localDevice == localDevice || [(AFAudioSessionCoordinationDeviceInfo *)localDevice isEqual:localDevice])
                  {
                    remoteQualifiedInRangeDevices = [(AFAudioSessionCoordinationSnapshot *)v5 remoteQualifiedInRangeDevices];
                    remoteQualifiedInRangeDevices = self->_remoteQualifiedInRangeDevices;
                    if (remoteQualifiedInRangeDevices == remoteQualifiedInRangeDevices || [(NSArray *)remoteQualifiedInRangeDevices isEqual:remoteQualifiedInRangeDevices])
                    {
                      v28 = localDevice;
                      remoteQualifiedOutOfRangeDevices = [(AFAudioSessionCoordinationSnapshot *)v5 remoteQualifiedOutOfRangeDevices];
                      remoteQualifiedOutOfRangeDevices = self->_remoteQualifiedOutOfRangeDevices;
                      if (remoteQualifiedOutOfRangeDevices == remoteQualifiedOutOfRangeDevices || [(NSArray *)remoteQualifiedOutOfRangeDevices isEqual:remoteQualifiedOutOfRangeDevices])
                      {
                        remoteDisqualifiedDevices = [(AFAudioSessionCoordinationSnapshot *)v5 remoteDisqualifiedDevices];
                        remoteDisqualifiedDevices = self->_remoteDisqualifiedDevices;
                        v25 = remoteDisqualifiedDevices == remoteDisqualifiedDevices || [(NSArray *)remoteDisqualifiedDevices isEqual:remoteDisqualifiedDevices];

                        remoteQualifiedInRangeDevices = v27;
                      }

                      else
                      {
                        v25 = 0;
                      }

                      localDevice = v28;
                    }

                    else
                    {
                      v25 = 0;
                    }
                  }

                  else
                  {
                    v25 = 0;
                  }
                }

                else
                {
                  v25 = 0;
                }
              }

              else
              {
                v25 = 0;
              }
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (unint64_t)hash
{
  v3 = [(NSDateInterval *)self->_currentOrUpNextDateInterval hash];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAudioSessionActive];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSArray *)self->_localActiveAssertionContexts hash];
  v7 = v5 ^ v6 ^ [(NSArray *)self->_localPendingAssertionContexts hash];
  v8 = [(NSArray *)self->_remoteActiveAssertionContexts hash];
  v9 = v8 ^ [(NSArray *)self->_remotePendingAssertionContexts hash];
  v10 = v9 ^ [(AFAudioSessionCoordinationDeviceInfo *)self->_localDevice hash];
  v11 = v7 ^ v10 ^ [(NSArray *)self->_remoteQualifiedInRangeDevices hash];
  v12 = [(NSArray *)self->_remoteQualifiedOutOfRangeDevices hash];
  v13 = v12 ^ [(NSArray *)self->_remoteDisqualifiedDevices hash];

  return v11 ^ v13;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = AFAudioSessionCoordinationSnapshot;
  v5 = [(AFAudioSessionCoordinationSnapshot *)&v10 description];
  v6 = v5;
  if (self->_isAudioSessionActive)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v4 initWithFormat:@"%@ {currentOrUpNextDateInterval = %@, isAudioSessionActive = %@, localActiveAssertionContexts = %@, localPendingAssertionContexts = %@, remoteActiveAssertionContexts = %@, remotePendingAssertionContexts = %@, localDevice = %@, remoteQualifiedInRangeDevices = %@, remoteQualifiedOutOfRangeDevices = %@, remoteDisqualifiedDevices = %@}", v5, self->_currentOrUpNextDateInterval, v7, self->_localActiveAssertionContexts, self->_localPendingAssertionContexts, self->_remoteActiveAssertionContexts, self->_remotePendingAssertionContexts, self->_localDevice, self->_remoteQualifiedInRangeDevices, self->_remoteQualifiedOutOfRangeDevices, self->_remoteDisqualifiedDevices];

  return v8;
}

- (AFAudioSessionCoordinationSnapshot)initWithCurrentOrUpNextDateInterval:(id)interval isAudioSessionActive:(BOOL)active localActiveAssertionContexts:(id)contexts localPendingAssertionContexts:(id)assertionContexts remoteActiveAssertionContexts:(id)activeAssertionContexts remotePendingAssertionContexts:(id)pendingAssertionContexts localDevice:(id)device remoteQualifiedInRangeDevices:(id)self0 remoteQualifiedOutOfRangeDevices:(id)self1 remoteDisqualifiedDevices:(id)self2
{
  intervalCopy = interval;
  contextsCopy = contexts;
  assertionContextsCopy = assertionContexts;
  activeAssertionContextsCopy = activeAssertionContexts;
  pendingAssertionContextsCopy = pendingAssertionContexts;
  deviceCopy = device;
  devicesCopy = devices;
  rangeDevicesCopy = rangeDevices;
  disqualifiedDevicesCopy = disqualifiedDevices;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __316__AFAudioSessionCoordinationSnapshot_initWithCurrentOrUpNextDateInterval_isAudioSessionActive_localActiveAssertionContexts_localPendingAssertionContexts_remoteActiveAssertionContexts_remotePendingAssertionContexts_localDevice_remoteQualifiedInRangeDevices_remoteQualifiedOutOfRangeDevices_remoteDisqualifiedDevices___block_invoke;
  v38[3] = &unk_1E7348090;
  activeCopy = active;
  v39 = intervalCopy;
  v40 = contextsCopy;
  v41 = assertionContextsCopy;
  v42 = activeAssertionContextsCopy;
  v43 = pendingAssertionContextsCopy;
  v44 = deviceCopy;
  v45 = devicesCopy;
  v46 = rangeDevicesCopy;
  v47 = disqualifiedDevicesCopy;
  v23 = disqualifiedDevicesCopy;
  v24 = rangeDevicesCopy;
  v25 = devicesCopy;
  v26 = deviceCopy;
  v27 = pendingAssertionContextsCopy;
  v28 = activeAssertionContextsCopy;
  v29 = assertionContextsCopy;
  v30 = contextsCopy;
  v31 = intervalCopy;
  v32 = [(AFAudioSessionCoordinationSnapshot *)self initWithBuilder:v38];

  return v32;
}

void __316__AFAudioSessionCoordinationSnapshot_initWithCurrentOrUpNextDateInterval_isAudioSessionActive_localActiveAssertionContexts_localPendingAssertionContexts_remoteActiveAssertionContexts_remotePendingAssertionContexts_localDevice_remoteQualifiedInRangeDevices_remoteQualifiedOutOfRangeDevices_remoteDisqualifiedDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setCurrentOrUpNextDateInterval:v3];
  [v4 setIsAudioSessionActive:*(a1 + 104)];
  [v4 setLocalActiveAssertionContexts:*(a1 + 40)];
  [v4 setLocalPendingAssertionContexts:*(a1 + 48)];
  [v4 setRemoteActiveAssertionContexts:*(a1 + 56)];
  [v4 setRemotePendingAssertionContexts:*(a1 + 64)];
  [v4 setLocalDevice:*(a1 + 72)];
  [v4 setRemoteQualifiedInRangeDevices:*(a1 + 80)];
  [v4 setRemoteQualifiedOutOfRangeDevices:*(a1 + 88)];
  [v4 setRemoteDisqualifiedDevices:*(a1 + 96)];
}

- (AFAudioSessionCoordinationSnapshot)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v36.receiver = self;
  v36.super_class = AFAudioSessionCoordinationSnapshot;
  v5 = [(AFAudioSessionCoordinationSnapshot *)&v36 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFAudioSessionCoordinationSnapshotMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFAudioSessionCoordinationSnapshotMutation *)v7 isDirty])
    {
      getCurrentOrUpNextDateInterval = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getCurrentOrUpNextDateInterval];
      v9 = [getCurrentOrUpNextDateInterval copy];
      currentOrUpNextDateInterval = v6->_currentOrUpNextDateInterval;
      v6->_currentOrUpNextDateInterval = v9;

      v6->_isAudioSessionActive = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getIsAudioSessionActive];
      getLocalActiveAssertionContexts = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getLocalActiveAssertionContexts];
      v12 = [getLocalActiveAssertionContexts copy];
      localActiveAssertionContexts = v6->_localActiveAssertionContexts;
      v6->_localActiveAssertionContexts = v12;

      getLocalPendingAssertionContexts = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getLocalPendingAssertionContexts];
      v15 = [getLocalPendingAssertionContexts copy];
      localPendingAssertionContexts = v6->_localPendingAssertionContexts;
      v6->_localPendingAssertionContexts = v15;

      getRemoteActiveAssertionContexts = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getRemoteActiveAssertionContexts];
      v18 = [getRemoteActiveAssertionContexts copy];
      remoteActiveAssertionContexts = v6->_remoteActiveAssertionContexts;
      v6->_remoteActiveAssertionContexts = v18;

      getRemotePendingAssertionContexts = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getRemotePendingAssertionContexts];
      v21 = [getRemotePendingAssertionContexts copy];
      remotePendingAssertionContexts = v6->_remotePendingAssertionContexts;
      v6->_remotePendingAssertionContexts = v21;

      getLocalDevice = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getLocalDevice];
      v24 = [getLocalDevice copy];
      localDevice = v6->_localDevice;
      v6->_localDevice = v24;

      getRemoteQualifiedInRangeDevices = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getRemoteQualifiedInRangeDevices];
      v27 = [getRemoteQualifiedInRangeDevices copy];
      remoteQualifiedInRangeDevices = v6->_remoteQualifiedInRangeDevices;
      v6->_remoteQualifiedInRangeDevices = v27;

      getRemoteQualifiedOutOfRangeDevices = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getRemoteQualifiedOutOfRangeDevices];
      v30 = [getRemoteQualifiedOutOfRangeDevices copy];
      remoteQualifiedOutOfRangeDevices = v6->_remoteQualifiedOutOfRangeDevices;
      v6->_remoteQualifiedOutOfRangeDevices = v30;

      getRemoteDisqualifiedDevices = [(_AFAudioSessionCoordinationSnapshotMutation *)v7 getRemoteDisqualifiedDevices];
      v33 = [getRemoteDisqualifiedDevices copy];
      remoteDisqualifiedDevices = v6->_remoteDisqualifiedDevices;
      v6->_remoteDisqualifiedDevices = v33;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFAudioSessionCoordinationSnapshotMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFAudioSessionCoordinationSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAudioSessionCoordinationSnapshot);
      getCurrentOrUpNextDateInterval = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getCurrentOrUpNextDateInterval];
      v8 = [getCurrentOrUpNextDateInterval copy];
      currentOrUpNextDateInterval = v6->_currentOrUpNextDateInterval;
      v6->_currentOrUpNextDateInterval = v8;

      v6->_isAudioSessionActive = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getIsAudioSessionActive];
      getLocalActiveAssertionContexts = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getLocalActiveAssertionContexts];
      v11 = [getLocalActiveAssertionContexts copy];
      localActiveAssertionContexts = v6->_localActiveAssertionContexts;
      v6->_localActiveAssertionContexts = v11;

      getLocalPendingAssertionContexts = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getLocalPendingAssertionContexts];
      v14 = [getLocalPendingAssertionContexts copy];
      localPendingAssertionContexts = v6->_localPendingAssertionContexts;
      v6->_localPendingAssertionContexts = v14;

      getRemoteActiveAssertionContexts = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getRemoteActiveAssertionContexts];
      v17 = [getRemoteActiveAssertionContexts copy];
      remoteActiveAssertionContexts = v6->_remoteActiveAssertionContexts;
      v6->_remoteActiveAssertionContexts = v17;

      getRemotePendingAssertionContexts = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getRemotePendingAssertionContexts];
      v20 = [getRemotePendingAssertionContexts copy];
      remotePendingAssertionContexts = v6->_remotePendingAssertionContexts;
      v6->_remotePendingAssertionContexts = v20;

      getLocalDevice = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getLocalDevice];
      v23 = [getLocalDevice copy];
      localDevice = v6->_localDevice;
      v6->_localDevice = v23;

      getRemoteQualifiedInRangeDevices = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getRemoteQualifiedInRangeDevices];
      v26 = [getRemoteQualifiedInRangeDevices copy];
      remoteQualifiedInRangeDevices = v6->_remoteQualifiedInRangeDevices;
      v6->_remoteQualifiedInRangeDevices = v26;

      getRemoteQualifiedOutOfRangeDevices = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getRemoteQualifiedOutOfRangeDevices];
      v29 = [getRemoteQualifiedOutOfRangeDevices copy];
      remoteQualifiedOutOfRangeDevices = v6->_remoteQualifiedOutOfRangeDevices;
      v6->_remoteQualifiedOutOfRangeDevices = v29;

      getRemoteDisqualifiedDevices = [(_AFAudioSessionCoordinationSnapshotMutation *)v5 getRemoteDisqualifiedDevices];
      v32 = [getRemoteDisqualifiedDevices copy];
      remoteDisqualifiedDevices = v6->_remoteDisqualifiedDevices;
      v6->_remoteDisqualifiedDevices = v32;
    }

    else
    {
      v6 = [(AFAudioSessionCoordinationSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(AFAudioSessionCoordinationSnapshot *)self copy];
  }

  return v6;
}

@end