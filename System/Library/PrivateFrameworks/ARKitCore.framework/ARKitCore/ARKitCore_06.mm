uint64_t ARDeviceSupportsMulticamWithTripleRGBStreaming(uint64_t a1, uint64_t a2)
{
  if (ARDeviceSupportsMulticamWithTripleRGBStreaming_onceToken != -1)
  {
    ARDeviceSupportsMulticamWithTripleRGBStreaming_cold_1();
  }

  return ARDeviceSupportsMulticamWithTripleRGBStreaming_supportsMulticamWithTripleRGBStreaming;
}

void __ARDeviceSupportsMulticamWithTripleRGBStreaming_block_invoke()
{
  v9[3] = *MEMORY[0x1E69E9840];
  v0 = [ARVideoFormat alloc];
  v1 = *MEMORY[0x1E6986950];
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  v4 = [(ARVideoFormat *)v0 initWithImageResolution:1 captureDevicePosition:*MEMORY[0x1E6986950] captureDeviceType:*MEMORY[0x1E695F060], v3];
  v9[0] = v4;
  v5 = [ARVideoFormat alloc];
  v6 = [(ARVideoFormat *)v5 initWithImageResolution:1 captureDevicePosition:*MEMORY[0x1E6986948] captureDeviceType:v2, v3, v4];
  v9[1] = v6;
  v7 = [[ARVideoFormat alloc] initWithImageResolution:2 captureDevicePosition:v1 captureDeviceType:v2, v3];
  v9[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  ARDeviceSupportsMulticamWithTripleRGBStreaming_supportsMulticamWithTripleRGBStreaming = ARDeviceSupportsMulticamSessionWithVideoFormats(v8);
}

uint64_t ARDeviceSupportsUltraWideCamera(uint64_t a1, uint64_t a2)
{
  if (ARDeviceSupportsUltraWideCamera_onceToken != -1)
  {
    ARDeviceSupportsUltraWideCamera_cold_1();
  }

  return ARDeviceSupportsUltraWideCamera_ultraWideAvailable;
}

void __ARDeviceSupportsUltraWideCamera_block_invoke()
{
  v1 = MGCopyAnswer();
  v0 = [v1 BOOLValue];
  if (v0)
  {
    LOBYTE(v0) = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.back.ultrawide.enabled"];
  }

  ARDeviceSupportsUltraWideCamera_ultraWideAvailable = v0;
}

uint64_t ARUserDefaultsMulticamModeEnabled(uint64_t a1, uint64_t a2)
{
  if (ARUserDefaultsMulticamModeEnabled_onceToken != -1)
  {
    ARUserDefaultsMulticamModeEnabled_cold_1();
  }

  return s_multicamModeEnabled;
}

BOOL __ARUserDefaultsMulticamModeEnabled_block_invoke()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.multicam_mode.enabled"];
  s_multicamModeEnabled = result;
  return result;
}

uint64_t ARBackWidePhotoQualityPrioritizationOverride(uint64_t a1, uint64_t a2)
{
  if (ARBackWidePhotoQualityPrioritizationOverride_onceToken != -1)
  {
    ARBackWidePhotoQualityPrioritizationOverride_cold_1();
  }

  return ARBackWidePhotoQualityPrioritizationOverride_override;
}

void __ARBackWidePhotoQualityPrioritizationOverride_block_invoke()
{
  v0 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.wide.photoQualityPrioritization"];
  v1 = v0;
  if (v0)
  {
    v3 = v0;
    v2 = [v0 integerValue];
    v1 = v3;
    if (v2 >= 1)
    {
      ARBackWidePhotoQualityPrioritizationOverride_override = v2;
    }
  }
}

__CFString *ARCreateOBJStringForMeshAnchors(void *a1, void *a2, float a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [objc_alloc(MEMORY[0x1E695DFC0]) initToMemory];
  v7 = v6;
  if (!v6)
  {
    if (ARShouldUseLogTypeError_onceToken_57 != -1)
    {
      ARVersionStringForIdentifier_cold_2();
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_57;
    v11 = _ARLogGeneral_52(v6);
    v12 = v11;
    if (v10 == 1)
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *v20 = 0;
      v13 = "Creating the OBJ failed.";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *v20 = 0;
      v13 = "Error: Creating the OBJ failed.";
      v14 = v12;
      v15 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v14, v15, v13, v20, 2u);
LABEL_12:

    if (a2)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A250];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"Failed to create an in-memory output stream.";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *a2 = [v16 errorWithDomain:v17 code:-1 userInfo:v18];
    }

    goto LABEL_14;
  }

  [v6 open];
  ARWriteOBJForMeshAnchorsToStream(v5, v7, a2, a3);
  if (!*a2)
  {
    [v7 close];
    v8 = [v7 propertyForKey:*MEMORY[0x1E695DA30]];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];

    goto LABEL_15;
  }

LABEL_14:
  v9 = &stru_1F4208A80;
LABEL_15:

  return v9;
}

