@interface GCGenericDeviceDriverModel
+ (GCGenericDeviceDriverModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDriverModel)init;
- (GCGenericDeviceDriverModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDriverModel

- (GCGenericDeviceDriverModel)init
{
  [(GCGenericDeviceDriverModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceDriverModel)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = GCGenericDeviceDriverModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDriverModel *)&v19 init];
  v5 = MEMORY[0x1E695DFD8];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"elements"];
  elements = v4->_elements;
  v4->_elements = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"properties"];
  properties = v4->_properties;
  v4->_properties = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"input"];
  input = v4->_input;
  v4->_input = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"motion"];
  motion = v4->_motion;
  v4->_motion = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rumble"];

  rumble = v4->_rumble;
  v4->_rumble = v16;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  elements = [(GCGenericDeviceDriverModel *)self elements];
  [coderCopy encodeObject:elements forKey:@"elements"];

  properties = [(GCGenericDeviceDriverModel *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];

  input = [(GCGenericDeviceDriverModel *)self input];
  [coderCopy encodeObject:input forKey:@"input"];

  motion = [(GCGenericDeviceDriverModel *)self motion];
  [coderCopy encodeObject:motion forKey:@"motion"];

  rumble = [(GCGenericDeviceDriverModel *)self rumble];
  [coderCopy encodeObject:rumble forKey:@"rumble"];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceDriverModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_10;
    }

