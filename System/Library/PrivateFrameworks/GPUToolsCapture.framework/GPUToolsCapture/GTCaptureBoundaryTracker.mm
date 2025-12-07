@interface GTCaptureBoundaryTracker
@end

@implementation GTCaptureBoundaryTracker

void __GTCaptureBoundaryTracker_handleTrigger_block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 48) + 20));
  v182 = v1;
  v2 = *(a1 + 48);
  v3 = *(a1 + 60);
  v184 = *(a1 + 56);
  v186 = *(a1 + 64);
  v4 = *(a1 + 104);
  v196 = *(a1 + 96);
  v197 = *(a1 + 80);
  v5 = *(a1 + 120);
  v194 = *(a1 + 88);
  v195 = *(a1 + 112);
  v187 = *(a1 + 128);
  *v204 = *(a1 + 129);
  *&v204[3] = *(a1 + 132);
  v192 = *(a1 + 72);
  v193 = *(a1 + 136);
  os_unfair_lock_lock((v2 + 16));
  v185 = v3;
  if (v3 == 9)
  {
    v6 = (v2 + 20);
    if (!atomic_load((v2 + 20)))
    {
LABEL_17:
      v12 = (v2 + 20);
      v13 = atomic_load((v2 + 20));
      v199 = v2 + 32;
      v14 = *(v2 + 32 + 8 * v13);
      *buf = v184;
      *&buf[4] = v185;
      *&buf[8] = v186;
      *&buf[16] = v192;
      *&buf[24] = v197;
      *&buf[32] = v194;
      *&buf[40] = v196;
      *&buf[48] = v4;
      *&buf[56] = v195;
      *&v211 = v5;
      BYTE8(v211) = v187;
      *(&v211 + 9) = *v204;
      HIDWORD(v211) = *&v204[3];
      *&v212 = v193;
      if (GTCapturePhase_checkTrigger(v14, buf))
      {
        v15 = atomic_load(v12);
        if (v15 == 1)
        {
          v16 = 0;
          v17 = 0;
          v18 = *(*(v2 + 40) + 8);
          v19 = *(v18 + 12);
          v20 = v19 & ~(v19 >> 31);
          v21 = 60;
          if ((v19 & ~(v19 >> 31)) != 0)
          {
            do
            {
              v22 = *(*(v18 + 24) + v21);
              if (v22)
              {
                if (v22 == 1)
                {
                  ++v17;
                }
              }

              else
              {
                ++v16;
              }

              v21 += 64;
              --v20;
            }

            while (v20);
          }

          if (v17 == 1 && v16 + 1 == v19 && v19 > 0)
          {
            v23 = *(v18 + 24);
            while (v23[1] != 3)
            {
              v23 += 16;
              if (!--v19)
              {
                goto LABEL_42;
              }
            }

            if (*v23 == 1)
            {
              for (i = 1; i != 5; ++i)
              {
                v25 = *(*(v199 + 8 * i) + 8);
                v26 = *(v25 + 12);
                if (v26 >= 1)
                {
                  v27 = *(v25 + 24);
                  while (*(v27 + 4) != 3)
                  {
                    v27 += 64;
                    if (!--v26)
                    {
                      goto LABEL_41;
                    }
                  }

                  *v27 = v184;
                  if (v184 == 3)
                  {
                    *(v27 + 8) = v4;
                  }
                }

LABEL_41:
                ;
              }
            }
          }
        }
      }

LABEL_42:
      v28 = atomic_load(v12);
      v10 = v28 == 3;
      v29 = v185;
      if (!v10)
      {
        goto LABEL_55;
      }

      if (v185 == 5)
      {
        v31 = g_targetRef == v195 || g_targetRef == v196;
        v30 = &g_commitOther;
        if (v31)
        {
          v30 = &g_commitCount;
        }
      }

      else
      {
        if (v185 != 3)
        {
LABEL_55:
          v189 = (v29 - 1);
          v188 = (v184 - 1);
          p_prots = &OBJC_PROTOCOL___CaptureMTLObject.prots;
          v190 = v5;
          v191 = v2;
          while (1)
          {
            v33 = *(v14 + 8);
            v34 = *(v33 + 12);
            if (v34)
            {
              if (v34 < 1)
              {
                goto LABEL_10;
              }

              v35 = v34 - 1;
              v36 = (*(v33 + 24) + 60);
              do
              {
                v37 = *(v36 - 1);
                v38 = *v36;
                v39 = *v36 >= v37 || v35-- == 0;
                v36 += 16;
              }

              while (!v39);
              if (v38 < v37)
              {
                goto LABEL_10;
              }
            }

            v40 = atomic_load((v2 + 20));
            if (v40 == 4)
            {
              goto LABEL_10;
            }

            if (*(p_prots + 88) == 1)
            {
              v41 = gt_tagged_log(5);
              v42 = v193;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v43 = atomic_load((v2 + 20));
                v44 = "UNKNOWN";
                if (v43 <= 4)
                {
                  v44 = (&off_2F1F10)[v43];
                }

                v45 = atomic_load((v2 + 20));
                v46 = v45 + 1;
                v47 = "UNKNOWN";
                if (v46 <= 4)
                {
                  v47 = (&off_2F1F10)[v46];
                }

                *buf = 136315394;
                *&buf[4] = v44;
                *&buf[12] = 2080;
                *&buf[14] = v47;
                _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "⏭️  Capture phase transition: %s ==> %s", buf, 0x16u);
              }
            }

            else
            {
              v48 = atomic_load((v2 + 20));
              v49 = "UNKNOWN";
              if (v48 <= 4)
              {
                v49 = (&off_2F1F10)[v48];
              }

              v50 = atomic_load((v2 + 20));
              v51 = v50 + 1;
              v52 = "UNKNOWN";
              v42 = v193;
              if (v51 <= 4)
              {
                v52 = (&off_2F1F10)[v51];
              }

              fprintf(__stdoutp, "⏭️  Capture phase transition: %s ==> %s\n", v49, v52);
            }

            if (*(p_prots + 88) == 1)
            {
              v53 = gt_tagged_log(5);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "🔫 GTCaptureTrigger", buf, 2u);
              }
            }

            else
            {
              fwrite("🔫 GTCaptureTrigger\n", 0x16uLL, 1uLL, __stdoutp);
            }

            if (*(p_prots + 88) == 1)
            {
              v54 = gt_tagged_log(5);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                v55 = "Instant";
                if (v189 <= 8)
                {
                  v55 = (&off_2F1EC8)[v189];
                }

                *buf = 136315138;
                *&buf[4] = v55;
                _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "    type: %s", buf, 0xCu);
              }
            }

            else
            {
              v56 = "Instant";
              if (v189 <= 8)
              {
                v56 = (&off_2F1EC8)[v189];
              }

              fprintf(__stdoutp, "    type: %s\n", v56);
            }

            if (*(p_prots + 88) == 1)
            {
              v57 = gt_tagged_log(5);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
              {
                v58 = "None";
                if (v188 <= 0xB)
                {
                  v58 = (&off_2F1E68)[v188];
                }

                *buf = 136315138;
                *&buf[4] = v58;
                _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "    object: %s", buf, 0xCu);
              }
            }

            else
            {
              v59 = "None";
              if (v188 <= 0xB)
              {
                v59 = (&off_2F1E68)[v188];
              }

              fprintf(__stdoutp, "    object: %s\n", v59);
            }

            if (*(p_prots + 88) == 1)
            {
              v60 = gt_tagged_log(5);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                *buf = 134218240;
                *&buf[4] = v186;
                *&buf[12] = 2048;
                *&buf[14] = v192;
                _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "    stream: %llu; function index: %llu", buf, 0x16u);
              }
            }

            else
            {
              fprintf(__stdoutp, "    stream: %llu; function index: %llu\n", v186, v192);
            }

            if (v197)
            {
              if (*(p_prots + 88) == 1)
              {
                v61 = gt_tagged_log(5);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v197;
                  _os_log_impl(&dword_0, v61, OS_LOG_TYPE_INFO, "    parent function index: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "    parent function index: %llu\n", v197);
              }
            }

            if (v194)
            {
              if (*(p_prots + 88) == 1)
              {
                v62 = gt_tagged_log(5);
                if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v194;
                  _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, "    MTLCaptureScope stream ref: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "    MTLCaptureScope stream ref: %llu\n", v194);
              }
            }

            if (v196)
            {
              if (*(p_prots + 88) == 1)
              {
                v63 = gt_tagged_log(5);
                if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v196;
                  _os_log_impl(&dword_0, v63, OS_LOG_TYPE_INFO, "    MTLDevice stream ref: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "    MTLDevice stream ref: %llu\n", v196);
              }
            }

            if (v195)
            {
              if (*(p_prots + 88) == 1)
              {
                v64 = gt_tagged_log(5);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v195;
                  _os_log_impl(&dword_0, v64, OS_LOG_TYPE_INFO, "    MTLCommandQueue stream ref: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "    MTLCommandQueue stream ref: %llu\n", v195);
              }
            }

            if (v5)
            {
              if (*(p_prots + 88) == 1)
              {
                v65 = gt_tagged_log(5);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v5;
                  _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "    MTLCommandBuffer stream ref: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "    MTLCommandBuffer stream ref: %llu\n", v5);
              }
            }

            if (v187)
            {
              if (*(p_prots + 88) == 1)
              {
                v66 = gt_tagged_log(5);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v66, OS_LOG_TYPE_INFO, "    MTLCommandBuffer is capturing", buf, 2u);
                }
              }

              else
              {
                fwrite("    MTLCommandBuffer is capturing\n", 0x22uLL, 1uLL, __stdoutp);
              }
            }

            if (v42)
            {
              if (*(p_prots + 88) == 1)
              {
                v67 = gt_tagged_log(5);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v67, OS_LOG_TYPE_INFO, "    captureDescriptor:", buf, 2u);
                }
              }

              else
              {
                fwrite("    captureDescriptor:\n", 0x17uLL, 1uLL, __stdoutp);
              }

              if (*(p_prots + 88) == 1)
              {
                v68 = gt_tagged_log(5);
                if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v68, OS_LOG_TYPE_INFO, "        📜 GTMTLCaptureDescriptorInternal", buf, 2u);
                }
              }

              else
              {
                fwrite("        📜 GTMTLCaptureDescriptorInternal\n", 0x2CuLL, 1uLL, __stdoutp);
              }

              if (*v42)
              {
                if (*(p_prots + 88) == 1)
                {
                  v69 = gt_tagged_log(5);
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                  {
                    v70 = *v42;
                    *buf = 134217984;
                    *&buf[4] = v70;
                    _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, "        MTLDevice stream ref: %llu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        MTLDevice stream ref: %llu\n", *v42);
                }
              }

              if (v42[1])
              {
                if (*(p_prots + 88) == 1)
                {
                  v71 = gt_tagged_log(5);
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                  {
                    v72 = v42[1];
                    *buf = 134217984;
                    *&buf[4] = v72;
                    _os_log_impl(&dword_0, v71, OS_LOG_TYPE_INFO, "        MTLCommandQueue stream ref: %llu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        MTLCommandQueue stream ref: %llu\n", v42[1]);
                }
              }

              if (v42[2])
              {
                if (*(p_prots + 88) == 1)
                {
                  v73 = gt_tagged_log(5);
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                  {
                    v74 = v42[2];
                    *buf = 134217984;
                    *&buf[4] = v74;
                    _os_log_impl(&dword_0, v73, OS_LOG_TYPE_INFO, "        MTLCaptureScope stream ref: %llu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        MTLCaptureScope stream ref: %llu\n", v42[2]);
                }
              }

              if (v42[3])
              {
                if (*(p_prots + 88) == 1)
                {
                  v75 = gt_tagged_log(5);
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                  {
                    v76 = v42[3];
                    *buf = 134217984;
                    *&buf[4] = v76;
                    _os_log_impl(&dword_0, v75, OS_LOG_TYPE_INFO, "        CAMetalLayer stream ref: %llu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        CAMetalLayer stream ref: %llu\n", v42[3]);
                }
              }

              if (v42[4])
              {
                if (*(p_prots + 88) == 1)
                {
                  v77 = gt_tagged_log(5);
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                  {
                    v78 = v42[4];
                    *buf = 134217984;
                    *&buf[4] = v78;
                    _os_log_impl(&dword_0, v77, OS_LOG_TYPE_INFO, "        session ID: %llu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        session ID: %llu\n", v42[4]);
                }
              }

              if (*(p_prots + 88) == 1)
              {
                v79 = gt_tagged_log(5);
                if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                {
                  v80 = v42[5];
                  *buf = 134217984;
                  *&buf[4] = v80;
                  _os_log_impl(&dword_0, v79, OS_LOG_TYPE_INFO, "        trigger hits to start: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "        trigger hits to start: %llu\n", v42[5]);
              }

              if (*(p_prots + 88) == 1)
              {
                v81 = gt_tagged_log(5);
                if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                {
                  v82 = v42[6];
                  *buf = 134217984;
                  *&buf[4] = v82;
                  _os_log_impl(&dword_0, v81, OS_LOG_TYPE_INFO, "        trigger hits to end: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "        trigger hits to end: %llu\n", v42[6]);
              }

              if (v42[7])
              {
                if (*(p_prots + 88) == 1)
                {
                  v83 = gt_tagged_log(5);
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
                  {
                    v84 = v42[7];
                    *buf = 136315138;
                    *&buf[4] = v84;
                    _os_log_impl(&dword_0, v83, OS_LOG_TYPE_INFO, "        localFilePathURL: %s", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        localFilePathURL: %s\n", v42[7]);
                }
              }

              if (v42[8])
              {
                if (*(p_prots + 88) == 1)
                {
                  v85 = gt_tagged_log(5);
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                  {
                    v86 = v42[8];
                    *buf = 136315138;
                    *&buf[4] = v86;
                    _os_log_impl(&dword_0, v85, OS_LOG_TYPE_INFO, "        hostFilePathURL: %s", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        hostFilePathURL: %s\n", v42[8]);
                }
              }

              if (*(p_prots + 88) == 1)
              {
                v87 = gt_tagged_log(5);
                if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                {
                  v88 = "DeviceManual";
                  if (*(v42 + 72) - 1 <= 5)
                  {
                    v88 = off_2F13E8[(*(v42 + 72) - 1)];
                  }

                  *buf = 136315138;
                  *&buf[4] = v88;
                  _os_log_impl(&dword_0, v87, OS_LOG_TYPE_INFO, "        captureMode: %s", buf, 0xCu);
                }
              }

              else
              {
                v89 = "DeviceManual";
                if (*(v42 + 72) - 1 <= 5)
                {
                  v89 = off_2F13E8[(*(v42 + 72) - 1)];
                }

                fprintf(__stdoutp, "        captureMode: %s\n", v89);
              }

              if (*(v42 + 73) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v90 = gt_tagged_log(5);
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v90, OS_LOG_TYPE_INFO, "        suspendAfterCapture: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        suspendAfterCapture: true\n", 0x22uLL, 1uLL, __stdoutp);
                }
              }

              if (*(v42 + 74) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v91 = gt_tagged_log(5);
                  if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v91, OS_LOG_TYPE_INFO, "        isBoundaryLess: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        isBoundaryLess: true\n", 0x1DuLL, 1uLL, __stdoutp);
                }
              }

              if (*(v42 + 75) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v92 = gt_tagged_log(5);
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v92, OS_LOG_TYPE_INFO, "        apiTriggeredCapture: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        apiTriggeredCapture: true\n", 0x22uLL, 1uLL, __stdoutp);
                }
              }

              if (*(v42 + 76) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v93 = gt_tagged_log(5);
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v93, OS_LOG_TYPE_INFO, "        toolTriggeredCapture: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        toolTriggeredCapture: true\n", 0x23uLL, 1uLL, __stdoutp);
                }
              }

              if (*(v42 + 77) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v94 = gt_tagged_log(5);
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v94, OS_LOG_TYPE_INFO, "        ignoreUnusedResources: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        ignoreUnusedResources: true\n", 0x24uLL, 1uLL, __stdoutp);
                }
              }

              if (*(v42 + 78) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v95 = gt_tagged_log(5);
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v95, OS_LOG_TYPE_INFO, "        includeBacktrace: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        includeBacktrace: true\n", 0x1FuLL, 1uLL, __stdoutp);
                }
              }

              if (v42[10])
              {
                if (*(p_prots + 88) == 1)
                {
                  v96 = gt_tagged_log(5);
                  if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
                  {
                    v97 = v42[10];
                    *buf = 134217984;
                    *&buf[4] = v97;
                    _os_log_impl(&dword_0, v96, OS_LOG_TYPE_INFO, "        captureCompletionHandler: %lu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        captureCompletionHandler: %lu\n", v42[10]);
                }
              }
            }

            v98 = atomic_load((v2 + 20));
            if (v98 > 1)
            {
              if (v98 != 2)
              {
                if (v98 != 3)
                {
                  goto LABEL_389;
                }

                if (!v5 || v185 != 5 && v185 != 3)
                {
                  atomic_store(0, (*v2 + 128));
                  goto LABEL_389;
                }

                if (*(p_prots + 88) == 1)
                {
                  v100 = gt_tagged_log(5);
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
                  {
                    *buf = 134217984;
                    *&buf[4] = v5;
                    _os_log_impl(&dword_0, v100, OS_LOG_TYPE_INFO, "🔄 Transition aborted: waiting until command buffer %llu is scheduled", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "🔄 Transition aborted: waiting until command buffer %llu is scheduled\n", v5);
                }

                v116 = *(*(v2 + 56) + 8);
                v116->nelts = 0;
                v117 = apr_array_push(v116);
                *v117 = 0x600000008;
                *(v117 + 8) = 0u;
                *(v117 + 24) = 0u;
                *(v117 + 5) = v5;
                *(v117 + 6) = 0;
                *(v117 + 7) = 1;
                goto LABEL_390;
              }

              if (!v197 || v185 != 3 || v197 > *(v2 + 72))
              {
                goto LABEL_389;
              }

              if (*(p_prots + 88) == 1)
              {
                v107 = gt_tagged_log(5);
                if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v107, OS_LOG_TYPE_INFO, "🔄 Transition aborted: waiting for a present issued during capture", buf, 2u);
                }
              }

              else
              {
                fwrite("🔄 Transition aborted: waiting for a present issued during capture\n", 0x45uLL, 1uLL, __stdoutp);
              }

              v118 = 0;
              v119 = *(v2 + 40);
              v120 = *(v2 + 48);
              while (1)
              {
                v121 = *(v119 + 8);
                if (v118 >= *(v121 + 12))
                {
                  goto LABEL_390;
                }

                v122 = (*(v121 + 24) + (v118 << 6));
                if (v122[1] == 3)
                {
                  v123 = *v122;
                  v124 = *(v122 + 7);
                  *buf = *v122;
                  *&buf[4] = 3;
                  *&buf[8] = *(v122 + 2);
                  *&buf[24] = *(v122 + 6);
                  *&buf[40] = *(v122 + 10);
                  *&buf[56] = v124;
                  v125 = *(v120 + 8);
                  nelts = v125->nelts;
                  if (nelts < 1)
                  {
                    goto LABEL_280;
                  }

                  elts = v125->elts;
                  v128 = elts;
                  while (!GTCaptureBoundaryCondition_equals(v128, buf))
                  {
                    v128 += 64;
                    if (!--nelts)
                    {
                      goto LABEL_280;
                    }
                  }

                  if (elts)
                  {
                    ++*(v128 + 56);
                  }

                  else
                  {
LABEL_280:
                    *buf = *(v122 + 2);
                    *&buf[16] = *(v122 + 6);
                    *&buf[32] = *(v122 + 10);
                    v129 = apr_array_push(v125);
                    *v129 = v123;
                    *(v129 + 1) = 3;
                    *(v129 + 8) = *buf;
                    *(v129 + 24) = *&buf[16];
                    *(v129 + 40) = *&buf[32];
                    *(v129 + 7) = 1;
                  }

                  v5 = v190;
                  v2 = v191;
                  p_prots = (&OBJC_PROTOCOL___CaptureMTLObject + 16);
                }

                ++v118;
              }
            }

            if (v98)
            {
              if (v98 != 1)
              {
                goto LABEL_389;
              }

              GTTraceStoreDebugDescription("capture start");
              if (v196 && !*_sharedCaptureManager)
              {
                *_sharedCaptureManager = v196;
                if (v42)
                {
                  goto LABEL_233;
                }
              }

              else if (v42)
              {
LABEL_233:
                v99 = *(v42 + 78);
                goto LABEL_263;
              }

              v99 = 1;
LABEL_263:
              v112 = *v2;
              atomic_store(v99, (*v2 + 128));
              GTMTLCaptureManager_startCapture(v112);
              if (*(p_prots + 88) == 1)
              {
                v113 = gt_tagged_log(5);
                if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  v114 = v113;
                  v115 = "🟢 Capture started";
                  goto LABEL_386;
                }
              }

              else
              {
                fwrite("🟢 Capture started\n", 0x15uLL, 1uLL, __stdoutp);
              }

              goto LABEL_388;
            }

            *(v2 + 88) = v184;
            v101 = *(v42 + 72);
            if (v101 <= 2)
            {
              break;
            }

            if (*(v42 + 72) <= 4u)
            {
              if (v101 != 3)
              {
                if (v101 != 4)
                {
                  goto LABEL_289;
                }

                v102 = v193[2];
                v103 = v193[5];
                v104 = apr_array_push(*(*(v2 + 40) + 8));
                *v104 = 0x100000002;
                *(v104 + 1) = 0;
                *(v104 + 2) = v102;
                *(v104 + 24) = 0u;
                *(v104 + 40) = 0u;
                *(v104 + 7) = v103;
                v105 = v193[6];
                v106 = apr_array_push(*(*(v2 + 56) + 8));
                *v106 = 0x200000002;
                *(v106 + 1) = 0;
                *(v106 + 2) = v102;
                *(v106 + 24) = 0u;
                *(v106 + 40) = 0u;
                goto LABEL_287;
              }

              v130 = v42;
              v131 = v42[5];
              v132 = apr_array_push(*(*(v2 + 40) + 8));
              *v132 = 0x400000008;
              *(v132 + 8) = 0u;
              *(v132 + 24) = 0u;
              *(v132 + 40) = 0u;
              *(v132 + 7) = v131;
              v133 = v130[1];
              v105 = v130[6];
              v106 = apr_array_push(*(*(v2 + 56) + 8));
              *v106 = 0x500000008;
              *(v106 + 1) = 0;
              *(v106 + 2) = 0;
              *(v106 + 3) = 0;
              *(v106 + 4) = v133;
              *(v106 + 5) = 0;
              goto LABEL_286;
            }

            if (v101 == 6)
            {
              v134 = v42;
              v135 = v42[3];
              v136 = v134[5];
              v137 = apr_array_push(*(*(v2 + 40) + 8));
              *v137 = 0x300000003;
              v137[1] = v135;
              *(v137 + 1) = 0u;
              *(v137 + 2) = 0u;
              v137[6] = 0;
              v137[7] = v136;
              v105 = v134[6];
              v106 = apr_array_push(*(*(v2 + 56) + 8));
              *v106 = 0x300000003;
              *(v106 + 1) = v135;
              *(v106 + 1) = 0u;
              *(v106 + 2) = 0u;
              *(v106 + 6) = 0;
LABEL_287:
              *(v106 + 14) = v105;
              goto LABEL_288;
            }

            if (v101 != 5)
            {
              goto LABEL_289;
            }

            v109 = v193[5];
            v110 = apr_array_push(*(*(v2 + 40) + 8));
            *v110 = 0x300000001;
            *(v110 + 8) = 0u;
            *(v110 + 24) = 0u;
            *(v110 + 40) = 0u;
            *(v110 + 7) = v109;
            v111 = v193[6];
            v106 = apr_array_push(*(*(v2 + 56) + 8));
            *v106 = 0x300000001;
            *(v106 + 8) = 0u;
            *(v106 + 24) = 0u;
            *(v106 + 40) = 0u;
            *(v106 + 14) = v111;