void ARWriteOBJForMeshAnchorsToStream(void *a1, void *a2, void *a3, float a4)
{
  v211 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = _ARLogGeneral_52(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *v209 = [v7 count];
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Writing an OBJ file for %lu mesh anchors to a stream.", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696AD60] string];
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v11 = v7;
  v180 = [v11 countByEnumeratingWithState:&v197 objects:v210 count:16];
  if (!v180)
  {

    goto LABEL_62;
  }

  v176 = v10;
  v178 = a3;
  v179 = v8;
  v12 = 0;
  v13 = 0;
  v184 = v11;
  v185 = *v198;
LABEL_5:
  v14 = 0;
  while (1)
  {
    v189 = v12;
    if (*v198 != v185)
    {
      objc_enumerationMutation(v11);
    }

    v15 = [*(*(&v197 + 1) + 8 * v14) geometry];
    v16 = [v15 vertices];
    v17 = [v16 count];

    v18 = [v15 normals];
    v19 = [v18 count];

    v20 = [v15 vertices];
    v21 = [v20 count];
    v22 = [v15 normals];
    v23 = [v22 count];

    if (v21 != v23)
    {
      break;
    }

    v25 = [v15 faces];
    v26 = [v25 buffer];
    v27 = [v26 contents];

    v28 = [v15 faces];
    v29 = [v28 count];

    if (v29 >= 1)
    {
      v30 = 0;
      while (1)
      {
        v31 = *(v27 + 4 * v30);
        v32 = [v15 vertices];
        v33 = [v32 count];

        if (v33 <= v31)
        {
          break;
        }

        ++v30;
        v35 = [v15 faces];
        v36 = 3 * [v35 count];

        if (v36 <= v30)
        {
          goto LABEL_13;
        }
      }

      if (ARShouldUseLogTypeError_onceToken_57 != -1)
      {
        __ARDisplayCenterTransformForCaptureDevicePosition_block_invoke_cold_1();
      }

      v8 = v179;
      v11 = v184;
      v130 = ARShouldUseLogTypeError_internalOSVersion_57;
      v131 = _ARLogGeneral_52(v34);
      v132 = v131;
      if (v130 == 1)
      {
        if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        v133 = *(v27 + 4 * v30);
        v134 = [v15 vertices];
        v135 = [v134 count];
        *buf = 67109376;
        *v209 = v133;
        *&v209[4] = 2048;
        *&v209[6] = v135;
        v136 = "Face index %d is out of range [0, %ld].";
        v137 = v132;
        v138 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
        {
          goto LABEL_70;
        }

        v145 = *(v27 + 4 * v30);
        v134 = [v15 vertices];
        v146 = [v134 count];
        *buf = 67109376;
        *v209 = v145;
        *&v209[4] = 2048;
        *&v209[6] = v146;
        v136 = "Error: Face index %d is out of range [0, %ld].";
        v137 = v132;
        v138 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v137, v138, v136, buf, 0x12u);

LABEL_70:
      v10 = v176;
      v147 = v178;
      if (v178)
      {
        v148 = MEMORY[0x1E696ABC0];
        v149 = *MEMORY[0x1E696A250];
        v204 = *MEMORY[0x1E696A578];
        v205 = @"A face index is out of range.";
        v150 = MEMORY[0x1E695DF20];
        v151 = &v205;
        v152 = &v204;
        goto LABEL_72;
      }

      goto LABEL_73;
    }

LABEL_13:
    v13 += v17;
    v12 = v19 + v189;

    ++v14;
    v11 = v184;
    if (v14 == v180)
    {
      v180 = [v184 countByEnumeratingWithState:&v197 objects:v210 count:16];
      if (!v180)
      {

        a3 = v178;
        v8 = v179;
        v10 = v176;
        if (v13)
        {
          [v176 appendString:@"#\n"];
          v174 = MEMORY[0x1E696AEC0];
          v186 = [MEMORY[0x1E696AAE8] mainBundle];
          v181 = [v186 infoDictionary];
          v190 = v12;
          v38 = [v181 objectForKeyedSubscript:@"CFBundleVersion"];
          v39 = ARKitBundle(v38);
          v40 = [v39 infoDictionary];
          v41 = [v40 objectForKeyedSubscript:@"CFBundleVersion"];
          v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleCV3D"];
          v43 = [v42 infoDictionary];
          v44 = [v43 objectForKeyedSubscript:@"CFBundleVersion"];
          v45 = [v174 stringWithFormat:@"# ARKit mesh exported from ARExamples %@, ARKit %@, AppleCV3D %@\n", v38, v41, v44];
          [v176 appendString:v45];

          v10 = v176;
          [v176 appendString:@"#\n"];
          v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"# Vertex count: %d\n", v13];
          [v176 appendString:v46];

          v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"# Face count: %d\n", v190];
          [v176 appendString:v47];

          [v176 appendString:@"#\n"];
          [v176 appendString:@"# Real world scale is 1 unit = 1 m\n"];
          [v176 appendString:@"# Each vertex is followed by four RGBA color values in range [0.0 - 1.0] (not in spec)\n"];
          v195 = 0u;
          v196 = 0u;
          v193 = 0u;
          v194 = 0u;
          obj = v184;
          v171 = [obj countByEnumeratingWithState:&v193 objects:v201 count:16];
          if (!v171)
          {
            v128 = v178;
LABEL_92:

            [v10 appendString:@"\n"];
            [v10 appendString:@"# EOF\n"];
            v8 = v179;
            ARAppendStringToStream(v10, v179, v128);
LABEL_93:
            v11 = v184;
            goto LABEL_79;
          }

          v48 = 1;
          v170 = *v194;
          v49 = a4;
          v50 = 0x1E696A000uLL;
          while (2)
          {
            v51 = 0;
            v52 = v10;
LABEL_19:
            if (*v194 != v170)
            {
              objc_enumerationMutation(obj);
            }

            v173 = v51;
            v53 = *(*(&v193 + 1) + 8 * v51);
            v54 = [v53 geometry];
            [v52 appendString:@"\n"];
            v55 = *(v50 + 3776);
            v177 = v53;
            v56 = [v53 identifier];
            v57 = [v56 UUIDString];
            v58 = [v55 stringWithFormat:@"o mesh_anchor_%@\n", v57];
            [v52 appendString:v58];

            [v52 appendString:@"\n"];
            v59 = [v54 colors];
            v60 = [v59 count];

            v61 = [v54 classification];
            v62 = [v61 count];

            v63 = [v54 faces];
            v64 = [v63 buffer];
            v65 = [v64 contents];

            v172 = v65;
            if (v60)
            {
              v66 = [v54 colors];
              v67 = [v66 buffer];
              v68 = [v67 contents];

              goto LABEL_23;
            }

            if (v62)
            {
              v191 = v48;
              v71 = [v54 vertices];
              v68 = malloc_type_malloc(12 * [v71 count], 0x100004052888210uLL);

              v72 = [v54 classification];
              v73 = [v72 buffer];
              v74 = [v73 contents];

              v76 = 0;
              do
              {
                v77 = v62;
                for (i = 0; i != 12; i += 4)
                {
                  v79 = *(v65 + i);
                  v80 = ARCV3DColorComponentsForARKitSemantics(*(v74 + v76), v75);
                  *&v68[3 * v79] = v80.n128_u64[0];
                  v68[3 * v79 + 2] = v80.n128_f32[2];
                }

                ++v76;
                v65 += 12;
                v62 = v77;
              }

              while (v76 != v77);
              v175 = 1;
              v50 = 0x1E696A000uLL;
              v48 = v191;
            }

            else
            {
              v68 = 0;
LABEL_23:
              if (v62)
              {
                v69 = v60 == 0;
              }

              else
              {
                v69 = 0;
              }

              v70 = v69;
              v175 = v70;
            }

            v81 = [v54 vertices];
            v82 = [v81 buffer];
            v83 = [v82 contents];

            v84 = [v54 vertices];
            v85 = [v84 count];

            if (v85 >= 1)
            {
              v86 = 0;
              v87 = (v83 + 4);
              v88 = v68 + 2;
              do
              {
                v182 = *(v87 - 1);
                v187 = *v87;
                v192 = v87[1];
                objc_msgSend_transform(v177);
                if (v68)
                {
                  v93 = *(v88 - 1);
                  v94 = *v88;
                }

                else
                {
                  v93 = 0x3F0000003F000000;
                  v94 = 0.5;
                }

                v95 = vaddq_f32(v92, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v89, v182), v90, v187), v91, v192));
                v96 = [*(v50 + 3776) stringWithFormat:@"v %.06f %.06f %.06f %.03f %.03f %.03f %.03f\n", v95.f32[0], v95.f32[1], v95.f32[2], *&v93, *(&v93 + 1), v94, *&v49];
                [v52 appendString:v96];

                ++v86;
                v97 = [v54 vertices];
                v98 = [v97 count];

                v87 += 3;
                v88 += 3;
              }

              while (v98 > v86);
            }

            if (v175)
            {
              free(v68);
            }

            [v52 appendString:@"\n"];
            v99 = [v54 normals];
            v100 = [v99 buffer];
            v101 = [v100 contents];

            v102 = [v54 normals];
            v103 = [v102 count];

            if (v103 >= 1)
            {
              v104 = 0;
              v105 = (v101 + 8);
              do
              {
                v183 = *(v105 - 2);
                v188 = *(v105 - 1);
                v106 = *v105;
                v105 += 3;
                objc_msgSend_transform(v177);
                v111 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v107, v183), v108, v188), v109, v106), 0, v110);
                v112 = [*(v50 + 3776) stringWithFormat:@"vn %f %f %f\n", v111.f32[0], v111.f32[1], v111.f32[2]];
                [v52 appendString:v112];

                ++v104;
                v113 = [v54 normals];
                v114 = [v113 count];
              }

              while (v114 > v104);
            }

            [v52 appendString:@"\n"];
            v115 = [v54 faces];
            v116 = [v115 count];

            if (v116 >= 1)
            {
              v117 = v50;
              v118 = 0;
              v119 = (v172 + 8);
              do
              {
                v120 = (*(v119 - 2) + v48);
                v121 = (*(v119 - 1) + v48);
                v122 = *v119;
                v119 += 3;
                v123 = [*(v117 + 3776) stringWithFormat:@"f %d//%d %d//%d %d//%d\n", v120, v120, v121, v121, (v122 + v48), (v122 + v48)];
                [v52 appendString:v123];

                ++v118;
                v124 = [v54 faces];
                v125 = [v124 count];
              }

              while (v125 > v118);
            }

            v126 = [v54 vertices];
            v127 = [v126 count];

            v128 = v178;
            ARAppendStringToStream(v52, v179, v178);
            if (*v178)
            {

              v10 = v52;
              v8 = v179;
              goto LABEL_93;
            }

            v48 += v127;
            v10 = [MEMORY[0x1E696AD60] string];

            v51 = v173 + 1;
            v52 = v10;
            v50 = 0x1E696A000;
            if (v173 + 1 == v171)
            {
              v129 = [obj countByEnumeratingWithState:&v193 objects:v201 count:16];
              v171 = v129;
              if (!v129)
              {
                goto LABEL_92;
              }

              continue;
            }

            goto LABEL_19;
          }
        }

