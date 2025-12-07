@interface PTEffectPersonSegmentationViSegHQVisionCoreE5
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSizeForColorSize:(SEL)size;
- (BOOL)createEspressoBuffer:(e5rt_buffer_object *)buffer fromNetwork:(int)network name:(id)name isInput:(BOOL)input;
- (CGSize)colorSize;
- (PTEffectPersonSegmentationViSegHQVisionCoreE5)initWithMetalContext:(id)context colorSize:(CGSize)size;
- (__CVBuffer)outputPixelBuffer;
- (id)debugTextures;
- (id)runPersonSegmentationForPixelBuffer:(__CVBuffer *)buffer;
- (unsigned)clearIOSurface:(__IOSurface *)surface value:(float)value;
- (unsigned)reset;
- (void)dealloc;
- (void)postProcessUpdateFrame;
- (void)reset;
@end

@implementation PTEffectPersonSegmentationViSegHQVisionCoreE5

- (PTEffectPersonSegmentationViSegHQVisionCoreE5)initWithMetalContext:(id)context colorSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v138 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v125.receiver = self;
  v125.super_class = PTEffectPersonSegmentationViSegHQVisionCoreE5;
  v9 = [(PTEffectPersonSegmentationViSegHQVisionCoreE5 *)&v125 init];
  if (!v9)
  {
    v35 = 0;
    goto LABEL_30;
  }

  kdebug_trace();
  v9->_colorSize.width = width;
  v9->_colorSize.height = height;
  objc_storeStrong(&v9->_metalContext, context);
  v10 = dispatch_semaphore_create(0);
  semaphore = v9->_semaphore;
  v9->_semaphore = v10;

  v13 = _PTLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *&buf[4] = 1;
    *&buf[8] = 1024;
    *&buf[10] = 0;
    _os_log_impl(&dword_2243FB000, v13, OS_LOG_TYPE_INFO, "ViSegHQ version %i %i", buf, 0xEu);
  }

  v14 = [objc_alloc(MEMORY[0x277D784D8]) initWithMajor:1 minor:0];
  height = [PTEffectUtil closestAspectRatio:width, height];
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v16 = height - 1;
  if ((height - 1) >= 3)
  {
    v34 = _PTLogSystem(height);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }

    goto LABEL_22;
  }

  v17 = (&unk_278523460 + 8 * v16);
  v18 = (&unk_278523478 + 8 * v16);
  v19 = (&unk_278523490 + 8 * v16);
  v20 = (&unk_2785234A8 + 8 * v16);
  v21 = (&unk_2785234C0 + 8 * v16);
  v22 = (&unk_2785234D8 + 8 * v16);
  if (width >= height)
  {
    v17 = v18;
  }

  v23 = **v17;
  if (width >= height)
  {
    v24 = v20;
  }

  else
  {
    v24 = v19;
  }

  if (width >= height)
  {
    v25 = v22;
  }

  else
  {
    v25 = v21;
  }

  v135 = v23;
  v136 = **v24;
  v137 = **v25;
  v26 = *MEMORY[0x277D784E8];
  v124 = 0;
  v27 = [MEMORY[0x277D784E0] descriptorForIdentifier:v26 version:v14 error:&v124];
  v28 = v124;
  viSegHQDescriptor = v9->_viSegHQDescriptor;
  v9->_viSegHQDescriptor = v27;

  v30 = v9->_viSegHQDescriptor;
  if (!v30 || v28)
  {
    v36 = _PTLogSystem(v30);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }

    goto LABEL_26;
  }

  v31 = [(VisionCoreVideoSegmentationE5NetworkDescriptor *)v30 URL];
  path = [v31 path];
  [path UTF8String];

  v123 = 0;
  if (e5rt_program_library_create())
  {
    *buf = 0;
    v33 = e5rt_e5_compiler_create();
    if (v33)
    {
      v34 = _PTLogSystem(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    v122 = 0;
    v39 = e5rt_e5_compiler_options_create();
    if (v39)
    {
      v34 = _PTLogSystem(v39);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    v40 = e5rt_e5_compiler_options_set_compute_device_types_mask();
    if (v40)
    {
      v34 = _PTLogSystem(v40);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    v121 = "*";
    v41 = e5rt_e5_compiler_options_set_mil_entry_points();
    if (v41)
    {
      v34 = _PTLogSystem(v41);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    v42 = e5rt_e5_compiler_compile();
    if (v42)
    {
      v34 = _PTLogSystem(v42);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    v43 = e5rt_e5_compiler_options_release();
    if (v43)
    {
      v34 = _PTLogSystem(v43);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    v44 = e5rt_e5_compiler_release();
    if (v44)
    {
      v34 = _PTLogSystem(v44);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
LABEL_48:
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

LABEL_22:

      v28 = 0;
LABEL_26:
      v35 = 0;
      goto LABEL_27;
    }
  }

  v107 = contextCopy;
  v45 = +[PTInference ANEConfigForSynchronousWork];
  v46 = 0;
  e5Functions = v9->_e5Functions;
  do
  {
    v48 = v9->_viSegHQDescriptor;
    v49 = *(&v135 + v46);
    v120 = 0;
    v103 = [(VisionCoreVideoSegmentationE5NetworkDescriptor *)v48 functionForIdentifier:v49 error:&v120, v103];
    v28 = v120;
    v51 = e5Functions[v46];
    e5Functions[v46] = v103;

    if (e5Functions[v46])
    {
      v53 = v28 == 0;
    }

    else
    {
      v53 = 0;
    }

    if (!v53)
    {
      v70 = _PTLogSystem(v52);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *&buf[4] = v49;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        *&buf[22] = 2112;
        *&buf[24] = v28;
        _os_log_error_impl(&dword_2243FB000, v70, OS_LOG_TYPE_ERROR, "Error getting VisionCoreE5RTFunction for %@ (%@). Error %@", buf, 0x20u);
      }

      goto LABEL_88;
    }

    v54 = e5rt_execution_stream_create();
    if (v54)
    {
      v72 = _PTLogSystem(v54);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    if (!v9->_es[v46])
    {
      v72 = _PTLogSystem(v54);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

      goto LABEL_86;
    }

    [v45 E5ExecutionPriority];
    v55 = e5rt_execution_stream_set_ane_execution_priority();
    if (v55)
    {
      v72 = _PTLogSystem(v55);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
LABEL_85:
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

LABEL_86:

      goto LABEL_87;
    }

    v122 = 0;
    name = [(VisionCoreE5RTFunction *)e5Functions[v46] name];
    [name UTF8String];
    v57 = e5rt_program_library_retain_program_function();

    if (v57)
    {
      v72 = _PTLogSystem(v58);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    v121 = 0;
    v59 = e5rt_precompiled_compute_op_create_options_create_with_program_function();
    if (v59)
    {
      v73 = _PTLogSystem(v59);
      contextCopy = v107;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

      goto LABEL_108;
    }

    [v49 UTF8String];
    options_set_operation_name = e5rt_precompiled_compute_op_create_options_set_operation_name();
    if (options_set_operation_name)
    {
      v73 = _PTLogSystem(options_set_operation_name);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_106;
      }

LABEL_107:
      contextCopy = v107;
LABEL_108:

      v28 = 0;
      v35 = 0;
      goto LABEL_109;
    }

    precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
    if (precompiled_compute_operation_with_options)
    {
      v73 = _PTLogSystem(precompiled_compute_operation_with_options);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

LABEL_106:
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      goto LABEL_107;
    }

    if (!v9->_esop[v46])
    {
      v73 = _PTLogSystem(precompiled_compute_operation_with_options);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

      goto LABEL_107;
    }

    options_release = e5rt_precompiled_compute_op_create_options_release();
    if (options_release)
    {
      v73 = _PTLogSystem(options_release);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    v63 = e5rt_program_function_release();
    if (v63)
    {
      v73 = _PTLogSystem(v63);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    v134 = 0;
    v132 = 0u;
    v133 = 0u;
    v131 = 0u;
    memset(buf, 0, sizeof(buf));
    v119 = 0;
    num_inputs = e5rt_execution_stream_operation_get_num_inputs();
    if (num_inputs)
    {
      v73 = _PTLogSystem(num_inputs);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    input_names = e5rt_execution_stream_operation_get_input_names();
    if (input_names)
    {
      v73 = _PTLogSystem(input_names);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    v106 = v45;
    v109 = v14;
    v118 = 0;
    num_outputs = e5rt_execution_stream_operation_get_num_outputs();
    if (num_outputs)
    {
      v73 = _PTLogSystem(num_outputs);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_106;
      }

      goto LABEL_107;
    }

    output_names = e5rt_execution_stream_operation_get_output_names();
    if (output_names)
    {
      v73 = _PTLogSystem(output_names);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }

      contextCopy = v107;
      goto LABEL_108;
    }

    v103 = v9->_e5Functions;
    ++v46;
  }

  while (v46 != 3);
  v68 = e5rt_program_library_release();
  if (v68)
  {
    v69 = _PTLogSystem(v68);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }

LABEL_87:
    v28 = 0;
LABEL_88:
    v35 = 0;
    contextCopy = v107;
    goto LABEL_109;
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v74 = [&unk_2837F3A78 countByEnumeratingWithState:&v114 objects:v129 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v115;
    while (2)
    {
      for (i = 0; i != v75; ++i)
      {
        if (*v115 != v76)
        {
          objc_enumerationMutation(&unk_2837F3A78);
        }

        v78 = *(*(&v114 + 1) + 8 * i);
        v79 = [&unk_2837F3A78 objectForKeyedSubscript:{v78, v103}];
        LODWORD(v78) = -[PTEffectPersonSegmentationViSegHQVisionCoreE5 createEspressoBuffer:fromNetwork:name:isInput:](v9, "createEspressoBuffer:fromNetwork:name:isInput:", v9->_ebuffer[[v79 intValue]], 2, v78, 1);

        if (!v78)
        {
          v28 = 0;
          v35 = 0;
          contextCopy = v107;
          goto LABEL_141;
        }
      }

      v75 = [&unk_2837F3A78 countByEnumeratingWithState:&v114 objects:v129 count:16];
      if (v75)
      {
        continue;
      }

      break;
    }
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v80 = [&unk_2837F3AA0 countByEnumeratingWithState:&v110 objects:v128 count:{16, v103}];
  if (v80)
  {
    v81 = v80;
    v82 = *v111;
LABEL_122:
    v83 = 0;
    while (1)
    {
      if (*v111 != v82)
      {
        objc_enumerationMutation(&unk_2837F3AA0);
      }

      v84 = *(*(&v110 + 1) + 8 * v83);
      v85 = [&unk_2837F3AA0 objectForKeyedSubscript:v84];
      LODWORD(v84) = -[PTEffectPersonSegmentationViSegHQVisionCoreE5 createEspressoBuffer:fromNetwork:name:isInput:](v9, "createEspressoBuffer:fromNetwork:name:isInput:", &v9->_ebuffer[[v85 intValue]][1], 2, v84, 0);

      if (!v84)
      {
        break;
      }

      if (v81 == ++v83)
      {
        v81 = [&unk_2837F3AA0 countByEnumeratingWithState:&v110 objects:v128 count:16];
        if (v81)
        {
          goto LABEL_122;
        }

        goto LABEL_128;
      }
    }
  }

  else
  {
LABEL_128:
    objc_msgSend_segmentationSizeForColorSize_(PTEffectPersonSegmentationViSegHQVisionCoreE5, width, height);
    v86 = 0;
    *&v9->_segmentationSize.width = *buf;
    v87 = MEMORY[0x277CBECE8];
    v9->_segmentationSize.depth = *&buf[16];
    allocator = *v87;
    v104 = *MEMORY[0x277CC4D60];
    v105 = *MEMORY[0x277CC4DE8];
    textureMatting = v9->_textureMatting;
    v89 = 1;
    do
    {
      v90 = v89;
      v91 = v9->_segmentationSize.width;
      v92 = v9->_segmentationSize.height;
      v126[0] = v105;
      v126[1] = v104;
      v127[0] = MEMORY[0x277CBEC10];
      v127[1] = &unk_2837F34C0;
      v93 = &v9->_pixelBufferMatting[v86];
      CVPixelBufferCreate(allocator, v91, v92, 0x4C303068u, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:{2, v104}], v93);
      v94 = *v93;
      v95 = objc_msgSend_device(v9->_metalContext);
      v96 = [PTPixelBufferUtil createTextureFromPixelBuffer:v94 device:v95];
      v97 = textureMatting[v86];
      textureMatting[v86] = v96;

      CVPixelBufferGetIOSurface(*v93);
      v98 = e5rt_surface_object_create_from_iosurface();
      if (v98)
      {
        v102 = _PTLogSystem(v98);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
        }

        goto LABEL_139;
      }

      v89 = 0;
      v86 = 1;
    }

    while ((v90 & 1) != 0);
    reset = [(PTEffectPersonSegmentationViSegHQVisionCoreE5 *)v9 reset];
    [v109 major];
    [v109 minor];
    v100 = kdebug_trace();
    if (!reset)
    {
      v35 = v9;
      v28 = 0;
      goto LABEL_140;
    }

    v101 = _PTLogSystem(v100);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

LABEL_139:
  v28 = 0;
  v35 = 0;
LABEL_140:
  contextCopy = v107;
  v14 = v109;
LABEL_141:
  v45 = v106;
LABEL_109:

LABEL_27:
  for (j = 16; j != -8; j -= 8)
  {
  }

LABEL_30:
  return v35;
}

- (void)dealloc
{
  v2 = 0;
  v44 = *MEMORY[0x277D85DE8];
  networkPorts = self->_networkPorts;
  do
  {
    v4 = e5rt_execution_stream_operation_release();
    if (v4)
    {
      v5 = v4;
      v6 = _PTLogSystem(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v17 = MEMORY[0x22AA4F9C0](v5);
        last_error_message = e5rt_get_last_error_message();
        *buf = 136315394;
        v41 = v17;
        v42 = 2080;
        v43 = last_error_message;
        _os_log_error_impl(&dword_2243FB000, v6, OS_LOG_TYPE_ERROR, "E5RT error (%s): %s", buf, 0x16u);
      }
    }

    v7 = e5rt_execution_stream_release();
    if (v7)
    {
      v8 = v7;
      v9 = _PTLogSystem(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v19 = MEMORY[0x22AA4F9C0](v8);
        v20 = e5rt_get_last_error_message();
        *buf = 136315394;
        v41 = v19;
        v42 = 2080;
        v43 = v20;
        _os_log_error_impl(&dword_2243FB000, v9, OS_LOG_TYPE_ERROR, "E5RT error (%s): %s", buf, 0x16u);
      }
    }

    v10 = 11;
    v11 = networkPorts;
    do
    {
      if ((*v11)[0])
      {
        v12 = e5rt_io_port_release();
        if (v12)
        {
          v13 = v12;
          v14 = _PTLogSystem(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = MEMORY[0x22AA4F9C0](v13);
            v16 = e5rt_get_last_error_message();
            *buf = 136315394;
            v41 = v15;
            v42 = 2080;
            v43 = v16;
            _os_log_error_impl(&dword_2243FB000, v14, OS_LOG_TYPE_ERROR, "E5RT error (%s): %s", buf, 0x16u);
          }
        }
      }

      v11 = (v11 + 8);
      --v10;
    }

    while (v10);
    ++v2;
    ++networkPorts;
  }

  while (v2 != 3);
  if (self->_inputE5Surface)
  {
    v21 = e5rt_surface_object_release();
    if (v21)
    {
      v22 = _PTLogSystem(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }
  }

  v23 = 0;
  v24 = 1;
  do
  {
    v25 = v24;
    CVPixelBufferRelease(self->_pixelBufferMatting[v23]);
    v26 = e5rt_surface_object_release();
    if (v26)
    {
      v27 = v26;
      v28 = _PTLogSystem(v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v36 = MEMORY[0x22AA4F9C0](v27);
        v37 = e5rt_get_last_error_message();
        *buf = 136315394;
        v41 = v36;
        v42 = 2080;
        v43 = v37;
        _os_log_error_impl(&dword_2243FB000, v28, OS_LOG_TYPE_ERROR, "E5RT error (%s): %s", buf, 0x16u);
      }
    }

    v29 = self->_ebuffer + 8 * v23;
    v30 = 4;
    do
    {
      v31 = e5rt_buffer_object_release();
      if (v31)
      {
        v32 = v31;
        v33 = _PTLogSystem(v31);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = MEMORY[0x22AA4F9C0](v32);
          v35 = e5rt_get_last_error_message();
          *buf = 136315394;
          v41 = v34;
          v42 = 2080;
          v43 = v35;
          _os_log_error_impl(&dword_2243FB000, v33, OS_LOG_TYPE_ERROR, "E5RT error (%s): %s", buf, 0x16u);
        }
      }

      v29 += 16;
      --v30;
    }

    while (v30);
    v24 = 0;
    v23 = 1;
  }

  while ((v25 & 1) != 0);
  v39.receiver = self;
  v39.super_class = PTEffectPersonSegmentationViSegHQVisionCoreE5;
  [(PTEffectPersonSegmentationViSegHQVisionCoreE5 *)&v39 dealloc];
}

- (BOOL)createEspressoBuffer:(e5rt_buffer_object *)buffer fromNetwork:(int)network name:(id)name isInput:(BOOL)input
{
  inputCopy = input;
  nameCopy = name;
  v10 = self->_e5Functions[network];
  if (inputCopy)
  {
    v21 = 0;
    v11 = &v21;
    v12 = [(VisionCoreE5RTFunction *)v10 descriptorForInput:nameCopy error:&v21];
  }

  else
  {
    v20 = 0;
    v11 = &v20;
    v12 = [(VisionCoreE5RTFunction *)v10 descriptorForOutput:nameCopy error:&v20];
  }

  v13 = v12;
  v14 = *v11;
  v15 = v14;
  if (v14)
  {
    v16 = _PTLogSystem(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 createEspressoBuffer:fromNetwork:name:isInput:];
    }
  }

  else
  {
    [v13 storageByteCount];
    v17 = e5rt_buffer_object_alloc();
    if (!v17)
    {
      v18 = 1;
      goto LABEL_11;
    }

    v16 = _PTLogSystem(v17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (unsigned)reset
{
  self->_frameCount = 0;
  IOSurface = CVPixelBufferGetIOSurface(self->_pixelBufferMatting[0]);
  LODWORD(v4) = -1.0;
  v5 = [(PTEffectPersonSegmentationViSegHQVisionCoreE5 *)self clearIOSurface:IOSurface value:v4];
  v6 = [(PTEffectPersonSegmentationViSegHQVisionCoreE5 *)self clearIOSurface:CVPixelBufferGetIOSurface(self->_pixelBufferMatting[1]) value:0.0]| v5;
  memsetE5Buffer(self->_ebuffer[3][0]);
  memsetE5Buffer(self->_ebuffer[0][1]);
  if (v6)
  {
    v8 = _PTLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 reset];
    }
  }

  return v6;
}

- (unsigned)clearIOSurface:(__IOSurface *)surface value:(float)value
{
  if (!surface)
  {
    v25 = _PTLogSystem(self);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 clearIOSurface:value:];
    }

    return -1;
  }

  _S8 = value;
  PixelFormat = IOSurfaceGetPixelFormat(surface);
  if (PixelFormat != 1278226536)
  {
    v26 = _PTLogSystem(PixelFormat);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 clearIOSurface:surface value:?];
    }

    return -1;
  }

  IOSurfaceLock(surface, 0, 0);
  Width = IOSurfaceGetWidth(surface);
  Height = IOSurfaceGetHeight(surface);
  BytesPerRow = IOSurfaceGetBytesPerRow(surface);
  BaseAddress = IOSurfaceGetBaseAddress(surface);
  if (Height)
  {
    v11 = 0;
    v12 = vdupq_n_s64(Width - 1);
    __asm { FCVT            H1, S8 }

    v18 = BaseAddress + 8;
    do
    {
      if (Width)
      {
        v19 = 0;
        v20 = v18;
        do
        {
          v21 = vdupq_n_s64(v19);
          v22 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v21, xmmword_2244A5BA0)));
          if (vuzp1_s8(vuzp1_s16(v22, *v12.i8), *v12.i8).u8[0])
          {
            *(v20 - 4) = _H1;
          }

          if (vuzp1_s8(vuzp1_s16(v22, *&v12), *&v12).i8[1])
          {
            *(v20 - 3) = _H1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v21, xmmword_2244A5B90)))), *&v12).i8[2])
          {
            *(v20 - 2) = _H1;
            *(v20 - 1) = _H1;
          }

          v23 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v21, xmmword_2244A5B80)));
          if (vuzp1_s8(*&v12, vuzp1_s16(v23, *&v12)).i32[1])
          {
            *v20 = _H1;
          }

          if (vuzp1_s8(*&v12, vuzp1_s16(v23, *&v12)).i8[5])
          {
            v20[1] = _H1;
          }

          if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v21, xmmword_2244A5B70))))).i8[6])
          {
            v20[2] = _H1;
            v20[3] = _H1;
          }

          v19 += 8;
          v20 += 8;
        }

        while (((Width + 7) & 0xFFFFFFFFFFFFFFF8) != v19);
      }

      ++v11;
      v18 = (v18 + BytesPerRow);
    }

    while (v11 != Height);
  }

  IOSurfaceUnlock(surface, 0, 0);
  return 0;
}