LABEL_288:
            *(v106 + 15) = 0;
LABEL_289:
            v141 = 0;
            v221 = 0u;
            v222 = 0u;
            v219 = 0u;
            v220 = 0u;
            v217 = 0u;
            v218 = 0u;
            v215 = 0u;
            v216 = 0u;
            v213 = 0u;
            v214 = 0u;
            v211 = 0u;
            v212 = 0u;
            v142 = &off_2F1F10;
            v143 = 4;
            memset(buf, 0, sizeof(buf));
            do
            {
              v144 = *v142++;
              v145 = v141 + snprintf(&buf[v141], 256 - v141, "%s--", v144);
              v146 = &buf[v145];
              v147 = 256 - v145;
              if (*(*(*(v2 + 8 * v143) + 8) + 12))
              {
                v148 = snprintf(v146, v147, "🛡️ --");
              }

              else
              {
                v148 = snprintf(v146, v147, "➡️ --");
              }

              v141 = v145 + v148;
              ++v143;
            }

            while (v143 != 9);
            snprintf(&buf[v141], 256 - v141, "Postcapture");
            if (p_prots[11])
            {
              v149 = gt_tagged_log(5);
              if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
              {
                *v205 = 136315138;
                *v206 = buf;
                _os_log_impl(&dword_0, v149, OS_LOG_TYPE_INFO, "%s", v205, 0xCu);
              }
            }

            else
            {
              fprintf(__stdoutp, "%s\n", buf);
            }

            for (j = 0; j != 5; ++j)
            {
              v151 = *(*(*(v199 + 8 * j) + 8) + 12);
              if (v151 >= 1)
              {
                v152 = 0;
                v153 = 0;
                v198 = v151 << 6;
                while (*(p_prots + 88) == 1)
                {
                  v154 = gt_tagged_log(5);
                  if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
                  {
                    if (j <= 1)
                    {
                      if (j)
                      {
                        if (j != 1)
                        {
                          goto LABEL_328;
                        }

                        v155 = "Active";
                        v158 = "Precapture";
                      }

                      else
                      {
                        v155 = "Inactive";
                        v158 = "Active";
                      }
                    }

                    else if (j == 2)
                    {
                      v155 = "Precapture";
                      v158 = "Capture";
                    }

                    else if (j == 3)
                    {
                      v155 = "Capture";
                      v158 = "Postcapture";
                    }

                    else
                    {
                      v155 = "Postcapture";
                      if (j != 4)
                      {
LABEL_328:
                        v155 = "UNKNOWN";
                      }

                      v158 = "UNKNOWN";
                    }

                    *v205 = 136315650;
                    *v206 = v155;
                    *&v206[8] = 2080;
                    v207 = v158;
                    v208 = 1024;
                    v209 = v152;
                    _os_log_impl(&dword_0, v154, OS_LOG_TYPE_INFO, "%s--🛡️ --%s Condition #%d", v205, 0x1Cu);
                  }

LABEL_331:
                  v159 = j;
                  v160 = (*(*(*(v199 + 8 * j) + 8) + 24) + v153);
                  v161 = *v160;
                  v162 = v160[1];
                  v163 = *(v160 + 1);
                  v164 = *(v160 + 2);
                  v165 = *(v160 + 4);
                  v166 = *(v160 + 5);
                  v203 = *(v160 + 48);
                  v201 = v160[14];
                  v202 = *(v160 + 3);
                  v200 = v160[15];
                  if (s_logUsingOsLog == 1)
                  {
                    v167 = gt_tagged_log(5);
                    if (os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
                    {
                      v168 = "Instant";
                      if ((v162 - 1) <= 8)
                      {
                        v168 = (&off_2F1EC8)[v162 - 1];
                      }

                      *v205 = 136315138;
                      *v206 = v168;
                      _os_log_impl(&dword_0, v167, OS_LOG_TYPE_INFO, "    type: %s", v205, 0xCu);
                    }
                  }

                  else
                  {
                    v169 = "Instant";
                    if ((v162 - 1) <= 8)
                    {
                      v169 = (&off_2F1EC8)[v162 - 1];
                    }

                    fprintf(__stdoutp, "    type: %s\n", v169);
                  }

                  p_prots = &OBJC_PROTOCOL___CaptureMTLObject.prots;
                  if (s_logUsingOsLog == 1)
                  {
                    v170 = gt_tagged_log(5);
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
                    {
                      v171 = "None";
                      if ((v161 - 1) <= 0xB)
                      {
                        v171 = (&off_2F1E68)[v161 - 1];
                      }

                      *v205 = 136315138;
                      *v206 = v171;
                      _os_log_impl(&dword_0, v170, OS_LOG_TYPE_INFO, "    object: %s", v205, 0xCu);
                    }
                  }

                  else
                  {
                    v172 = "None";
                    if ((v161 - 1) <= 0xB)
                    {
                      v172 = (&off_2F1E68)[v161 - 1];
                    }

                    fprintf(__stdoutp, "    object: %s\n", v172);
                  }

                  j = v159;
                  if (v163)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v173 = gt_tagged_log(5);
                      if (os_log_type_enabled(v173, OS_LOG_TYPE_INFO))
                      {
                        *v205 = 134217984;
                        *v206 = v163;
                        _os_log_impl(&dword_0, v173, OS_LOG_TYPE_INFO, "    CAMetalLayer stream ref: %llu", v205, 0xCu);
                      }
                    }

                    else
                    {
                      fprintf(__stdoutp, "    CAMetalLayer stream ref: %llu\n", v163);
                    }
                  }

                  if (v164)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v174 = gt_tagged_log(5);
                      if (os_log_type_enabled(v174, OS_LOG_TYPE_INFO))
                      {
                        *v205 = 134217984;
                        *v206 = v164;
                        _os_log_impl(&dword_0, v174, OS_LOG_TYPE_INFO, "    MTLCaptureScope stream ref: %llu", v205, 0xCu);
                      }
                    }

                    else
                    {
                      fprintf(__stdoutp, "    MTLCaptureScope stream ref: %llu\n", v164);
                    }
                  }

                  if (v202)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v175 = gt_tagged_log(5);
                      if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
                      {
                        *v205 = 134217984;
                        *v206 = v202;
                        _os_log_impl(&dword_0, v175, OS_LOG_TYPE_INFO, "    MTLDevice stream ref: %llu", v205, 0xCu);
                      }
                    }

                    else
                    {
                      fprintf(__stdoutp, "    MTLDevice stream ref: %llu\n", v202);
                    }
                  }

                  if (v165)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v176 = gt_tagged_log(5);
                      if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
                      {
                        *v205 = 134217984;
                        *v206 = v165;
                        _os_log_impl(&dword_0, v176, OS_LOG_TYPE_INFO, "    MTLCommandQueue stream ref: %llu", v205, 0xCu);
                      }
                    }

                    else
                    {
                      fprintf(__stdoutp, "    MTLCommandQueue stream ref: %llu\n", v165);
                    }
                  }

                  if (v166)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v177 = gt_tagged_log(5);
                      if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
                      {
                        *v205 = 134217984;
                        *v206 = v166;
                        _os_log_impl(&dword_0, v177, OS_LOG_TYPE_INFO, "    MTLCommandBuffer stream ref: %llu", v205, 0xCu);
                      }
                    }

                    else
                    {
                      fprintf(__stdoutp, "    MTLCommandBuffer stream ref: %llu\n", v166);
                    }
                  }

                  if (v203)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v178 = gt_tagged_log(5);
                      if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
                      {
                        *v205 = 0;
                        _os_log_impl(&dword_0, v178, OS_LOG_TYPE_INFO, "    MTLCommandBuffer is capturing", v205, 2u);
                      }
                    }

                    else
                    {
                      fwrite("    MTLCommandBuffer is capturing\n", 0x22uLL, 1uLL, __stdoutp);
                    }
                  }

                  if (s_logUsingOsLog == 1)
                  {
                    v179 = gt_tagged_log(5);
                    if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
                    {
                      *v205 = 67109376;
                      *v206 = v200;
                      *&v206[4] = 1024;
                      *&v206[6] = v201;
                      _os_log_impl(&dword_0, v179, OS_LOG_TYPE_INFO, "    Hit count: %u/%u", v205, 0xEu);
                    }
                  }

                  else
                  {
                    fprintf(__stdoutp, "    Hit count: %u/%u\n", v200, v201);
                  }

                  v153 += 64;
                  ++v152;
                  if (v198 == v153)
                  {
                    goto LABEL_382;
                  }
                }

                if (j <= 1)
                {
                  if (j)
                  {
                    if (j != 1)
                    {
                      goto LABEL_322;
                    }

                    v156 = "Active";
                    v157 = "Precapture";
                  }

                  else
                  {
                    v156 = "Inactive";
                    v157 = "Active";
                  }
                }

                else if (j == 2)
                {
                  v156 = "Precapture";
                  v157 = "Capture";
                }

                else if (j == 3)
                {
                  v156 = "Capture";
                  v157 = "Postcapture";
                }

                else
                {
                  v156 = "Postcapture";
                  if (j != 4)
                  {
LABEL_322:
                    v156 = "UNKNOWN";
                  }

                  v157 = "UNKNOWN";
                }

                fprintf(__stdoutp, "%s--🛡️ --%s Condition #%d\n", v156, v157, v152);
                goto LABEL_331;
              }