LABEL_62:
        if (ARShouldUseLogTypeError_onceToken_57 != -1)
        {
          __ARDisplayCenterTransformForCaptureDevicePosition_block_invoke_cold_1();
        }

        v139 = ARShouldUseLogTypeError_internalOSVersion_57;
        v140 = _ARLogGeneral_52(v37);
        v141 = v140;
        if (v139 == 1)
        {
          if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v142 = "No mesh to save.";
            v143 = v141;
            v144 = OS_LOG_TYPE_ERROR;
            goto LABEL_76;
          }
        }

        else if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v142 = "Error: No mesh to save.";
          v143 = v141;
          v144 = OS_LOG_TYPE_INFO;
LABEL_76:
          _os_log_impl(&dword_1C241C000, v143, v144, v142, buf, 2u);
        }

        if (a3)
        {
          v154 = MEMORY[0x1E696ABC0];
          v155 = *MEMORY[0x1E696A250];
          v202 = *MEMORY[0x1E696A578];
          v203 = @"There is no mesh to save.";
          v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
          *a3 = [v154 errorWithDomain:v155 code:-1 userInfo:v156];
        }

        goto LABEL_79;
      }

      goto LABEL_5;
    }
  }

  v147 = v178;
  if (ARShouldUseLogTypeError_onceToken_57 != -1)
  {
    __ARDisplayCenterTransformForCaptureDevicePosition_block_invoke_cold_1();
  }

  v8 = v179;
  v10 = v176;
  v157 = ARShouldUseLogTypeError_internalOSVersion_57;
  v158 = _ARLogGeneral_52(v24);
  v159 = v158;
  if (v157 == 1)
  {
    if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      v160 = [v15 vertices];
      v161 = [v160 count];
      v162 = [v15 normals];
      v163 = [v162 count];
      *buf = 134218240;
      *v209 = v161;
      *&v209[8] = 2048;
      *&v209[10] = v163;
      v164 = "Vertex count %ld does not match normal count %ld.";
      v165 = v159;
      v166 = OS_LOG_TYPE_ERROR;
      goto LABEL_87;
    }
  }

  else if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
  {
    v160 = [v15 vertices];
    v167 = [v160 count];
    v162 = [v15 normals];
    v168 = [v162 count];
    *buf = 134218240;
    *v209 = v167;
    *&v209[8] = 2048;
    *&v209[10] = v168;
    v164 = "Error: Vertex count %ld does not match normal count %ld.";
    v165 = v159;
    v166 = OS_LOG_TYPE_INFO;
LABEL_87:
    _os_log_impl(&dword_1C241C000, v165, v166, v164, buf, 0x16u);
  }

  if (v178)
  {
    v148 = MEMORY[0x1E696ABC0];
    v149 = *MEMORY[0x1E696A250];
    v206 = *MEMORY[0x1E696A578];
    v207 = @"An anchor geometrie's vertex count does not match normal count.";
    v150 = MEMORY[0x1E695DF20];
    v151 = &v207;
    v152 = &v206;
LABEL_72:
    v153 = [v150 dictionaryWithObjects:v151 forKeys:v152 count:1];
    *v147 = [v148 errorWithDomain:v149 code:-1 userInfo:v153];
  }

LABEL_73:

LABEL_79:
}

void ARAppendStringToStream(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a1 dataUsingEncoding:4];
  v7 = [v6 length];
  if ([v5 write:objc_msgSend(v6 maxLength:{"bytes"), v7}] == v7)
  {
    goto LABEL_15;
  }

  v8 = [v5 streamError];

  if (v8)
  {
    if (ARShouldUseLogTypeError_onceToken_57 != -1)
    {
      ARVersionStringForIdentifier_cold_2();
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_57;
    v11 = _ARLogGeneral_52(v9);
    v12 = v11;
    if (v10 == 1)
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v13 = [v5 streamError];
      *buf = 138412290;
      v23 = v13;
      v14 = "Writing a string to the output stream failed with error: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v13 = [v5 streamError];
      *buf = 138412290;
      v23 = v13;
      v14 = "Error: Writing a string to the output stream failed with error: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v15, v16, v14, buf, 0xCu);

LABEL_13:
    if (a3)
    {
      *a3 = [v5 streamError];
    }

    goto LABEL_15;
  }

  if (a3)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v20 = *MEMORY[0x1E696A578];
    v21 = @"Writing a string to an output stream failed with an unknown error.";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *a3 = [v17 errorWithDomain:v18 code:-1 userInfo:v19];
  }

LABEL_15:
}

id ARKitBundle(uint64_t a1)
{
  if (ARKitBundle_onceToken != -1)
  {
    ARKitBundle_cold_1();
  }

  v2 = ARKitBundle_arkitBundle;

  return v2;
}

double ARFixedIntrinsicsForBackUltraWideCamera640x480(uint64_t a1, uint64_t a2)
{
  v2 = MGGetProductType();
  result = *&_PromotedConst_323;
  if (v2 <= 2722529671)
  {
    if (v2 != 1371389549 && v2 != 2080700391)
    {
      return result;
    }

    return *"KFyC";
  }

  if (v2 == 2722529672)
  {
    return *"KFyC";
  }

  if (v2 == 3863625342 || v2 == 3599094683)
  {
    return *&_PromotedConst_322;
  }

  return result;
}

double ARRadialDistortionForUltraWideCamera(uint64_t a1, uint64_t a2)
{
  v2 = MGGetProductType();
  if (v2 <= 2722529671)
  {
    if (v2 != 1371389549)
    {
      result = -0.00199588993;
      if (v2 != 2080700391)
      {
        return result;
      }
    }

    return -0.000000502777423;
  }

  if (v2 == 2722529672)
  {
    return -0.000000502777423;
  }

  result = -0.00199588993;
  if (v2 == 3863625342 || v2 == 3599094683)
  {
    return -0.00382197322;
  }

  return result;
}

double ARWideToUltrawideExtrinsicsForOldRecordings(uint64_t a1, uint64_t a2)
{
  if (ARWideToUltrawideExtrinsicsForOldRecordings_onceToken != -1)
  {
    ARWideToUltrawideExtrinsicsForOldRecordings_cold_1();
  }

  return *&ARWideToUltrawideExtrinsicsForOldRecordings_wideToUltrawideExtrinsics_0;
}