LABEL_6:
    elements = [(GCGenericDeviceDriverModel *)self elements];
    elements2 = [equalCopy elements];
    if (![elements isEqual:elements2])
    {
      v10 = 0;
LABEL_30:

      goto LABEL_31;
    }

    properties = [(GCGenericDeviceDriverModel *)self properties];
    properties2 = [equalCopy properties];
    if (properties != properties2)
    {
      properties3 = [(GCGenericDeviceDriverModel *)self properties];
      properties4 = [equalCopy properties];
      v37 = properties3;
      if (![properties3 isEqual:?])
      {
        v10 = 0;
        goto LABEL_28;
      }
    }

    input = [(GCGenericDeviceDriverModel *)self input];
    input2 = [equalCopy input];
    if (input != input2)
    {
      input3 = [(GCGenericDeviceDriverModel *)self input];
      input4 = [equalCopy input];
      v34 = input3;
      if (![input3 isEqual:input4])
      {
        v10 = 0;
LABEL_26:

LABEL_27:
        if (properties == properties2)
        {
LABEL_29:

          goto LABEL_30;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    motion = [(GCGenericDeviceDriverModel *)self motion];
    motion2 = [equalCopy motion];
    v35 = motion;
    v16 = motion == motion2;
    v17 = motion2;
    if (v16)
    {
      v31 = input2;
      v32 = input;
    }

    else
    {
      motion3 = [(GCGenericDeviceDriverModel *)self motion];
      motion4 = [equalCopy motion];
      v29 = motion3;
      if (![motion3 isEqual:?])
      {
        v10 = 0;
        v26 = v35;
        goto LABEL_24;
      }

      v31 = input2;
      v32 = input;
    }

    v30 = v17;
    rumble = [(GCGenericDeviceDriverModel *)self rumble];
    rumble2 = [equalCopy rumble];
    v21 = rumble2;
    if (rumble == rumble2)
    {

      v10 = 1;
    }

    else
    {
      rumble3 = [(GCGenericDeviceDriverModel *)self rumble];
      [equalCopy rumble];
      v23 = properties2;
      v25 = v24 = properties;
      v10 = [rumble3 isEqual:v25];

      properties = v24;
      properties2 = v23;
    }

    v26 = v35;
    v17 = v30;
    input2 = v31;
    input = v32;
    if (v35 == v30)
    {
LABEL_25:

      if (input == input2)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (([(GCGenericDeviceDriverModel *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_10:
  v10 = 0;
LABEL_31:

  return v10;
}

- (id)debugDescription
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  elements = [(GCGenericDeviceDriverModel *)self elements];
  v21 = [elements debugDescription];
  v13 = [v21 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  properties = [(GCGenericDeviceDriverModel *)self properties];
  v19 = [properties debugDescription];
  v4 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  input = [(GCGenericDeviceDriverModel *)self input];
  v14 = [input debugDescription];
  v5 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  motion = [(GCGenericDeviceDriverModel *)self motion];
  v7 = [motion debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  rumble = [(GCGenericDeviceDriverModel *)self rumble];
  v10 = [rumble debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v18 = [v17 stringWithFormat:@"<%@ %p> {\n\t elements = %@\n\t properties = %@\n\t input = %@\n\t motion = %@\n\t rumble = %@\n}", v16, self, v13, v4, v5, v8, v11];

  return v18;
}

+ (GCGenericDeviceDriverModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v146[2] = *MEMORY[0x1E69E9840];
  v107 = objc_opt_new();
  v126[0] = 0;
  representationCopy = representation;
  v5 = [representation gc_requiredObjectForKey:@"Elements" ofClass:objc_opt_class() error:v126];
  v6 = v126[0];
  if (!v5)
  {
    if (error)
    {
      v42 = v6;
      v43 = MEMORY[0x1E696ABC0];
      v145[0] = *MEMORY[0x1E696A578];
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v146[0] = v44;
      v145[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v42 localizedFailureReason];
      v146[1] = localizedFailureReason;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:v145 count:2];
      *error = [(NSError *)v43 gc_modelError:v46 userInfo:?];

      build = 0;
      v6 = v42;
    }

    else
    {
      build = 0;
    }

    goto LABEL_45;
  }

  v97 = v6;
  v120 = 0;
  v121 = &v120;
  v122 = 0x3032000000;
  v123 = __Block_byref_object_copy__13;
  v124 = __Block_byref_object_dispose__13;
  v125 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __85__GCGenericDeviceDriverModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke;
  v116[3] = &unk_1E8413C58;
  v119 = &v120;
  v9 = v7;
  v117 = v9;
  v10 = v8;
  v118 = v10;
  [v5 gc_enumerateObjectsUsingBlock:v116];
  v11 = [v10 count];
  v12 = [v5 count];
  if (v11 == v12)
  {
    [v107 setElements:v10];
  }

  else if (error)
  {
    v92 = MEMORY[0x1E696ABC0];
    v143[0] = *MEMORY[0x1E696A578];
    localizedDescription = [v121[5] localizedDescription];
    if ([localizedDescription length])
    {
      [v121[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v93 = ;
    v144[0] = v93;
    v143[1] = *MEMORY[0x1E696A588];
    localizedFailureReason2 = [v121[5] localizedFailureReason];
    v14 = localizedFailureReason2;
    v15 = &stru_1F4E1BE30;
    if (localizedFailureReason2)
    {
      v15 = localizedFailureReason2;
    }

    v144[1] = v15;
    v143[2] = *MEMORY[0x1E696AA08];
    v16 = v121[5];
    if (v16)
    {
      v17 = v121[5];
      null = v17;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      v17 = v121[5];
    }

    v91 = null;
    v144[2] = null;
    v143[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath = [v17 gc_failingKeyPath];
    v20 = gc_failingKeyPath;
    if (!gc_failingKeyPath)
    {
      gc_failingKeyPath = MEMORY[0x1E695E0F0];
    }

    v21 = [gc_failingKeyPath arrayByAddingObject:@"Elements"];
    v144[3] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:v143 count:4];
    *error = [(NSError *)v92 gc_modelError:v22 userInfo:?];

    if (!v16)
    {
    }
  }

  _Block_object_dispose(&v120, 8);
  if (v11 != v12)
  {
    build = 0;
    goto LABEL_46;
  }

  v115 = 0;
  v23 = [representationCopy gc_objectForKey:@"Properties" ofClass:objc_opt_class() error:&v115];
  v24 = v115;
  v25 = v24;
  if (!v23 && v24)
  {
    if (!error)
    {
      v27 = v24;
      goto LABEL_125;
    }

    v47 = MEMORY[0x1E696ABC0];
    v141[0] = *MEMORY[0x1E696A578];
    localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v142[0] = localizedDescription2;
    v141[1] = *MEMORY[0x1E696A588];
    localizedFailureReason3 = [v25 localizedFailureReason];
    v142[1] = localizedFailureReason3;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:v141 count:2];
    *error = [(NSError *)v47 gc_modelError:v50 userInfo:?];

    v27 = v25;
    goto LABEL_53;
  }

  if (!v23)
  {
    v27 = v24;
    goto LABEL_26;
  }

  v114 = 0;
  v26 = [GCGenericDeviceDriverPropertiesModel modelWithDictionaryRepresentation:v23 error:&v114];
  v27 = v114;

  if (!v26)
  {
    if (!error)
    {
LABEL_125:

LABEL_132:
      build = 0;
      v6 = v27;
      goto LABEL_45;
    }

    v103 = MEMORY[0x1E696ABC0];
    v139[0] = *MEMORY[0x1E696A578];
    localizedDescription2 = [v27 localizedDescription];
    localizedFailureReason3 = localizedDescription2;
    if (!localizedDescription2)
    {
      localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    v140[0] = localizedFailureReason3;
    v139[1] = *MEMORY[0x1E696A588];
    localizedFailureReason4 = [v27 localizedFailureReason];
    v64 = localizedFailureReason4;
    if (!localizedFailureReason4)
    {
      localizedFailureReason4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v98 = localizedFailureReason4;
    v140[1] = localizedFailureReason4;
    v139[2] = *MEMORY[0x1E696AA08];
    null2 = v27;
    if (!v27)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v140[2] = null2;
    v139[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath2 = [v27 gc_failingKeyPath];
    v67 = gc_failingKeyPath2;
    if (!gc_failingKeyPath2)
    {
      gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
    }

    v68 = [gc_failingKeyPath2 arrayByAddingObject:@"Properties"];
    v140[3] = v68;
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:v139 count:4];
    *error = [(NSError *)v103 gc_modelError:v69 userInfo:?];

    if (!v27)
    {
    }

    if (!v64)
    {
    }

    if (localizedDescription2)
    {
LABEL_78:

      goto LABEL_125;
    }

LABEL_53:

    goto LABEL_78;
  }

  [v107 setProperties:v26];

LABEL_26:
  v113 = 0;
  v29 = [representationCopy gc_objectForKey:@"Input" ofClass:objc_opt_class() error:&v113];
  v30 = v113;
  v31 = v30;
  if (!v29 && v30)
  {
    if (!error)
    {
      v27 = v30;
      goto LABEL_127;
    }

    v51 = MEMORY[0x1E696ABC0];
    v137[0] = *MEMORY[0x1E696A578];
    localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v138[0] = localizedDescription3;
    v137[1] = *MEMORY[0x1E696A588];
    localizedFailureReason5 = [v31 localizedFailureReason];
    v138[1] = localizedFailureReason5;
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:v137 count:2];
    *error = [(NSError *)v51 gc_modelError:v54 userInfo:?];

    v27 = v31;
    goto LABEL_56;
  }

  if (!v29)
  {
    v27 = v30;
    goto LABEL_32;
  }

  v112 = 0;
  v32 = [GCGenericDeviceInputEventDriverModel modelWithDictionaryRepresentation:v29 error:&v112];
  v27 = v112;

  if (!v32)
  {
    if (!error)
    {
LABEL_127:

      goto LABEL_132;
    }

    v104 = MEMORY[0x1E696ABC0];
    v135[0] = *MEMORY[0x1E696A578];
    localizedDescription3 = [v27 localizedDescription];
    localizedFailureReason5 = localizedDescription3;
    if (!localizedDescription3)
    {
      localizedFailureReason5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    v136[0] = localizedFailureReason5;
    v135[1] = *MEMORY[0x1E696A588];
    localizedFailureReason6 = [v27 localizedFailureReason];
    v71 = localizedFailureReason6;
    if (!localizedFailureReason6)
    {
      localizedFailureReason6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v99 = localizedFailureReason6;
    v136[1] = localizedFailureReason6;
    v135[2] = *MEMORY[0x1E696AA08];
    null3 = v27;
    if (!v27)
    {
      null3 = [MEMORY[0x1E695DFB0] null];
    }

    v136[2] = null3;
    v135[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath3 = [v27 gc_failingKeyPath];
    v74 = gc_failingKeyPath3;
    if (!gc_failingKeyPath3)
    {
      gc_failingKeyPath3 = MEMORY[0x1E695E0F0];
    }

    v75 = [gc_failingKeyPath3 arrayByAddingObject:@"Input"];
    v136[3] = v75;
    v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v136 forKeys:v135 count:4];
    *error = [(NSError *)v104 gc_modelError:v76 userInfo:?];

    if (!v27)
    {
    }

    if (!v71)
    {
    }

    if (localizedDescription3)
    {
LABEL_93:

      goto LABEL_127;
    }

LABEL_56:

    goto LABEL_93;
  }

  [v107 setInput:v32];

LABEL_32:
  v111 = 0;
  v33 = [representationCopy gc_objectForKey:@"Motion" ofClass:objc_opt_class() error:&v111];
  v34 = v111;
  v35 = v34;
  if (!v33 && v34)
  {
    if (!error)
    {
      v27 = v34;
      goto LABEL_129;
    }

    v55 = MEMORY[0x1E696ABC0];
    v133[0] = *MEMORY[0x1E696A578];
    localizedDescription4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v134[0] = localizedDescription4;
    v133[1] = *MEMORY[0x1E696A588];
    localizedFailureReason7 = [v35 localizedFailureReason];
    v134[1] = localizedFailureReason7;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:v133 count:2];
    *error = [(NSError *)v55 gc_modelError:v58 userInfo:?];

    v27 = v35;
    goto LABEL_59;
  }

  if (!v33)
  {
    v27 = v34;
    goto LABEL_38;
  }

  v110 = 0;
  v36 = [GCGenericDeviceMotionEventDriverModel modelWithDictionaryRepresentation:v33 error:&v110];
  v27 = v110;

  if (!v36)
  {
    if (!error)
    {
LABEL_129:

      goto LABEL_132;
    }

    v105 = MEMORY[0x1E696ABC0];
    v131[0] = *MEMORY[0x1E696A578];
    localizedDescription4 = [v27 localizedDescription];
    localizedFailureReason7 = localizedDescription4;
    if (!localizedDescription4)
    {
      localizedFailureReason7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    v132[0] = localizedFailureReason7;
    v131[1] = *MEMORY[0x1E696A588];
    localizedFailureReason8 = [v27 localizedFailureReason];
    v78 = localizedFailureReason8;
    if (!localizedFailureReason8)
    {
      localizedFailureReason8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v100 = localizedFailureReason8;
    v132[1] = localizedFailureReason8;
    v131[2] = *MEMORY[0x1E696AA08];
    null4 = v27;
    if (!v27)
    {
      null4 = [MEMORY[0x1E695DFB0] null];
    }

    v132[2] = null4;
    v131[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath4 = [v27 gc_failingKeyPath];
    v81 = gc_failingKeyPath4;
    if (!gc_failingKeyPath4)
    {
      gc_failingKeyPath4 = MEMORY[0x1E695E0F0];
    }

    v82 = [gc_failingKeyPath4 arrayByAddingObject:@"Motion"];
    v132[3] = v82;
    v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:4];
    *error = [(NSError *)v105 gc_modelError:v83 userInfo:?];

    if (!v27)
    {
    }

    if (!v78)
    {
    }

    if (localizedDescription4)
    {
LABEL_108:

      goto LABEL_129;
    }

LABEL_59:

    goto LABEL_108;
  }

  [v107 setMotion:v36];

LABEL_38:
  v109 = 0;
  v37 = [representationCopy gc_objectForKey:@"Rumble" ofClass:objc_opt_class() error:&v109];
  v38 = v109;
  v39 = v38;
  if (!v37 && v38)
  {
    if (!error)
    {
      v27 = v38;
      goto LABEL_131;
    }

    v59 = MEMORY[0x1E696ABC0];
    v129[0] = *MEMORY[0x1E696A578];
    localizedDescription5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v130[0] = localizedDescription5;
    v129[1] = *MEMORY[0x1E696A588];
    localizedFailureReason9 = [v39 localizedFailureReason];
    v130[1] = localizedFailureReason9;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:2];
    *error = [(NSError *)v59 gc_modelError:v62 userInfo:?];

    v27 = v39;
    goto LABEL_62;
  }

  if (!v37)
  {
    v27 = v38;
    goto LABEL_44;
  }

  v108 = 0;
  v40 = [GCGenericDeviceRumbleModel modelWithDictionaryRepresentation:v37 error:&v108];
  v27 = v108;

  if (!v40)
  {
    if (!error)
    {
LABEL_131:

      goto LABEL_132;
    }

    v106 = MEMORY[0x1E696ABC0];
    v127[0] = *MEMORY[0x1E696A578];
    localizedDescription5 = [v27 localizedDescription];
    localizedFailureReason9 = localizedDescription5;
    if (!localizedDescription5)
    {
      localizedFailureReason9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    v128[0] = localizedFailureReason9;
    v127[1] = *MEMORY[0x1E696A588];
    localizedFailureReason10 = [v27 localizedFailureReason];
    v85 = localizedFailureReason10;
    if (!localizedFailureReason10)
    {
      localizedFailureReason10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Input"];
    }

    v101 = localizedFailureReason10;
    v128[1] = localizedFailureReason10;
    v127[2] = *MEMORY[0x1E696AA08];
    null5 = v27;
    if (!v27)
    {
      null5 = [MEMORY[0x1E695DFB0] null];
    }

    v128[2] = null5;
    v127[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath5 = [v27 gc_failingKeyPath];
    v88 = gc_failingKeyPath5;
    if (!gc_failingKeyPath5)
    {
      gc_failingKeyPath5 = MEMORY[0x1E695E0F0];
    }

    v89 = [gc_failingKeyPath5 arrayByAddingObject:@"Input"];
    v128[3] = v89;
    v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:4];
    *error = [(NSError *)v106 gc_modelError:v90 userInfo:?];

    if (!v27)
    {
    }

    if (!v85)
    {
    }

    if (localizedDescription5)
    {
LABEL_123:

      goto LABEL_131;
    }

LABEL_62:

    goto LABEL_123;
  }

  [v107 setRumble:v40];

LABEL_44:
  build = [v107 build];
  v6 = v107;
  v107 = 0;
LABEL_45:

LABEL_46:

  return build;
}

void __85__GCGenericDeviceDriverModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke(uint64_t a1, uint64_t (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v70[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = *(*(a1 + 48) + 8);
    v61 = 0;
    v13 = [GCGenericDeviceElementModel modelWithDictionaryRepresentation:v11 error:&v61];
    objc_storeStrong((v12 + 40), v61);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = [v13 identifier];
      v16 = [v14 member:v15];

      if (v16)
      {
        v17 = MEMORY[0x1E696ABC0];
        v64[0] = *MEMORY[0x1E696A588];
        v18 = MEMORY[0x1E696AEC0];
        v59 = v11;
        v19 = a4;
        v20 = objc_opt_class();
        v21 = [v13 identifier];
        v22 = [v18 stringWithFormat:@"Duplicate definition of '%@' with identifier '%@'.", v20, v21];
        v65[0] = v22;
        v64[1] = @"GCFailingKeyPathErrorKey";
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
        v63 = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
        v65[1] = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
        v26 = [(NSError *)v17 gc_modelError:v25 userInfo:?];
        v27 = *(*(a1 + 48) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;

        *v19 = 1;
        v11 = v59;
      }

      else
      {
        [*(a1 + 40) addObject:v13];
        v29 = *(a1 + 32);
        v30 = [v13 identifier];
        [v29 addObject:v30];
      }
    }

    else
    {
      v57 = MEMORY[0x1E696ABC0];
      v66[0] = *MEMORY[0x1E696A578];
      v39 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
      v40 = &stru_1F4E1BE30;
      v60 = v39;
      if (v39)
      {
        v40 = v39;
      }

      v67[0] = v40;
      v66[1] = *MEMORY[0x1E696A588];
      v41 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
      v58 = v41;
      if (!v41)
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model.", objc_opt_class()];
      }

      v42 = a4;
      v56 = v41;
      v67[1] = v41;
      v66[2] = *MEMORY[0x1E696AA08];
      v43 = *(*(*(a1 + 48) + 8) + 40);
      v44 = v43;
      v45 = v43;
      if (!v43)
      {
        v45 = [MEMORY[0x1E695DFB0] null];
        v44 = *(*(*(a1 + 48) + 8) + 40);
      }

      v55 = v45;
      v67[2] = v45;
      v66[3] = @"GCFailingKeyPathErrorKey";
      v46 = [v44 gc_failingKeyPath];
      v47 = v46;
      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = MEMORY[0x1E695E0F0];
      }

      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v50 = [v48 arrayByAddingObject:v49];
      v67[3] = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:4];
      v52 = [(NSError *)v57 gc_modelError:v51 userInfo:?];
      v53 = *(*(a1 + 48) + 8);
      v54 = *(v53 + 40);
      *(v53 + 40) = v52;

      if (!v43)
      {
      }

      if (!v58)
      {
      }

      *v42 = 1;
    }
  }

  else
  {
    v31 = MEMORY[0x1E696ABC0];
    v69[0] = *MEMORY[0x1E696A588];
    v32 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
    v70[0] = v32;
    v69[1] = @"GCFailingKeyPathErrorKey";
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v68 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
    v70[1] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
    v36 = [(NSError *)v31 gc_modelError:v35 userInfo:?];
    v37 = *(*(a1 + 48) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    *a4 = 1;
  }
}

@end