LABEL_382:
              ;
            }

            v2 = v191;
            atomic_store(1u, (*v191 + 112));
            GTMTLCaptureManager_activateCaptureWithDescriptor(v193);
            if (*(p_prots + 88) == 1)
            {
              v180 = gt_tagged_log(5);
              v5 = v190;
              if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                v114 = v180;
                v115 = "🚀 Capture activated";
LABEL_386:
                _os_log_impl(&dword_0, v114, OS_LOG_TYPE_INFO, v115, buf, 2u);
              }
            }

            else
            {
              fwrite("🚀 Capture activated\n", 0x17uLL, 1uLL, __stdoutp);
              v5 = v190;
            }

LABEL_388:
            *(v2 + 72) = v192;
LABEL_389:
            atomic_fetch_add((v2 + 20), 1u);
LABEL_390:
            v181 = atomic_load((v2 + 20));
            v14 = *(v199 + 8 * v181);
          }

          if (!*(v42 + 72))
          {
            goto LABEL_257;
          }

          if (v101 != 1)
          {
            if (v101 != 2)
            {
              goto LABEL_289;
            }

LABEL_257:
            v108 = apr_array_push(*(*(v2 + 56) + 8));
            *v108 = v184;
            *(v108 + 1) = 8;
            *(v108 + 8) = 0u;
            *(v108 + 24) = 0u;
            *(v108 + 40) = 0u;
            *(v108 + 7) = 1;
            goto LABEL_289;
          }

          v138 = *v193;
          v139 = v193[5];
          v140 = apr_array_push(*(*(v2 + 40) + 8));
          *v140 = 0x400000008;
          v140[1] = 0;
          v140[2] = 0;
          v140[3] = v138;
          v140[4] = 0;
          v140[5] = 0;
          v140[6] = 0;
          v140[7] = v139;
          v105 = v193[6];
          v106 = apr_array_push(*(*(v2 + 56) + 8));
          *v106 = 0x500000008;
          *(v106 + 1) = 0;
          *(v106 + 2) = 0;
          *(v106 + 4) = 0;
          *(v106 + 5) = 0;
          *(v106 + 3) = v138;