void __ARWideToUltrawideExtrinsicsForOldRecordings_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MGGetProductType();
  v3.columns[0] = *MEMORY[0x1E69E9B18];
  v3.columns[1] = *(MEMORY[0x1E69E9B18] + 16);
  v3.columns[2] = *(MEMORY[0x1E69E9B18] + 32);
  v4 = *(MEMORY[0x1E69E9B18] + 48);
  if (v2 <= 2103978417)
  {
    if (v2 == 1293446025)
    {
LABEL_13:
      v5 = xmmword_1C25F4360;
      v4 = xmmword_1C25F4370;
      goto LABEL_15;
    }

    if (v2 == 1371389549)
    {
LABEL_14:
      v5 = xmmword_1C25F4300;
      v4 = xmmword_1C25F4310;
      goto LABEL_15;
    }

    v5 = *(MEMORY[0x1E69E9B18] + 48);
    if (v2 == 2080700391)
    {
      v5 = xmmword_1C25F4320;
      v4 = xmmword_1C25F4330;
LABEL_15:
      v3.columns[2] = xmmword_1C25C9070;
      v3.columns[1] = xmmword_1C25C9080;
      v3.columns[0] = xmmword_1C25C9060;
    }
  }

  else
  {
    if (v2 <= 3599094682)
    {
      if (v2 != 2103978418)
      {
        v5 = *(MEMORY[0x1E69E9B18] + 48);
        if (v2 != 2722529672)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (v2 == 3599094683 || (v5 = *(MEMORY[0x1E69E9B18] + 48), v2 == 3863625342))
    {
      v5 = xmmword_1C25F4340;
      v4 = xmmword_1C25F4350;
      goto LABEL_15;
    }
  }

LABEL_16:
  v17 = v3.columns[0];
  v18 = v3.columns[1];
  v6 = vdupq_n_s32(0x447A0000u);
  v3.columns[3] = vmulq_f32(v4, v6);
  v3.columns[3].i32[3] = v4.i32[3];
  v7 = vmulq_f32(v5, v6);
  v7.i32[3] = v5.i32[3];
  v19 = v3.columns[2];
  v20 = v7;
  v23 = __invert_f4(v3);
  v8 = 0;
  v21[0] = v17;
  v21[1] = v18;
  v21[2] = v19;
  v21[3] = v20;
  memset(v22, 0, sizeof(v22));
  do
  {
    v22[v8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23.columns[0], COERCE_FLOAT(v21[v8])), v23.columns[1], *&v21[v8], 1), v23.columns[2], v21[v8], 2), v23.columns[3], v21[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  ARMatrix4x3FromMatrix4x4();
  DWORD2(ARWideToUltrawideExtrinsicsForOldRecordings_wideToUltrawideExtrinsics_0) = v9;
  *&ARWideToUltrawideExtrinsicsForOldRecordings_wideToUltrawideExtrinsics_0 = v10;
  DWORD2(ARWideToUltrawideExtrinsicsForOldRecordings_wideToUltrawideExtrinsics_1) = v11;
  *&ARWideToUltrawideExtrinsicsForOldRecordings_wideToUltrawideExtrinsics_1 = v12;
  DWORD2(ARWideToUltrawideExtrinsicsForOldRecordings_wideToUltrawideExtrinsics_2) = v13;
  *&ARWideToUltrawideExtrinsicsForOldRecordings_wideToUltrawideExtrinsics_2 = v14;
  DWORD2(ARWideToUltrawideExtrinsicsForOldRecordings_wideToUltrawideExtrinsics_3) = v15;
  *&ARWideToUltrawideExtrinsicsForOldRecordings_wideToUltrawideExtrinsics_3 = v16;
}

const __SCNetworkReachability *ARDeviceHasInternetConnectivity()
{
  v4 = *MEMORY[0x1E69E9840];
  address = xmmword_1C25F4380;
  result = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], &address);
  if (result)
  {
    v1 = result;
    flags = 0;
    SCNetworkReachabilityGetFlags(result, &flags);
    CFRelease(v1);
    return ((flags >> 1) & 1);
  }

  return result;
}

BOOL ARIsProcessRunning(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5);
  v14 = *MEMORY[0x1E69E9840];
  v6 = v5;
  bzero(buffer, 0x2000uLL);
  v7 = proc_listallpids(buffer, 0x2000);
  if (v7 < 1)
  {
    v10 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7;
    v10 = 1;
    do
    {
      bzero(__s1, 0x400uLL);
      proc_name(buffer[v8], __s1, 0x400u);
      if (!strncmp(__s1, [v6 UTF8String], objc_msgSend(v6, "length")))
      {
        break;
      }

      v10 = ++v8 < v9;
    }

    while (v9 != v8);
  }

  return v10;
}

double ARGetSystemBootTime()
{
  v16 = *MEMORY[0x1E69E9840];
  if (ARGetSystemBootTime_onceToken != -1)
  {
    ARGetSystemBootTime_cold_1();
  }

  if (!ARGetSystemBootTime_bootTimeMIBSize)
  {
    return 0.0;
  }

  v12 = 0;
  v13 = 0;
  v11 = 16;
  v0 = sysctl(ARGetSystemBootTime_bootTimeMIB, ARGetSystemBootTime_bootTimeMIBSize, &v12, &v11, 0, 0);
  if (!v0)
  {
    return v13 / 1000000.0 + v12;
  }

  v1 = v0;
  if (ARShouldUseLogTypeError_onceToken_57 != -1)
  {
    __ARDisplayCenterTransformForCaptureDevicePosition_block_invoke_cold_1();
  }

  v2 = ARShouldUseLogTypeError_internalOSVersion_57;
  v3 = _ARLogGeneral_52(v0);
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = strerror(v1);
      *buf = 136380675;
      v15 = v5;
      v6 = "Failed to lookup kern.boottime with error: %{private}s";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_13:
      _os_log_impl(&dword_1C241C000, v7, v8, v6, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v10 = strerror(v1);
    *buf = 136380675;
    v15 = v10;
    v6 = "Error: Failed to lookup kern.boottime with error: %{private}s";
    v7 = v4;
    v8 = OS_LOG_TYPE_INFO;
    goto LABEL_13;
  }

  return 0.0;
}

void __ARGetSystemBootTime_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  __memset_chk();
  v0 = sysctlnametomib("kern.boottime", ARGetSystemBootTime_bootTimeMIB, &ARGetSystemBootTime_bootTimeMIBSize);
  if (v0)
  {
    v1 = v0;
    if (ARShouldUseLogTypeError_onceToken_57 != -1)
    {
      ARVersionStringForIdentifier_cold_2();
    }

    v2 = ARShouldUseLogTypeError_internalOSVersion_57;
    v3 = _ARLogGeneral_52(v0);
    v4 = v3;
    if (v2 == 1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v8 = 136380675;
        v9 = strerror(v1);
        v5 = "Failed to get kern.boottime MIB with error: %{private}s";
        v6 = v4;
        v7 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v6, v7, v5, &v8, 0xCu);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 136380675;
      v9 = strerror(v1);
      v5 = "Error: Failed to get kern.boottime MIB with error: %{private}s";
      v6 = v4;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }

    ARGetSystemBootTime_bootTimeMIBSize = 0;
  }
}

NSObject *ARCreateDispatchSourceForSignalWithHandler(int a1, NSObject *a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_source_create(MEMORY[0x1E69E9700], a1, 0, a2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __ARCreateDispatchSourceForSignalWithHandler_block_invoke;
  v9[3] = &unk_1E817F170;
  v10 = v5;
  v11 = a1;
  v7 = v5;
  dispatch_source_set_event_handler(v6, v9);

  return v6;
}

__CFString *NSStringFromAVCaptureDevicePosition(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E817F1B8[a1];
  }
}

uint64_t ARIsBravoCamera(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E6986908]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E6986938]];
  }

  return v2;
}

uint64_t ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E6986950]])
  {
    v2 = 1;
  }

  else
  {
    v2 = ARIsBravoCamera(v1);
  }

  return v2;
}

id AREnumerateClasses(const void *a1, void *a2, objc_class *a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v7 = v6;
  if (a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AREnumerateClasses_block_invoke;
    block[3] = &unk_1E817F198;
    v16 = v6;
    objc_enumerateClasses(a1, 0, v5, a3, block);
  }

  else
  {
    v8 = _dyld_image_count();
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        image_header = _dyld_get_image_header(i);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __AREnumerateClasses_block_invoke_2;
        v13[3] = &unk_1E817F198;
        v14 = v7;
        objc_enumerateClasses(image_header, 0, v5, a3, v13);
      }
    }
  }

  return v7;
}