- (id)runPersonSegmentationForPixelBuffer:(__CVBuffer *)buffer
{
  frameCount = self->_frameCount;
  CVPixelBufferGetWidth(buffer);
  CVPixelBufferGetHeight(buffer);
  kdebug_trace();
  if (frameCount)
  {
    dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  boundInputIOSurface = self->_boundInputIOSurface;
  if (boundInputIOSurface != CVPixelBufferGetIOSurface(buffer))
  {
    self->_boundInputIOSurface = CVPixelBufferGetIOSurface(buffer);
    if (self->_inputE5Surface)
    {
      v7 = e5rt_surface_object_release();
      if (v7)
      {
        v8 = _PTLogSystem(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
        }
      }
    }

    v9 = e5rt_surface_object_create_from_iosurface();
    if (v9)
    {
      v10 = _PTLogSystem(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }
  }

  if (!frameCount)
  {
    v11 = e5rt_io_port_bind_surface_object();
    if (v11)
    {
      v12 = _PTLogSystem(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    v13 = e5rt_io_port_bind_surface_object();
    if (v13)
    {
      v14 = _PTLogSystem(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    v15 = e5rt_io_port_bind_buffer_object();
    if (v15)
    {
      v16 = _PTLogSystem(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    v17 = e5rt_io_port_bind_buffer_object();
    if (v17)
    {
      v18 = _PTLogSystem(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    v19 = e5rt_io_port_bind_buffer_object();
    if (v19)
    {
      v20 = _PTLogSystem(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    v21 = e5rt_io_port_bind_buffer_object();
    if (v21)
    {
      v22 = _PTLogSystem(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    v23 = e5rt_execution_stream_encode_operation();
    if (v23)
    {
      v24 = _PTLogSystem(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    v25 = e5rt_execution_stream_execute_sync();
    if (v25)
    {
      v26 = _PTLogSystem(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    v27 = e5rt_execution_stream_reset();
    if (v27)
    {
      v28 = _PTLogSystem(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }
  }

  v29 = self->_frameCount;
  v30 = v29 + 1;
  self->_frameCount = v29 + 1;
  v31 = __OFADD__(v29, 2);
  v29 += 2;
  v32 = (v29 < 0) ^ v31;
  v33 = v29 & 1;
  if (v32)
  {
    v34 = -v33;
  }

  else
  {
    v34 = v33;
  }

  v68 = v30 % 5;
  if (v30 % 5)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  v36 = e5rt_io_port_bind_surface_object();
  if (v36)
  {
    v37 = _PTLogSystem(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v38 = e5rt_io_port_bind_surface_object();
  if (v38)
  {
    v39 = _PTLogSystem(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v40 = e5rt_io_port_bind_buffer_object();
  if (v40)
  {
    v41 = _PTLogSystem(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v42 = e5rt_io_port_bind_buffer_object();
  if (v42)
  {
    v43 = _PTLogSystem(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v44 = e5rt_io_port_bind_buffer_object();
  if (v44)
  {
    v45 = _PTLogSystem(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v46 = e5rt_io_port_bind_buffer_object();
  if (v46)
  {
    v47 = _PTLogSystem(v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v48 = e5rt_io_port_bind_surface_object();
  if (v48)
  {
    v49 = _PTLogSystem(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v50 = e5rt_io_port_bind_buffer_object();
  if (v50)
  {
    v51 = _PTLogSystem(v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v52 = e5rt_io_port_bind_buffer_object();
  if (v52)
  {
    v53 = _PTLogSystem(v52);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  if (!v68)
  {
    v54 = e5rt_io_port_bind_buffer_object();
    if (v54)
    {
      v55 = _PTLogSystem(v54);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }

    v56 = e5rt_io_port_bind_buffer_object();
    if (v56)
    {
      v57 = _PTLogSystem(v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
      }
    }
  }

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __85__PTEffectPersonSegmentationViSegHQVisionCoreE5_runPersonSegmentationForPixelBuffer___block_invoke;
  v69[3] = &unk_278523440;
  v70 = v35;
  v69[4] = self;
  v58 = MEMORY[0x22AA50020](v69);
  v59 = e5rt_execution_stream_encode_operation();
  if (v59)
  {
    v60 = _PTLogSystem(v59);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v61 = e5rt_execution_stream_execute_sync();
  if (v61)
  {
    v62 = _PTLogSystem(v61);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v63 = e5rt_execution_stream_reset();
  if (v63)
  {
    v64 = _PTLogSystem(v63);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }
  }

  v58[2](v58, 0);
  v65 = self->_textureMatting[v34];
  v66 = v65;

  return v65;
}

uint64_t __85__PTEffectPersonSegmentationViSegHQVisionCoreE5_runPersonSegmentationForPixelBuffer___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _PTLogSystem(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __85__PTEffectPersonSegmentationViSegHQVisionCoreE5_runPersonSegmentationForPixelBuffer___block_invoke_cold_1();
    }
  }

  if (*(a1 + 40) == 2)
  {
    [*(a1 + 32) postProcessUpdateFrame];
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 528));
  [*(*(a1 + 32) + 480) width];
  [*(*(a1 + 32) + 480) height];
  return kdebug_trace();
}

- (__CVBuffer)outputPixelBuffer
{
  frameCount = self->_frameCount;
  v3 = __OFADD__(frameCount++, 1);
  v4 = (frameCount < 0) ^ v3;
  v5 = frameCount & 1;
  if (v4)
  {
    v5 = -v5;
  }

  return self->_pixelBufferMatting[v5];
}

- (void)postProcessUpdateFrame
{
  v3 = dataPtrFromE5Buffer(self->_ebuffer[1][0]);
  v4 = dataPtrFromE5Buffer(self->_ebuffer[2][0]);
  v5 = dataPtrFromE5Buffer(self->_ebuffer[1][1]);
  v6 = dataPtrFromE5Buffer(self->_ebuffer[2][1]);
  viSegHQDescriptor = self->_viSegHQDescriptor;
  v12 = 0;
  v8 = [(VisionCoreVideoSegmentationE5NetworkDescriptor *)viSegHQDescriptor postProcessUpdateFrameForInferenceOutputKeyBuffer:v5 inferenceOutputValueBuffer:v6 postProcessingOutputKeyBuffer:v3 postProcessingOutputValueBuffer:v4 error:&v12];
  v9 = v12;
  v10 = v9;
  if (v9 || (v8 & 1) == 0)
  {
    v11 = _PTLogSystem(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 postProcessUpdateFrame];
    }
  }
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSizeForColorSize:(SEL)size
{
  v12 = *&a4.height;
  result = [PTEffectUtil closestAspectRatio:?];
  if (result == 2)
  {
    v6 = vdupq_lane_s64(vcgtq_f64(v12, a4).i64[0], 0);
    v7 = xmmword_2244A5BB0;
    v8 = xmmword_2244A5BC0;
    goto LABEL_5;
  }

  if (result == 1)
  {
    v6 = vdupq_lane_s64(vcgtq_f64(v12, a4).i64[0], 0);
    v7 = xmmword_2244A5BD0;
    v8 = xmmword_2244A5BE0;
LABEL_5:
    v9 = vbslq_s8(v6, v8, v7);
    goto LABEL_9;
  }

  v10 = _PTLogSystem(result);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    +[PTEffectPersonSegmentationViSegHQVisionCoreE5 segmentationSizeForColorSize:];
  }

  v9 = xmmword_2244A5BB0;
LABEL_9:
  *&retstr->var0 = v9;
  retstr->var2 = 1;
  return result;
}

- (id)debugTextures
{
  v8[1] = *MEMORY[0x277D85DE8];
  frameCount = self->_frameCount;
  v3 = __OFADD__(frameCount++, 1);
  v4 = (frameCount < 0) ^ v3;
  v5 = frameCount & 1;
  if (v4)
  {
    v5 = -v5;
  }

  v8[0] = self->_textureMatting[v5];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (CGSize)colorSize
{
  width = self->_colorSize.width;
  height = self->_colorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithMetalContext:colorSize:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:colorSize:.cold.2()
{
  MEMORY[0x22AA4F9C0]();
  e5rt_get_last_error_message();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:colorSize:.cold.26()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:colorSize:.cold.27()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)reset
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)clearIOSurface:(__IOSurface *)a1 value:.cold.1(__IOSurface *a1)
{
  IOSurfaceGetPixelFormat(a1);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)clearIOSurface:value:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end