LABEL_286:
          v106[48] = 1;
          *(v106 + 49) = 0;
          *(v106 + 13) = 0;
          goto LABEL_287;
        }

        if (g_targetRef == v4)
        {
          v30 = &g_frameCount;
        }

        else
        {
          v30 = &g_frameOther;
        }
      }

      atomic_fetch_add(v30, 1uLL);
      v29 = v185;
      goto LABEL_55;
    }

    *(v2 + 96) = 1;
  }

  else
  {
    if (v3 == 3)
    {
      atomic_fetch_add((g_guestAppClientMTL + 56), 1uLL);
      goto LABEL_17;
    }

    if (v184 != *(v2 + 88))
    {
      goto LABEL_17;
    }

    if (v3 != 8)
    {
      goto LABEL_17;
    }

    v6 = (v2 + 20);
    if (!atomic_load((v2 + 20)))
    {
      goto LABEL_17;
    }
  }

  atomic_store(4u, v6);
LABEL_10:
  os_unfair_lock_unlock((v2 + 16));
  v9 = atomic_load((*(a1 + 48) + 20));
  v10 = v182 != 4 && v9 == 4;
  v11 = v10;
  *(*(*(a1 + 32) + 8) + 24) = v11;
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 48) + 96);
}

void __GTCaptureBoundaryTracker_handleTrigger_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (s_logUsingOsLog == 1)
  {
    v3 = gt_tagged_log(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "🛑 Stopping capture", buf, 2u);
    }
  }

  else
  {
    fwrite("🛑 Stopping capture\n", 0x16uLL, 1uLL, __stdoutp);
  }

  GTMTLCaptureManager_stopActiveCapture(*(*(a1 + 32) + 72), *(*(a1 + 32) + 80));
  if (s_logUsingOsLog == 1)
  {
    v4 = gt_tagged_log(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "🏁 Capture finished", v5, 2u);
    }
  }

  else
  {
    fwrite("🏁 Capture finished\n", 0x16uLL, 1uLL, __stdoutp);
  }
}

@end