id ARLibraryDirectory(uint64_t a1)
{
  if (ARLibraryDirectory_onceToken != -1)
  {
    ARLibraryDirectory_cold_1();
  }

  v2 = ARLibraryDirectory_arkitLibraryDirectory;

  return v2;
}

void __ARLibraryDirectory_block_invoke()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v4 = [v0 lastObject];

  v1 = [v4 stringByAppendingPathComponent:@"ARKit"];
  v2 = [v1 stringByAppendingString:@"/"];
  v3 = ARLibraryDirectory_arkitLibraryDirectory;
  ARLibraryDirectory_arkitLibraryDirectory = v2;
}

id ARCacheDirectory(uint64_t a1)
{
  if (ARCacheDirectory_onceToken != -1)
  {
    ARCacheDirectory_cold_1();
  }

  v2 = ARCacheDirectory_arkitCacheDirectory;

  return v2;
}

void __ARCacheDirectory_block_invoke()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v6 = [v0 lastObject];

  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [v6 stringByAppendingPathComponent:v2];
  v4 = [v3 stringByAppendingString:@"/"];
  v5 = ARCacheDirectory_arkitCacheDirectory;
  ARCacheDirectory_arkitCacheDirectory = v4;
}

id ARCreateFixedPriorityPthreadQueue(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(&v6, 0, sizeof(v6));
  pthread_attr_init(&v6);
  v5 = 0;
  pthread_attr_getschedparam(&v6, &v5);
  v5.sched_priority = a2;
  pthread_attr_setschedpolicy(&v6, 2);
  pthread_attr_setschedparam(&v6, &v5);
  pthread_attr_setinheritsched(&v6, 2);
  v3 = dispatch_pthread_root_queue_create();
  pthread_attr_destroy(&v6);

  return v3;
}

void __ARKitBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.ARKit"];
  v1 = ARKitBundle_arkitBundle;
  ARKitBundle_arkitBundle = v0;

  if (!ARKitBundle_arkitBundle)
  {
    v2 = MEMORY[0x1E696AAE8];
    v6 = _ARSystemLibraryPath();
    v3 = [v6 stringByAppendingPathComponent:@"Frameworks/ARKit.framework"];
    v4 = [v2 bundleWithPath:v3];
    v5 = ARKitBundle_arkitBundle;
    ARKitBundle_arkitBundle = v4;
  }
}

id _ARSystemLibraryPath()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  if ([v0 count])
  {
    v1 = [v0 objectAtIndex:0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id ARKitUIBundle(uint64_t a1)
{
  if (ARKitUIBundle_onceToken != -1)
  {
    ARKitUIBundle_cold_1();
  }

  v2 = ARKitUIBundle_arkitUIBundle;

  return v2;
}

void __ARKitUIBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.ARKitUI"];
  v1 = ARKitUIBundle_arkitUIBundle;
  ARKitUIBundle_arkitUIBundle = v0;

  if (!ARKitUIBundle_arkitUIBundle)
  {
    v2 = MEMORY[0x1E696AAE8];
    v6 = _ARSystemLibraryPath();
    v3 = [v6 stringByAppendingPathComponent:@"PrivateFrameworks/ARKitUI.framework"];
    v4 = [v2 bundleWithPath:v3];
    v5 = ARKitUIBundle_arkitUIBundle;
    ARKitUIBundle_arkitUIBundle = v4;
  }
}

id ARKitCoreBundle(uint64_t a1)
{
  if (ARKitCoreBundle_onceToken != -1)
  {
    ARKitCoreBundle_cold_1();
  }

  v2 = ARKitCoreBundle_arkitCoreBundle;

  return v2;
}

void __ARKitCoreBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.ARKitCore"];
  v1 = ARKitCoreBundle_arkitCoreBundle;
  ARKitCoreBundle_arkitCoreBundle = v0;

  if (!ARKitCoreBundle_arkitCoreBundle)
  {
    v2 = MEMORY[0x1E696AAE8];
    v6 = _ARSystemLibraryPath();
    v3 = [v6 stringByAppendingPathComponent:@"PrivateFrameworks/ARKitCore.framework"];
    v4 = [v2 bundleWithPath:v3];
    v5 = ARKitCoreBundle_arkitCoreBundle;
    ARKitCoreBundle_arkitCoreBundle = v4;
  }
}

id ARKitDaemonBundle(uint64_t a1)
{
  if (ARKitDaemonBundle_onceToken != -1)
  {
    ARKitDaemonBundle_cold_1();
  }

  v2 = ARKitDaemonBundle_arkitDaemonBundle;

  return v2;
}

void __ARKitDaemonBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.ARKitDaemon"];
  v1 = ARKitDaemonBundle_arkitDaemonBundle;
  ARKitDaemonBundle_arkitDaemonBundle = v0;

  if (!ARKitDaemonBundle_arkitDaemonBundle)
  {
    v2 = MEMORY[0x1E696AAE8];
    v6 = _ARSystemLibraryPath();
    v3 = [v6 stringByAppendingPathComponent:@"PrivateFrameworks/ARKitDaemon.framework"];
    v4 = [v2 bundleWithPath:v3];
    v5 = ARKitDaemonBundle_arkitDaemonBundle;
    ARKitDaemonBundle_arkitDaemonBundle = v4;
  }
}

BOOL ARSubclassOverridesSelector(objc_class *a1, objc_class *a2, SEL name)
{
  if (a1 == a2)
  {
    return 0;
  }

  MethodImplementation = class_getMethodImplementation(a1, name);
  v6 = class_getMethodImplementation(a2, name);
  if (MethodImplementation)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7 && MethodImplementation != v6;
}

BOOL ARSubclassOverridesClassSelector(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = [a1 methodForSelector:?];
  v6 = [a2 methodForSelector:a3];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7 && v5 != v6;
}

BOOL ARSubclassOverridesInstanceSelector(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = [a1 instanceMethodForSelector:?];
  v6 = [a2 instanceMethodForSelector:a3];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7 && v5 != v6;
}

id ARApprovedDecoderClasses(uint64_t a1)
{
  if (ARApprovedDecoderClasses_onceToken != -1)
  {
    ARApprovedDecoderClasses_cold_1();
  }

  v2 = ARApprovedDecoderClasses_set;

  return v2;
}

void __ARApprovedDecoderClasses_block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:9];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7, v8, v9, v10, v11}];
  v3 = ARApprovedDecoderClasses_set;
  ARApprovedDecoderClasses_set = v2;
}

id ARCrashReporterKey(uint64_t a1)
{
  if (ARCrashReporterKey_onceToken != -1)
  {
    ARCrashReporterKey_cold_1();
  }

  v2 = ARCrashReporterKey_crashReporterKey;

  return v2;
}

void __ARCrashReporterKey_block_invoke()
{
  if (ARInternalOSBuild_onceToken != -1)
  {
    __ARCrashReporterKey_block_invoke_cold_1();
  }

  if (ARInternalOSBuild_internalVersion == 1)
  {
    v0 = MGCopyAnswer();
    v1 = ARCrashReporterKey_crashReporterKey;
    ARCrashReporterKey_crashReporterKey = v0;
  }
}

uint64_t AROSAllowsInternalSecurityPolicies(uint64_t a1, uint64_t a2)
{
  if (AROSAllowsInternalSecurityPolicies_onceToken != -1)
  {
    AROSAllowsInternalSecurityPolicies_cold_1();
  }

  return AROSAllowsInternalSecurityPolicies_s_isDevFused;
}

uint64_t __AROSAllowsInternalSecurityPolicies_block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  AROSAllowsInternalSecurityPolicies_s_isDevFused = result;
  return result;
}

uint64_t AROSHasInternalUI(uint64_t a1, uint64_t a2)
{
  if (AROSHasInternalUI_onceToken != -1)
  {
    AROSHasInternalUI_cold_1();
  }

  return AROSHasInternalUI_s_hasInternalUI;
}

uint64_t __AROSHasInternalUI_block_invoke()
{
  result = os_variant_has_internal_ui();
  AROSHasInternalUI_s_hasInternalUI = result;
  return result;
}

__CFString *ARCallerName()
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *v3 = 0u;
  *v4 = 0u;
  if (backtrace(v3, 128) >= 3)
  {
    memset(&v2, 0, sizeof(v2));
    if (dladdr(v4[0], &v2))
    {
      if (v2.dli_sname)
      {
        [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%016lX", v4[0]];
      }
      v0 = ;
    }

    else
    {
      v0 = @"<Unknown>";
    }
  }

  else
  {
    v0 = &stru_1F4208A80;
  }

  return v0;
}

void ARAuditTokenForCurrentProcess(uint64_t a1@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  *&v1 = -1;
  *(&v1 + 1) = -1;
  *a1 = v1;
  *(a1 + 16) = v1;
  task_info_outCnt = 8;
  v2 = task_info(*MEMORY[0x1E69E9A60], 0xFu, a1, &task_info_outCnt);
  if (v2)
  {
    v3 = v2;
    if (ARShouldUseLogTypeError_onceToken_57 != -1)
    {
      __ARDisplayCenterTransformForCaptureDevicePosition_block_invoke_cold_1();
    }

    v4 = ARShouldUseLogTypeError_internalOSVersion_57;
    v5 = _ARLogGeneral_52(v2);
    v6 = v5;
    if (v4 == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v12 = v3;
        v7 = "Unable to fetch audit token for current process with statusCode: %i";
        v8 = v6;
        v9 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v8, v9, v7, buf, 8u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v12 = v3;
      v7 = "Error: Unable to fetch audit token for current process with statusCode: %i";
      v8 = v6;
      v9 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }
}

uint64_t ARPreCheckEntitlementBoolValueInClientProcess(void *a1)
{
  v1 = ARPreCheckEntitlementValueInClientProcess(a1);
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id ARPreCheckEntitlementValueInClientProcess(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = SecTaskCreateFromSelf(0);
  if (!v2)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v3 = v2;
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(v2, v1, &error);
  v5 = v4;
  if (error)
  {
    if (ARShouldUseLogTypeError_onceToken_57 != -1)
    {
      __ARDisplayCenterTransformForCaptureDevicePosition_block_invoke_cold_1();
    }

    v6 = ARShouldUseLogTypeError_internalOSVersion_57;
    v7 = _ARLogGeneral_52(v4);
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = CFErrorCopyDescription(error);
        *buf = 138412546;
        v16 = v1;
        v17 = 2112;
        v18 = v9;
        v10 = "Error retrieving entitlement %@: %@";
        v11 = v8;
        v12 = OS_LOG_TYPE_ERROR;
LABEL_11:
        _os_log_impl(&dword_1C241C000, v11, v12, v10, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = CFErrorCopyDescription(error);
      *buf = 138412546;
      v16 = v1;
      v17 = 2112;
      v18 = v9;
      v10 = "Error: Error retrieving entitlement %@: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }

    CFRelease(error);
  }

  CFRelease(v3);
LABEL_14:

  return v5;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_58()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_57 = result;
  return result;
}

void thirdparty::quadprogpp::solve_quadprog(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, _DWORD *a6, uint64_t a7)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v48);
  v11 = a1[1];
  if (v11 && *a1)
  {
    if (*a1 == v11)
    {
      if (*a3 == v11)
      {
        v12 = a3[1];
        if (*a4 == v12)
        {
          if (*a5 == v11)
          {
            v44 = a5[1];
            if (*a6 == v44)
            {
              if (*a7 != v11)
              {
                v13 = *(a7 + 8);
                if (v13)
                {
                  MEMORY[0x1C691A770](v13, 0x1000C8000313F17);
                }

                operator new[]();
              }

              thirdparty::quadprogpp::Matrix<double>::Matrix(&v47, v11, v11);
            }

            v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "The vector ci0 is incompatible (incorrect dimension ", 52);
            v40 = MEMORY[0x1C691A6B0](v39, *a6);
            v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", expecting ", 12);
            v42 = MEMORY[0x1C691A6A0](v41, v44);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ")", 1);
            exception = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](&v48, &v47);
            MEMORY[0x1C691A500](exception, &v47);
            __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
          }

          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "The matrix CI is incompatible (incorrect number of rows ", 56);
          v35 = MEMORY[0x1C691A6B0](v34, *a5);
          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " , expecting ", 13);
          v37 = MEMORY[0x1C691A6A0](v36, v11);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ")", 1);
          v38 = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](&v48, &v47);
          MEMORY[0x1C691A500](v38, &v47);
          __cxa_throw(v38, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
        }

        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "The vector ce0 is incompatible (incorrect dimension ", 52);
        v30 = MEMORY[0x1C691A6B0](v29, *a4);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", expecting ", 12);
        v32 = MEMORY[0x1C691A6A0](v31, v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ")", 1);
        v33 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](&v48, &v47);
        MEMORY[0x1C691A500](v33, &v47);
        __cxa_throw(v33, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "The matrix CE is incompatible (incorrect number of rows ", 56);
      v25 = MEMORY[0x1C691A6B0](v24, *a3);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " , expecting ", 13);
      v27 = MEMORY[0x1C691A6A0](v26, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ")", 1);
      v28 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](&v48, &v47);
      MEMORY[0x1C691A500](v28, &v47);
      __cxa_throw(v28, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "The matrix G is not a squared matrix (", 38);
    v20 = MEMORY[0x1C691A6B0](v19, *a1);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " x ", 3);
    v22 = MEMORY[0x1C691A6B0](v21, a1[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ")", 1);
    v23 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v48, &v47);
    MEMORY[0x1C691A500](v23, &v47);
    __cxa_throw(v23, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "The matrix G has 0 dimension (", 30);
  v15 = MEMORY[0x1C691A6B0](v14, *a1);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " x ", 3);
  v17 = MEMORY[0x1C691A6B0](v16, a1[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ")", 1);
  v18 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](&v48, &v47);
  MEMORY[0x1C691A500](v18, &v47);
  __cxa_throw(v18, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
}

void sub_1C25ADA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a41 < 0)
  {
    operator delete(__p);
    if ((v43 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a42);
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v42);
  goto LABEL_6;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1C25ADE50(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1C691A740](v1);
  _Unwind_Resume(a1);
}

void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = std::stringbuf::view[abi:ne200100](a1 + 8);
  v5[1] = v3;
  return std::string::basic_string<std::string_view,0>(a2, v5);
}

uint64_t thirdparty::quadprogpp::cholesky_decomposition(uint64_t result)
{
  v1 = *result;
  if (v1 >= 1)
  {
    v2 = result;
    v3 = 0;
    v4 = *(result + 8);
    v5 = v4 + 8;
    v6 = v1 - 1;
    v7 = 1;
    v8 = 8;
    do
    {
      v9 = *(v4 + 8 * v3);
      v10 = v3;
      do
      {
        v11 = *(v9 + 8 * v10);
        if (v3)
        {
          result = v7;
          do
          {
            v11 = v11 - *(v9 + 8 * (result - 2)) * *(*(v4 + 8 * v10) + 8 * (result - 2));
            --result;
          }

          while (result > 1);
        }

        if (v3 == v10)
        {
          if (v11 <= 0.0)
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](v19);
            thirdparty::quadprogpp::print_matrix("A", v2, 0xFFFFFFFF, -1);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Error in cholesky decomposition, sum: ", 38);
            MEMORY[0x1C691A690](v16, v11);
            exception = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](v19, v18);
            MEMORY[0x1C691A500](exception, v18);
            __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
          }

          *(v9 + 8 * v3) = sqrt(v11);
        }

        else
        {
          *(*(v4 + 8 * v10) + 8 * v3) = v11 / *(v9 + 8 * v3);
        }

        ++v10;
      }

      while (v10 != v1);
      v12 = v3 + 1;
      if (v3 + 1 < v1)
      {
        v13 = (v9 + v8);
        v14 = v6;
        result = v5;
        do
        {
          v15 = *result;
          result += 8;
          *v13++ = *(v15 + 8 * v3);
          --v14;
        }

        while (v14);
      }

      ++v7;
      v5 += 8;
      v8 += 8;
      --v6;
      ++v3;
    }

    while (v12 != v1);
  }

  return result;
}

void sub_1C25AE058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

BOOL thirdparty::quadprogpp::add_constraint(uint64_t a1, uint64_t a2, int *a3, int *a4, double *a5)
{
  v5 = *a3;
  v6 = *a4;
  v7 = v6;
  v8 = v6 + 1;
  if (*a3 > v8)
  {
    v9 = *(a3 + 1);
    v10 = *(a2 + 8);
    v11 = *a3;
    do
    {
      v12 = v11 - 2;
      v13 = *(v9 + 8 * (v11-- - 2));
      v14 = *(v9 + 8 * v11);
      v15 = fabs(v13);
      v16 = fabs(v14);
      if (v15 <= v16)
      {
        if (v16 <= v15)
        {
          v17 = v15 * 1.41421356;
        }

        else
        {
          v17 = v16 * sqrt(v15 / v16 * (v15 / v16) + 1.0);
        }
      }

      else
      {
        v17 = v15 * sqrt(v16 / v15 * (v16 / v15) + 1.0);
      }

      if (fabs(v17) >= 2.22044605e-16)
      {
        *(v9 + 8 * v11) = 0;
        v18 = v14 / v17;
        v19 = v13 / v17;
        if (v19 < 0.0)
        {
          v17 = -v17;
          v19 = -v19;
          v18 = -v18;
        }

        *(v9 + 8 * v12) = v17;
        if (v5 >= 1)
        {
          v20 = v5;
          v21 = v10;
          do
          {
            v22 = *v21++;
            v23 = *(v22 + 8 * v12);
            v24 = *(v22 + 8 * v11);
            v25 = v18 * v24 + v23 * v19;
            *(v22 + 8 * v12) = v25;
            *(v22 + 8 * v11) = -(v24 - v18 / (v19 + 1.0) * (v23 + v25));
            --v20;
          }

          while (v20);
        }
      }
    }

    while (v11 > v8);
  }

  *a4 = v8;
  v26 = *(a3 + 1);
  if ((v7 & 0x80000000) == 0)
  {
    v27 = *(a1 + 8);
    v28 = v8;
    v29 = *(a3 + 1);
    do
    {
      v30 = *v29++;
      v31 = v30;
      v32 = *v27++;
      *(v32 + 8 * v8 - 8) = v31;
      --v28;
    }

    while (v28);
  }

  v33 = fabs(*(v26 + 8 * v7));
  v34 = *a5;
  v35 = *a5 * 2.22044605e-16;
  if (v33 > v35)
  {
    if (v34 < v33)
    {
      v34 = v33;
    }

    *a5 = v34;
  }

  return v33 > v35;
}

uint64_t thirdparty::quadprogpp::delete_constraint(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int *a7, int a8)
{
  LODWORD(v8) = *a7;
  if (*a7 <= a6)
  {
LABEL_4:
    a6 = -1;
  }

  else
  {
    while (*(*(a3 + 8) + 4 * a6) != a8)
    {
      if (v8 == ++a6)
      {
        goto LABEL_4;
      }
    }
  }

  v9 = v8 - 1;
  v10 = *(a3 + 8);
  v11 = *(a4 + 8);
  if (a6 < v8 - 1)
  {
    v12 = *(result + 8);
    v13 = a6;
    do
    {
      v14 = v13++;
      *(v10 + 4 * v14) = *(v10 + 4 * v13);
      *(v11 + 8 * v14) = *(v11 + 8 * v13);
      if (a5 >= 1)
      {
        v15 = a5;
        v16 = v12;
        do
        {
          v17 = *v16++;
          *(v17 + 8 * v14) = *(v17 + 8 * v13);
          --v15;
        }

        while (v15);
      }

      v8 = *a7;
      v9 = v8 - 1;
    }

    while (v13 < v8 - 1);
  }

  *(v10 + 4 * v9) = *(v10 + 4 * v8);
  v18 = *a7;
  *(v11 + 8 * (v18 - 1)) = *(v11 + 8 * v18);
  *(v10 + 4 * v18) = 0;
  v19 = *a7;
  *(v11 + 8 * v19) = 0;
  if (v19 >= 1)
  {
    v20 = *(result + 8);
    v21 = v19;
    do
    {
      v22 = *v20++;
      *(v22 + 8 * v19 - 8) = 0;
      --v21;
    }

    while (v21);
  }

  v23 = v19 - 1;
  *a7 = v19 - 1;
  if (v19 != 1 && a6 < v23)
  {
    v24 = *(result + 8);
    v25 = *(a2 + 8);
    v26 = a6;
    v27 = *(v24 + 8 * a6);
    do
    {
      v28 = v26;
      v29 = v27;
      ++v26;
      v30 = *(v27 + 8 * v28);
      v27 = *(v24 + 8 * v26);
      v31 = *(v27 + 8 * v28);
      v32 = fabs(v30);
      v33 = fabs(v31);
      if (v32 <= v33)
      {
        if (v33 <= v32)
        {
          v34 = v32 * 1.41421356;
        }

        else
        {
          v34 = v33 * sqrt(v32 / v33 * (v32 / v33) + 1.0);
        }
      }

      else
      {
        v34 = v32 * sqrt(v33 / v32 * (v33 / v32) + 1.0);
      }

      if (fabs(v34) >= 2.22044605e-16)
      {
        v35 = v30 / v34;
        v36 = v31 / v34;
        *(v27 + 8 * v28) = 0;
        if (v35 < 0.0)
        {
          v34 = -v34;
          v35 = -v35;
          v36 = -v36;
        }

        *(v29 + 8 * v28) = v34;
        v37 = v36 / (v35 + 1.0);
        for (i = v26; i < v23; ++i)
        {
          v39 = *(v29 + 8 * i);
          v40 = *(v27 + 8 * i);
          v41 = v36 * v40 + v39 * v35;
          *(v29 + 8 * i) = v41;
          *(v27 + 8 * i) = -(v40 - v37 * (v39 + v41));
        }

        v42 = a5;
        v43 = v25;
        if (a5 >= 1)
        {
          do
          {
            v44 = *v43++;
            v45 = *(v44 + 8 * v28);
            v46 = *(v44 + 8 * v26);
            v47 = v36 * v46 + v45 * v35;
            *(v44 + 8 * v28) = v47;
            *(v44 + 8 * v26) = -(v46 - v37 * (v45 + v47));
            --v42;
          }

          while (v42);
        }
      }
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1C691A740](a1 + 112);
  return a1;
}

uint64_t thirdparty::quadprogpp::print_matrix(const char *a1, unsigned int *a2, unsigned int a3, int a4)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  memset(&__p, 0, sizeof(__p));
  if (a3 == -1)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a3;
  }

  if (a4 == -1)
  {
    v9 = a2[1];
  }

  else
  {
    v9 = a4;
  }

  v10 = strlen(a1);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, a1, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&__dst, MEMORY[0x1E69E5318]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (v8 >= 1)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E5318];
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " ", 1);
      if (v9 >= 1)
      {
        v16 = 0;
        do
        {
          v17 = MEMORY[0x1C691A690](&v30, *(*(*(a2 + 1) + 8 * v14) + v16));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", ", 2);
          v16 += 8;
        }

        while (8 * v9 != v16);
      }

      std::ios_base::getloc((&v30 + *(v30 - 24)));
      v18 = std::locale::use_facet(&__dst, v15);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
      ++v14;
    }

    while (v14 != v8);
  }

  if ((v37 & 0x10) != 0)
  {
    v20 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v20 = v33;
    }

    locale = v32[4].__locale_;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v19 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_26;
    }

    locale = v32[1].__locale_;
    v20 = v32[3].__locale_;
  }

  v19 = v20 - locale;
  if ((v20 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v20 - locale;
  if (v19)
  {
    memmove(&__dst, locale, v19);
  }

LABEL_26:
  __dst.__r_.__value_.__s.__data_[v19] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __dst;
  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&__dst, &__p, 0, size - 3, v39);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = __dst.__r_.__value_.__l.__size_;
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], p_p, v24);
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&__dst, MEMORY[0x1E69E5318]);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v30 = *MEMORY[0x1E69E54E8];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v31 = MEMORY[0x1E69E5548] + 16;
  if (v35 < 0)
  {
    operator delete(v34);
  }

  v31 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  return MEMORY[0x1C691A740](&v38);
}

void sub_1C25AEBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1C691A6F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1C25AECC0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void *std::string::basic_string<std::string_view,0>(void *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  *(__dst + v2) = 0;
  return __dst;
}

uint64_t *thirdparty::quadprogpp::seq@<X0>(uint64_t *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  for (i = this; i <= a2; ++i)
  {
    this = std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a3, &i, &i);
  }

  return this;
}

uint64_t *thirdparty::quadprogpp::singleton@<X0>(thirdparty::quadprogpp *this@<X0>, void *a2@<X8>)
{
  v3 = this;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  return std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, &v3, &v3);
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void _ARLogGeneral()
{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_54);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_87_0);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_38);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_59);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_52);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_129);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_294);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_79);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_112);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_579);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_174);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_63_0);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_255);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_246_0);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_261);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_109);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_134);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_128);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_92);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_78_2);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_652);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_9_0);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_13_0);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_80_1);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_107);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_13_1);
}

{
  dispatch_once(&_ARLogGeneral(void)::onceToken, &__block_literal_global_70);
}

void _ARLogTechnique()
{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_63);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_116_0);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_125);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_22);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_297);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_51_0);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_34);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_37);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_582);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_139);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_252_0);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_78_1);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_125_0);
}

{
  dispatch_once(&_ARLogTechnique(void)::onceToken, &__block_literal_global_73_0);
}

void arkit::ExponentialSmoother<float>::step()
{
  __assert_rtn("step", "ExponentialSmoother.h", 69, "0.f < targetSamplingInterval");
}

{
  __assert_rtn("step", "ExponentialSmoother.h", 68, "0.f < samplingInterval");
}

{
  __assert_rtn("step", "ExponentialSmoother.h", 66, "0.f < targetAlpha && targetAlpha <= 1.f");
}

void ARCreatePlaneAnchorFromCV3DPlane()
{
  if (__cxa_guard_acquire(byte_1EBF41CE8))
  {
    v0 = OUTLINED_FUNCTION_0(&_MergedGlobals_1);
    __cxa_guard_release(v0);
  }
}

void min_cost_flow<long long>::operator()()
{
  __assert_rtn("operator()", "min_cost_flow.hpp", 88, "e.size()==c.size()");
}

{
  __assert_rtn("operator()", "min_cost_flow.hpp", 89, "x.size()==c.size()");
}

void arkit::gaussianKernel()
{
  __assert_rtn("gaussianKernel", "ARNoiseKernels.cpp", 24, "kernelSize % 2 == 1");
}

{
  __assert_rtn("gaussianKernel", "ARNoiseKernels.cpp", 23, "kernelSize > 0");
}

void arkit::unflatten()
{
  __assert_rtn("unflatten", "ARNoiseKernels.cpp", 49, "c * n == src.size()");
}

{
  __assert_rtn("unflatten", "ARNoiseKernels.cpp", 68, "k * c * n == src.size()");
}

void arkit::unflattenParams()
{
  __assert_rtn("unflattenParams", "ARNoiseKernels.cpp", 179, "vp_flat.size() % n == 0");
}

{
  __assert_rtn("unflattenParams", "ARNoiseKernels.cpp", 180, "wk_flat.size() / n % c == 0");
}

{
  __assert_rtn("unflattenParams", "ARNoiseKernels.cpp", 181, "wk_flat.size() / c % n == 0");
}

{
  __assert_rtn("unflattenParams", "ARNoiseKernels.cpp", 182, "wk_flat.size() == vk_flat.size()");
}

void arkit::ImageViewYUV::at()
{
  __assert_rtn("operator()", "arrayview.h", 321, "((x < size(0)) && (y < size(1))) || cva::detail::assertMessage(Index out of bounds!)");
}

{
  __assert_rtn("operator[]", "arrayview.h", 277, "(check_bounds(*this, idx)) || cva::detail::assertMessage(Index out of bounds!)");
}

void std::pair<cva::Matrix<float,9u,1u,false>,float>::pair[abi:ne200100]<cva::Matrix<float,0u,1u,false> &,float const&,0>()
{
  __assert_rtn("MatrixData", "matrixdata.h", 96, "(size == sz) || cva::detail::assertMessage(Matrix data size mismatch.)");
}

{
  __assert_rtn("MatrixSize", "matrixsize.h", 36, "(ROWS == rows && COLS == cols) || cva::detail::assertMessage(Row and column values and templates need to be the same.)");
}

void cva::MatrixData<float,0ul,0ul,false>::allocate()
{
  __assert_rtn("allocate", "matrixdata.h", 479, "(!m_data) || cva::detail::assertMessage(No matrix data must be allocated.)");
}

{
  __assert_rtn("allocate", "matrixdata.h", 490, "(m_data) || cva::detail::assertMessage(Matrix data must be allocated on exit.)");
}

void cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>()
{
  __assert_rtn("operator()", "matrixsubexpr.h", 192, "(row < rows() && column < columns()) || cva::detail::assertMessage(Out of range index being used on submatrix expression.)");
}

{
  __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
}

void std::__optional_copy_base<std::string const,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void cnmatrix::CNMatrixBase<double>::operator=()
{
  __assert_rtn("operator=", "cnmatrixbase.h", 620, "this->max_num_cols_ >= A.num_cols_");
}

{
  __assert_rtn("operator=", "cnmatrixbase.h", 619, "this->max_num_rows_ >= A.num_rows_");
}

void cnmatrix::CNMatrix<3u,3u,double>::TransposeDataFootprint()
{
  __assert_rtn("TransposeDataFootprint", "cnmatrix.h", 128, "lead_dim > 0");
}

{
  __assert_rtn("TransposeDataFootprint", "cnmatrix.h", 122, "scratch != nullptr");
}

void cnmatrix::CNMatrixBase<double>::operator()()
{
  __assert_rtn("operator()", "cnmatrixbase.h", 784, "idx < num_elements_");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 783, "idx >= 0");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 782, "data_ != __null");
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

uint64_t cnnavigation::ENUToECEF()
{
  return MEMORY[0x1EEDF9880]();
}

{
  return MEMORY[0x1EEDF9888]();
}

void cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,4u,1u,false>>()
{
    ;
  }
}

void cva::imageViewFromPixelBuffer<unsigned char>()
{
    ;
  }
}

void cva::VecLib<float>::gemm()
{
    ;
  }
}

void cva::VecLib<float>::gemv()
{
    ;
  }
}

void arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>::find()
{
    ;
  }
}

void arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>::insert()
{
    ;
  }
}

void arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>::KeyMapBuffer()
{
    ;
  }
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E18]();
}

{
  return MEMORY[0x1EEE63E20]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x1EEE73558](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x1EEE73560](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}