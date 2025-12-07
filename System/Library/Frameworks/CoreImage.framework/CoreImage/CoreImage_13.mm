void CI::GLContext::bind_arguments(void **this, const CI::ProgramNode *a2, const CGRect *a3, CI::TileTask *a4)
{
  *&v95[116] = *MEMORY[0x1E69E9840];
  v6 = CI_VERBOSE_SIGNPOSTS();
  if (v6)
  {
    v8 = ci_signpost_log_render(v6, v7);
    v9 = *(a2 + 9) | ((*(*this + 35))(this) << 32);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "bind_arguments", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v10 = (*(*this + 35))(this);
  TimerBase::TimerBase(&v90, v10, *(a2 + 9), "bind_arguments", 0xBu);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  *buf = 0u;
  v51 = 0u;
  MacroContext = GetMacroContext(this[49], buf);
  if ((buf[0] & 1) == 0)
  {
    v13 = ci_logger_render(MacroContext, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  v14 = CI::ProgramNode::mainProgram(a2);
  if ((*(v14->isa + 2))(v14) == 79)
  {
    isa = v14[14].isa;
    v16 = v14[15].isa;
    v17 = v14[16].isa;
    v18 = CI_VERBOSE_SIGNPOSTS();
    if (v18)
    {
      v20 = ci_signpost_log_render(v18, v19);
      v21 = *(a2 + 9) | ((*(*this + 35))(this) << 32);
      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *v92 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v21, "render_node_arguments", &unk_19CFBCBAE, v92, 2u);
      }
    }

    v22 = (*(*this + 35))(this);
    TimerBase::TimerBase(v92, v22, *(a2 + 9), "render_node_arguments", 0);
    dispatch_sync(*(a2 + 13), &__block_literal_global_76_0);
    v23 = *(a2 + 16);
    v24 = CI_VERBOSE_SIGNPOSTS();
    if (v24)
    {
      v26 = ci_signpost_log_render(v24, v25);
      v27 = v93;
      if ((v93 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v28 = v26;
        if (os_signpost_enabled(v26))
        {
          LOWORD(v48.origin.x) = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v28, OS_SIGNPOST_INTERVAL_END, v27, "render_node_arguments", &unk_19CFBCBAE, &v48, 2u);
        }
      }
    }

    TimerBase::~TimerBase(v92, v25);
    if (v23 && isa == *v23 && isa)
    {
      v29 = 0;
      v44 = 0;
      v30 = -80;
      while (2)
      {
        if (v29 > 9)
        {
          v31 = (*(v23 + 2) + v30);
        }

        else
        {
          v31 = &v23[2 * v29 + 6];
        }

        v32 = *(v17 + v29);
        v33 = *v31;
        switch(v32)
        {
          case 1:
          case 2:
          case 3:
          case 4:
            if ((*(*v33 + 16))(v33) == 68)
            {
              if (*(v16 + v29) != -1)
              {
                CI::ProgramNode::roiKeys_of_child(v92, a2, *a3, *(v33 + 8));
                CI::Context::bind_sampler(this, v33, *v92, v44, v32, a4);
                v83(*&buf[8], *(v16 + v29), v44);
                if (*v92)
                {
                  v93 = *v92;
                  operator delete(*v92);
                }
              }

              ++v44;
              goto LABEL_63;
            }

            break;
          case 5:
          case 12:
            if ((*(*v33 + 16))(v33) == 66)
            {
              if (*(v16 + v29) != -1)
              {
                v82(*&buf[8], *(v33 + 7));
              }

              goto LABEL_63;
            }

            break;
          case 6:
          case 13:
            if ((*(*v33 + 16))(v33) == 66)
            {
              if (*(v16 + v29) != -1)
              {
                v84(*&buf[8], *(v33 + 7), *(v33 + 8));
              }

              goto LABEL_63;
            }

            break;
          case 7:
          case 14:
            if ((*(*v33 + 16))(v33) == 66)
            {
              if (*(v16 + v29) != -1)
              {
                v85(*&buf[8], *(v33 + 7), *(v33 + 8), *(v33 + 9));
              }

              goto LABEL_63;
            }

            break;
          case 8:
          case 15:
          case 27:
            if ((*(*v33 + 16))(v33) == 66)
            {
              if (*(v16 + v29) != -1)
              {
                v86(*&buf[8], *(v33 + 7), *(v33 + 8), *(v33 + 9), *(v33 + 10));
              }

              goto LABEL_63;
            }

            break;
          case 9:
          case 16:
            if ((*(*v33 + 16))(v33) == 66)
            {
              if (*(v16 + v29) != -1)
              {
                v87(*&buf[8]);
              }

              goto LABEL_63;
            }

            break;
          case 10:
          case 17:
            if ((*(*v33 + 16))(v33) == 66)
            {
              if (*(v16 + v29) != -1)
              {
                v88(*&buf[8]);
              }

              goto LABEL_63;
            }

            break;
          case 11:
          case 18:
            if ((*(*v33 + 16))(v33) == 66)
            {
              if (*(v16 + v29) != -1)
              {
                v89(*&buf[8]);
              }

              goto LABEL_63;
            }

            break;
          case 19:
            if ((*(*v33 + 16))(v33) == 66)
            {
              v34 = *(v16 + v29);
              if (v34 != -1)
              {
                v83(*&buf[8], v34, *(v33 + 7));
              }

              goto LABEL_63;
            }

            break;
          case 40:
            if ((*(*v33 + 16))(v33) == 68)
            {
              if (*(v16 + v29) == -1)
              {
                goto LABEL_63;
              }

              memset(&v48, 0, sizeof(v48));
              v48.origin.x = CI::Node::region_of_child(a2, *a3);
              v48.origin.y = v36;
              v48.size.width = v37;
              v48.size.height = v38;
              CI::TextureSampler::transform(&v49, v33, this, &v48);
              CI::Vector::Vector(v92, &v49);
              (v88)(*&buf[8], *(v16 + v29), 1, 0, v95);
              v94 = &unk_1F1033F70;
              goto LABEL_61;
            }

            break;
          case 41:
          case 42:
          case 43:
          case 46:
          case 47:
            goto LABEL_63;
          case 44:
            if ((*(*v33 + 16))(v33) != 66)
            {
              break;
            }

            CI::Vector::affine(v92, v33);
            CI::Affine::inverse(&v48, v92);
            CI::Affine::inverse(&v47, &v48);
            CI::Vector::Vector(v92, &v47);
            v35 = *(v16 + v29);
            if (v35 != -1)
            {
              (v88)(*&buf[8], v35, 1, 0, v95);
            }

            v94 = &unk_1F1033F70;
LABEL_61:
            atomic_fetch_add(&dword_1ED7C47D8[57], 0xFFFFFFFF);
LABEL_63:
            ++v29;
            v30 += 8;
            if (isa == v29)
            {
              break;
            }

            continue;
          default:
            x_log("Unhandled type: %d\n", *(v17 + v29));
            goto LABEL_63;
        }

        break;
      }
    }
  }

  v39 = CI_VERBOSE_SIGNPOSTS();
  if (v39)
  {
    v41 = ci_signpost_log_render(v39, v40);
    v42 = v91;
    if (v91 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v43 = v41;
      if (os_signpost_enabled(v41))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v43, OS_SIGNPOST_INTERVAL_END, v42, "bind_arguments", &unk_19CFBCBAE, buf, 2u);
      }
    }
  }

  TimerBase::~TimerBase(&v90, v40);
}

uint64_t ___ZN2CI9GLContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_38(void *a1)
{
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
  memset(v8, 0, sizeof(v8));
  MacroContext = GetMacroContext(*(*(a1[5] + 8) + 24), v8);
  if ((v8[0] & 1) == 0)
  {
    v4 = ci_logger_render(MacroContext, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI9GLContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_38_cold_1();
    }
  }

  (v9)(*(&v8[0] + 1), a1[6], 0, -1);
  (v14)(*(&v8[0] + 1), a1[6]);
  v5 = a1[7];
  *(v5 + 40) = CFAbsoluteTimeGetCurrent();
  v6 = a1[7];
  if (v6)
  {
    CI::Object::unref(v6);
  }

  return (*(a1[4] + 16))();
}

void CI::GLContext::render_intermediate_node(void **a1, CI::TileTask *a2, CI::parentROI *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v116 = *MEMORY[0x1E69E9840];
  v11 = *this;
  v12 = CI::parentROI::roi(this);
  v83.origin.x = v12;
  v83.origin.y = v13;
  v83.size.width = v14;
  v83.size.height = v15;
  if (a4 && v11)
  {
    x = v12;
    y = v13;
    width = v14;
    height = v15;
    v20 = CI_VERBOSE_SIGNPOSTS();
    if (v20)
    {
      v22 = ci_signpost_log_render(v20, v21);
      v23 = *(v11 + 36) | ((*(*a1 + 35))(a1) << 32);
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 68289026;
        *&buf[4] = 256;
        *&buf[8] = 2082;
        *&buf[10] = CI::Context::programName(v11, v24);
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v23, "render_node", "%{public}.256s", buf, 0x12u);
      }
    }

    v25 = (*(*a1 + 35))(a1);
    TimerBase::TimerBase(&v81, v25, *(v11 + 36), "render_node", 0);
    v117.origin.x = x;
    v117.origin.y = y;
    v117.size.width = width;
    v117.size.height = height;
    CI::TileTask::addROIForNode(a2, v11, v117);
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    memset(buf, 0, sizeof(buf));
    MacroContext = GetMacroContext(a1[49], buf);
    if ((buf[0] & 1) == 0)
    {
      v28 = ci_logger_render(MacroContext, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    v29 = *(v11 + 48);
    if ((*(*v29 + 16))(v29) < 47 || (*(*v29 + 16))(v29) > 49)
    {
      CI::GLContext::set_framebuffer(a1, *(a1 + 188));
      v42 = v105;
      v43 = *&buf[8];
      (*(*a4 + 24))(&v84, a4);
      v42(v43, 36160, 36064, 3553, LODWORD(v84.a), 0);
      if (*(v11 + 149) == 1)
      {
        v118 = *(*(*a4 + 32))(a4);
        MidY = CGRectGetMidY(v118);
        v84.b = 0.0;
        v84.c = 0.0;
        v84.a = 1.0;
        *&v84.d = xmmword_19CF25100;
        v84.ty = MidY + MidY;
        v119.origin.x = x;
        v119.origin.y = y;
        v119.size.width = width;
        v119.size.height = height;
        v120 = CGRectApplyAffineTransform(v119, &v84);
        x = v120.origin.x;
        y = v120.origin.y;
        width = v120.size.width;
        height = v120.size.height;
      }

      v45 = x - *(*(*a4 + 32))(a4);
      v121.origin.y = y - *((*(*a4 + 32))(a4) + 8);
      v121.origin.x = v45;
      v121.size.width = width;
      v121.size.height = height;
      CI::GLContext::set_viewport(a1, v121);
      CI::GLContext::set_blend(a1, 0);
      v46 = CI_VERBOSE_SIGNPOSTS();
      if (v46)
      {
        v48 = ci_signpost_log_render(v46, v47);
        v49 = *(v11 + 36) | ((*(*a1 + 35))(a1) << 32);
        if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
        {
          LOWORD(v84.a) = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v48, OS_SIGNPOST_INTERVAL_BEGIN, v49, "render_node_mainProgram", &unk_19CFBCBAE, &v84, 2u);
        }
      }

      v50 = (*(*a1 + 35))(a1);
      TimerBase::TimerBase(&v84, v50, *(v11 + 36), "render_node_mainProgram", 0);
      v51 = CI::ProgramNode::mainProgram(v11);
      if ((*(*v51 + 16))(v51) != 79)
      {
        v51 = 0;
      }

      v52 = CI_VERBOSE_SIGNPOSTS();
      if (v52)
      {
        v54 = ci_signpost_log_render(v52, v53);
        b = v84.b;
        if ((*&v84.b - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v56 = v54;
          if (os_signpost_enabled(v54))
          {
            *v77 = 0;
            _os_signpost_emit_with_name_impl(&dword_19CC36000, v56, OS_SIGNPOST_INTERVAL_END, *&b, "render_node_mainProgram", &unk_19CFBCBAE, v77, 2u);
          }
        }
      }

      TimerBase::~TimerBase(&v84, v53);
      v57 = v51[37];
      if (v57 || ((*(*v51 + 80))(v51, *(v11 + 36)), v57 = v51[37], v57))
      {
        CI::GLContext::set_program(a1, v57);
        CI::GLContext::bind_arguments(a1, v11, &v83, a2);
        CI::GLContext::quad(a1, *(v11 + 36), *(v11 + 149), &v83, 0);
      }
    }

    else
    {
      v30 = *(v11 + 48);
      if (*(v30 + 243) == 1 && (*(*v30 + 40))(*(v11 + 48)) >= 1)
      {
        v31 = CI_VERBOSE_SIGNPOSTS();
        if (v31)
        {
          log = ci_signpost_log_render(v31, v32);
          v33 = *(v30 + 36) | ((*(*a1 + 35))(a1) << 32);
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
          {
            v34 = (*(*v30 + 24))(v30);
            LODWORD(v84.a) = 138543362;
            *(&v84.a + 4) = v34;
            _os_signpost_emit_with_name_impl(&dword_19CC36000, log, OS_SIGNPOST_INTERVAL_BEGIN, v33, "processor_syncinputs", "%{public}@", &v84, 0xCu);
          }
        }

        v35 = (*(*a1 + 35))(a1);
        TimerBase::TimerBase(&v84, v35, *(v30 + 36), "processor_syncinputs", 0);
        CI::GLContext::flush_render(a1);
        v36 = CI_VERBOSE_SIGNPOSTS();
        if (v36)
        {
          v38 = ci_signpost_log_render(v36, v37);
          v39 = v84.b;
          if ((*&v84.b - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v40 = v38;
            if (os_signpost_enabled(v38))
            {
              *v77 = 0;
              _os_signpost_emit_with_name_impl(&dword_19CC36000, v40, OS_SIGNPOST_INTERVAL_END, *&v39, "processor_syncinputs", &unk_19CFBCBAE, v77, 2u);
            }
          }
        }

        TimerBase::~TimerBase(&v84, v37);
      }

      v41 = (**a4)(a4);
      CI::Context::render_processor_node(a1, a2, this, v41, 0);
    }

    v58 = CI_VERBOSE_SIGNPOSTS();
    if (v58)
    {
      v60 = ci_signpost_log_render(v58, v59);
      v61 = *(v11 + 36) | ((*(*a1 + 35))(a1) << 32);
      if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
      {
        LOWORD(v84.a) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v60, OS_SIGNPOST_INTERVAL_BEGIN, v61, "after_render", &unk_19CFBCBAE, &v84, 2u);
      }
    }

    v62 = (*(*a1 + 35))(a1);
    TimerBase::TimerBase(&v84, v62, *(v11 + 36), "after_render", 8u);
    *v77 = 0;
    v78 = v77;
    v79 = 0x2000000000;
    v80 = a1[52];
    inserted = CI::GLContext::insert_fence(a1);
    v64 = CI::Context::render_completion_queue(inserted);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI9GLContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke;
    block[3] = &unk_1E75C4998;
    block[5] = v77;
    block[6] = inserted;
    block[4] = a6;
    dispatch_async(v64, block);
    _Block_object_dispose(v77, 8);
    v65 = CI_VERBOSE_SIGNPOSTS();
    if (v65)
    {
      v67 = ci_signpost_log_render(v65, v66);
      v68 = v84.b;
      if ((*&v84.b - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v69 = v67;
        if (os_signpost_enabled(v67))
        {
          *v77 = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v69, OS_SIGNPOST_INTERVAL_END, *&v68, "after_render", &unk_19CFBCBAE, v77, 2u);
        }
      }
    }

    TimerBase::~TimerBase(&v84, v66);
    v70 = CI_VERBOSE_SIGNPOSTS();
    if (v70)
    {
      v72 = ci_signpost_log_render(v70, v71);
      v73 = v82;
      if (v82 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v74 = v72;
        if (os_signpost_enabled(v72))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v74, OS_SIGNPOST_INTERVAL_END, v73, "render_node", &unk_19CFBCBAE, buf, 2u);
        }
      }
    }

    TimerBase::~TimerBase(&v81, v71);
  }
}

uint64_t ___ZN2CI9GLContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke(void *a1)
{
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
  memset(v6, 0, sizeof(v6));
  MacroContext = GetMacroContext(*(*(a1[5] + 8) + 24), v6);
  if ((v6[0] & 1) == 0)
  {
    v4 = ci_logger_render(MacroContext, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI9GLContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_38_cold_1();
    }
  }

  (v7)(*(&v6[0] + 1), a1[6], 0, -1);
  (v12)(*(&v6[0] + 1), a1[6]);
  return (*(a1[4] + 16))();
}

uint64_t CI::GLContext::pre_render(void **this, uint64_t a2)
{
  v3 = *(this + 226);
  v4 = CI_FORCE_GPU_PRIORITY(this, a2);
  if (v4 > 0x4Bu)
  {
    if (v4 != 76)
    {
      if (v4 == 77)
      {
        v3 = 4;
      }

      else if (v4 == 78)
      {
        v3 = 1;
      }

      goto LABEL_13;
    }

LABEL_12:
    v3 = 2;
    goto LABEL_13;
  }

  if (!v4)
  {
    if (!CI::originating_process_is_in_background(v4))
    {
      goto LABEL_13;
    }

    x_log("Using low GPU priority for background rendering.\n");
    goto LABEL_12;
  }

  if (v4 == 72)
  {
    v3 = 0;
  }

LABEL_13:
  CIEAGLContextSetParameter(this[49], 608, v3);
  return 1;
}

void CI::GLContext::readback_bitmap(uint64_t a1, void *a2, int *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = ci_signpost_log_render(a1, a2);
  v7 = (*(*a1 + 280))(a1) << 32;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v8 = a2[10];
    v9 = a2[11];
    *buf = 134218240;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "readback_bitmap", "[%zu %zu]", buf, 0x16u);
  }

  v10 = (*(*a1 + 280))(a1);
  v11 = TimerBase::TimerBase(&v41, v10, 0, "readback_bitmap", 7u);
  if (a2)
  {
    *buf = *a3;
    *&buf[4] = 0;
    API = CIEAGLContextGetAPI(*(a1 + 392));
    v14 = CI::gl_format_info_for_format(buf, API);
    v16 = v15;
    v17 = *(a1 + 392);
    v18 = *(a1 + 512);
    v19 = *(a1 + 520);
    v20 = a2[9];
    v21 = a2[12];
    v11 = CI::format_bytes_per_pixel(*a3);
    v22 = v11;
    v23 = v18 < 1 || v19 < 1;
    v24 = v23 || v21 == 0;
    if (!v24 && v11 != 0)
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      memset(buf, 0, sizeof(buf));
      MacroContext = GetMacroContext(v17, buf);
      if ((buf[0] & 1) == 0)
      {
        v32 = ci_logger_render(MacroContext, v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          CI::GLTextureManager::release_texture(v17, v32, v33, v34, v35, v36, v37, v38);
        }
      }

      v43 = 0;
      (v68)(*&buf[8], 3333, &v43);
      v39 = v22 * v18;
      if (v22 * v18 == v21)
      {
        v11 = v76(*&buf[8], 0, 0, v18, v19, HIDWORD(v14), v16, v20);
      }

      else
      {
        if ((v20 & 1) != 0 || ((v39 + 1) & 0xFFFFFFFFFFFFFFFELL) != v21)
        {
          if ((v20 & 3) != 0 || ((v39 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v21)
          {
            if ((v20 & 7) != 0 || ((v39 + 7) & 0xFFFFFFFFFFFFFFF8) != v21)
            {
              if (CIEAGLContextGetAPI(v17) < 3 || v21 % v22)
              {
                v40 = 0;
                do
                {
                  v11 = v76(*&buf[8], 0, v40++, v18, 1, HIDWORD(v14), v16, v20);
                  v20 += v21;
                }

                while (v19 != v40);
              }

              else
              {
                v75(*&buf[8], 3330, v21 / v22);
                v76(*&buf[8], 0, 0, v18, v19, HIDWORD(v14), v16, v20);
                v11 = (v75)(*&buf[8], 3330, 0);
              }

              goto LABEL_16;
            }

            v75(*&buf[8], 3333, 8uLL);
          }

          else
          {
            v75(*&buf[8], 3333, 4uLL);
          }
        }

        else
        {
          v75(*&buf[8], 3333, 2uLL);
        }

        v76(*&buf[8], 0, 0, v18, v19, HIDWORD(v14), v16, v20);
        v11 = (v75)(*&buf[8], 3333, v43);
      }
    }
  }

LABEL_16:
  v26 = ci_signpost_log_render(v11, v12);
  v28 = v42;
  if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v29 = v26;
    if (os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v29, OS_SIGNPOST_INTERVAL_END, v28, "readback_bitmap", &unk_19CFBCBAE, buf, 2u);
    }
  }

  TimerBase::~TimerBase(&v41, v27);
}

uint64_t CI::GLContext::format_is_directly_supported_for_input(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (CI::format_is_ycc_biplanar(a2))
  {
    v4 = CI::format_of_plane_old(v2, 0);
    v5 = CI::format_of_plane_old(v2, 1);
    LODWORD(v4) = (*(*a1 + 432))(a1, v4);
    return v4 & (*(*a1 + 432))(a1, v5);
  }

  API = CIEAGLContextGetAPI(*(a1 + 392));
  result = 0;
  v8 = API == 3;
  v9 = 1;
  if (v2 <= 784)
  {
    if (((v2 - 257) > 0x14 || ((1 << (v2 - 1)) & 0x1802BD) == 0) && (v2 - 532) >= 2)
    {
      if (v2 != 784)
      {
        return result;
      }

      return 0;
    }

    return v9;
  }

  if (v2 <= 2308)
  {
    if ((v2 - 2053) > 3 || v2 == 2055)
    {
      v9 = v8;
      if (v2 != 785)
      {
        if (v2 != 1800)
        {
          return result;
        }

        return CI_DISABLE_WORKAROUND() == 28765295;
      }
    }

    return v9;
  }

  if ((v2 - 2309) < 2)
  {
    return v9;
  }

  if (v2 == 2567)
  {
    return *(a1 + 880) < 0;
  }

  v9 = v8;
  if (v2 == 2312)
  {
    return v9;
  }

  return result;
}

BOOL CI::GLContext::format_is_directly_supported_for_output(uint64_t a1, int a2, int a3)
{
  API = CIEAGLContextGetAPI(*(a1 + 392));
  result = 0;
  if (a2 > 1798)
  {
    if (a2 <= 2308)
    {
      if ((a2 - 2053) > 3 || a2 == 2055)
      {
        if (a2 != 1799)
        {
          return result;
        }

        return a3 != 1;
      }

      return (*(a1 + 880) >> 3) & 1;
    }

    if ((a2 - 2309) > 3 || a2 == 2311)
    {
      if (a2 != 2567)
      {
        return result;
      }

      return a3 == 2 && *(a1 + 880) < 0;
    }

    return 0;
  }

  if (a2 <= 273)
  {
    v8 = 1;
    if (a2 <= 263)
    {
      if ((a2 - 261) >= 2)
      {
        if (a2 != 263)
        {
          return result;
        }

        return a3 != 1;
      }

      return v8;
    }

    if (a2 == 264)
    {
      return v8;
    }

    if (a2 != 266)
    {
      return result;
    }

    return a3 == 1;
  }

  if (a2 > 783)
  {
    if (a2 != 784)
    {
      if (a2 != 785)
      {
        return result;
      }

      return API == 3;
    }

    return 0;
  }

  if (a2 == 274 || a2 == 530)
  {
    return (*(a1 + 880) >> 2) & 1;
  }

  return result;
}

uint64_t CI::GLContext::bind_cgimage(void ***a1, CGImage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v10 = CI::GLTextureManager::texture_for_CGImage(a1[53], a2, a3);
  v11 = (*a1)[9];

  return (v11)(a1, v10, 3553, a4, a5, a6);
}

BOOL CI::GLContext::bind_surface(uint64_t a1, IOSurfaceRef buffer, unsigned int *a3, char a4, int a5, int a6, char a7, int a8, int a9)
{
  if (buffer)
  {
    if (a5)
    {
      v15 = 9729;
    }

    else
    {
      v15 = 9728;
    }

    if (a6)
    {
      v16 = 33071;
    }

    else
    {
      v16 = 33069;
    }

    if (IOSurfaceGetPlaneCount(buffer) == 2)
    {
      v17 = CI::format_of_plane_old(*a3, a9);
      v18 = *(a1 + 424);
      v22 = v17;
      v23 = 0;
      v19 = *(v18 + 104);
      block = MEMORY[0x1E69E9820];
      v25 = 0x40000000;
      v26 = ___ZN2CI16GLTextureManager16attach_IOSurfaceEP11__IOSurfacebiRKNS_17TextureDescriptorEiiibb_block_invoke;
      v27 = &__block_descriptor_tmp_13_1;
      v28 = v18;
      v29 = buffer;
      v35 = 1;
      v30 = &v22;
    }

    else
    {
      v20 = *(a1 + 424);
      v19 = *(v20 + 104);
      block = MEMORY[0x1E69E9820];
      v25 = 0x40000000;
      v26 = ___ZN2CI16GLTextureManager16attach_IOSurfaceEP11__IOSurfacebiRKNS_17TextureDescriptorEiiibb_block_invoke;
      v27 = &__block_descriptor_tmp_13_1;
      v28 = v20;
      v29 = buffer;
      v35 = 0;
      v30 = a3;
    }

    v31 = a9;
    v32 = a8;
    v36 = a7;
    v37 = a4;
    v33 = v15;
    v34 = v16;
    dispatch_sync(v19, &block);
  }

  return buffer != 0;
}

uint64_t CI::GLContext::bind_texture(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  if (a2)
  {
    v6 = a3 == 3553;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v6)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    MacroContext = GetMacroContext(*(a1 + 392), &v18);
    if ((v18 & 1) == 0)
    {
      v14 = ci_logger_render(MacroContext, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    (v19)(*(&v18 + 1), (a6 + 33984));
    (*(&v22 + 1))(*(&v18 + 1), 3553, a2);
    if (a4)
    {
      v15 = 9729;
    }

    else
    {
      v15 = 9728;
    }

    if (a5)
    {
      v16 = 33071;
    }

    else
    {
      v16 = 33069;
    }

    v50(*(&v18 + 1), 3553, 10240, v15);
    v50(*(&v18 + 1), 3553, 10241, v15);
    v50(*(&v18 + 1), 3553, 10242, v16);
    v50(*(&v18 + 1), 3553, 10243, v16);
  }

  return v7;
}

uint64_t CI::GLContext::supported_compute_features(void **this)
{
  if (CIEAGLContextGetAPI(this[49]) == 3)
  {
    return 36;
  }

  else
  {
    return 32;
  }
}

BOOL CI::GLContext::supports_sRGB_texture_for_format(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 2567:
      v2 = 8;
      goto LABEL_7;
    case 266:
      v2 = 6;
      goto LABEL_7;
    case 264:
      v2 = 7;
LABEL_7:
      API = CIEAGLContextGetAPI(*(a1 + 392));
      return CIGLGetFormatInfo(API, v2) != 0;
  }

  return 0;
}

uint64_t CI::GLContext::blitSurface(void **a1, CI *a2, unsigned int *a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  memset(v48, 0, sizeof(v48));
  MacroContext = GetMacroContext(a1[49], v48);
  if ((v48[0] & 1) == 0)
  {
    v14 = ci_logger_render(MacroContext, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  v15 = CI::format_from_IOSurface(a2, v13);
  if (!(*(*a1 + 55))(a1, v15, 1))
  {
    return 0;
  }

  API = CIEAGLContextGetAPI(a1[49]);
  v17 = CI::gl_format_info_for_format(a6, API);
  v19 = v18;
  v20 = HIDWORD(v17);
  v21 = (v74)(*(&v48[0] + 1), 7936);
  v22 = v19 == 5126 || v19 == 5131;
  if (v22 && v20 == 6403)
  {
    v23 = "NVIDIA";
    v24 = 6;
    goto LABEL_15;
  }

  if (v19 == 5123 && v20 == 6408)
  {
    v23 = "Intel";
    v24 = 5;
LABEL_15:
    if (strncmp(v21, v23, v24))
    {
      goto LABEL_16;
    }

    return 0;
  }

LABEL_16:
  v47 = 0;
  v46 = 0;
  (v71)(*(&v48[0] + 1), 36006, &v47);
  (v71)(*(&v48[0] + 1), 32873, &v46);
  (*(&v68 + 1))(*(&v48[0] + 1), 1, &v47 + 4);
  v45 = 0;
  v41 = a1[52];
  (*(&v67 + 1))(*(&v48[0] + 1), 1, &v45);
  (*(&v49 + 1))(*(&v48[0] + 1), 36160, v45);
  v25 = v67;
  v26 = *(&v48[0] + 1);
  (*(*a4 + 24))(&v44, a4);
  v25(v26, 36160, 36064, 3553, v44, 0);
  v27 = &off_19CF22000;
  if ((v53)(*(&v48[0] + 1), 36160) == 36053)
  {
    v40 = a3;
    (*(&v50 + 1))(*(&v48[0] + 1), 3553, HIDWORD(v47));
    v28 = a1[49];
    Width = IOSurfaceGetWidth(a2);
    Height = IOSurfaceGetHeight(a2);
    v31 = (v74)(*(&v48[0] + 1), 7936);
    LODWORD(v39) = 0;
    if (CIEAGLContextTexImageIOSurface(v28, 3553, Width, Height, v17, v20, v19, a2, v39, v31))
    {
      (*(&v50 + 1))(*(&v48[0] + 1), 3553, HIDWORD(v47));
      (*(&v55 + 1))(*(&v48[0] + 1), 3553, 0, *v40, v40[1], *a5, a5[1], a5[2], *(a5 + 2));
      inserted = CI::GLContext::insert_fence(a1);
      v33 = CI::Context::render_completion_queue(inserted);
      block[0] = MEMORY[0x1E69E9820];
      v27 = &off_19CF22000;
      block[1] = 0x40000000;
      block[2] = ___ZNK2CI9GLContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke;
      block[3] = &__block_descriptor_tmp_45;
      block[4] = a1;
      v34 = v41;
      block[5] = v41;
      block[6] = inserted;
      block[7] = a4;
      dispatch_async(v33, block);
      v35 = 1;
    }

    else
    {
      v35 = 0;
      inserted = 0;
      v34 = v41;
      v27 = &off_19CF22000;
    }
  }

  else
  {
    v35 = 0;
    inserted = 0;
    v34 = v41;
  }

  (v57)(*(&v48[0] + 1), 1, &v45);
  (*(&v59 + 1))(*(&v48[0] + 1), 1, &v47 + 4);
  (*(&v49 + 1))(*(&v48[0] + 1), 36160, v47);
  v36 = (*(&v50 + 1))(*(&v48[0] + 1), 3553, v46);
  v37 = CI::Context::render_completion_queue(v36);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = *(v27 + 438);
  v42[2] = ___ZNK2CI9GLContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke_46;
  v42[3] = &__block_descriptor_tmp_47;
  v42[4] = v34;
  v42[5] = inserted;
  dispatch_async(v37, v42);
  return v35;
}

void ___ZNK2CI9GLContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke(void *a1)
{
  v2 = a1[4];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  MacroContext = GetMacroContext(a1[5], v7);
  if ((v7[0] & 1) == 0)
  {
    v5 = ci_logger_render(MacroContext, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  (v8)(*(&v7[0] + 1), a1[6], 0, -1);
  v6 = (*(*v2 + 112))(v2);
  CI::TextureManager::complete_intermediate(v6, 60, a1[7]);
}

uint64_t ___ZNK2CI9GLContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke_46(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  MacroContext = GetMacroContext(*(a1 + 32), v6);
  if ((v6[0] & 1) == 0)
  {
    v4 = ci_logger_render(MacroContext, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  return (v7)(*(&v6[0] + 1), *(a1 + 40));
}

const char *CI::GLContext::deviceName(CI::GLContext *this)
{
  if (*(this + 112))
  {
    return *(this + 112);
  }

  else
  {
    return "Unknown OpenGL Device";
  }
}

uint64_t CI::GLContext::max_render_load_bytes(CI::GLContext *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    return v1 << 20;
  }

  else
  {
    return 0x8000000;
  }
}

uint64_t CI::GLContext::supports_sample_mode(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    return CI::format_is_full_float(a3) ^ 1;
  }

  else
  {
    return 1;
  }
}

double CI::GLContext::sampler_transform_for_extent@<D0>(const CGRect *a1@<X1>, double *a2@<X8>)
{
  y = a1->origin.y;
  v3 = 1.0 / a1->size.height;
  v4 = a1->origin.x * -0.0 - y * v3 + 0.0;
  v5 = 1.0 / a1->size.width;
  v6 = y * -0.0 - a1->origin.x * v5;
  *a2 = v5 + 0.0;
  a2[1] = v3 * 0.0 + 0.0;
  a2[2] = v5 * 0.0 + 0.0;
  a2[3] = v3 + 0.0;
  result = v6 + 0.0;
  a2[4] = result;
  a2[5] = v4;
  return result;
}

void *std::__list_imp<CI::attached_surface_t *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void ___ZN2CIL18CI_SUBDIVIDE_QUADSEv_block_invoke()
{
  v0 = getenv("CI_SUBDIVIDE_QUADS");
  if (v0)
  {
    *&v1 = atof(v0);
  }

  else
  {
    v1 = CI::CI_SUBDIVIDE_QUADS(void)::v;
  }

  CI::CI_SUBDIVIDE_QUADS(void)::v = v1;
}

void *CI::InstanceCounted<(CI::Type)66>::~InstanceCounted(void *result)
{
  *result = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)66>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47D8[57], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t std::list<CI::attached_surface_t *>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

void *CI::InstanceCounted<(CI::Type)79>::~InstanceCounted(void *result)
{
  *result = &unk_1F1033F98;
  atomic_fetch_add(&dword_1ED7C47D8[70], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)79>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1033F98;
  atomic_fetch_add(&dword_1ED7C47D8[70], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)84>::~InstanceCounted(void *result)
{
  *result = &unk_1F1033FC0;
  atomic_fetch_add(&dword_1ED7C47D8[75], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)84>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1033FC0;
  atomic_fetch_add(&dword_1ED7C47D8[75], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void ___ZN2CI19MetalTextureManagerC2EPNS_12MetalContextE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = ci_signpost_log_render(a1, a2);
  v6 = *(a1 + 40);
  if (((v6 << 32) - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v5;
    if (os_signpost_enabled(v5))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v6 << 32, "release_surface_block", &unk_19CFBCBAE, buf, 2u);
      v6 = *(a1 + 40);
    }
  }

  TimerBase::TimerBase(buf, v6, 0, "release_surface_block", 0x20u);
  v9 = *(v4 + 136);
  v10 = *(v9 + 8);
  while (v10 != v9)
  {
    v11 = v10 + 8;
    v10 = *(v10 + 8);
    v14 = *(v11 + 8);
    if ((**v14)(v14) == a2)
    {
      v13 = *(v14 + 8);
      (**v4)(v4, &v13);
      v13 = 0uLL;
      std::list<CI::attached_surface_t *>::remove(*(v4 + 136), &v14);
      v12 = (**v14)(v14);
      CFRelease(v12);
      if (v14)
      {
        (*(*v14 + 48))(v14);
      }
    }

    v9 = *(v4 + 136);
  }

  _ZZZN2CI19MetalTextureManagerC1EPNS_12MetalContextEEUb_EN13SignpostTimerD1Ev(buf, v8);
}

void sub_19CE4E214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _ZZZN2CI19MetalTextureManagerC1EPNS_12MetalContextEEUb_EN13SignpostTimerD1Ev(va, a2);
  _Unwind_Resume(a1);
}

void _ZZZN2CI19MetalTextureManagerC1EPNS_12MetalContextEEUb_EN13SignpostTimerD1Ev(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "release_surface_block", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void CI::MetalTextureManager::~MetalTextureManager(CI::MetalTextureManager *this)
{
  *this = &unk_1F1033FE8;
  v2 = *(this + 12);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN2CI19MetalTextureManager19purge_intermediatesEm_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = this;
  v3[5] = 0;
  dispatch_async(v2, v3);
  dispatch_sync(*(this + 12), &__block_literal_global_83);
  CI::TextureManager::remove_all(this);
  if (CI_RECYCLE_METAL_TEXTURES() && CI_IOSURFACE_INTERMEDIATES())
  {
    RemoveReleaseSurfaceBlock(*(this + 13));
  }

  CI::TextureManager::~TextureManager(this);
}

{
  CI::MetalTextureManager::~MetalTextureManager(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::MetalTextureManager::wiredBytes(CI::MetalTextureManager *this)
{
  v1 = *(this + 21);
  v2 = *(v1 + 1880);
  if (v2)
  {
    v3 = [*(v1 + 1880) totalSize];
    return v3 - [v2 maxAvailableAllocationSize];
  }

  else
  {

    return CI::TextureManager::wiredBytes(this);
  }
}

uint64_t CI::MetalTextureManager::convert_to_sRGB(uint64_t a1, void *a2)
{
  (*(*a2 + 24))(v15, a2);
  v4 = v15[0];
  LOBYTE(v15[0]) = 0;
  result = CIFormatFromCIMetalTextureFormat([v4 pixelFormat], v15);
  if ((v15[0] & 1) == 0)
  {
    v6 = CIMetalFormatForFormat(result, 1);
    v7 = [v4 width];
    v8 = [v4 height];
    v9 = *(a1 + 168);
    v10 = *(v9 + 2008);
    v11 = [*(v9 + 392) device];
    v12 = (**a2)(a2);
    v13 = CIMetalTextureCreateFromPaddedIOSurface(v7, v8, v10, v11, v12, 0, v6, [v4 usage]);
    (*(*a2 + 24))(v14, a2);
    result = (**a1)(a1, v14);
    a2[1] = v13;
    a2[2] = 0;
  }

  return result;
}

uint64_t CI::MetalTextureManager::create_intermediate(uint64_t a1, __IOSurface *a2, CI *this, uint64_t a4, __int128 *a5, uint64_t a6, char a7)
{
  v13 = CI::format_from_IOSurface_ignore_values(this, a2);
  v14 = *(a1 + 168);
  v30 = *a5;
  v31 = *(a5 + 2);
  CI::Context::swizzler_for_output(v14, v13, &v30, 1, &v33);
  v15 = CIMetalFormatForFormat(v33, (*(a2 + 4) >> 1) & 1);
  v16 = CIMetalFormatForFormat(SHIDWORD(v33), (*(a2 + 4) >> 1) & 1);
  PixelFormat = IOSurfaceGetPixelFormat(this);
  v18 = PixelFormat >> 24;
  *&v30 = 0;
  *(&v30 + 1) = &v30;
  v31 = 0x2020000000;
  v20 = (PixelFormat & 0xFD000000) == 0x2D000000 || v18 == 38 || v18 == 124;
  v32 = 0;
  v21 = *(a1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI19MetalTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke;
  block[3] = &unk_1E75C4A78;
  if (v20)
  {
    v22 = 16391;
  }

  else
  {
    v22 = 7;
  }

  block[4] = &v30;
  block[5] = a1;
  block[6] = this;
  block[7] = a5;
  v26 = v15;
  v27 = v22;
  v28 = v16;
  block[8] = a6;
  v29 = a7;
  dispatch_sync(v21, block);
  v23 = *(*(&v30 + 1) + 24);
  _Block_object_dispose(&v30, 8);
  return v23;
}

void ___ZN2CI19MetalTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v30.width = *(v3 + 8);
  v30.height = *(v3 + 16);
  *(*(*(a1 + 32) + 8) + 24) = CI::TextureManager::_find_match_for_surface(v2, *(a1 + 48), v30);
  if (!*(*(*(a1 + 32) + 8) + 24) || !CI_RECYCLE_METAL_TEXTURES() || ((*(**(*(*(a1 + 32) + 8) + 24) + 24))(cf), CIMetalTextureGetFormat(cf[0]) != *(a1 + 72)))
  {
    operator new();
  }

  v4 = *(*(*(a1 + 32) + 8) + 24);
  if ((*(*v4 + 16))(v4))
  {
    (*(**(*(*(a1 + 32) + 8) + 24) + 24))(&v29);
    v5 = *(a1 + 56);
    v6 = *v5;
    v7 = *(v5 + 1);
    v8 = *v5;
    if (v8 == -2147483647)
    {
      if (HIDWORD(v6) == -2147483647 && *&v7 == __PAIR128__(0xFFFFFFFFLL, 0xFFFFFFFFLL))
      {
        v9 = MEMORY[0x1E695F040];
        goto LABEL_30;
      }
    }

    else if (v8 == 0x7FFFFFFF && HIDWORD(v6) == 0x7FFFFFFF && *&v7 == 0)
    {
      v9 = MEMORY[0x1E695F050];
LABEL_30:
      v25 = *v9;
      v24 = v9[1];
      goto LABEL_32;
    }

    v26.i64[0] = v6;
    v26.i64[1] = SHIDWORD(v6);
    v25 = vcvtq_f64_s64(v26);
    v24 = vcvtq_f64_u64(v7);
LABEL_32:
    *cf = v25;
    v28 = v24;
    CI::TextureManager::intermediate(v2, &v29, 0, cf, 0, 1);
  }

  (*(**(*(*(a1 + 32) + 8) + 24) + 24))(cf);
  CFGetRetainCount(cf[0]);
  [*(*(v2 + 21) + 392) device];
  (*(**(*(*(a1 + 32) + 8) + 24) + 24))(cf);
  [cf[0] device];
  v10 = *(a1 + 56);
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *v10;
  if (v13 == -2147483647)
  {
    if (HIDWORD(v11) == -2147483647 && *&v12 == __PAIR128__(0xFFFFFFFFLL, 0xFFFFFFFFLL))
    {
      v14 = MEMORY[0x1E695F040];
      goto LABEL_19;
    }

LABEL_20:
    v17.i64[0] = v11;
    v17.i64[1] = SHIDWORD(v11);
    v16 = vcvtq_f64_s64(v17);
    v15 = vcvtq_f64_u64(v12);
    goto LABEL_21;
  }

  if (v13 != 0x7FFFFFFF || HIDWORD(v11) != 0x7FFFFFFF || *&v12 != 0)
  {
    goto LABEL_20;
  }

  v14 = MEMORY[0x1E695F050];
LABEL_19:
  v16 = *v14;
  v15 = v14[1];
LABEL_21:
  v18 = *(*(*(a1 + 32) + 8) + 24);
  v18[2] = v16;
  v18[3] = v15;
  v19 = *(*(*(a1 + 32) + 8) + 24);
  *(v19 + 64) += *(a1 + 64);
  *(*(*(*(a1 + 32) + 8) + 24) + 72) = *(a1 + 84);
  v20 = *(*(*(a1 + 32) + 8) + 24);
  if (v20 && (**v20)(v20) && *(a1 + 64) >= 2uLL)
  {
    v21 = 1;
    do
    {
      v22 = *(*(*(a1 + 32) + 8) + 24);
      v23 = (**v22)(v22);
      RetainSurfaceFromCache(v23);
      ++v21;
    }

    while (v21 < *(a1 + 64));
  }
}

uint64_t CI::MetalTextureManager::create_intermediate(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  PixelFormat = IOSurfaceGetPixelFormat([a3 iosurface]);
  v13 = PixelFormat >> 24;
  if ((PixelFormat & 0xFD000000) == 0x2D000000 || v13 == 38 || v13 == 124)
  {
    v16 = 16387;
  }

  else
  {
    v16 = 3;
  }

  v17 = CIMetalFormatForFormat(*a2, (*(a2 + 4) >> 1) & 1);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v18 = *(a1 + 104);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___ZN2CI19MetalTextureManager19create_intermediateERKNS_22IntermediateDescriptorEPKvRK5IRectmb_block_invoke;
  v21[3] = &unk_1E75C4AA0;
  v21[6] = a1;
  v21[7] = a4;
  v21[4] = a3;
  v21[5] = &v25;
  v22 = v17;
  v23 = v16;
  v21[8] = a2;
  v21[9] = a5;
  v24 = a6;
  dispatch_sync(v18, v21);
  v19 = v26[3];
  _Block_object_dispose(&v25, 8);
  return v19;
}

uint64_t CI::MetalTextureManager::create_intermediate(void *a1, int *a2, uint64_t a3, CGFloat *a4, uint64_t a5, uint64_t a6, char a7)
{
  v84 = *MEMORY[0x1E69E9840];
  v14 = *a4;
  v15 = a4[1];
  v16 = a4[2];
  v17 = a4[3];
  v85.origin.x = *a4;
  v85.origin.y = v15;
  v85.size.width = v16;
  v85.size.height = v17;
  if (CGRectIsNull(v85))
  {
    return 0;
  }

  v53 = a5;
  v54 = a3;
  v55 = a6;
  v86.origin.x = v14;
  v86.origin.y = v15;
  v86.size.width = v16;
  v86.size.height = v17;
  if (CGRectIsInfinite(v86))
  {
    v81 = IRectInfinite;
    height = 0xFFFFFFFFLL;
    v82 = 0xFFFFFFFFLL;
    width = 0xFFFFFFFFLL;
  }

  else
  {
    v87.origin.x = v14;
    v87.origin.y = v15;
    v87.size.width = v16;
    v87.size.height = v17;
    v88 = CGRectInset(v87, 0.000001, 0.000001);
    v89 = CGRectIntegral(v88);
    width = v89.size.width;
    height = v89.size.height;
    LODWORD(v81) = v89.origin.x;
    DWORD1(v81) = v89.origin.y;
    *(&v81 + 1) = v89.size.width;
    v82 = v89.size.height;
  }

  if (!width || height == 0)
  {
    return 0;
  }

  v23 = CIMetalFormatForFormat(*a2, (*(a2 + 4) >> 1) & 1);
  v51 = v23;
  if ((*(a2 + 6) & 1) != 0 || CI::MetalContext::use_imageblocks_for_format(a1[21], *a2) && CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
  {
    v24 = 7;
  }

  else
  {
    v24 = 3;
  }

  if (((*(a2 + 7) & 1) != 0 || (*(a2 + 5) & 1) == 0 && (*(a2 + 6) & 1) == 0) && *(a1[21] + 1880))
  {
    if ((a7 & 1) == 0)
    {
      v25 = [*(a1[21] + 1880) newBufferForContextIntermediate:(((CI::format_bytes_per_row(*a2 usingHint:width) + 255) & 0xFFFFFFFFFFFFFF00) * height + 1023) & 0xFFFFFFFFFFFFFC00 identifier:{0, a3}];
      return CI::MetalTextureManager::create_intermediate(a1, a2, v25, &v81, a6, 1);
    }

    return 0;
  }

  v49 = a7;
  v50 = v24;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  is_packed = CI::format_is_packed(*a2);
  v27 = width > 0xF && height > 0xF;
  v28 = ((height * width) & 0xFFFFFFFFFFFF0000) != 0 && v27;
  v29 = *(a2 + 5);
  v30 = *(a2 + 6);
  v31 = *(a2 + 8);
  v47 = (*(*a1[21] + 176))(a1[21]);
  if (CI_PRINT_TREE_dump_intermediates() & 1) != 0 || (CI_PRINT_TREE_dump_raw_intermediates())
  {
    v48 = 1;
  }

  else
  {
    v48 = CI_PRINT_TREE_dump_bmtl_intermediates();
  }

  v32 = [*(a1[21] + 392) device];
  v46 = CIMetalDeviceSupportsFamilyApple7(v32, v33);
  v34 = [*(a1[21] + 392) device];
  v36 = CIMetalDeviceSupportsFamilyApple8(v34, v35);
  if ((v29 | v30) & ~v31 & 1 | (((is_packed | v28) & 1) == 0) | v48 & 1)
  {
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v40 = v36;
    v41 = CI_LOSSY_COMPRESSED_INTERMEDIATES();
    v36 = CI_LOSSLESS_COMPRESSED_INTERMEDIATES();
    v38 = (v41 != 0) & v40 & v47;
    v39 = (v36 != 0) & v46;
  }

  if (is_packed)
  {
    if ((v39 & 1) == 0)
    {
      v42 = ci_logger_render(v36, v37);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = CI::name_for_format(*a2);
        CI::MetalTextureManager::create_intermediate(v43, buf, v42);
      }
    }
  }

  v44 = a1[13];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI19MetalTextureManager19create_intermediateERKNS_22IntermediateDescriptorENS_17NodeContentDigestERK6CGRectmmb_block_invoke;
  block[3] = &unk_1E75C4AC8;
  block[8] = v54;
  block[9] = a2;
  v66 = v39;
  v67 = v38;
  v68 = v49;
  v57 = v81;
  v58 = v82;
  v59 = width;
  v60 = height;
  v61 = v53;
  block[4] = &v77;
  block[5] = &v69;
  block[6] = &v73;
  block[7] = a1;
  v62 = a4;
  v63 = v55;
  v64 = v51;
  v65 = v50;
  dispatch_sync(v44, block);
  v45 = v78[3];
  if (v45)
  {
    v21 = (*(*a1 + 64))(a1, a2, v45, 0, &v81, v55, *(v70 + 24));
  }

  else
  {
    v21 = v74[3];
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
  return v21;
}

void sub_19CE4F654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 240), 8);
  _Block_object_dispose((v36 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t CI::MetalContext::use_imageblocks_for_format(uint64_t a1, int a2)
{
  result = CI_ENABLE_METAL_IMAGEBLOCKS();
  if (result)
  {
    if (*(a1 + 457) != 1)
    {
      return 0;
    }

    result = 0;
    if (a2 > 529)
    {
      if (a2 != 530 && a2 != 2066 && a2 != 534)
      {
        return result;
      }

      return CI_ENABLE_METAL_IMAGEBLOCKS() == 2;
    }

    if (a2 == 274 || a2 == 278)
    {
      return CI_ENABLE_METAL_IMAGEBLOCKS() == 2;
    }
  }

  return result;
}

void ___ZN2CI19MetalTextureManager19create_intermediateERKNS_22IntermediateDescriptorENS_17NodeContentDigestERK6CGRectmmb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (CI_IOSURFACE_INTERMEDIATES())
  {
    v3 = CFStringCreateWithFormat(0, 0, @"%llX(%04X)", *(a1 + 64), *(a1 + 144));
    v4 = CI::PixelFormatType_from_format(**(a1 + 72));
    v5 = v4;
    if (*(a1 + 152) != 1)
    {
      goto LABEL_93;
    }

    v6 = equivalent_uncompressed_format(v4);
    v5 = v6;
    if (v6 > 1714643255)
    {
      if (v6 > 1885745711)
      {
        if (v6 > 1999908960)
        {
          if (v6 <= 2019964015)
          {
            if (v6 == 1999908961)
            {
              v5 = 645346401;
            }

            else if (v6 == 2016687216)
            {
              v5 = 640955504;
            }
          }

          else
          {
            switch(v6)
            {
              case 0x78663470:
                v5 = 644232304;
                break;
              case 0x79757666:
                v5 = 645494118;
                break;
              case 0x79757673:
                v5 = 645494131;
                break;
            }
          }

          goto LABEL_93;
        }

        if (v6 <= 1885746227)
        {
          if (v6 != 1885745712)
          {
            if (v6 != 1885745714)
            {
              goto LABEL_93;
            }

            v8 = 645424688;
            goto LABEL_89;
          }

          v13 = 26160;
LABEL_91:
          v5 = v13 | 0x26780000u;
          goto LABEL_93;
        }

        if (v6 != 1885746228)
        {
          if (v6 == 1999843442)
          {
            v5 = 645346162;
          }

          goto LABEL_93;
        }

        v12 = 645424688;
LABEL_84:
        v5 = v12 | 4u;
        goto LABEL_93;
      }

      if (v6 <= 1815162993)
      {
        if (v6 <= 1751527985)
        {
          if (v6 == 1714643256)
          {
            v5 = 644231992;
          }

          else if (v6 == 1751527984)
          {
            v5 = 644376112;
          }

          goto LABEL_93;
        }

        if (v6 != 1751527986)
        {
          if (v6 != 1751528500)
          {
            goto LABEL_93;
          }

          v12 = 644376112;
          goto LABEL_84;
        }

        v8 = 644376112;
LABEL_89:
        v5 = v8 | 2u;
        goto LABEL_93;
      }

      if (v6 <= 1882468913)
      {
        if (v6 == 1815162994)
        {
          v5 = 644624754;
          goto LABEL_93;
        }

        if (v6 != 1882468912)
        {
          goto LABEL_93;
        }

        v10 = 645424688;
LABEL_54:
        v5 = v10 | 0x1000u;
        goto LABEL_93;
      }

      if (v6 == 1882468914)
      {
        v13 = 30258;
        goto LABEL_91;
      }

      if (v6 != 1882469428)
      {
        goto LABEL_93;
      }

      v11 = 645428786;
LABEL_70:
      v5 = (v11 + 2);
      goto LABEL_93;
    }

    if (v6 <= 1111970368)
    {
      if (v6 > 875704933)
      {
        if (v6 > 875836517)
        {
          if (v6 == 875836518)
          {
            v12 = 641230384;
            goto LABEL_84;
          }

          if (v6 != 875836534)
          {
            goto LABEL_93;
          }

          v11 = 641234482;
          goto LABEL_70;
        }

        if (v6 == 875704934)
        {
          v8 = 641230384;
          goto LABEL_89;
        }

        if (v6 != 875704950)
        {
          goto LABEL_93;
        }

        v9 = 30258;
      }

      else
      {
        if (v6 <= 875704421)
        {
          if (v6 == 843264056)
          {
            v5 = 640823352;
            goto LABEL_93;
          }

          if (v6 != 843264104)
          {
            goto LABEL_93;
          }

          v7 = 640823352;
          goto LABEL_82;
        }

        if (v6 != 875704422)
        {
          if (v6 != 875704438)
          {
            goto LABEL_93;
          }

          v10 = 641230384;
          goto LABEL_54;
        }

        v9 = 26160;
      }

      v5 = v9 | 0x26380000u;
      goto LABEL_93;
    }

    if (v6 > 1278226737)
    {
      if (v6 > 1380411456)
      {
        if (v6 == 1380411457)
        {
          v5 = 642934849;
        }

        else if (v6 == 1647534392)
        {
          v5 = 643969848;
        }
      }

      else if (v6 == 1278226738)
      {
        v5 = 642527538;
      }

      else if (v6 == 1278226742)
      {
        v5 = 642527542;
      }
    }

    else if (v6 > 1278226535)
    {
      if (v6 == 1278226536)
      {
        v7 = 642527288;
LABEL_82:
        v5 = (v7 + 48);
        goto LABEL_93;
      }

      if (v6 == 1278226736)
      {
        v5 = 642527536;
      }
    }

    else if (v6 == 1111970369)
    {
      v5 = 641877825;
    }

    else if (v6 == 1278226488)
    {
      v5 = 642527288;
    }

LABEL_93:
    if (*(a1 + 153) != 1)
    {
      goto LABEL_133;
    }

    v14 = equivalent_uncompressed_format(v5);
    v5 = v14;
    if (v14 > 1380411456)
    {
      if (v14 > 1882469427)
      {
        if (v14 > 1885745713)
        {
          if (v14 != 1885745714)
          {
            if (v14 == 1885746228)
            {
              v5 = 762865204;
            }

            goto LABEL_133;
          }

          v17 = 26162;
        }

        else
        {
          if (v14 != 1882469428)
          {
            if (v14 == 1885745712)
            {
              v5 = 762865200;
            }

            goto LABEL_133;
          }

          v17 = 30260;
        }

        v5 = v17 | 0x2D780000u;
      }

      else
      {
        if (v14 <= 1882468911)
        {
          if (v14 == 1380411457)
          {
            v5 = 760375361;
          }

          else if (v14 == 1751527984)
          {
            v5 = 761816624;
          }

          goto LABEL_133;
        }

        if (v14 == 1882468912)
        {
          v5 = 762869296;
          goto LABEL_133;
        }

        if (v14 == 1882468914)
        {
          v16 = 762865202;
LABEL_123:
          v5 = v16 | 0x1000u;
          goto LABEL_133;
        }
      }

      goto LABEL_133;
    }

    if (v14 <= 875704437)
    {
      if (v14 == 843264056)
      {
        v5 = 758263864;
        goto LABEL_133;
      }

      if (v14 != 843264104)
      {
        if (v14 == 875704422)
        {
          v5 = 758670896;
        }

        goto LABEL_133;
      }

      v15 = 758263864;
    }

    else
    {
      if (v14 <= 1278226487)
      {
        if (v14 != 875704438)
        {
          if (v14 == 1111970369)
          {
            v5 = 759318337;
          }

          goto LABEL_133;
        }

        v16 = 758670896;
        goto LABEL_123;
      }

      if (v14 == 1278226488)
      {
        v5 = 759967800;
        goto LABEL_133;
      }

      if (v14 != 1278226536)
      {
LABEL_133:
        if (*(a1 + 154) == 1)
        {
          v34 = *(a1 + 80);
          v35 = *(a1 + 96);
          LODWORD(v32) = 0;
          v18 = (*(**(v2 + 168) + 624))();
          v19 = *(v2 + 168);
          v20 = v19[47];
          *(&v32 + 1) = v18;
          v33 = v20;
          v21 = (*(*v19 + 280))(v19);
          *(*(*(a1 + 32) + 8) + 24) = GetValidSurfaceFromCache(&v34, v5, &v32, v21, 0, *(*(a1 + 72) + 12), v3);
        }

        else
        {
          Mutable = CFArrayCreateMutable(0, *(*(v2 + 136) + 16), 0);
          if (CI_RECYCLE_METAL_TEXTURES())
          {
            v23 = *(v2 + 136);
            for (i = *(v23 + 8); i != v23; i = *(i + 8))
            {
              v25 = *(i + 16);
              if (!(*(*v25 + 16))(v25) && *((*(*v25 + 32))(v25) + 16) == *(a1 + 104) && *((*(*v25 + 32))(v25) + 24) == *(a1 + 112))
              {
                v26 = (**v25)(v25);
                CFArrayAppendValue(Mutable, v26);
              }
            }
          }

          v34 = *(a1 + 80);
          v35 = *(a1 + 96);
          v27 = *(a1 + 120);
          LODWORD(v32) = 0;
          v28 = (*(**(v2 + 168) + 624))();
          v29 = *(v2 + 168);
          v30 = v29[47];
          *(&v32 + 1) = v28;
          v33 = v30;
          v31 = (*(*v29 + 280))(v29);
          *(*(*(a1 + 32) + 8) + 24) = GetSurfaceFromCache(&v34, v27, v27, v5, &v32, v31, 0, *(*(a1 + 72) + 12), v3, *(*(a1 + 40) + 8) + 24, Mutable);
          CFRelease(Mutable);
        }

        CFRelease(v3);
        return;
      }

      v15 = 759967800;
    }

    v5 = (v15 + 48);
    goto LABEL_133;
  }

  if ((*(a1 + 154) & 1) == 0)
  {
    operator new();
  }
}

void CI::MetalTextureManager::purge_intermediates(CI::MetalTextureManager *this, uint64_t a2)
{
  v2 = *(this + 12);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN2CI19MetalTextureManager19purge_intermediatesEm_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = this;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void ___ZN2CI19MetalTextureManager19purge_intermediatesEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (CI_RECYCLE_METAL_TEXTURES() && CI_IOSURFACE_INTERMEDIATES())
  {
    v3 = *(v2 + 13);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___ZN2CI19MetalTextureManager19purge_intermediatesEm_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v4 = *(a1 + 40);
    v5[4] = v2;
    v5[5] = v4;
    dispatch_sync(v3, v5);
  }

  CI::TextureManager::purge_intermediates(v2);
}

void *___ZN2CI19MetalTextureManager19purge_intermediatesEm_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  v3 = *(v2 + 16);
  v13[0] = v13;
  v13[1] = v13;
  v13[2] = 0;
  v4 = *(v2 + 8);
  if (v4 != v2)
  {
    do
    {
      if (v3 <= *(a1 + 40) || (v6 = v4[2], (*(*v6 + 16))(v6)))
      {
        i = v4;
      }

      else
      {
        v14 = *(v6 + 8);
        (**v1)(v1, &v14);
        v14 = 0uLL;
        v8 = *(v6 + 24);
        if (v8)
        {
          CFRelease(v8);
        }

        (*(*v6 + 48))(v6);
        --v3;
        for (i = v4[1]; ; i = i[1])
        {
          if (i == v2)
          {
            v11 = 1;
            goto LABEL_19;
          }

          if (v3 <= *(a1 + 40))
          {
            break;
          }

          v9 = i[2];
          if ((*(*v9 + 16))(v9))
          {
            break;
          }

          v14 = *(v9 + 8);
          (**v1)(v1, &v14);
          v14 = 0uLL;
          v10 = *(v9 + 24);
          if (v10)
          {
            CFRelease(v10);
          }

          (*(*v9 + 48))(v9);
          --v3;
        }

        v11 = 0;
LABEL_19:
        std::list<CI::attached_surface_t *>::splice(v13, v13, v2, v4, i);
        if (v11)
        {
          goto LABEL_6;
        }
      }

      i = i[1];
LABEL_6:
      v4 = i;
    }

    while (i != v2);
  }

  return std::__list_imp<CI::attached_surface_t *>::clear(v13);
}

void sub_19CE505E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<CI::attached_surface_t *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t CI::MetalTextureManager::remove_matching_texture(uint64_t a1, __int128 **a2)
{
  v4 = isImageConversionServiceProcess(a1, a2);
  if (v4 & 1) != 0 || (v6 = isMobileSlideShowOrCamera(v4, v5), (v6) || (result = isQuickLookSideCar(v6, v7), result))
  {
    memset(v15, 0, sizeof(v15));
    v16 = 1065353216;
    v10 = *a2;
    v9 = a2[1];
    while (v10 != v9)
    {
      v14 = *v10;
      std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(v15, &v14, &v14);
      ++v10;
    }

    v11 = *(a1 + 104);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = ___ZN2CI19MetalTextureManager23remove_matching_textureERKNSt3__16vectorINS_7TextureENS1_9allocatorIS3_EEEE_block_invoke;
    v12[3] = &__block_descriptor_80_e8_40c83_ZTSNSt3__113unordered_setIPKvNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE_e5_v8__0l;
    v12[4] = a1;
    std::unordered_set<void const*>::unordered_set(v13, v15);
    dispatch_sync(v11, v12);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v13);
    return std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v15);
  }

  return result;
}

void ___ZN2CI19MetalTextureManager23remove_matching_textureERKNSt3__16vectorINS_7TextureENS1_9allocatorIS3_EEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __p = 0;
  v19 = 0;
  v20 = 0;
  v3 = *(v2 + 14);
  if (v3 != (v2 + 120))
  {
    do
    {
      v6 = v3[4];
      v5 = v3[5];
      if ((CI::allowRemoval(v5, a2) & 1) != 0 && std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>((a1 + 40), v5))
      {
        v7 = v19;
        if (v19 >= v20)
        {
          v9 = (v19 - __p) >> 3;
          if ((v9 + 1) >> 61)
          {
            std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
          }

          v10 = (v20 - __p) >> 2;
          if (v10 <= v9 + 1)
          {
            v10 = v9 + 1;
          }

          if (v20 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v11 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(&__p, v11);
          }

          *(8 * v9) = v6;
          v8 = 8 * v9 + 8;
          v12 = (8 * v9 - (v19 - __p));
          memcpy(v12, __p, v19 - __p);
          v13 = __p;
          __p = v12;
          v19 = v8;
          v20 = 0;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v19 = v6;
          v8 = (v7 + 8);
        }

        v19 = v8;
      }

      v14 = v3[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v3[2];
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
    }

    while (v15 != (v2 + 120));
    v17 = __p;
    if (__p != v19)
    {
      do
      {
        CI::TextureManager::remove_lru(v2, *v17++);
      }

      while (v17 != v19);
      v17 = __p;
    }

    if (v17)
    {
      v19 = v17;
      operator delete(v17);
    }
  }
}

void sub_19CE508AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CI::allowRemoval(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 20))
    {
      if (*(result + 24) == 1)
      {
        result = isImageConversionServiceProcess(result, a2);
        if (result)
        {
          v3 = 1;
        }

        else
        {
          result = isMobileSlideShowOrCamera(result, a2);
          v3 = result;
        }
      }

      else
      {
        v3 = 0;
      }

      if (*(v2 + 16) == 1)
      {
        v5 = isQuickLookSideCar(result, a2);
      }

      else
      {
        v5 = 0;
      }

      return v5 | v3;
    }

    else
    {
      v4 = ci_logger_render(result, a2);
      result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      if (result)
      {
        CI::allowRemoval(v2, v4);
        return 0;
      }
    }
  }

  return result;
}

uint64_t CI::MetalTextureManager::_release_intermediate(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 168) + 1880) || !CI_RECYCLE_METAL_TEXTURES() || (result = CI_IOSURFACE_INTERMEDIATES(), !result))
  {

    return CI::TextureManager::_release_intermediate(a1, a2);
  }

  return result;
}

BOOL CI::MetalTextureManager::_release_intermediate_for_node(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  (*(*(*a2)[5] + 24))(&v9);
  v6 = v9;
  v7 = CI::TextureManager::_release_intermediate_for_node(a1, a2, a3);
  if (v7 && [v6 buffer])
  {
    [*(*(a1 + 168) + 1880) bufferForContextIntermediateCommitted:{objc_msgSend(v6, "buffer")}];
  }

  return v7;
}

void CI::MetalTextureManager::release_texture(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 168) + 1880))
  {
    v4 = *a2;
    if ([*a2 buffer])
    {
      [*(*(a1 + 168) + 1880) bufferForContextIntermediateCompleted:{objc_msgSend(v4, "buffer")}];
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
}

uint64_t CI::MetalTextureManager::lookup_texture(CI::MetalTextureManager *this, void *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(this + 13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI19MetalTextureManager14lookup_textureEPv_block_invoke;
  block[3] = &unk_1E75C4B10;
  block[4] = &v6;
  block[5] = this;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t ___ZN2CI19MetalTextureManager14lookup_textureEPv_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CI::TextureManager::_lookup_texture(*(a1 + 40), *(a1 + 48));
  result = CI::allowRemoval(*(*(*(a1 + 32) + 8) + 24), v2);
  if (result)
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    ++*(v4 + 20);
  }

  return result;
}

void *CI::MetalTextureManager::create_texture(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = CIMetalFormatForFormat(*a8, *(a8 + 4));
  v17 = CIMetalTextureCreate(*(*(a1 + 168) + 2008), [*(*(a1 + 168) + 392) device], v16, a5, a6, 1);
  CIMetalTextureSetBytes(v17, a4, a7);
  v18 = malloc_type_malloc(0x20uLL, 0x10C20400159326AuLL);
  *v18 = v17;
  v18[1] = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = 1;
  *(v18 + 24) = *(a8 + 5);
  CI::TextureManager::append_to_lru(a1, a2, v18);
  return v17;
}

void *CI::MetalTextureManager::create_texture(void *a1, IOSurfaceRef buffer, size_t planeIndex, int a4, uint64_t a5)
{
  BaseAddressOfPlane = buffer;
  if (a4 == 3)
  {
    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(buffer, planeIndex);
  }

  v11 = (*(*a1 + 8))(a1, BaseAddressOfPlane);
  if (v11)
  {
    return *v11;
  }

  v13 = CIMetalFormatForFormat(*a5, *(a5 + 4));
  v12 = CIMetalTextureCreateFromIOSurface(*(a1[21] + 2008), [*(a1[21] + 392) device], buffer, planeIndex, v13, 1);
  v14 = malloc_type_malloc(0x20uLL, 0x10C20400159326AuLL);
  *v14 = v12;
  v14[1] = 0;
  *(v14 + 4) = a4;
  *(v14 + 5) = 1;
  *(v14 + 24) = *(a5 + 5);
  CI::TextureManager::append_to_lru(a1, BaseAddressOfPlane, v14);
  return v12;
}

void *CI::MetalTextureManager::texture_for_CGImage(void **a1, CGImage *a2, uint64_t a3)
{
  v6 = ((*a1)[1])(a1);
  if (v6)
  {
    return *v6;
  }

  Width = CGImageGetWidth(a2);
  Height = CGImageGetHeight(a2);
  BytesPerRow = CGImageGetBytesPerRow(a2);
  if (Width > (*(*a1[21] + 448))() || Height > (*(*a1[21] + 448))(a1[21]))
  {
    x_log("Cannot handle a (%lu x %lu) sized texture with the given context!\n", Width, Height);
    return 0;
  }

  DataProvider = CGImageGetDataProvider(a2);
  v13 = CGDataProviderRetainBytePtr();
  if (v13)
  {
    texture = CI::MetalTextureManager::create_texture(a1, a2, 1, v13, Width, Height, BytesPerRow, a3);
    CGDataProviderReleaseBytePtr();
    return texture;
  }

  v14 = CGDataProviderCopyData(DataProvider);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  if (CFDataGetLength(v14) >= 1 && (BytePtr = CFDataGetBytePtr(v15)) != 0)
  {
    texture = CI::MetalTextureManager::create_texture(a1, a2, 1, BytePtr, Width, Height, BytesPerRow, a3);
  }

  else
  {
    texture = 0;
  }

  CFRelease(v15);
  return texture;
}

void *CI::MetalTextureManager::texture_for_IOSurface(uint64_t a1, IOSurfaceRef buffer, size_t a3, unsigned int *a4)
{
  if (IOSurfaceGetPlaneCount(buffer) == 2)
  {
    if (a3)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v9 = CI::format_of_plane(*a4, a3);
    v10 = *a4;
    if (*a4 == 4616 || v10 == 4360)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (((*(**(a1 + 168) + 432))(*(a1 + 168), v12) & 1) == 0)
    {
      LODWORD(v12) = CI::format_of_plane_old(*a4, a3);
    }

    if ((v12 - 1285) > 1)
    {
      if (!v12)
      {
        if (a3)
        {
          v12 = "Y";
        }

        else
        {
          v12 = "CbCr";
        }

        v14 = CI::name_for_format(*a4);
        x_log("Unexpected format requesting a texture for %s plane of format %s\n", v12, v14);
        LODWORD(v12) = 0;
      }
    }

    else if ((*(*(a1 + 168) + 456) & 1) == 0)
    {
      LODWORD(v12) = 784;
    }

    v15 = v12;
    v16 = 0;
    return CI::MetalTextureManager::create_texture(a1, buffer, a3, v8, &v15);
  }

  else
  {

    return CI::MetalTextureManager::create_texture(a1, buffer, a3, 2, a4);
  }
}

uint64_t CI::MetalMainProgram::get_next_offset(int a1, uint64_t *a2)
{
  result = 0xFFFFFFFFLL;
  v4 = a1 - 5;
  v5 = *a2;
  v6 = -4;
  v7 = 4;
  v8 = 3;
  switch(v4)
  {
    case 0:
    case 8:
    case 14:
    case 18:
      goto LABEL_8;
    case 1:
    case 9:
    case 10:
    case 15:
    case 19:
      v6 = -8;
      v7 = 8;
      goto LABEL_4;
    case 2:
    case 3:
    case 16:
    case 17:
    case 20:
    case 21:
    case 22:
      v6 = -16;
      v7 = 16;
      goto LABEL_7;
    case 4:
      v6 = -8;
      v7 = 16;
      goto LABEL_4;
    case 5:
    case 35:
    case 37:
    case 38:
    case 39:
      v6 = -16;
      v7 = 48;
      goto LABEL_7;
    case 6:
    case 32:
    case 36:
    case 40:
      v6 = -16;
      v7 = 64;
LABEL_7:
      v8 = 15;
      goto LABEL_8;
    case 7:
      v6 = -2;
      v7 = 2;
      v8 = 1;
      goto LABEL_8;
    case 11:
      v7 = 8;
      v8 = 3;
      goto LABEL_8;
    case 12:
      v6 = -8;
      v7 = 24;
      goto LABEL_4;
    case 13:
      v6 = -8;
      v7 = 32;
LABEL_4:
      v8 = 7;
LABEL_8:
      v5 = (v5 + v8) & v6;
      *a2 = v5 + v7;
      goto LABEL_9;
    case 41:
    case 42:
LABEL_9:
      result = v5;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CI::MetalMainProgram::MetalMainProgram(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  v14 = CI::MainProgram::MainProgram(a1, a3, a4, a5, a6);
  v14[13] = &unk_1F1034438;
  atomic_fetch_add(&dword_1ED7C47D8[66], 1u);
  *v14 = &unk_1F10340A8;
  v14[13] = &unk_1F1034118;
  v14[15] = a7;
  v14[16] = 0;
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create("CI::KernelCompileQueue", v15);
  *(a1 + 156) = 0;
  *(a1 + 136) = v16;
  *(a1 + 152) = 0;
  *(a1 + 164) = 0;
  *(a1 + 172) = 0;
  *(a1 + 128) = *(a2 + 2048);
  *(a1 + 144) = *(a2 + 2008);
  *(a1 + 152) = CI::MetalContext::use_imageblocks_for_format(a2, *a10);
  *(a1 + 156) = CIMetalFormatForFormat(*a10, (*(a10 + 4) >> 1) & 1);
  v17 = [*(a2 + 392) device];
  if (v17)
  {
    v17 = CFRetain(v17);
  }

  *(a1 + 160) = v17;
  *(a1 + 48) = (*(*a2 + 280))(a2);
  if (!*(a1 + 120))
  {
    *(a1 + 112) = 16;
    CI::MainProgram::num_arguments(a1);
    operator new();
  }

  *(a1 + 112) = a8;
  return a1;
}

void sub_19CE5148C(_Unwind_Exception *a1)
{
  MEMORY[0x19EAF5590](v3, 0x1010C40C0D7B093);
  *(v1 + 13) = v2;
  atomic_fetch_add((v4 + 300), 0xFFFFFFFF);
  CI::MainProgram::~MainProgram(v1);
  _Unwind_Resume(a1);
}

void CI::MetalMainProgram::~MetalMainProgram(CI::MetalMainProgram *this)
{
  *this = &unk_1F10340A8;
  *(this + 13) = &unk_1F1034118;
  v2 = *(this + 17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI16MetalMainProgramD2Ev_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
  dispatch_release(*(this + 17));
  v3 = *(this + 15);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      free(v4);
    }

    MEMORY[0x19EAF5590](v3, 0x1010C40C0D7B093);
  }

  *(this + 15) = 0;
  v5 = *(this + 20);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 20) = 0;
  *(this + 13) = &unk_1F1034438;
  atomic_fetch_add(&dword_1ED7C47D8[66], 0xFFFFFFFF);
  CI::MainProgram::~MainProgram(this);
}

{
  CI::MetalMainProgram::~MetalMainProgram(this);

  JUMPOUT(0x19EAF5590);
}

void sub_19CE5161C(_Unwind_Exception *a1)
{
  *(v1 + 13) = &unk_1F1034438;
  atomic_fetch_add(&dword_1ED7C47D8[66], 0xFFFFFFFF);
  CI::MainProgram::~MainProgram(v1);
  _Unwind_Resume(a1);
}

void ___ZN2CI16MetalMainProgramD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 168);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 168) = 0;
}

void non-virtual thunk toCI::MetalMainProgram::~MetalMainProgram(CI::MetalMainProgram *this)
{
  CI::MetalMainProgram::~MetalMainProgram((this - 104));
}

{
  CI::MetalMainProgram::~MetalMainProgram((this - 104));

  JUMPOUT(0x19EAF5590);
}

void CI::MetalMainProgram::compile(uint64_t a1, unsigned int a2)
{
  dispatch_assert_queue_V2(*(a1 + 136));
  v4 = CI_VERBOSE_SIGNPOSTS();
  if (v4)
  {
    v6 = ci_signpost_log_compile(v4, v5);
    v7 = a2 | (*(a1 + 48) << 32);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v6;
      if (os_signpost_enabled(v6))
      {
        LOWORD(v15[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v7, "compile_metal", &unk_19CFBCBAE, v15, 2u);
      }
    }
  }

  TimerBase::TimerBase(v15, *(a1 + 48), a2, "compile_metal", 0x19u);
  v9.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v10 = *(a1 + 144);
  v11 = *(a1 + 160);
  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  if (*(a1 + 152) == 1)
  {
    v14 = CIMetalRenderPipelineStateCreateFromSource(v10, v11, v12, v13, *(a1 + 16), *(a1 + 156));
  }

  else
  {
    v14 = CIMetalComputePipelineStateCreateFromSource(v10, v11, v12, v13);
  }

  *(a1 + 168) = v14;
  atomic_store(COERCE_UNSIGNED_INT64((std::chrono::steady_clock::now().__d_.__rep_ - v9.__d_.__rep_) / 1000000000.0), (a1 + 24));
  CI::MetalMainProgram::compile(CI::NodeIndex)::SignpostTimer::~SignpostTimer(v15);
}

void CI::MetalMainProgram::compile(CI::NodeIndex)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_compile(v2, v3);
    v5 = *(a1 + 1);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "compile_metal", &unk_19CFBCBAE, v7, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1, v3);
}

void CI::MetalMainProgram::compileAsync(dispatch_queue_t *a1, int a2)
{
  if (((*a1)[11].isa)(a1))
  {
    if (CI_ENABLE_UBER_SHADER() != 2)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = ___ZN2CI16MetalMainProgram12compileAsyncENS_9NodeIndexE_block_invoke_2;
      v8[3] = &__block_descriptor_44_e5_v8__0l;
      v8[4] = a1;
      v9 = a2;
      v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8);
      dispatch_async(a1[17], v4);
      v5 = CI_WAIT_BEFORE_SWITCHING_TO_UBER();
      v6 = dispatch_time(0, (v5 * 1000000000.0));
      dispatch_block_wait(v4, v6);
      _Block_release(v4);
    }
  }

  else
  {
    v7 = a1[17];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2CI16MetalMainProgram12compileAsyncENS_9NodeIndexE_block_invoke;
    block[3] = &__block_descriptor_44_e5_v8__0l;
    block[4] = a1;
    v11 = a2;
    dispatch_sync(v7, block);
  }
}

unint64_t *___ZN2CI16MetalMainProgram12compileAsyncENS_9NodeIndexE_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[21])
  {
    v3 = atomic_load(result + 3);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      return (*(*result + 80))(result, *(a1 + 40));
    }
  }

  return result;
}

unint64_t *___ZN2CI16MetalMainProgram12compileAsyncENS_9NodeIndexE_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[21])
  {
    v3 = atomic_load(result + 3);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      return (*(*result + 80))(result, *(a1 + 40));
    }
  }

  return result;
}

unint64_t CI::MetalMainProgram::getPipelineState(unint64_t *a1, int a2)
{
  v4 = (*(*a1 + 88))(a1);
  if (v4)
  {
    v5 = COERCE_DOUBLE(atomic_load(a1 + 3));
    if (v5 <= 0.0)
    {
      return *(v4 + 24);
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v6 = a1[17];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZNK2CI16MetalMainProgram16getPipelineStateENS_9NodeIndexE_block_invoke;
      block[3] = &unk_1E75C25C0;
      block[4] = &v13;
      block[5] = a1;
      dispatch_sync(v6, block);
      v7 = v14[3];
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v8 = a1[17];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZNK2CI16MetalMainProgram16getPipelineStateENS_9NodeIndexE_block_invoke_2;
    v10[3] = &__block_descriptor_44_e5_v8__0l;
    v10[4] = a1;
    v11 = a2;
    dispatch_sync(v8, v10);
    return a1[21];
  }

  return v7;
}

unint64_t *___ZNK2CI16MetalMainProgram16getPipelineStateENS_9NodeIndexE_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[21])
  {
    v3 = atomic_load(result + 3);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      return (*(*result + 80))(result, *(a1 + 40));
    }
  }

  return result;
}

void sub_19CE51DB4(_Unwind_Exception *a1)
{
  *(v1 + 384) = v2;
  atomic_fetch_add((v3 + 340), 0xFFFFFFFF);
  CI::Context::~Context(v1);
  _Unwind_Resume(a1);
}

void CI::MetalContext::init(CI::MetalContext *this, CFTypeRef cf, const char *a3)
{
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(this + 49) = v5;
  *(this + 251) = a3;
  bzero(this + 1232, 0x208uLL);
  v6 = 0;
  v7 = 0;
  v8 = 1;
  while (1)
  {
    v9 = 0;
    v10 = v8;
    v11 = 1;
    v12 = this + 32 * v7 + 1752;
    do
    {
      v13 = v11;
      v14 = &v12[16 * v9];
      *v14 = CIMetalSamplerCreate(*(this + 251), [*(this + 49) device], v6 & 1, v11 & 1);
      v15 = CIMetalSamplerCreate(*(this + 251), [*(this + 49) device], v6 & 1, v13 & 1);
      v11 = 0;
      v14[1] = v15;
      v9 = 1;
    }

    while ((v13 & 1) != 0);
    v8 = 0;
    v6 = 1;
    v7 = 1;
    if ((v10 & 1) == 0)
    {
      operator new();
    }
  }
}

uint64_t CI::GLContext::MTLShadow(CI::GLContext *this)
{
  if (!*(this + 44))
  {
    operator new();
  }

  v1 = *(this + 44);

  return CI::Object::ref(v1);
}

CI::MetalContext *CI::SWContext::MTLShadow(CI::SWContext *this)
{
  if (!*(this + 44))
  {
    operator new();
  }

  return *(this + 44);
}

void sub_19CE52280(_Unwind_Exception *a1)
{
  v6 = *v4;
  *v4 = 0;
  if (v6)
  {
    CI::Object::unref(v6);
  }

  *(v1 + 384) = v2;
  atomic_fetch_add((v3 + 340), 0xFFFFFFFF);
  CI::Context::~Context(v1);
  _Unwind_Resume(a1);
}

void CI::MetalContext::MetalContext(uint64_t a1, const void *a2, const char *a3, CGColorSpace *a4, CGColorSpace *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef a12, __int16 a13)
{
  v14 = a7;
  if (dyld_program_sdk_at_least())
  {
    v19 = 2056;
  }

  else
  {
    v19 = 264;
  }

  if (a6)
  {
    v20 = a6;
  }

  else
  {
    v20 = v19;
  }

  CI::Context::Context(a1, a4, a5, v20, v14, a8, a9, a10, a13, SHIBYTE(a13));
}

{
  CI::MetalContext::MetalContext(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void sub_19CE52478(_Unwind_Exception *a1)
{
  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    CI::Object::unref(v6);
  }

  *(v1 + 384) = v2;
  atomic_fetch_add((v4 + 340), 0xFFFFFFFF);
  CI::Context::~Context(v1);
  _Unwind_Resume(a1);
}

void CI::MetalContext::load_archives(CI::MetalContext *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (CI_ARCHIVE_USAGE_MODE())
  {
    if (CI::MetalContext::binaryArchiveCache(void)::onceToken != -1)
    {
      CI::MetalContext::load_archives();
    }

    v2 = CI::MetalContext::binaryArchiveCache(void)::cache;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    objc_sync_enter(CI::MetalContext::binaryArchiveCache(void)::cache);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v3)
    {
      v5 = *v17;
      *&v4 = 67109378;
      v14 = v4;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v16 + 1) + 8 * i);
          v8 = [v2 objectForKey:{v7, v14}];
          v9 = v8;
          if (v8)
          {
            v10 = [v8 count];
            if (v10)
            {
              v12 = ci_logger_render(v10, v11);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                v13 = (*(*this + 280))(this);
                *buf = v14;
                *&buf[4] = v13;
                v24 = 2114;
                v25 = v7;
                _os_log_impl(&dword_19CC36000, v12, OS_LOG_TYPE_INFO, "Context[%d] uses %{public}@ archive", buf, 0x12u);
              }

              *buf = [v9 objectForKeyedSubscript:@"bin"];
              std::vector<void const*>::push_back[abi:nn200100](&v20, buf);
            }
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v3);
    }

    objc_sync_exit(v2);
    memset(__p, 0, sizeof(__p));
    if (v21 != v20)
    {
      std::vector<void const*>::__vallocate[abi:nn200100](__p, (v21 - v20) >> 3);
    }

    CI::new_kernel_archive(__p);
  }
}

uint64_t CI::MetalContext::binaryArchiveCache(CI::MetalContext *this)
{
  if (CI::MetalContext::binaryArchiveCache(void)::onceToken != -1)
  {
    CI::MetalContext::load_archives();
  }

  return CI::MetalContext::binaryArchiveCache(void)::cache;
}

uint64_t ___ZN2CI12MetalContext18binaryArchiveCacheEv_block_invoke(uint64_t a1, uint64_t a2)
{
  result = objc_opt_new();
  CI::MetalContext::binaryArchiveCache(void)::cache = result;
  return result;
}

void std::vector<void const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void CI::MetalContext::add_archive(uint64_t (***this)(CI **), const __CFString *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (CI_ARCHIVE_USAGE_MODE())
  {
    if (CI::MetalContext::binaryArchiveCache(void)::onceToken != -1)
    {
      CI::MetalContext::load_archives();
    }

    v4 = CI::MetalContext::binaryArchiveCache(void)::cache;
    objc_sync_enter(CI::MetalContext::binaryArchiveCache(void)::cache);
    v5 = [v4 objectForKey:a2];
    objc_sync_exit(v4);
    if (v5)
    {
      v6 = [v5 count];
      if (v6)
      {
        v8 = ci_logger_render(v6, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = (*this)[35](this);
          *buf = 67109378;
          *&buf[4] = v9;
          LOWORD(v14) = 2114;
          *(&v14 + 2) = a2;
          _os_log_impl(&dword_19CC36000, v8, OS_LOG_TYPE_INFO, "Context[%d] uses %{public}@ archive", buf, 0x12u);
        }

        v10 = this[256];
        if (!v10)
        {
          *buf = 0;
          v14 = 0uLL;
          v12 = [v5 objectForKeyedSubscript:@"bin"];
          std::vector<void const*>::push_back[abi:nn200100](buf, &v12);
          memset(__p, 0, sizeof(__p));
          if (v14 != *buf)
          {
            std::vector<void const*>::__vallocate[abi:nn200100](__p, (v14 - *buf) >> 3);
          }

          CI::new_kernel_archive(__p);
        }

        CI::add_to_kernel_archive(v10, [v5 objectForKeyedSubscript:@"bin"]);
      }
    }
  }
}

void sub_19CE52AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CI::MetalContext::~MetalContext(CI::MetalContext *this, CI::PrecompiledKernels *a2)
{
  *this = &unk_1F1034140;
  *(this + 48) = &unk_1F10343D0;
  CI::delete_precompiled_kernels(*(this + 252));
  CI::delete_precompiled_kernels(*(this + 253));
  CI::delete_precompiled_uber_functions(*(this + 254), v3);
  CI::release_ci_dylib(*(this + 255), v4);
  CI::release_kernel_archive(*(this + 256), v5);
  *(this + 256) = 0;
  *(this + 253) = 0;
  *(this + 254) = 0;
  *(this + 252) = 0;
  v6 = *(this + 250);
  if (v6)
  {
    CFRelease(v6);
    *(this + 250) = 0;
  }

  v7 = 0;
  v8 = 1;
  do
  {
    v9 = 0;
    v10 = v8;
    v11 = 1;
    v12 = this + 32 * v7 + 1752;
    do
    {
      v13 = 0;
      v14 = v11;
      v15 = 1;
      v16 = &v12[16 * v9];
      do
      {
        v17 = v15;
        v18 = *&v16[8 * v13];
        if (v18)
        {
          CFRelease(v18);
          *&v16[8 * v13] = 0;
        }

        v15 = 0;
        v13 = 1;
      }

      while ((v17 & 1) != 0);
      v11 = 0;
      v9 = 1;
    }

    while ((v14 & 1) != 0);
    v8 = 0;
    v7 = 1;
  }

  while ((v10 & 1) != 0);
  v19 = *(this + 235);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(this + 49);
  if (v20)
  {
    CFRelease(v20);
    *(this + 49) = 0;
  }

  v21 = *(this + 236);
  if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  *(this + 236) = 0;
  v22 = *(this + 234);
  if (v22)
  {
    CFRelease(v22);
  }

  *(this + 234) = 0;
  v23 = *(this + 237);
  *(this + 237) = 0;
  if (v23)
  {
    CI::Object::unref(v23);
  }

  *(this + 48) = &unk_1F1034460;
  atomic_fetch_add(&dword_1ED7C47D8[76], 0xFFFFFFFF);

  CI::Context::~Context(this);
}

{
  CI::MetalContext::~MetalContext(this, a2);

  JUMPOUT(0x19EAF5590);
}

void sub_19CE52CF8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 1896);
  *(v1 + 1896) = 0;
  if (v3)
  {
    CI::Object::unref(v3);
  }

  *(v1 + 384) = &unk_1F1034460;
  atomic_fetch_add(&dword_1ED7C47D8[76], 0xFFFFFFFF);
  CI::Context::~Context(v1);
  _Unwind_Resume(a1);
}

void non-virtual thunk toCI::MetalContext::~MetalContext(CI::MetalContext *this, CI::PrecompiledKernels *a2)
{
  CI::MetalContext::~MetalContext((this - 384), a2);
}

{
  CI::MetalContext::~MetalContext((this - 384), a2);

  JUMPOUT(0x19EAF5590);
}

void *CI::MetalContext::protectionOptions(CI::MetalContext *this)
{
  result = *(this + 231);
  if (result)
  {
    return [result protectionOptions];
  }

  result = *(this + 233);
  if (result)
  {
    return [result protectionOptions];
  }

  return result;
}

const char *CI::MetalContext::deviceName(id *this)
{
  v1 = [objc_msgSend(this[49] "device")];
  if (!v1)
  {
    return "Unknown Metal Device";
  }

  return [v1 UTF8String];
}

uint64_t CI::MetalContext::priority(id *this)
{
  v1 = [this[49] getGPUPriority];
  if (v1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_19CF2C990[v1];
  }
}

unint64_t CI::MetalContext::available_allocation_size(CI::MetalContext *this)
{
  v2 = *(this + 235);
  if (v2)
  {
    return [v2 maxAvailableAllocationSize];
  }

  else
  {
    return CI::Context::available_allocation_size(this);
  }
}

__CFDictionary *CI::MetalContext::switch_dictionary(CI::MetalContext *this)
{
  result = *(this + 250);
  if (!result)
  {
    Mutable = CFDictionaryCreateMutable(0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(this + 250) = Mutable;
    v4 = CIMetalDeviceSupportsMPS([*(this + 49) device]);
    __CFDictionary::setValue(Mutable, @"kContextInfoSupportsMPS", v4, v5);
    __CFDictionary::setValue(*(this + 250), @"kContextInfoIsMetal", 1, v6);
    __CFDictionary::setValue(*(this + 250), @"kContextInfoWorkingFormat", *(this + 8));
    v8 = *(this + 3);
    result = *(this + 250);
    if (v8)
    {
      __CFDictionary::setValue(result, @"kContextInfoWorkingSpace", v8, v7);
      return *(this + 250);
    }
  }

  return result;
}

void CI::MetalContext::invalidate_switch_dictionary(CI::MetalContext *this)
{
  v2 = *(this + 250);
  if (v2)
  {
    CFRelease(v2);
    *(this + 250) = 0;
  }
}

void CI::MetalContext::waitForCompletion(CI::MetalContext *this)
{
  v2 = *(this + 231);
  if (v2)
  {
    v3 = v2 == *(this + 233);
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    CIMetalCommandBufferWaitUntilCompleted(v2);
    if (!*(this + 233))
    {
      v4 = *((*(*this + 112))(this) + 88);

      dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

void CI::MetalContext::after_render(CI::TextureManager **this, uint64_t a2)
{
  v3 = ci_signpost_log_render(this, a2);
  v4 = (*(*this + 35))(this) << 32;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(v9[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "after_render", &unk_19CFBCBAE, v9, 2u);
  }

  v5 = (*(*this + 35))(this);
  TimerBase::TimerBase(v9, v5, 0, "after_render", 8u);
  *(this + 231) = 0u;
  CI::TextureManager::remove_all(this[236]);
  v6 = this[236];
  if (CI_RECYCLE_METAL_TEXTURES())
  {
    v7 = CI_INTERMEDIATE_CACHE_SIZE();
  }

  else
  {
    v7 = 0;
  }

  (*(*v6 + 80))(v6, v7);
  CI::MetalContext::after_render(void)::SignpostTimer::~SignpostTimer(v9, v8);
}

void CI::MetalContext::after_render(void)::SignpostTimer::~SignpostTimer(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "after_render", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

uint64_t CI::MetalContext::compute_quad(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, unint64_t a11, unsigned int a12)
{
  v19 = CI_VERBOSE_SIGNPOSTS();
  if (v19)
  {
    v21 = ci_signpost_log_render(v19, v20);
    v22 = a2 | ((*(*a1 + 280))(a1) << 32);
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v22, "compute_quad", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v23 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(buf, v23, a2, "compute_quad", 0xEu);
  if (CI_NO_RENDER())
  {
    goto LABEL_6;
  }

  PipelineState = CI::MetalMainProgram::getPipelineState(a3, a2);
  if (!PipelineState || !*(a1 + 1816))
  {
    goto LABEL_22;
  }

  if ((*(*a3 + 88))(a3))
  {
    if (!*(a1 + 1824) || !*(a1 + 1832))
    {
      goto LABEL_22;
    }

    v26 = *((*(*a3 + 88))(a3) + 16);
  }

  else
  {
    v26 = 0;
  }

  if (!*a5)
  {
LABEL_22:
    v24 = 0;
    goto LABEL_23;
  }

  v27 = *(a1 + 1744);
  if (v27)
  {
    v28 = (a1 + 1488);
    while (*(v28 - 32) && *v28)
    {
      ++v28;
      if (!--v27)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_22;
  }

LABEL_20:
  if (*(a3 + 152) == 1)
  {
    v29 = (*(*a1 + 280))(a1);
    CIMetalRenderToImageblocks(v29, a2, *(a1 + 1848), PipelineState, *(a1 + 1816), *a4, a4[1], a7, a5, *(a1 + 1744), a1 + 1232, a1 + 1488, *(a3 + 56));
  }

  else
  {
    v44 = v26;
    v46[0] = a11;
    v46[1] = HIDWORD(a11);
    v46[2] = a12;
    v31 = (*(*a1 + 280))(a1);
    v32 = *(a1 + 1848);
    v33 = *(a1 + 1816);
    v34 = *(a1 + 1824);
    v35 = *(a1 + 1832);
    v36 = *a4;
    v37 = a4[1];
    v38 = *(a1 + 1744);
    v39 = *(a3 + 56);
    v45[0] = a9;
    v45[1] = HIDWORD(a9);
    if (HIDWORD(a11))
    {
      v40 = a12 == 0;
    }

    else
    {
      v40 = 1;
    }

    v41 = v40 || a11 == 0;
    v42 = v46;
    if (v41)
    {
      v42 = 0;
    }

    v45[2] = a10;
    CIMetalRenderToTextures(v31, a2, v32, PipelineState, v33, v34, v35, v44, v36, v37, a7, a5, a6, v38, a1 + 1232, a1 + 1488, v39, v45, v42);
  }

  if (!*(a1 + 1744))
  {
LABEL_6:
    v24 = 1;
    goto LABEL_23;
  }

  v43 = 0;
  do
  {
    CFRelease(*(a1 + 1232 + 8 * v43++));
    v24 = 1;
  }

  while (v43 < *(a1 + 1744));
LABEL_23:
  CI::MetalContext::compute_quad(CI::NodeIndex,CI::MetalMainProgram const*,CGSize const&,void const**,void const**,unsigned long,CI::Dimensions,CI::Dimensions)::SignpostTimer::~SignpostTimer(buf);
  return v24;
}

void sub_19CE535A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  CI::MetalContext::compute_quad(CI::NodeIndex,CI::MetalMainProgram const*,CGSize const&,void const**,void const**,unsigned long,CI::Dimensions,CI::Dimensions)::SignpostTimer::~SignpostTimer(va);
  _Unwind_Resume(a1);
}

void CI::MetalContext::compute_quad(CI::NodeIndex,CI::MetalMainProgram const*,CGSize const&,void const**,void const**,unsigned long,CI::Dimensions,CI::Dimensions)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_render(v2, v3);
    v5 = *(a1 + 1);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "compute_quad", &unk_19CFBCBAE, v7, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1, v3);
}

BOOL CI::MetalContext::set_texture_destination(uint64_t a1, CFTypeRef *a2, _OWORD *a3)
{
  v3 = *a2;
  if (*a2)
  {
    *(a1 + 1992) = 1;
    *(a1 + 1904) = *a3;
    v6 = *a2;
    if (*a2)
    {
      v6 = CFRetain(v6);
    }

    *(a1 + 1936) = v6;
    v7 = a2[1];
    if (v7)
    {
      *(a1 + 1944) = CFRetain(v7);
    }
  }

  return v3 != 0;
}

BOOL CI::MetalContext::set_texture_destination(uint64_t a1, void *aBlock, _OWORD *a3)
{
  if (aBlock)
  {
    *(a1 + 1992) = 1;
    *(a1 + 1904) = *a3;
    *(a1 + 1976) = _Block_copy(aBlock);
  }

  return aBlock != 0;
}

char *CI::MetalContext::set_surface_destination(char *result, __IOSurface *a2, __CVBuffer *a3, CGSize *a4, uint64_t a5)
{
  v6 = *a5;
  if (*a5)
  {
    v10 = result;
    *(result + 996) = 257;
    v26 = 2;
    if (CI::MetalContext::use_imageblocks_for_format(result, v6))
    {
      if (CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
      {
        v11 = 4;
      }

      else
      {
        v11 = 2;
      }

      v26 = v11;
    }

    *(v10 + 119) = *a4;
    if (*(a5 + 4))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 480) = *a5;
    v10[1924] = v12;
    if (CVPixelBufferGetIOSurface(a3) != a2)
    {
      a3 = 0;
    }

    if (IOSurfaceGetPlaneCount(a2) == 2)
    {
      v14 = CI::format_from_IOSurface(a2, v13);
      CI::format_is_ycc_biplanar(v14);
      v15 = 0;
      v16 = v10 + 1952;
      v17 = 1;
      do
      {
        v18 = v17;
        v19 = CI::format_of_plane(v14, v15);
        if (((*(*v10 + 432))(v10, v19) & 1) == 0)
        {
          LODWORD(v19) = CI::format_of_plane_old(v14, v15);
        }

        v20 = CIMetalFormatForFormat(v19, 0);
        WidthOfPlane = IOSurfaceGetWidthOfPlane(a2, v15);
        v27.height = IOSurfaceGetHeightOfPlane(a2, v15);
        v27.width = WidthOfPlane;
        v22 = CI::texture_from_pixelbuffer_cache(v10, a3, v20, v15, v27);
        if (v22)
        {
          *&v16[8 * v15] = v22;
          result = CVMetalTextureGetTexture(v22);
        }

        else
        {
          *&v16[8 * v15] = 0;
          result = CIMetalTextureCreateFromIOSurface(*(v10 + 251), [*(v10 + 49) device], a2, v15, v20, v26);
        }

        v17 = 0;
        *&v10[8 * v15 + 1936] = result;
        v15 = 1;
      }

      while ((v18 & 1) != 0);
    }

    else
    {
      v23 = CIMetalFormatForFormat(*a5, *(a5 + 4));
      v24 = v23;
      v25 = CI::texture_from_pixelbuffer_cache(v10, a3, v23, 0, *a4);
      if (v25)
      {
        *(v10 + 244) = v25;
        result = CVMetalTextureGetTexture(v25);
      }

      else
      {
        *(v10 + 244) = 0;
        result = CIMetalTextureCreateFromPaddedIOSurface(a4->width, a4->height, *(v10 + 251), [*(v10 + 49) device], a2, 0, v24, v26);
      }

      *(v10 + 242) = result;
    }
  }

  return result;
}

CVMetalTextureRef CI::texture_from_pixelbuffer_cache(CI *this, CI::MetalContext *a2, __CVBuffer *a3, unsigned int a4, CGSize a5)
{
  result = 0;
  if (a2)
  {
    if (this)
    {
      v7 = a3;
      if (a3)
      {
        v8 = *(this + 234);
        if (v8 && (height = a5.height, width = a5.width, CI::MetalContext::formatIsWritable(this, a3)) && ((PixelFormatType = CVPixelBufferGetPixelFormatType(a2), v15 = CI::format_from_CVPixelBuffer(a2, v14), is_packed = CI::format_is_packed(v15), PixelFormatType >> 24 == 124) || PixelFormatType >> 24 == 38 || (PixelFormatType & 0xFD000000) == 0x2D000000 || (is_packed & 1) == 0))
        {
          textureOut = 0;
          CVMetalTextureCacheCreateTextureFromImage(0, v8, a2, 0, v7, width, height, a4, &textureOut);
          return textureOut;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t CI::MetalContext::set_bitmap_destination(uint64_t a1, CI::Bitmap *a2, double *a3, int *a4, unint64_t a5)
{
  result = *a4;
  if (result)
  {
    *(a1 + 1992) = 0;
    v11 = CIMetalFormatForFormat(result, *(a4 + 4));
    v12 = a3[1];
    v13 = *a3 * a5;
    v14 = 2;
    if (CI::MetalContext::use_imageblocks_for_format(a1, *a4))
    {
      if (CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
      {
        v14 = 4;
      }

      else
      {
        v14 = 2;
      }
    }

    *(a1 + 1904) = *a3;
    if (*(a4 + 4))
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 1920) = *a4;
    *(a1 + 1924) = v15;
    if ((atomic_load_explicit(byte_1ED7C4548, memory_order_acquire) & 1) == 0)
    {
      CI::MetalContext::set_bitmap_destination();
    }

    v16 = *(a2 + 9);
    v17 = CI::Bitmap::length(a2);
    v18 = *(a2 + 12);
    v19 = _MergedGlobals_6 - 1;
    if ((_MergedGlobals_6 & (_MergedGlobals_6 - 1)) != 0)
    {
      if (v16 % _MergedGlobals_6 || v17 % _MergedGlobals_6)
      {
        goto LABEL_20;
      }
    }

    else if ((v19 & v16) != 0 || (v19 & v17) != 0)
    {
      goto LABEL_20;
    }

    if ((v18 & 0x3F) == 0 && v17 >= v18 * v12)
    {
      v20 = CIMetalBufferCreateAndWrapData(*(a1 + 2008), [*(a1 + 392) device], v16, v17);
      *(a1 + 1928) = v20;
      result = CIMetalTextureCreateFromBuffer(*(a1 + 2008), v20, v11, v13, v12, v18, v14);
LABEL_21:
      *(a1 + 1936) = result;
      return result;
    }

LABEL_20:
    result = CIMetalTextureCreate(*(a1 + 2008), [*(a1 + 392) device], v11, v13, v12, v14);
    goto LABEL_21;
  }

  return result;
}

CFIndex CI::Bitmap::length(CI::Bitmap *this)
{
  if (*(this + 5))
  {
    v2 = *(this + 5);

    return CFDataGetLength(v2);
  }

  else
  {
    v4 = *(this + 10);
    v5 = (*(this + 11) - 1) * *(this + 12);
    return v5 + v4 * CI::format_bytes_per_pixel(*(this + 26));
  }
}

double CI::MetalContext::unset_destination(CI::MetalContext *this)
{
  v2 = *(this + 233);
  if (v2)
  {
    CFRelease(v2);
    *(this + 233) = 0;
  }

  v3 = 0;
  v4 = this + 1936;
  v5 = this + 1952;
  v6 = 1;
  do
  {
    v7 = v6;
    if (*&v4[8 * v3])
    {
      if (*&v5[8 * v3])
      {
        v8 = *&v5[8 * v3];
      }

      else
      {
        v8 = *&v4[8 * v3];
      }

      CFRelease(v8);
      *&v5[8 * v3] = 0;
      *&v4[8 * v3] = 0;
    }

    v6 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = *(this + 241);
  if (v9)
  {
    CFRelease(v9);
    *(this + 241) = 0;
  }

  v10 = *(this + 246);
  if (v10)
  {
    CFRelease(v10);
    *(this + 246) = 0;
  }

  v11 = *(this + 247);
  if (v11)
  {
    _Block_release(v11);
  }

  *(this + 248) = 0;
  result = 0.0;
  *(this + 123) = 0u;
  *(this + 122) = 0u;
  *(this + 121) = 0u;
  *(this + 120) = 0u;
  *(this + 119) = 0u;
  return result;
}

void *CI::MetalContext::set_command_buffer(void *this, CFTypeRef cf)
{
  if (cf)
  {
    v2 = this;
    this = CFRetain(cf);
    v2[233] = this;
  }

  return this;
}

uint64_t CI::MetalContext::render_node(CI::MetalContext *this, CI::TileTask *a2, const CI::parentROI *a3, const CGRect *a4, const void **a5, const void **a6, __IOSurface **a7, uint64_t a8)
{
  v64 = *MEMORY[0x1E69E9840];
  v15 = *a3;
  v16 = CI::parentROI::roi(a3);
  v62.origin.x = v16;
  v62.origin.y = v17;
  v62.size.width = v18;
  v62.size.height = v19;
  if (!v15)
  {
    return 0;
  }

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  bzero(this + 1232, 0x100uLL);
  bzero(this + 1488, 0x100uLL);
  *(this + 218) = 0;
  v24 = *(v15 + 48);
  if ((*(*v24 + 16))(v24) >= 47 && (*(*v24 + 16))(v24) <= 49)
  {
    v25 = *(v15 + 48);
    if (*(v25 + 243) != 1 || (*(*v25 + 40))(*(v15 + 48)) < 1 || !*(this + 232))
    {
      return CI::Context::render_processor_node(this, a2, a3, [*a5 iosurface], *a5);
    }

    v26 = CI_VERBOSE_SIGNPOSTS();
    if (v26)
    {
      v28 = ci_signpost_log_render(v26, v27);
      v29 = v25[9] | ((*(*this + 280))(this) << 32);
      if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        v30 = (*(*v25 + 24))(v25);
        LODWORD(buf.a) = 138543362;
        *(&buf.a + 4) = v30;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v29, "processor_syncinputs", "%{public}@", &buf, 0xCu);
      }
    }

    v57 = (*(*this + 280))(this);
    TimerBase::TimerBase(&buf, v57, v25[9], "processor_syncinputs", 0);
    v58 = *(this + 232);
    if (v58 != *(this + 233))
    {
      CIMetalCommandBufferWaitUntilCompleted(v58);
      CI::MetalContext::render_node(CI::TileTask *,CI::parentROI const&,CGRect const&,void const**,void const**,__IOSurface **,unsigned long)::SignpostTimer::~SignpostTimer(&buf);
      return CI::Context::render_processor_node(this, a2, a3, [*a5 iosurface], *a5);
    }

    CI::MetalContext::render_node(CI::TileTask *,CI::parentROI const&,CGRect const&,void const**,void const**,__IOSurface **,unsigned long)::SignpostTimer::~SignpostTimer(&buf);
    return 0;
  }

  v31 = CI::ProgramNode::mainProgram(v15);
  if ((*(*v31 + 16))(v31) < 75 || (*(*v31 + 16))(v31) > 77)
  {
    return 0;
  }

  v65.origin.x = v20;
  v65.origin.y = v21;
  v65.size.width = v22;
  v65.size.height = v23;
  v66 = CGRectIntersection(v65, *a4);
  v61.size.width = v66.size.width;
  v61.size.height = v66.size.height;
  height = v66.size.height;
  v60 = vrndpq_f64(vdivq_f64(v66.size, vcvtq_f64_u64(*(v31 + 11))));
  if (*(v15 + 149) == 1)
  {
    MidY = CGRectGetMidY(*a4);
    buf.b = 0.0;
    buf.c = 0.0;
    buf.a = 1.0;
    *&buf.d = xmmword_19CF25100;
    buf.ty = MidY + MidY;
    v67.origin.x = v20;
    v67.origin.y = v21;
    v67.size.width = v22;
    v67.size.height = v23;
    v68 = CGRectApplyAffineTransform(v67, &buf);
    v66 = CGRectIntersection(v68, *a4);
    v61.size.width = v34;
    v61.size.height = -v35;
  }

  y = v66.origin.y;
  v61.origin = vsubq_f64(v66.origin, a4->origin);
  CI::MetalContext::bind_arguments(this, v15, &v62, &v61, &v60, a2);
  if (CI_LIMIT_RENDER())
  {
    __asm { FMOV            V0.2D, #1.0 }

    v60 = _Q0;
  }

  v42 = *(v15 + 48);
  if ((*(*v42 + 16))(v42) == 59)
  {
    v48 = *(v42 + 136);
    v44 = *(v42 + 144);
    v45 = *(v42 + 148);
    v46 = *(v42 + 156);
    v47 = v48 & 0xFFFFFFFF00000000;
    v48 = v48;
  }

  else
  {
    v49 = *(v15 + 48);
    if (!v49)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v50 = (*(*v49 + 16))(v49);
      v51 = *v49;
      if (v50 == 55)
      {
        break;
      }

      v49 = (*(v51 + 48))(v49, 0);
      if (!v49)
      {
        goto LABEL_22;
      }
    }

    if ((*(v51 + 424))(v49) == 59 || (*(*v49 + 424))(v49) == 57 || (*(*v49 + 424))(v49) == 60 || (*(*v49 + 424))(v49) == 58)
    {
      PipelineState = CI::MetalMainProgram::getPipelineState(v31, *(v15 + 36));
      if (([PipelineState threadExecutionWidth] & 0xF) == 0)
      {
        [PipelineState threadExecutionWidth];
      }

      v46 = 0;
      v45 = 0;
      v44 = 0;
      v47 = 0x1000000000;
      v48 = 16;
    }

    else
    {
LABEL_22:
      v46 = 0;
      v45 = 0;
      v44 = 0;
      v47 = 0;
      v48 = 0;
    }
  }

  v53 = CI::MetalContext::compute_quad(this, *(v15 + 36), v31, &v60.width, a5, a6, a8, v43, v48 | v47, v44, v45, v46);
  v54 = *(this + 227);
  if (v54)
  {
    CFRelease(v54);
    *(this + 227) = 0;
  }

  v55 = *(this + 228);
  if (v55)
  {
    CFRelease(v55);
    *(this + 228) = 0;
  }

  v56 = *(this + 229);
  if (v56)
  {
    CFRelease(v56);
    *(this + 229) = 0;
  }

  return v53;
}

void sub_19CE54434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  CI::MetalContext::render_node(CI::TileTask *,CI::parentROI const&,CGRect const&,void const**,void const**,__IOSurface **,unsigned long)::SignpostTimer::~SignpostTimer(va);
  _Unwind_Resume(a1);
}

void CI::MetalContext::render_node(CI::TileTask *,CI::parentROI const&,CGRect const&,void const**,void const**,__IOSurface **,unsigned long)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_render(v2, v3);
    v5 = *(a1 + 1);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "processor_syncinputs", &unk_19CFBCBAE, v7, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1, v3);
}

void CI::MetalContext::bind_arguments(CI::MetalContext *this, const CI::ProgramNode *a2, const CGRect *a3, const CGRect *a4, float64x2_t *a5, CI::TileTask *a6)
{
  v77 = *MEMORY[0x1E69E9840];
  v10 = CI_VERBOSE_SIGNPOSTS();
  if (v10)
  {
    v12 = ci_signpost_log_render(v10, v11);
    v13 = *(a2 + 9) | ((*(*this + 280))(this) << 32);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(buf.origin.x) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "bind_arguments", &unk_19CFBCBAE, &buf, 2u);
    }
  }

  v14 = (*(*this + 280))(this);
  TimerBase::TimerBase(v74, v14, *(a2 + 9), "bind_arguments", 0xBu);
  v15 = CI::ProgramNode::mainProgram(a2);
  if ((*(v15->isa + 2))(v15) >= 75 && (*(v15->isa + 2))(v15) < 78)
  {
    v16 = CIMetalBufferCreate(*(this + 251), [*(this + 49) device], (v15[14].isa + 15) & 0xFFFFFFFFFFFFFFF0);
    *(this + 227) = v16;
    if (v16)
    {
      v64 = [v16 contents];
      if (v64)
      {
        v17 = (*(v15->isa + 11))(v15);
        v18 = v17;
        if (v17)
        {
          v19 = v17[1];
          v21 = *v19;
          v20 = v19[1];
          *(this + 228) = CIMetalBufferCreate(*(this + 251), [*(this + 49) device], (((*v17)[1] + ~**v17) & 0xFFFFFFFFFFFFFFF0) + 16);
          v22 = CIMetalBufferCreate(*(this + 251), [*(this + 49) device], ((v20 + ~v21) & 0xFFFFFFFFFFFFFFF0) + 16);
          *(this + 229) = v22;
          if (!*(this + 228))
          {
            goto LABEL_74;
          }

          if (!v22)
          {
            goto LABEL_74;
          }

          v23 = [*(this + 228) contents];
          v24 = [*(this + 229) contents];
          if (!v23)
          {
            goto LABEL_74;
          }

          v25 = v24;
          if (!v24)
          {
            goto LABEL_74;
          }

          memcpy(v23, **v18, (*v18)[1] - **v18);
          memcpy(v25, *v18[1], v18[1][1] - *v18[1]);
        }

        *v64 = vcvt_hight_f32_f64(vcvt_f32_f64(a4->origin), a4->size);
        v26 = CI::MainProgram::num_arguments(v15);
        v27 = CI_VERBOSE_SIGNPOSTS();
        if (v27)
        {
          v29 = ci_signpost_log_render(v27, v28);
          v30 = *(a2 + 9) | ((*(*this + 280))(this) << 32);
          if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
          {
            LOWORD(buf.origin.x) = 0;
            _os_signpost_emit_with_name_impl(&dword_19CC36000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v30, "render_node_arguments", &unk_19CFBCBAE, &buf, 2u);
          }
        }

        v31 = (*(*this + 280))(this);
        TimerBase::TimerBase(&buf, v31, *(a2 + 9), "render_node_arguments", 0);
        dispatch_sync(*(a2 + 13), &__block_literal_global_61_0);
        v62 = *(a2 + 16);
        v32 = CI_VERBOSE_SIGNPOSTS();
        if (v32)
        {
          v34 = ci_signpost_log_render(v32, v33);
          y = buf.origin.y;
          if ((*&buf.origin.y - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v36 = v34;
            if (os_signpost_enabled(v34))
            {
              LOWORD(v72.origin.x) = 0;
              _os_signpost_emit_with_name_impl(&dword_19CC36000, v36, OS_SIGNPOST_INTERVAL_END, *&y, "render_node_arguments", &unk_19CFBCBAE, &v72, 2u);
            }
          }
        }

        TimerBase::~TimerBase(&buf, v33);
        if (v62)
        {
          if (*v62 == v26)
          {
            *(this + 218) = 0;
            if (v26 >= 1)
            {
              v37 = 0;
              v61 = v26;
              v38 = -80;
              v39 = -40;
              while (2)
              {
                v40 = (*(v15->isa + 5))(v15, v37);
                v41 = v40;
                if (v37 > 9)
                {
                  v42 = (*(v62 + 16) + v38);
                }

                else
                {
                  v42 = (v62 + 24 + 8 * v37);
                }

                isa = v15[15].isa;
                if (isa && v37 < *isa)
                {
                  if (v37 > 9)
                  {
                    v44 = (*(isa + 2) + v39);
                  }

                  else
                  {
                    v44 = &isa[v37 + 6];
                  }

                  v45 = *v44;
                }

                else
                {
                  v45 = -1;
                }

                v63 = v45;
                v46 = *v42;
                switch(v40)
                {
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                    if ((*(*v46 + 16))(v46) == 68)
                    {
                      CI::ProgramNode::roiKeys_of_child(&buf, a2, *a3, v46[8]);
                      if (CI::Context::bind_sampler(this, v46, *&buf.origin.x, *(this + 436), v41, a6))
                      {
                        ++*(this + 218);
                      }

                      if (*&buf.origin.x)
                      {
                        buf.origin.y = buf.origin.x;
                        operator delete(*&buf.origin.x);
                      }

                      goto LABEL_69;
                    }

                    break;
                  case 5:
                  case 6:
                  case 7:
                  case 8:
                  case 9:
                  case 10:
                  case 11:
                    if ((*(*v46 + 16))(v46) == 66)
                    {
                      goto LABEL_39;
                    }

                    break;
                  case 12:
                  case 13:
                  case 14:
                  case 15:
                  case 16:
                  case 17:
                  case 18:
                    if ((*(*v46 + 16))(v46) == 66)
                    {
                      CI::Vector::copy_to(v46, (v64 + v63));
                      goto LABEL_69;
                    }

                    break;
                  case 19:
                  case 23:
                    if ((*(*v46 + 16))(v46) == 66)
                    {
                      *(v64->i32 + v63) = *(v46 + 7);
                      goto LABEL_69;
                    }

                    break;
                  case 20:
                  case 24:
                    if ((*(*v46 + 16))(v46) == 66)
                    {
                      *(v64->f32 + v63) = vcvt_s32_f32(*(v46 + 7));
                      goto LABEL_69;
                    }

                    break;
                  case 21:
                  case 25:
                    if ((*(*v46 + 16))(v46) == 66)
                    {
                      v51 = (v64 + v63);
                      *v51 = vcvt_s32_f32(*(v46 + 7));
                      v51[1].i32[0] = *(v46 + 9);
                      goto LABEL_69;
                    }

                    break;
                  case 22:
                  case 26:
                    if ((*(*v46 + 16))(v46) == 66)
                    {
                      *(v64 + v63) = vcvtq_s32_f32(*(v46 + 7));
                      goto LABEL_69;
                    }

                    break;
                  case 27:
                    if ((*(*v46 + 16))(v46) == 66)
                    {
LABEL_39:
                      CI::Vector::copy_to(v46, (v64->f32 + v63));
                      goto LABEL_69;
                    }

                    break;
                  case 28:
                  case 29:
                    if ((*(*v46 + 16))(v46) == 65)
                    {
                      CI::Buffer::copy_to(v46, v64 + v63);
                      goto LABEL_69;
                    }

                    break;
                  case 37:
                  case 44:
                  case 45:
                    if ((*(*v46 + 16))(v46) == 66)
                    {
                      CI::Vector::affine(&v72.origin.x, v46);
                      v47 = a3->origin.x - a4->origin.x;
                      v48 = a3->origin.y - a4->origin.y;
                      v70 = v72;
                      *&v71 = *&v73 + v72.origin.x * v47 + v72.size.width * v48;
                      *(&v71 + 1) = *(&v73 + 1) + v72.origin.y * v47 + v72.size.height * v48;
                      if (v41 == 37)
                      {
                        CI::Affine::inverse(&buf, &v70);
                        v70 = buf;
                        v71 = v76;
                      }

                      *&v69.a = v70.origin;
                      *&v69.c = v70.size;
                      *&v69.tx = v71;
                      v49 = CI::Vector::Vector(&buf, &v69);
                      v50 = (v64 + v63);
                      CI::Vector::copy_to(v49, (v64->f32 + v63));
                      if (v41 != 44)
                      {
                        v50[6] = vcvt_f32_f64(vcvtq_f64_u64(*&v15[11].isa));
                        v50[7] = vcvt_f32_f64(*a5);
                      }

                      *&buf.size.width = &unk_1F1033F70;
                      goto LABEL_68;
                    }

                    break;
                  case 40:
                    if ((*(*v46 + 16))(v46) == 68)
                    {
                      memset(&v72, 0, sizeof(v72));
                      v72.origin.x = CI::Node::region_of_child(a2, *a3);
                      v72.origin.y = v52;
                      v72.size.width = v53;
                      v72.size.height = v54;
                      CI::TextureSampler::transform(&v68, v46, this, &v72);
                      v55 = CI::Vector::Vector(&buf, &v68);
                      CI::Vector::copy_to(v55, (v64->f32 + v63));
                      goto LABEL_67;
                    }

                    break;
                  case 41:
                    if ((*(*v46 + 16))(v46) == 68)
                    {
                      memset(&v70, 0, sizeof(v70));
                      v70.origin.x = CI::Node::region_of_child(a2, *a3);
                      v70.origin.y = v56;
                      v70.size.width = v57;
                      v70.size.height = v58;
                      CI::TextureSampler::transform(&v72, v46, this, &v70);
                      *&v67.a = v72.origin;
                      *&v67.c = v72.size;
                      *&v67.tx = v73;
                      v59 = CI::Vector::Vector(&buf, &v67);
                      CI::Vector::copy_to(v59, (v64->f32 + v63));
                      *&buf.size.width = &unk_1F1033F70;
                      atomic_fetch_add(&dword_1ED7C47D8[57], 0xFFFFFFFF);
                      v60 = CI::Vector::Vector(&buf, *(v46 + 22));
                      CI::Vector::copy_to(v60, (v64[3].f32 + v63));
LABEL_67:
                      *&buf.size.width = &unk_1F1033F70;
LABEL_68:
                      atomic_fetch_add(&dword_1ED7C47D8[57], 0xFFFFFFFF);
                      goto LABEL_69;
                    }

                    break;
                  case 42:
                  case 43:
                  case 46:
                  case 47:
                    goto LABEL_69;
                  default:
                    x_log("Unhandled type: %d\n", v40);
LABEL_69:
                    ++v37;
                    v38 += 8;
                    v39 += 4;
                    if (v61 == v37)
                    {
                      break;
                    }

                    continue;
                }

                break;
              }
            }
          }
        }
      }
    }
  }

LABEL_74:
  CI::MetalContext::bind_arguments(CI::ProgramNode const*,CGRect const&,CGRect const&,CGSize const&,CI::TileTask *)::SignpostTimer::~SignpostTimer(v74);
}

void sub_19CE55020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  CI::MetalContext::bind_arguments(CI::ProgramNode const*,CGRect const&,CGRect const&,CGSize const&,CI::TileTask *)::SignpostTimer::~SignpostTimer(va);
  _Unwind_Resume(a1);
}

void CI::MetalContext::render_root_node(uint64_t a1, CI::TileTask *a2, CI::parentROI *this, uint64_t a4, uint64_t a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = *this;
  v11 = CI::parentROI::roi(this);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(v10 + 48);
  if ((*(*v18 + 16))(v18) < 47 || (*(*v18 + 16))(v18) >= 50)
  {
    v21 = CI_VERBOSE_SIGNPOSTS();
    if (v21)
    {
      v23 = ci_signpost_log_render(v21, v22);
      v24 = *(v10 + 36) | ((*(*a1 + 280))(a1) << 32);
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v24, "render_node_mainProgram", &unk_19CFBCBAE, buf, 2u);
      }
    }

    v25 = (*(*a1 + 280))(a1);
    TimerBase::TimerBase(buf, v25, *(v10 + 36), "render_node_mainProgram", 0);
    v19 = CI::ProgramNode::mainProgram(v10);
    v27 = v26;
    (*(v19->isa + 2))(v19);
    if ((*(v19->isa + 2))(v19) >= 78)
    {
      v28 = 0;
    }

    else
    {
      v28 = v19;
    }

    v20 = v27;
    *&v28[4].isa = v27;
    CI::MetalContext::render_root_node(CI::TileTask *,CI::parentROI const&,void({block_pointer})(void),void({block_pointer})(void))::SignpostTimer::~SignpostTimer(buf);
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
  }

  v29 = CI_VERBOSE_SIGNPOSTS();
  if (v29)
  {
    v31 = ci_signpost_log_render(v29, v30);
    v32 = *(v10 + 36) | ((*(*a1 + 280))(a1) << 32);
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      v34 = CI::Context::programName(v10, v33);
      *buf = 68289026;
      v56 = 256;
      v57 = 2082;
      v58 = v34;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v32, "render_node", "%{public}.256s", buf, 0x12u);
    }
  }

  v35 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(buf, v35, *(v10 + 36), "render_node", 0);
  *(a1 + 1856) = *(a1 + 1848);
  v36 = *(v10 + 48);
  v37 = (*(*v36 + 16))(v36) < 47 || (*(*v36 + 16))(v36) > 49;
  if (!CI_ENABLE_METAL_DEBUG() || *(a1 + 1864) || (v49 = *(v10 + 48), (*(*v49 + 16))(v49) >= 47) && (*(*v49 + 16))(v49) < 50)
  {
    v39 = 0;
  }

  else
  {
    v39 = v54;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = ___ZN2CI12MetalContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke;
    v54[3] = &__block_descriptor_48_e11_v24__0Q8Q16l;
    v54[4] = a2;
    v54[5] = v10;
  }

  v40 = *(a1 + 1864);
  if (!v40)
  {
    v40 = CIMetalCommandBufferCreate(*(a1 + 2008), *(a1 + 392), v37, v39);
  }

  *(a1 + 1848) = v40;
  v41 = *(a1 + 1976);
  if (v41)
  {
    (*(v41 + 16))(&cf);
    x = cf.origin.x;
    if (*&cf.origin.x)
    {
      x = COERCE_DOUBLE(CFRetain(*&cf.origin.x));
    }

    *(a1 + 1936) = x;
  }

  cf.origin.x = 0.0;
  cf.origin.y = 0.0;
  cf.size = *(a1 + 1904);
  *(a1 + 1984) = CI::MetalContext::render_node(a1, a2, this, &cf, (a1 + 1936), (a1 + 1952), v38, 2);
  if (*(a1 + 1968))
  {
    [*(a1 + 1848) presentDrawable:?];
  }

  v43 = *(a1 + 1848) == *(a1 + 1864);
  v44 = CI::ProgramNode::program_name(v10);
  v60.origin.x = v11;
  v60.origin.y = v13;
  v60.size.width = v15;
  v60.size.height = v17;
  CI::TileTask::addROIForNode(a2, v10, v60);
  if (v19)
  {
    CI::TileTask::incrementCompileWaitTimeForNode(a2, v10, v20);
    v45 = COERCE_DOUBLE(atomic_load(&v19[3]));
    CI::TileTask::setCompileTimeForNode(a2, v10, *&v19[5].isa + v45);
  }

  if (a2)
  {
    CI::Object::ref(a2);
  }

  if (*(a1 + 1864))
  {
    (*(a4 + 16))(a4);
  }

  else
  {
    v46 = *(a1 + 1848);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = ___ZN2CI12MetalContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_2;
    v52[3] = &unk_1E75C35F0;
    v52[4] = a4;
    [v46 addScheduledHandler:v52];
  }

  v47 = *(a1 + 1848);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = ___ZN2CI12MetalContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_3;
  v50[3] = &unk_1E75C4B58;
  v51 = v43;
  v50[6] = v44;
  v50[7] = v10;
  v50[4] = a5;
  v50[5] = a2;
  CIMetalCommandBufferAddCompletionHandler(v47, v50);
  if ((*(a1 + 1992) & 1) == 0 && !*(a1 + 1928))
  {
    CIMetalCommandBufferSynchronizeTexture();
  }

  v48 = *(a1 + 1848);
  if (v48 != *(a1 + 1864))
  {
    CIMetalCommandBufferCommit(v48);
  }

  CI::MetalContext::render_root_node(CI::TileTask *,CI::parentROI const&,void({block_pointer})(void),void({block_pointer})(void))::SignpostTimer::~SignpostTimer(buf);
}

void sub_19CE557F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  CI::MetalContext::render_root_node(CI::TileTask *,CI::parentROI const&,void({block_pointer})(void),void({block_pointer})(void))::SignpostTimer::~SignpostTimer(va);
  _Unwind_Resume(a1);
}

void CI::MetalContext::render_root_node(CI::TileTask *,CI::parentROI const&,void({block_pointer})(void),void({block_pointer})(void))::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_render(v2, v3);
    v5 = *(a1 + 1);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "render_node_mainProgram", &unk_19CFBCBAE, v7, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1, v3);
}

{
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_render(v2, v3);
    v5 = *(a1 + 1);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "render_node", &unk_19CFBCBAE, v7, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1, v3);
}

void ___ZN2CI12MetalContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CI::TileTask::incrementCyclesForNode(*(a1 + 32), *(a1 + 40), a2);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  CI::TileTask::incrementNanoSecForNode(v5, v6, a3);
}

uint64_t ___ZN2CI12MetalContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_3(uint64_t a1, void *a2)
{
  if ([a2 status] == 5)
  {
    v4 = *(a1 + 40);
    v5 = [a2 error];
  }

  else
  {
    v6 = internalError(a2);
    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 40);
    v5 = internalError(a2);
  }

  CI::TileTask::setCommandBufferError(v4, v5);
LABEL_6:
  if ((CI_PRINT_TIME(v6, v7) & 0x100) != 0)
  {
    if (*(a1 + 64) == 1)
    {
      CIMetalCommandBufferGetGPUTime(a2);
      x_log("CI_PRINT_TIME [GPU] command buffer (%p) = %.1f ms\n");
    }

    else
    {
      CIMetalCommandBufferGetGPUTime(a2);
      x_log("CI_PRINT_TIME [GPU] root program (%s) = %.1f ms\n");
    }
  }

  CIMetalCommandBufferGetGPUTime(a2);
  CI::TileTask::incrementTimeForNode(*(a1 + 40), *(a1 + 56), v8);
  v9 = *(a1 + 40);
  *(v9 + 40) = CFAbsoluteTimeGetCurrent();
  v10 = *(a1 + 40);
  if (v10)
  {
    CI::Object::unref(v10);
  }

  v11 = *(*(a1 + 32) + 16);

  return v11();
}

void CI::MetalContext::render_intermediate_node(CI::MetalContext *a1, CI::TileTask *a2, CI::parentROI *this, uint64_t a4, int a5, uint64_t a6)
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = *this;
  v12 = CI::parentROI::roi(this);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(v11 + 48);
  if ((*(*v19 + 16))(v19) < 47 || (*(*v19 + 16))(v19) >= 50)
  {
    v22 = CI_VERBOSE_SIGNPOSTS();
    if (v22)
    {
      v24 = ci_signpost_log_render(v22, v23);
      v25 = *(v11 + 36) | ((*(*a1 + 280))(a1) << 32);
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v25, "render_node_mainProgram", &unk_19CFBCBAE, buf, 2u);
      }
    }

    v26 = (*(*a1 + 280))(a1);
    TimerBase::TimerBase(buf, v26, *(v11 + 36), "render_node_mainProgram", 0);
    v20 = CI::ProgramNode::mainProgram(v11);
    v28 = v27;
    (*(v20->isa + 2))(v20);
    if ((*(v20->isa + 2))(v20) >= 78)
    {
      v29 = 0;
    }

    else
    {
      v29 = v20;
    }

    v21 = v28;
    *&v29[4].isa = v28;
    CI::MetalContext::render_intermediate_node(CI::TileTask *,CI::parentROI const&,CI::intermediate_t *,BOOL,void({block_pointer})(void))::SignpostTimer::~SignpostTimer(buf);
  }

  else
  {
    v20 = 0;
    v21 = 0.0;
  }

  v30 = CI_VERBOSE_SIGNPOSTS();
  if (v30)
  {
    v32 = ci_signpost_log_render(v30, v31);
    v33 = *(v11 + 36) | ((*(*a1 + 280))(a1) << 32);
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      v35 = CI::Context::programName(v11, v34);
      *buf = 68289026;
      v53 = 256;
      v54 = 2082;
      v55 = v35;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v33, "render_node", "%{public}.256s", buf, 0x12u);
    }
  }

  v36 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(buf, v36, *(v11 + 36), "render_node", 0);
  if (a4)
  {
    *(a1 + 232) = *(a1 + 231);
    v37 = *(v11 + 48);
    v38 = (*(*v37 + 16))(v37) < 47 || (*(*v37 + 16))(v37) > 49;
    if (!CI_ENABLE_METAL_DEBUG() || *(a1 + 233) || (v42 = *(v11 + 48), (*(*v42 + 16))(v42) >= 47) && (*(*v42 + 16))(v42) < 50)
    {
      v39 = 0;
    }

    else
    {
      v39 = v49;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = ___ZN2CI12MetalContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke;
      v49[3] = &__block_descriptor_48_e11_v24__0Q8Q16l;
      v49[4] = a2;
      v49[5] = v11;
    }

    v40 = *(a1 + 233);
    if (a5)
    {
      if (v40)
      {
        v41 = [v40 commandQueue];
      }

      else
      {
        v41 = *(a1 + 49);
      }

      v40 = CIMetalCommandBufferCreate(*(a1 + 251), v41, v38, v39);
    }

    else if (!v40)
    {
      v40 = CIMetalCommandBufferCreate(*(a1 + 251), *(a1 + 49), v38, v39);
    }

    *(a1 + 231) = v40;
    (*(*a4 + 24))(&v48, a4);
    (**a4)(a4);
    v51 = v48;
    v50[0] = 0;
    v50[1] = 0;
    v43 = (*(*a4 + 32))(a4);
    if (*(&v48 + 1))
    {
      v45 = 2;
    }

    else
    {
      v45 = 1;
    }

    CI::MetalContext::render_node(a1, a2, this, v43, &v51, v50, v44, v45);
    CI::ProgramNode::program_name(v11);
    v57.origin.x = v12;
    v57.origin.y = v14;
    v57.size.width = v16;
    v57.size.height = v18;
    CI::TileTask::addROIForNode(a2, v11, v57);
    if (v20)
    {
      CI::TileTask::incrementCompileWaitTimeForNode(a2, v11, v21);
      v46 = COERCE_DOUBLE(atomic_load(&v20[3]));
      CI::TileTask::setCompileTimeForNode(a2, v11, *&v20[5].isa + v46);
    }

    if (a2)
    {
      CI::Object::ref(a2);
    }

    operator new();
  }

  CI::MetalContext::render_intermediate_node(CI::TileTask *,CI::parentROI const&,CI::intermediate_t *,BOOL,void({block_pointer})(void))::SignpostTimer::~SignpostTimer(buf);
}

void sub_19CE56240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  CI::MetalContext::render_intermediate_node(CI::TileTask *,CI::parentROI const&,CI::intermediate_t *,BOOL,void({block_pointer})(void))::SignpostTimer::~SignpostTimer(va);
  _Unwind_Resume(a1);
}

void CI::MetalContext::render_intermediate_node(CI::TileTask *,CI::parentROI const&,CI::intermediate_t *,BOOL,void({block_pointer})(void))::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_render(v2, v3);
    v5 = *(a1 + 1);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "render_node_mainProgram", &unk_19CFBCBAE, v7, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1, v3);
}

{
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_render(v2, v3);
    v5 = *(a1 + 1);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "render_node", &unk_19CFBCBAE, v7, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1, v3);
}

void ___ZN2CI12MetalContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CI::TileTask::incrementCyclesForNode(*(a1 + 32), *(a1 + 40), a2);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  CI::TileTask::incrementNanoSecForNode(v5, v6, a3);
}

uint64_t ___ZN2CI12MetalContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if ([a2 status] == 5)
  {
    v5 = *(a1 + 48);
    v6 = [a2 error];
  }

  else
  {
    v7 = internalError(a2);
    if (!v7)
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 48);
    v6 = internalError(a2);
  }

  CI::TileTask::setCommandBufferError(v5, v6);
LABEL_6:
  if ((*(a1 + 80) & 1) == 0)
  {
    if ((CI_PRINT_TIME(v7, v8) & 0x100) != 0)
    {
      v9 = *(a1 + 56);
      CIMetalCommandBufferGetGPUTime(a2);
      x_log("CI_PRINT_TIME [GPU] intermediate program (%s) = %.1f ms\n", v9, v10 * 1000.0);
    }

    CIMetalCommandBufferGetGPUTime(a2);
    CI::TileTask::incrementTimeForNode(*(a1 + 48), *(a1 + 64), v11);
  }

  v12 = (*(*v4 + 112))(v4);
  (*(*v12 + 88))(v12, *(a1 + 72));
  v13 = *(a1 + 72);
  if (v13)
  {
    v16 = *(a1 + 72);
    std::vector<CI::Texture>::__destroy_vector::operator()[abi:nn200100](&v16);
    MEMORY[0x19EAF5590](v13, 0x20C40960023A9);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    CI::Object::unref(v14);
  }

  return (*(*(a1 + 32) + 16))();
}

void CI::MetalContext::readback_bitmap(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = ci_signpost_log_render(a1, a2);
  v5 = (*(*a1 + 280))(a1) << 32;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = a2[10];
    v7 = a2[11];
    v11 = 134218240;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "readback_bitmap", "[%zu %zu]", &v11, 0x16u);
  }

  v8 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(&v11, v8, 0, "readback_bitmap", 7u);
  v10 = *(a1 + 1848);
  if (v10 != *(a1 + 1864))
  {
    CIMetalCommandBufferWaitUntilCompleted(v10);
    if (a2)
    {
      if (!*(a1 + 1928) && *(a1 + 1984) == 1)
      {
        CIMetalTextureGetBytes(*(a1 + 1936), a2[9], a2[12]);
      }
    }
  }

  CI::MetalContext::readback_bitmap(CI::Bitmap *,CI::output_swizzle_info)::SignpostTimer::~SignpostTimer(&v11, v9);
}

void CI::MetalContext::readback_bitmap(CI::Bitmap *,CI::output_swizzle_info)::SignpostTimer::~SignpostTimer(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "readback_bitmap", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

BOOL CI::MetalContext::formatIsReadable(id *this, unsigned int a2)
{
  v4 = a2;
  if (a2 > 0x2FF || (v5 = *(this + a2 + 460), !*(this + a2 + 460)))
  {
    [this[49] device];
    MTLPixelFormatGetInfoForDevice();
    v5 = 0;
    if (a2 <= 0x2FF)
    {
      *(this + v4 + 460) = 0;
    }
  }

  return v5 == 114 || v5 == 119;
}

BOOL CI::MetalContext::formatIsWritable(id *this, unsigned int a2)
{
  v4 = a2;
  if (a2 > 0x2FF || (v5 = *(this + a2 + 460), !*(this + a2 + 460)))
  {
    [this[49] device];
    MTLPixelFormatGetInfoForDevice();
    v5 = 0;
    if (a2 <= 0x2FF)
    {
      *(this + v4 + 460) = 0;
    }
  }

  return v5 == 119;
}

uint64_t CI::MetalContext::format_is_directly_supported_for_input(id *a1, uint64_t a2)
{
  if (CI::format_is_ycc_biplanar(a2))
  {
    v4 = CI::format_of_plane(a2, 0);
    v5 = 1;
    v6 = CI::format_of_plane(a2, 1);
    LODWORD(v4) = (*(*a1 + 54))(a1, v4);
    v7 = (*(*a1 + 54))(a1, v6);
    if (!v4 || (v7 & 1) == 0)
    {
      v8 = CI::format_of_plane_old(a2, 0);
      v9 = CI::format_of_plane_old(a2, 1);
      LODWORD(v8) = (*(*a1 + 54))(a1, v8);
      return v8 & (*(*a1 + 54))(a1, v9);
    }

    return v5;
  }

  v5 = 1;
  if (a2 > 1796)
  {
    if (a2 <= 2308)
    {
      if ((a2 - 1797) <= 3 && a2 != 1799 || (a2 - 2053) <= 3 && a2 != 2055)
      {
        return v5;
      }
    }

    else
    {
      if (a2 <= 2568)
      {
        if ((a2 - 2309) <= 3 && a2 != 2311)
        {
          return v5;
        }

        if (a2 != 2567)
        {
          return 0;
        }

        goto LABEL_31;
      }

      if (a2 <= 3080)
      {
        if (a2 == 2569 || a2 == 3079)
        {
          goto LABEL_31;
        }
      }

      else if (a2 == 3081 || a2 == 4616 || a2 == 4360)
      {
        goto LABEL_31;
      }
    }

    return 0;
  }

  if (a2 <= 531)
  {
    if ((a2 - 257) <= 0x14 && ((1 << (a2 - 1)) & 0x1802B1) != 0)
    {
      return v5;
    }

    return 0;
  }

  if (a2 <= 783)
  {
    if ((a2 - 532) < 2)
    {
      return v5;
    }

    v10 = a2 - 773;
    goto LABEL_30;
  }

  if ((a2 - 784) >= 2)
  {
    v10 = a2 - 1285;
LABEL_30:
    if (v10 < 2)
    {
      goto LABEL_31;
    }

    return 0;
  }

LABEL_31:
  v11 = CIMetalFormatForFormat(a2, 0);

  return CI::MetalContext::formatIsReadable(a1, v11);
}

uint64_t CI::MetalContext::format_is_directly_supported_for_output(id *a1, int a2)
{
  result = 1;
  if (a2 <= 1297)
  {
    if (a2 <= 772)
    {
      if ((a2 - 261) > 0x11)
      {
        goto LABEL_7;
      }

      v4 = 1 << (a2 - 5);
      if ((v4 & 0x2B) != 0)
      {
        return result;
      }

      if ((v4 & 0x22000) == 0)
      {
LABEL_7:
        if (a2 != 530 && a2 != 534)
        {
          return 0;
        }
      }

      goto LABEL_28;
    }

    if (a2 > 785)
    {
      if ((a2 - 1285) >= 2)
      {
        if (a2 != 786 && a2 != 1042)
        {
          return 0;
        }

LABEL_28:

        return CI::MetalContext::use_imageblocks_for_format(a1, a2);
      }
    }

    else if ((a2 - 773) >= 2 && (a2 - 784) >= 2)
    {
      return 0;
    }

    goto LABEL_38;
  }

  if (a2 > 2308)
  {
    if (a2 > 2566)
    {
      if (a2 > 3078)
      {
        if (a2 != 3081 && a2 != 3079)
        {
          return 0;
        }
      }

      else if (a2 != 2567 && a2 != 2569)
      {
        return 0;
      }

LABEL_38:
      v6 = CIMetalFormatForFormat(a2, 0);

      return CI::MetalContext::formatIsWritable(a1, v6);
    }

    v5 = a2 - 2309;
  }

  else
  {
    if (a2 <= 2052)
    {
      if ((a2 - 1797) <= 3 && a2 != 1799)
      {
        return result;
      }

      if (a2 != 1298 && a2 != 1554)
      {
        return 0;
      }

      goto LABEL_28;
    }

    v5 = a2 - 2053;
  }

  if (v5 > 3 || v5 == 2)
  {
    return 0;
  }

  return result;
}

uint64_t CI::MetalContext::bind_cgimage(void ***a1, CGImage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v10 = CI::MetalTextureManager::texture_for_CGImage(a1[236], a2, a3);
  v11 = (*a1)[10];

  return (v11)(a1, v10, a4, a5, 0, a6);
}

uint64_t CI::MetalContext::bind_surface(uint64_t *a1, __IOSurface *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (!a2)
  {
    return 0;
  }

  v14 = CI::MetalTextureManager::texture_for_IOSurface(a1[236], a2, a9, a3);
  v15 = *(*a1 + 80);

  return v15(a1, v14, a5, a6, a7, a8);
}

uint64_t CI::MetalContext::bind_texture(uint64_t a1, CFTypeRef cf, int a3, int a4, unsigned int a5, int a6)
{
  if (!cf)
  {
    return 0;
  }

  result = 0;
  if (a3 <= 1 && a3 != -1)
  {
    result = 0;
    if (a4 <= 1 && a4 != -1)
    {
      v11 = a1 + 8 * a6;
      *(v11 + 1232) = cf;
      CFRetain(cf);
      *(v11 + 1488) = *(a1 + 32 * a3 + 16 * a4 + 8 * a5 + 1752);
      return 1;
    }
  }

  return result;
}

void CI::MetalContext::bind_arguments(CI::ProgramNode const*,CGRect const&,CGRect const&,CGSize const&,CI::TileTask *)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_render(v2, v3);
    v5 = *(a1 + 1);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "bind_arguments", &unk_19CFBCBAE, v7, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1, v3);
}

BOOL CI::MetalContext::supports_sRGB_texture_for_format(id *this, int a2, int a3)
{
  v3 = a2 - 261;
  if ((a2 - 261) > 5 || ((0x2Bu >> v3) & 1) == 0)
  {
    return 0;
  }

  v5 = dword_19CF2C9A4[v3];
  if (a3 != 1)
  {
    if (a3 == 2 || a3 == 3 && CI::MetalContext::formatIsReadable(this, dword_19CF2C9A4[v3]))
    {

      return CI::MetalContext::formatIsWritable(this, v5);
    }

    return 0;
  }

  v7 = dword_19CF2C9A4[v3];

  return CI::MetalContext::formatIsReadable(this, v7);
}

void *CI::MetalContext::blitTexture(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a4;
  v7 = *(a4 + 4);
  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  if (*a4 == -2147483647)
  {
    if (v7 != -2147483647 || v9 != 0xFFFFFFFFLL || v8 != 0xFFFFFFFFLL)
    {
      goto LABEL_21;
    }

    v13 = MEMORY[0x1E695F040];
  }

  else
  {
    if (v6 != 0x7FFFFFFF || v7 != 0x7FFFFFFF || v9 != 0 || v8 != 0)
    {
LABEL_21:
      v16 = v6;
      v17 = v7;
      goto LABEL_24;
    }

    v13 = MEMORY[0x1E695F050];
  }

  v16 = *v13;
  v17 = v13[1];
LABEL_24:
  v18 = *a6;
  v19 = *(a6 + 4);
  v20 = *(a6 + 8);
  v21 = *(a6 + 16);
  if (*a6 == -2147483647)
  {
    if (v19 != -2147483647 || v20 != 0xFFFFFFFF || v21 != 0xFFFFFFFF)
    {
      goto LABEL_44;
    }

    v25 = MEMORY[0x1E695F040];
LABEL_46:
    v28 = *v25;
    v29 = v25[1];
    v30 = v25[2];
    v31 = v25[3];
    return CIMetalCommandBufferCopyTexture(a2, *a3, *a5, v16, v17, v28, v29, v30, v31);
  }

  if (v18 == 0x7FFFFFFF && v19 == 0x7FFFFFFF && v20 == 0 && v21 == 0)
  {
    v25 = MEMORY[0x1E695F050];
    goto LABEL_46;
  }

LABEL_44:
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  return CIMetalCommandBufferCopyTexture(a2, *a3, *a5, v16, v17, v28, v29, v30, v31);
}

BOOL CI::MetalContext::blitSurface(uint64_t a1, __IOSurface *a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v11 = CIMetalFormatForFormat(*a6, *(a6 + 4));
  v12 = CIMetalTextureCreateFromIOSurface(*(a1 + 2008), [*(a1 + 392) device], a2, 0, v11, 2);
  if (v12)
  {
    v13 = CIMetalCommandBufferCreate(*(a1 + 2008), *(a1 + 392), 0, 0);
    v21 = v12;
    v22 = 0;
    v19 = *a3;
    v20 = *(a3 + 2);
    (*(*a4 + 24))(v18, a4);
    v16 = *a5;
    v17 = *(a5 + 2);
    (*(*a1 + 632))(a1, v13, &v21, &v19, v18, &v16);
    v18[0] = 0;
    v18[1] = 0;
    v21 = 0;
    v22 = 0;
    CFRelease(v12);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZNK2CI12MetalContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke;
    v15[3] = &__block_descriptor_48_e28_v16__0___MTLCommandBuffer__8l;
    v15[4] = a1;
    v15[5] = a4;
    CIMetalCommandBufferAddCompletionHandler(v13, v15);
    CIMetalCommandBufferCommit(v13);
  }

  return v12 != 0;
}

void ___ZNK2CI12MetalContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 32) + 112))(*(a1 + 32));
  v3 = *(a1 + 40);

  CI::TextureManager::complete_intermediate(v2, 60, v3);
}

uint64_t CI::MetalContext::max_render_load_bytes(CI::MetalContext *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    return v1 << 20;
  }

  else
  {
    return 0x8000000;
  }
}

uint64_t CI::MetalContext::max_device_memory(CI::MetalContext *this)
{
  result = *(this + 56);
  if (!result)
  {
    return *(this + 55);
  }

  return result;
}

uint64_t CI::MetalContext::supports_sample_mode(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    return CI::format_is_full_float(a3) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t CI::MetalContext::supported_compute_features(CI::MetalContext *this)
{
  if (*(this + 458))
  {
    v1 = 13;
  }

  else
  {
    v1 = 5;
  }

  if (*(this + 459))
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v1;
}

double CI::MetalContext::sampler_transform_for_extent@<D0>(const CGRect *a1@<X1>, double *a2@<X8>)
{
  y = a1->origin.y;
  v3 = 1.0 / a1->size.height;
  v4 = a1->origin.x * -0.0 - y * v3 + 0.0;
  v5 = 1.0 / a1->size.width;
  v6 = y * -0.0 - a1->origin.x * v5;
  *a2 = v5 + 0.0;
  a2[1] = v3 * 0.0 + 0.0;
  a2[2] = v5 * 0.0 + 0.0;
  a2[3] = v3 + 0.0;
  result = v6 + 0.0;
  a2[4] = result;
  a2[5] = v4;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::vector<void const*>::__vallocate[abi:nn200100](void *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<CI::Texture>::__emplace_back_slow_path<CI::Texture>(void *a1, _OWORD *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Texture>>(a1, v7);
  }

  __p = 0;
  v13 = (16 * v2);
  v15 = 0;
  *v13 = *a2;
  v14 = 16 * v2 + 16;
  std::vector<CI::Texture>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  v9 = v13;
  while (1)
  {
    v10 = v14;
    if (v14 == v9)
    {
      break;
    }

    v14 -= 16;
    *(v10 - 16) = 0;
    *(v10 - 8) = 0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void std::vector<CI::Texture>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = a2[1] - (v5 - v4);
  if (v5 != v4)
  {
    v8 = v4;
    v9 = (a2[1] - (v5 - v4));
    do
    {
      v10 = *v8;
      v8 += 16;
      *v9++ = v10;
    }

    while (v8 != v5);
    bzero(v4, (v5 - v4) & 0xFFFFFFFFFFFFFFF0);
  }

  a2[1] = v7;
  v11 = *a1;
  *a1 = v7;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Texture>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::vector<CI::Texture>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      bzero(&v4[-((v4 - v2) & 0xFFFFFFFFFFFFFFF0)], (v4 - v2) & 0xFFFFFFFFFFFFFFF0);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void *std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::unordered_set<void const*>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(a1, i + 2, i + 2);
  }

  return a1;
}

void *CI::InstanceCounted<(CI::Type)75>::~InstanceCounted(void *result)
{
  *result = &unk_1F1034438;
  atomic_fetch_add(&dword_1ED7C47D8[66], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)75>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1034438;
  atomic_fetch_add(&dword_1ED7C47D8[66], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)85>::~InstanceCounted(void *result)
{
  *result = &unk_1F1034460;
  atomic_fetch_add(&dword_1ED7C47D8[76], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)85>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1034460;
  atomic_fetch_add(&dword_1ED7C47D8[76], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

const __CFString *CI::Context::AbortIfUnhandledError(const __CFString *this, const __CFString *a2)
{
  if (this)
  {
    v2 = CFStringFind(this, @"Render failed because of failure to allocate intermediate.", 1uLL);
    this = v2.location;
    if (v2.length)
    {
      abort();
    }
  }

  return this;
}

uint64_t CI::Context::render_completion_queue(CI::Context *this)
{
  if (CI::Context::render_completion_queue(void)::onceToken != -1)
  {
    CI::Context::render_completion_queue();
  }

  return CI::Context::render_completion_queue(void)::sRenderCompletionQueue;
}

uint64_t ___ZN2CI7Context23render_completion_queueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  CI::Context::render_completion_queue(void)::sRenderCompletionQueue = dispatch_queue_create("CI::RenderCompletionQueue", v0);
  if ((CI_PRINT_TREE_dump_intermediates() & 1) != 0 || (result = CI_PRINT_TREE_dump_outputs(), result))
  {

    return atexit_b(&__block_literal_global_5_3);
  }

  return result;
}

void CI::Context::Context(CI::Context *this, const CI::Context *a2)
{
  *(this + 2) = 1;
  *this = &unk_1F10344E8;
  *(this + 9) = 0;
  *(this + 41) = 1;
  *(this + 36) = atomic_fetch_add(&CI::gContextCounter, 1u) + 1;
  *(this + 19) = 0;
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 16);
  *(this + 10) = *MEMORY[0x1E695F050];
  *(this + 11) = v3;
  *(this + 24) = 0;
  *(this + 216) = v3;
  *(this + 200) = v2;
  *(this + 58) = 1;
  *(this + 252) = 0u;
  *(this + 236) = 0u;
  *(this + 268) = 0u;
  *(this + 284) = 0u;
  *(this + 300) = 1;
  *(this + 86) = 0;
  v4 = *(a2 + 45);
  *(this + 44) = 0;
  *(this + 45) = v4;
  *(this + 23) = *(a2 + 23);
  operator new();
}

void CI::Context::Context(uint64_t a1, CGColorSpace *a2, CGColorSpace *a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10344E8;
  *(a1 + 32) = a4;
  *(a1 + 36) = 0;
  *(a1 + 41) = 1;
  add = atomic_fetch_add(&CI::gContextCounter, 1u);
  v12 = *MEMORY[0x1E695F050];
  v11 = *(MEMORY[0x1E695F050] + 16);
  *(a1 + 236) = 0u;
  *(a1 + 144) = add + 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = v12;
  *(a1 + 176) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = v12;
  *(a1 + 216) = v11;
  *(a1 + 232) = 1;
  *(a1 + 252) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 300) = 1;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = a7;
  *(a1 + 368) = a6;
  *(a1 + 376) = a8;
  operator new();
}

uint64_t CI::Context::defaultWorkingSpace(CI::Context *this)
{
  if (CI::Context::defaultWorkingSpace(void)::didCreate != -1)
  {
    CI::Context::Context();
  }

  return CI::Context::defaultWorkingSpace(void)::space;
}

void CI::Context::~Context(CGColorSpaceRef *this)
{
  *this = &unk_1F10344E8;
  CGColorSpaceRelease(this[2]);
  this[2] = 0;
  CGColorSpaceRelease(this[3]);
  this[3] = 0;
  CGContextRelease(this[6]);
  this[6] = 0;
  *(this + 236) = 0;
  v2 = this[44];
  if (v2)
  {
    CI::Object::unref(v2);
  }

  this[44] = 0;
  v3 = this[38];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE5clearEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_112;
  v11[4] = v3;
  Queue::execute_async(v3 + 7, v11);
  v4 = (*(*this + 35))(this);
  RemoveCacheEntriesForContext(v4);
  v5 = this[38];
  if (v5)
  {
    v6 = CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::~ObjectCache(v5);
    MEMORY[0x19EAF5590](v6, 0x10E0C40C1366CD6);
  }

  v7 = this[39];
  if (v7)
  {
    v8 = CI::ObjectCache<CI::Node,unsigned long long,false>::~ObjectCache(v7);
    MEMORY[0x19EAF5590](v8, 0x10E0C40C1366CD6);
  }

  v9 = this[40];
  if (v9)
  {
    v10 = CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::~ObjectCache(v9);
    MEMORY[0x19EAF5590](v10, 0x10E0C40C1366CD6);
  }
}

uint64_t CI::Context::set_client_name(uint64_t this, CFStringRef theString)
{
  if (theString)
  {
    return CFStringGetCString(theString, (this + 236), 64, 0x8000100u);
  }

  *(this + 236) = 0;
  return this;
}

void CI::Context::clear_caches(CI::Context *this)
{
  v2 = *(this + 39);
  v6 = MEMORY[0x1E69E9820];
  v7 = 0x40000000;
  v8 = ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE5clearEv_block_invoke;
  v9 = &__block_descriptor_tmp_110;
  v10 = v2;
  Queue::execute_async((v2 + 56), &v6);
  v3 = *(this + 40);
  v6 = MEMORY[0x1E69E9820];
  v7 = 0x40000000;
  v8 = ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE5clearEv_block_invoke;
  v9 = &__block_descriptor_tmp_111_0;
  v10 = v3;
  Queue::execute_async((v3 + 56), &v6);
  v4 = *(this + 38);
  v6 = MEMORY[0x1E69E9820];
  v7 = 0x40000000;
  v8 = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE5clearEv_block_invoke;
  v9 = &__block_descriptor_tmp_112;
  v10 = v4;
  Queue::execute_async((v4 + 56), &v6);
  v5 = (*(*this + 280))(this);
  RemoveCacheEntriesForContext(v5);
}

void CI::Context::setPriority(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = ci_logger_render(a1, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_19CC36000, v2, OS_LOG_TYPE_INFO, "Context does not support non-default priority", v3, 2u);
    }
  }
}

uint64_t CI::Context::createDestination(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = *a3;
  v45 = *(*a3 + 140);
  v8 = v45;
  if (!v45)
  {
    LODWORD(v45) = a4;
    v8 = a4;
  }

  if ((*(*v7 + 16))(v7) == 60)
  {
    v9 = CI::Node::rois(v7);
    if (CI::Node::rois_count(v7) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *v9 + 120 * v10;
        v12 = *(v11 + 32);
        v13 = *(v11 + 40);
        while (v12 != v13)
        {
          v14 = *(*v12 + 48);
          if ((*(*v14 + 16))(v14) >= 47 && (*(*v14 + 16))(v14) < 50)
          {
            goto LABEL_14;
          }

          v12 += 48;
        }

        ++v10;
      }

      while (v10 < CI::Node::rois_count(v7));
    }
  }

  v15 = *(v7 + 6);
  if ((*(*v15 + 16))(v15) < 47 || (*(*v15 + 16))(v15) >= 50)
  {
    if ((*(**(v7 + 6) + 16))(*(v7 + 6)) == 51)
    {
      v16 = 1;
    }

    else
    {
      v16 = 64;
    }
  }

  else
  {
LABEL_14:
    v16 = 1;
  }

  v17 = CI::PixelFormatType_from_format(v8);
  CI::Node::roi(*a3, a3[2]);
  v19 = v18;
  CI::Node::roi(*a3, a3[2]);
  SurfaceMemorySize = CreateSurfaceMemorySize(v19, v20, 0x20uLL, v17);
  if (SurfaceMemorySize > (*(*a1 + 128))(a1))
  {
    v22 = CI_VERBOSE_SIGNPOSTS();
    if (v22)
    {
      v24 = ci_signpost_log_render(v22, v23);
      v25 = *(*a3 + 36) | ((*(*a1 + 280))(a1) << 32);
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        LOWORD(v41) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v25, "wait_for_cache", &unk_19CFBCBAE, &v41, 2u);
      }
    }

    v26 = (*(*a1 + 280))(a1);
    TimerBase::TimerBase(&v41, v26, *(*a3 + 36), "wait_for_cache", 0x13u);
    (*(*a1 + 104))(a1);
    v27 = CI_VERBOSE_SIGNPOSTS();
    if (v27)
    {
      v29 = ci_signpost_log_render(v27, v28);
      v30 = v42;
      if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v31 = v29;
        if (os_signpost_enabled(v29))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v31, OS_SIGNPOST_INTERVAL_END, v30, "wait_for_cache", &unk_19CFBCBAE, buf, 2u);
        }
      }
    }

    TimerBase::~TimerBase(&v41, v28);
  }

  do
  {
    if (SurfaceMemorySize <= (*(*a1 + 128))(a1))
    {
      break;
    }

    v32 = (*(*a1 + 112))(a1);
  }

  while (CI::TextureManager::releaseDeepIntermediate(v32));
  v33 = CI::Node::rois(*a3);
  v34 = (*(*v33 + 120 * a3[2] + 40) - *(*v33 + 120 * a3[2] + 32)) >> 4;
  v35 = (*(**a3 + 400))(*a3);
  v41 = CI::Node::roi(*a3, a3[2]);
  v42 = v36;
  v43 = v37;
  v44 = v38;
  v39 = (*(*a2 + 56))(a2, &v45, v35, &v41, v16, 0xAAAAAAAAAAAAAAABLL * v34 + 1, 0);
  CI::TextureManager::add_intermediate_for_node(a2, a3, v39);
  return v39;
}

void CI::Context::recursive_render(char *a1, CI::TileTask *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v170 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (!*a3)
  {
    return;
  }

  v6 = a3;
  v9 = CI::Node::roi(*a3, *(a3 + 8));
  v11 = v10;
  v13 = v12;
  v15 = v14;
  rect.origin.x = v9;
  rect.origin.y = v10;
  rect.size.width = v12;
  rect.size.height = v14;
  v16 = (*(*a1 + 112))(a1);
  v155 = *(v5 + 140);
  if (!v155)
  {
    LODWORD(v155) = *(a1 + 8);
  }

  v17 = v6[2];
  if (!a4)
  {
    goto LABEL_10;
  }

  v171.origin.x = v9;
  v171.origin.y = v11;
  v171.size.width = v13;
  v171.size.height = v15;
  if (CGRectIsEmpty(v171))
  {
    if ((atomic_load_explicit(byte_1ED7C4558, memory_order_acquire) & 1) == 0)
    {
      CI::Context::recursive_render(v16);
    }

    v18 = _MergedGlobals_7;
    goto LABEL_13;
  }

  if ((*(**(*v6 + 48) + 16))(*(*v6 + 48)) == 51)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_13;
  }

  v19 = CI::Node::rois(v5);
  v20 = (*(*v19 + 120 * v17 + 40) - *(*v19 + 120 * v17 + 32)) >> 4;
  v21 = (*(*v5 + 400))(v5);
  v18 = (*(*v16 + 56))(v16, &v155, v21, &rect, 1, 0xAAAAAAAAAAAAAAABLL * v20 + 1, 1);
  if (v18)
  {
    *__p = v5;
    *&__p[8] = v17;
    CI::TextureManager::add_intermediate_for_node(v16, __p, v18);
  }

LABEL_13:
  if ((*(**(v5 + 6) + 16))(*(v5 + 6)) == 47)
  {
    v22 = *(v5 + 6);
    v23 = v22[243] == 1 && (*(*v22 + 40))(v22) > 0;
    a5 |= v23;
  }

  v24 = *(a2 + 3);
  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 0x40000000;
  v154[2] = ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke;
  v154[3] = &__block_descriptor_tmp_9_1;
  v112 = v24;
  v154[4] = v24;
  v25 = CI::Node::rois(v5);
  v153 = 0;
  v151 = 0;
  v152 = 0;
  if ((v17 & 0x80000000) == 0)
  {
    v26 = *v25 + 120 * v17;
    v27 = *(v26 + 80);
    v28 = *(v26 + 16);
    *__p = *v26;
    *&__p[16] = v28;
    CI::SerialRectArray::recurseSubdivide(__p, v27, &v151);
    v29 = v151;
    if (v152 != v151)
    {
      v127 = 0;
      v115 = v18;
      v116 = a1;
      v113 = v18;
      v121 = v6;
      v122 = v5;
      v30 = v16;
      v117 = a2;
      v120 = v17;
      do
      {
        v126 = 0;
        v31 = 0;
        do
        {
          v125 = v31;
          if (a4 || ((v152 - v151) >> 5) - 1 != v127)
          {
            v32 = dispatch_group_create();
          }

          else
          {
            dispatch_retain(*(a2 + 2));
            v32 = *(a2 + 2);
          }

          v150[0] = MEMORY[0x1E69E9820];
          v150[1] = 0x40000000;
          v150[2] = ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke_2;
          v150[3] = &__block_descriptor_tmp_10_0;
          object = v32;
          v150[4] = v32;
          v149[0] = 0;
          v149[1] = 0;
          v148 = v149;
          v147[0] = 0;
          v147[1] = 0;
          v146 = v147;
          v33 = (*(*v5 + 40))(v5);
          if (v33)
          {
            v34 = v33;
            v35 = 0;
            do
            {
              CI::ProgramNode::roiKeys_of_child(__p, v5, *(v151 + v127), v35);
              v144 = (*&__p[8] - *__p) >> 4;
              std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(&v146, &v144, &v144);
              v36 = v125;
              if ((*&__p[8] - *__p) >> 4 > v125)
              {
                v36 = (*&__p[8] - *__p) >> 4;
              }

              v125 = v36;
              if (*__p)
              {
                *&__p[8] = *__p;
                operator delete(*__p);
              }

              v35 = (v35 + 1);
            }

            while (v34 != v35);
          }

          v123 = (*(*v5 + 40))(v5);
          if (v123)
          {
            v37 = 0;
            do
            {
              v38 = v6[2];
              *__p = v5;
              *&__p[8] = v38;
              *&__p[12] = v127;
              *&__p[16] = v37;
              *&__p[20] = v126;
              *&__p[24] = 0;
              *&v158 = 0;
              DWORD2(v158) = 0;
              CI::ProgramNode::roiKeys_of_child(&v144, v5, *(v151 + v127), v37);
              v39 = v144;
              v128 = v145;
              if (v144 != v145)
              {
                do
                {
                  *v138 = *v39;
                  v40 = v138[0];
                  v41 = CI::Node::rois(v138[0]);
                  CI::SerialRectArray::restore(v41, v138[1], __p);
                  v42 = CI::Node::rois(v40);
                  v43 = *v42 + 120 * SLODWORD(v138[1]);
                  v45 = *(v43 + 32);
                  v44 = *(v43 + 40);
                  while (v45 != v44)
                  {
                    v46 = ~vaddvq_s32(vandq_s8(vceqq_s32(*&__p[8], *(v45 + 8)), xmmword_19CF26630)) & 0xF;
                    v47 = *v45 == *__p && v46 == 0;
                    if (v47)
                    {
                      *buf = v138[0];
                      *&buf[8] = v138[1];
                      operator new();
                    }

                    v45 += 48;
                  }

                  ++v39;
                }

                while (v39 != v128);
                v39 = v144;
              }

              if (v39)
              {
                v145 = v39;
                operator delete(v39);
              }

              v37 = (v37 + 1);
              v6 = v121;
              v5 = v122;
            }

            while (v37 != v123);
          }

          a2 = v117;
          if (!v115)
          {
            v48 = v148;
            if (v148 != v149)
            {
              do
              {
                v172.origin.x = CI::Node::roi(v48[4], *(v48 + 10));
                if (!CGRectIsEmpty(v172))
                {
                  v49 = (*(*v48[4] + 16))(v48[4]);
                  if ((CI::is_image_type(v49) & 1) == 0 && !CI::TextureManager::get_intermediate_for_node(v16, (v48 + 4)))
                  {
                    CI::Context::recursive_render(v116, v117, (v48 + 4), v5, a5);
                  }
                }

                v50 = v48[1];
                if (v50)
                {
                  do
                  {
                    v51 = v50;
                    v50 = *v50;
                  }

                  while (v50);
                }

                else
                {
                  do
                  {
                    v51 = v48[2];
                    v47 = *v51 == v48;
                    v48 = v51;
                  }

                  while (!v47);
                }

                v48 = v51;
              }

              while (v51 != v149);
            }
          }

          v52 = CI_VERBOSE_SIGNPOSTS();
          if (v52)
          {
            v54 = ci_signpost_log_render(v52, v53);
            v55 = *(v5 + 9) | ((*(*v116 + 280))(v116) << 32);
            if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
            {
              *__p = 134218752;
              *&__p[4] = rect.origin.x;
              *&__p[12] = 2048;
              *&__p[14] = rect.origin.y;
              *&__p[22] = 2048;
              *&__p[24] = rect.size.width;
              LOWORD(v158) = 2048;
              *(&v158 + 2) = rect.size.height;
              _os_signpost_emit_with_name_impl(&dword_19CC36000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v55, "render_quad", "[%g %g %g %g]", __p, 0x2Au);
            }
          }

          v56 = (*(*v116 + 280))(v116);
          TimerBase::TimerBase(&v144, v56, *(v5 + 9), "render_quad", 6u);
          v138[0] = v5;
          v138[1] = __PAIR64__(v127, v120);
          v139 = -1;
          v140 = v126;
          v141 = 0;
          v142 = 0;
          v143 = 0;
          CI::Object::ref(v116);
          v173.origin.x = CI::parentROI::roi(v138);
          IsEmpty = CGRectIsEmpty(v173);
          if (IsEmpty)
          {
            v59 = ci_logger_render(IsEmpty, v58);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              *__p = 0;
              _os_log_impl(&dword_19CC36000, v59, OS_LOG_TYPE_INFO, "Skipping render as subdivision code computed an empty ROI", __p, 2u);
            }

            v60 = object;
            goto LABEL_122;
          }

          if (a4)
          {
            v60 = object;
            if ((atomic_load_explicit(byte_1ED7C4568, memory_order_acquire) & 1) == 0)
            {
              CI::Context::recursive_render(v16);
            }

            CI::findProxyProgram(v6, &v136);
            intermediate_for_node = v113;
            if (v113)
            {
              goto LABEL_97;
            }

            if ((*(**(*v6 + 48) + 16))(*(*v6 + 48)) == 51)
            {
              intermediate_for_node = CI::TextureManager::get_intermediate_for_node(v16, v6);
              if (!intermediate_for_node)
              {
                goto LABEL_94;
              }

LABEL_97:
              v113 = intermediate_for_node;
              if ((*(*intermediate_for_node + 8))(intermediate_for_node))
              {
                if ((*(**(*v6 + 48) + 16))(*(*v6 + 48)) != 51 && !*(v117 + 23))
                {
                  dispatch_retain(v60);
                  dispatch_group_enter(v60);
                  (*(*v116 + 48))(v116, v117, v138, v113, a5, v150);
                  if ((CI_PRINT_TREE_dump_intermediates() & 1) != 0 || (CI_PRINT_TREE_dump_raw_intermediates() & 1) != 0 || CI_PRINT_TREE_dump_bmtl_intermediates())
                  {
                    v75 = (*(*v116 + 280))(v116);
                    v76 = CI_PRINT_TREE_context(v75, v116 + 236);
                    if (v76)
                    {
                      v78 = CI_PRINT_TREE_frame(v76, v77);
                      if (*(v116 + 19) == v78 || !CI_PRINT_TREE_frame(v78, v79))
                      {
                        v129 = *(v5 + 9);
                        v80 = (*(*v113 + 32))(v113);
                        v81 = *v80;
                        v82 = v80[1];
                        v83 = v80[2];
                        v84 = v80[3];
                        v85 = (**v113)(v113);
                        RetainSurfaceFromCache(v85);
                        RetainSurfaceFromCache(v85);
                        if (CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::onceToken != -1)
                        {
                          CI::Context::recursive_render();
                        }

                        is_deep = CI::format_is_deep(*(v5 + 35));
                        v87 = CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::sRGBLinear;
                        v88 = CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::sRGB;
                        if (CI::ProgramNode::mainProgram(v5))
                        {
                          isa = CI::ProgramNode::mainProgram(v5)[7].isa;
                        }

                        else
                        {
                          isa = 0;
                        }

                        *buf = 0;
                        *&buf[8] = buf;
                        v131 = 0x2000000000;
                        if (isa)
                        {
                          v90 = isa;
                        }

                        else
                        {
                          v90 = "intermediate";
                        }

                        v132 = strdup(v90);
                        dispatch_retain(object);
                        if (CI::Context::render_completion_queue(void)::onceToken != -1)
                        {
                          CI::Context::recursive_render();
                        }

                        if (is_deep)
                        {
                          v91 = v87;
                        }

                        else
                        {
                          v91 = v88;
                        }

                        *__p = MEMORY[0x1E69E9820];
                        *&__p[8] = 0x40000000;
                        *&__p[16] = ___ZN2CIL26dump_intermediate_for_nodeEPKNS_11ProgramNodeEPKNS_14intermediate_tEP16dispatch_group_s_block_invoke_2;
                        *&__p[24] = &unk_1E75C4E28;
                        v165 = v129;
                        v166 = v81;
                        v167 = v82;
                        v168 = v83;
                        v169 = v84;
                        v159 = v85;
                        v160 = v91;
                        v161 = v81;
                        v162 = v82;
                        v163 = v83;
                        v164 = v84;
                        v60 = object;
                        *(&v158 + 1) = object;
                        *&v158 = buf;
                        dispatch_async(CI::Context::render_completion_queue(void)::sRenderCompletionQueue, __p);
                        _Block_object_dispose(buf, 8);
                        v5 = v122;
                        v16 = v30;
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v62 = CI_VERBOSE_SIGNPOSTS();
              if (v62)
              {
                v64 = ci_signpost_log_render(v62, v63);
                v65 = *(v5 + 9) | ((*(*v116 + 280))(v116) << 32);
                if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
                {
                  *__p = 0;
                  _os_signpost_emit_with_name_impl(&dword_19CC36000, v64, OS_SIGNPOST_INTERVAL_BEGIN, v65, "create_intermediate", &unk_19CFBCBAE, __p, 2u);
                }
              }

              v66 = (*(*v116 + 280))(v116);
              TimerBase::TimerBase(__p, v66, *(v5 + 9), "create_intermediate", 9u);
              if (!CI::PixelFormatType_from_format(v155))
              {
                CI::Context::recursive_render();
              }

              if (CGRectIsEmpty(rect) || CGRectIsInfinite(rect))
              {
                CI::Context::recursive_render(&rect.size.width, &rect.size.height);
              }

              v68 = v136;
              v67 = v137;
              if (v137 == v136)
              {
                Destination = CI::Context::createDestination(v116, v16, v6, *(v116 + 8));
              }

              else
              {
                do
                {
                  v69 = *v68++;
                  *buf = v69;
                  CI::Context::createDestination(v116, v16, buf, *(v116 + 8));
                }

                while (v68 != v67);
                Destination = qword_1ED7C4560;
              }

              v70 = CI_VERBOSE_SIGNPOSTS();
              if (v70)
              {
                v72 = ci_signpost_log_render(v70, v71);
                v73 = *&__p[8];
                if ((*&__p[8] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v74 = v72;
                  if (os_signpost_enabled(v72))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_19CC36000, v74, OS_SIGNPOST_INTERVAL_END, v73, "create_intermediate", &unk_19CFBCBAE, buf, 2u);
                  }
                }
              }

              TimerBase::~TimerBase(__p, v71);
              v60 = object;
              intermediate_for_node = Destination;
              if (Destination)
              {
                goto LABEL_97;
              }

LABEL_94:
              if (!dyld_program_sdk_at_least())
              {
                intermediate_for_node = 0;
                goto LABEL_97;
              }

              CI::TileTask::setTaskError(v117, @"Render failed because of failure to allocate intermediate.");
              v113 = 0;
            }

            if (v136)
            {
              v137 = v136;
              operator delete(v136);
            }

            goto LABEL_122;
          }

          v60 = object;
          if (!*(v117 + 23))
          {
            dispatch_retain(object);
            dispatch_group_enter(object);
            dispatch_retain(v112);
            v60 = object;
            dispatch_group_enter(v112);
            (*(*v116 + 40))(v116, v117, v138, v154, v150);
          }

LABEL_122:
          dispatch_retain(v60);
          if (CI::Context::render_completion_queue(void)::onceToken != -1)
          {
            CI::Context::recursive_render();
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke_11;
          block[3] = &__block_descriptor_tmp_12_1;
          block[4] = v60;
          block[5] = v116;
          dispatch_async(CI::Context::render_completion_queue(void)::sRenderCompletionQueue, block);
          v92 = CI_VERBOSE_SIGNPOSTS();
          if (v92)
          {
            v94 = ci_signpost_log_render(v92, v93);
            v95 = *(v5 + 9) | ((*(*v116 + 280))(v116) << 32);
            if (v95 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
            {
              *__p = 0;
              _os_signpost_emit_with_name_impl(&dword_19CC36000, v94, OS_SIGNPOST_INTERVAL_BEGIN, v95, "remove_parentROI", &unk_19CFBCBAE, __p, 2u);
            }
          }

          v96 = (*(*v116 + 280))(v116);
          TimerBase::TimerBase(__p, v96, *(v5 + 9), "remove_parentROI", 0);
          v97 = v148;
          if (v148 != v149)
          {
            do
            {
              CI::TextureManager::remove_from_pending(v16, (v97 + 4));
              v98 = (*(*v5 + 48))(v5, *(v97 + 12));
              v99 = *(v97 + 12);
              *buf = v5;
              *&buf[8] = v120;
              *&buf[12] = v127;
              v131 = __PAIR64__(v126, v99);
              v132 = 0;
              v133 = 0;
              v134 = 0;
              CI::Node::remove_parentROI(v98, buf, v97 + 4, v16, object);
              v100 = v97[1];
              if (v100)
              {
                do
                {
                  v101 = v100;
                  v100 = *v100;
                }

                while (v100);
              }

              else
              {
                do
                {
                  v101 = v97[2];
                  v47 = *v101 == v97;
                  v97 = v101;
                }

                while (!v47);
              }

              v97 = v101;
            }

            while (v101 != v149);
          }

          v102 = CI_VERBOSE_SIGNPOSTS();
          if (v102)
          {
            v104 = ci_signpost_log_render(v102, v103);
            v105 = *&__p[8];
            if ((*&__p[8] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v106 = v104;
              if (os_signpost_enabled(v104))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_19CC36000, v106, OS_SIGNPOST_INTERVAL_END, v105, "remove_parentROI", &unk_19CFBCBAE, buf, 2u);
              }
            }
          }

          TimerBase::~TimerBase(__p, v103);
          dispatch_release(object);
          v107 = CI_VERBOSE_SIGNPOSTS();
          if (v107)
          {
            v109 = ci_signpost_log_render(v107, v108);
            v110 = v145;
            if (v145 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v111 = v109;
              if (os_signpost_enabled(v109))
              {
                *__p = 0;
                _os_signpost_emit_with_name_impl(&dword_19CC36000, v111, OS_SIGNPOST_INTERVAL_END, v110, "render_quad", &unk_19CFBCBAE, __p, 2u);
              }
            }
          }

          ++v126;
          TimerBase::~TimerBase(&v144, v108);
          std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v146, v147[0]);
          std::__tree<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey,CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::compareDepth,std::allocator<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey>>::destroy(v149[0]);
          v31 = v125 - 1;
        }

        while (v125 > 1);
        v29 = v151;
        ++v127;
      }

      while (v127 < (v152 - v151) >> 5);
    }

    if (v29)
    {
      v152 = v29;
      operator delete(v29);
    }
  }
}

uint64_t *std::unique_ptr<CI::intermediate_t>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  return a1;
}

void ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke_2(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void CI::SerialRectArray::restore(CI::SerialRectArray *this, int a2, const CI::parentROI *a3)
{
  v3 = *this + 120 * a2;
  v5 = *(v3 + 56);
  v4 = *(v3 + 64);
  v6 = v3 + 56;
  while (v5 != v4)
  {
    if (*v5 == *a3 && *(a3 + 4) == v5[4] && *(a3 + 3) == v5[3] && *(a3 + 2) == v5[2])
    {
      v10 = (*this + 120 * a2);
      v11 = v10[5];
      v12 = v10[6];
      if (v11 >= v12)
      {
        v16 = v10[4];
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v16) >> 4);
        v18 = v17 + 1;
        if (v17 + 1 > 0x555555555555555)
        {
          std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v16) >> 4);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x2AAAAAAAAAAAAAALL)
        {
          v20 = 0x555555555555555;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<CI::parentROI>>((v10 + 4), v20);
        }

        v21 = 48 * v17;
        v22 = *v5;
        v23 = *(v5 + 2);
        *(v21 + 16) = *(v5 + 1);
        *(v21 + 32) = v23;
        *v21 = v22;
        v15 = 48 * v17 + 48;
        v24 = v10[4];
        v25 = v10[5] - v24;
        v26 = 48 * v17 - v25;
        memcpy((v21 - v25), v24, v25);
        v27 = v10[4];
        v10[4] = v26;
        v10[5] = v15;
        v10[6] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        v13 = *v5;
        v14 = *(v5 + 2);
        v11[1] = *(v5 + 1);
        v11[2] = v14;
        *v11 = v13;
        v15 = (v11 + 3);
      }

      v10[5] = v15;
      v28 = *(v6 + 8);
      v29 = v28 - (v5 + 12);
      if (v28 != (v5 + 12))
      {
        memmove(v5, v5 + 12, v28 - (v5 + 12));
      }

      v4 = (v5 + v29);
      *(v6 + 8) = v5 + v29;
    }

    else
    {
      v5 += 12;
    }
  }
}

void CI::findProxyProgram(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((*(**a1 + 16))(*a1) == 60)
  {
    v4 = *CI::Node::rois(*a1) + 120 * *(a1 + 2);
    v5 = *(v4 + 32);
    for (i = *(v4 + 40); v5 != i; v5 += 48)
    {
      if ((*(**(*v5 + 48) + 16))(*(*v5 + 48)) == 51)
      {
        CI::roiKey::roiKey(&v18, v5);
        v8 = *(a2 + 8);
        v7 = *(a2 + 16);
        if (v8 >= v7)
        {
          v10 = (v8 - *a2) >> 4;
          v11 = v10 + 1;
          if ((v10 + 1) >> 60)
          {
            std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
          }

          v12 = v7 - *a2;
          if (v12 >> 3 > v11)
          {
            v11 = v12 >> 3;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF0)
          {
            v13 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<CI::roiKey>>(a2, v13);
          }

          v14 = (16 * v10);
          *v14 = v18;
          v9 = 16 * v10 + 16;
          v15 = *(a2 + 8) - *a2;
          v16 = 16 * v10 - v15;
          memcpy(v14 - v15, *a2, v15);
          v17 = *a2;
          *a2 = v16;
          *(a2 + 8) = v9;
          *(a2 + 16) = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v8 = v18;
          v9 = (v8 + 1);
        }

        *(a2 + 8) = v9;
      }
    }
  }
}

void ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke_11(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {

    CI::Object::unref(v2);
  }
}

void ___ZN2CI7Context6renderEPNS_11ProgramNodeERK6CGRect_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CopyContextPeakNonVolatileList(*(a1 + 40));
  CI::TileTask::updatePeakList(v2, v3);
  v4 = *(a1 + 32);
  v5 = CopyAnyImagePeakNonVolatileList();
  CI::TileTask::updatePeakList(v4, v5);
  v6 = *(a1 + 32);

  CI::Object::unref(v6);
}

uint64_t CI::Context::render_processor_node(CI::Context *this, CI::TileTask *a2, const CI::parentROI *a3, __IOSurface *a4, const void *a5)
{
  v22[7] = *MEMORY[0x1E69E9840];
  v22[3] = CI::parentROI::roi(a3);
  v22[4] = v7;
  v22[5] = v8;
  v22[6] = v9;
  v10 = *a3;
  if (*a3)
  {
    v11 = v10[6];
    if (v11)
    {
      if ((*(*v11 + 16))(v10[6]) >= 47 && (*(*v11 + 16))(v11) <= 49)
      {
        (*(*this + 112))(this);
        v12 = (*(*v10 + 40))(v10);
        memset(v22, 0, 24);
        if (v12)
        {
          std::vector<CI::intermediate_t const*>::__vallocate[abi:nn200100](v22, v12);
        }

        MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17);
        v19 = (*(*this + 112))(this);
        v20 = (*(*this + 112))(this);
        empty_surface = CI::TextureManager::get_empty_surface(v20);
        CI::TextureManager::intermediate(v19, empty_surface, MEMORY[0x1E695F050], 0, 0, 0);
      }
    }
  }

  return 0;
}

uint64_t CI::Context::blitSurface(CI::Context *this, __IOSurface *a2, IRect *a3, __IOSurface *a4, IRect *a5)
{
  PixelFormat = IOSurfaceGetPixelFormat(this);
  result = IOSurfaceGetPixelFormat(a3);
  if (PixelFormat == result && *(a2 + 1) == *(a4 + 1) && *(a2 + 2) == *(a4 + 2))
  {
    v11 = IOSurfaceGetPixelFormat(this);
    v12 = CI::format_from_PixelFormatType(v11);
    v13 = CI::format_bytes_per_pixel(v12);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___ZN2CI7Context11blitSurfaceEP11__IOSurface5IRectS2_S3__block_invoke;
    v14[3] = &__block_descriptor_tmp_17_0;
    v14[4] = a3;
    v15 = *a4;
    v16 = *(a4 + 2);
    v19 = v13;
    v17 = *a2;
    v18 = *(a2 + 2);
    return SurfaceApplyPlaneBlock(this, v14);
  }

  return result;
}

uint64_t ___ZN2CI7Context11blitSurfaceEP11__IOSurface5IRectS2_S3__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN2CI7Context11blitSurfaceEP11__IOSurface5IRectS2_S3__block_invoke_2;
  v9[3] = &__block_descriptor_tmp_15_3;
  v10 = *(a1 + 40);
  v7 = *(a1 + 56);
  v16 = *(a1 + 88);
  v11 = v7;
  v12 = a2;
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = a6;
  return SurfaceApplyPlaneReadOnlyBlock(v6, v9);
}

void *___ZN2CI7Context11blitSurfaceEP11__IOSurface5IRectS2_S3__block_invoke_2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result[6])
  {
    v8 = result;
    v9 = 0;
    do
    {
      result = memmove((v8[7] + (v9 + *(v8 + 17)) * v8[11] + *(v8 + 16) * *(v8 + 24)), (a2 + (v9 + *(v8 + 9)) * a6 + *(v8 + 24) * *(v8 + 8)), v8[5] * *(v8 + 24));
      ++v9;
    }

    while (v9 < v8[6]);
  }

  return result;
}

void CI::Context::assembleBlit(uint64_t a1, __IOSurface *a2, __int128 *a3, CI *this, __int128 *a5, unint64_t *a6)
{
  v12 = CI::format_from_IOSurface(this, a2);
  if (!(*(*a1 + 440))(a1, v12, 1) || (*&v21 = 0, *(&v21 + 1) = IOSurfaceGetWidth(this), Height = IOSurfaceGetHeight(this), v14 = (*(*a1 + 112))(a1), v15 = *a6, LODWORD(v19) = *a6, BYTE4(v19) = (v15 >> 31) & 2, *(&v19 + 5) = 0, BYTE9(v19) = 0, HIDWORD(v19) = 1, (v16 = (*(*v14 + 64))(v14, &v19, this, 0, &v21, 1, 0)) == 0) || (v19 = *a3, v20 = *(a3 + 2), v17 = *a5, v18 = *(a5 + 2), ((*(*a1 + 96))(a1, a2, &v19, v16, &v17, a6) & 1) == 0))
  {
    v21 = *a3;
    Height = *(a3 + 2);
    v19 = *a5;
    v20 = *(a5 + 2);
    CI::Context::blitSurface(a2, &v21, this, &v19, v13);
    ReturnSurfaceToCache(this);
  }
}

CI::Context *CI::Context::assemble_leafTiles(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50[0] = 0;
  v49[0] = *a3;
  *&v49[1] = *(a3 + 16);
  v10 = (**a2)(a2);
  LODWORD(v47) = 0;
  v11 = (*(*a1 + 624))(a1);
  v12 = a1[47];
  *(&v47 + 1) = v11;
  v48 = v12;
  v13 = (*(*a1 + 280))(a1);
  SurfaceFromCache = GetSurfaceFromCache(v49, 1, 1, v10, &v47, v13, 0, -1, a4, v50, 0);
  if (SurfaceFromCache && v50[0] == 1)
  {
    v14 = 0;
    v15 = a2[1];
    v16 = a2[2];
    while (1)
    {
      if (v15 == v16)
      {
        v18 = 0;
      }

      else
      {
        v17 = v15[1];
        if (*v15 == v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v15) >> 3);
        }
      }

      if (v14 >= v18)
      {
        return SurfaceFromCache;
      }

      v19 = 0;
      v40 = v14;
      while (1)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * (v16 - v15);
        if (v15 == v16)
        {
          v20 = 0;
        }

        if (v19 >= v20)
        {
          break;
        }

        memset(v49, 0, 24);
        (*(*a2 + 16))(v49, a2, v19, v14);
        v22 = v49[0];
        v21 = DWORD1(v49[0]);
        v24 = *a3;
        v23 = *(a3 + 4);
        v26 = *(a3 + 8);
        v25 = *(a3 + 16);
        if (*&v49[0] == 0x7FFFFFFF7FFFFFFFLL && *(v49 + 8) == 0 || v24 == 0x7FFFFFFF && v23 == 0x7FFFFFFF && !v26 && !v25)
        {
          goto LABEL_46;
        }

        if (*&v49[0] == 0x8000000180000001 && *(v49 + 8) == __PAIR128__(0xFFFFFFFFLL, 0xFFFFFFFFLL))
        {
          v27 = *(a3 + 4);
          v28 = *a3;
          if (!v26)
          {
            goto LABEL_46;
          }

          goto LABEL_29;
        }

        if (v24 == -2147483647 && v23 == -2147483647 && v26 == 0xFFFFFFFFLL && v25 == 0xFFFFFFFFLL)
        {
          v25 = *&v49[1];
          v26 = *(&v49[0] + 1);
          v27 = DWORD1(v49[0]);
          v28 = v49[0];
          if (!*(&v49[0] + 1))
          {
            goto LABEL_46;
          }

LABEL_29:
          if (v25)
          {
            v41 = v27;
            v42 = v28;
            v46 = 0;
            Current = CFAbsoluteTimeGetCurrent();
            v30 = (*(*a2 + 8))(a2, v19, v14, &v46);
            *a6 = *a6 + CFAbsoluteTimeGetCurrent() - Current;
            *(a6 + 8) += v46;
            if (v30)
            {
              LODWORD(v47) = v42 - v24;
              DWORD1(v47) = v41 - v23;
              *(&v47 + 1) = v26;
              v48 = v25;
              v43[0] = v42 - v22;
              v43[1] = v41 - v21;
              v44 = v26;
              v45 = v25;
              CI::Context::blitSurface(SurfaceFromCache, &v47, v30, v43, v31);
              ReturnSurfaceToCache(v30);
            }

            v14 = v40;
          }

          goto LABEL_46;
        }

        if (SLODWORD(v49[0]) <= v24)
        {
          v28 = *a3;
        }

        else
        {
          v28 = v49[0];
        }

        v32 = LODWORD(v49[0]) + DWORD2(v49[0]);
        if (LODWORD(v49[0]) + DWORD2(v49[0]) >= v24 + v26)
        {
          v32 = v24 + v26;
        }

        v33 = __OFSUB__(v32, v28);
        v34 = v32 - v28;
        if (v34 < 0 == v33)
        {
          if (SDWORD1(v49[0]) <= v23)
          {
            v27 = *(a3 + 4);
          }

          else
          {
            v27 = DWORD1(v49[0]);
          }

          v35 = DWORD1(v49[0]) + LODWORD(v49[1]);
          if (DWORD1(v49[0]) + LODWORD(v49[1]) >= v23 + v25)
          {
            v35 = v23 + v25;
          }

          v33 = __OFSUB__(v35, v27);
          v36 = v35 - v27;
          if (v36 < 0 == v33)
          {
            v26 = v34;
            v25 = v36;
            if (v34)
            {
              goto LABEL_29;
            }
          }
        }

LABEL_46:
        ++v19;
        v15 = a2[1];
        v16 = a2[2];
      }

      ++v14;
    }
  }

  return SurfaceFromCache;
}

__IOSurface *CI::Context::bind_sampler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, CI::TileTask *a6)
{
  v12 = (*(*a1 + 112))(a1);
  v13 = *(a2 + 24);
  v77.origin.x = CI::Node::roi(*a3, *(a3 + 8));
  v77.origin.y = v14;
  v77.size.width = v15;
  v77.size.height = v16;
  v75 = 0.0;
  v76 = 0;
  v17 = CI_VERBOSE_SIGNPOSTS();
  if (v17)
  {
    v19 = ci_signpost_log_render(v17, v18);
    v20 = *(v13 + 36) | ((*(*a1 + 280))(a1) << 32);
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v20, "bind_sampler", &unk_19CFBCBAE, &buf, 2u);
    }
  }

  v21 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(&buf, v21, *(v13 + 36), "bind_sampler", 0);
  if (CGRectIsEmpty(v77))
  {
    goto LABEL_70;
  }

  v22 = (*(*v13 + 16))(v13);
  v23 = 0;
  if (v22 <= 53)
  {
    if (v22 != 35)
    {
      if (v22 == 52)
      {
        if (CI::CI_ASSEMBLE_INPUT_TILES(void)::didCheck != -1)
        {
          CI::Context::bind_sampler();
        }

        if (CI::CI_ASSEMBLE_INPUT_TILES(void)::v && ((v26 = *(v13 + 64), v25 = *(v13 + 72), v26 == v25) ? (v27 = 0, v30 = 0) : (v27 = 0xAAAAAAAAAAAAAAABLL * (v25 - v26), v29 = *v26, v28 = v26[1], v29 != v28) ? (v30 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v29) >> 3)) : (v30 = 0), v30 * v27 >= 2))
        {
          x = v77.origin.x;
          y = v77.origin.y;
          width = v77.size.width;
          height = v77.size.height;
          if (CGRectIsNull(v77))
          {
            v72 = 0;
            *buffer = IRectNull;
          }

          else
          {
            v79.origin.x = x;
            v79.origin.y = y;
            v79.size.width = width;
            v79.size.height = height;
            if (CGRectIsInfinite(v79))
            {
              *buffer = IRectInfinite;
              v72 = 0xFFFFFFFFLL;
            }

            else
            {
              v83.origin.x = x;
              v83.origin.y = y;
              v83.size.width = width;
              v83.size.height = height;
              v84 = CGRectInset(v83, 0.000001, 0.000001);
              v85 = CGRectIntegral(v84);
              LODWORD(buffer[0]) = v85.origin.x;
              HIDWORD(buffer[0]) = v85.origin.y;
              buffer[1] = v85.size.width;
              v72 = v85.size.height;
            }
          }

          v59 = (*(*v13 + 456))(v13, a1[19]);
          v53 = CI::Context::assemble_leafTiles(a1, (v13 + 56), buffer, v59, v60, &v75);
          v61 = (*(*v13 + 456))(v13, a1[19]);
          CI::TileTask::addAssembledIntermediate(a6, v13, v61, v77);
        }

        else
        {
          v53 = CI::ProviderNode::surfaceForROI(v13, a1, &v77.origin.x, &v75);
        }

        CI::TextureManager::intermediate(v12, v53, &v77, 2uLL, 0, 1);
      }

      goto LABEL_69;
    }

    if (CI::CI_ASSEMBLE_INPUT_TILES(void)::didCheck != -1)
    {
      CI::Context::bind_sampler();
    }

    if (CI::CI_ASSEMBLE_INPUT_TILES(void)::v && ((v36 = *(v13 + 64), v35 = *(v13 + 72), v36 == v35) ? (v37 = 0, v40 = 0) : (v37 = 0xAAAAAAAAAAAAAAABLL * (v35 - v36), v39 = *v36, v38 = v36[1], v39 != v38) ? (v40 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v39) >> 3)) : (v40 = 0), v40 * v37 >= 2 && ((v44 = v77.origin.x, v45 = v77.origin.y, v46 = v77.size.width, v47 = v77.size.height, !CGRectIsNull(v77)) ? ((v78.origin.x = v44, v78.origin.y = v45, v78.size.width = v46, v78.size.height = v47, !CGRectIsInfinite(v78)) ? (v80.origin.x = v44, v80.origin.y = v45, v80.size.width = v46, v80.size.height = v47, v81 = CGRectInset(v80, 0.000001, 0.000001), v82 = CGRectIntegral(v81), LODWORD(buffer[0]) = v82.origin.x, HIDWORD(buffer[0]) = v82.origin.y, buffer[1] = v82.size.width, v72 = v82.size.height) : (*buffer = IRectInfinite, v72 = 0xFFFFFFFFLL)) : (v72 = 0, *buffer = IRectNull), v54 = (*(*(v13 + 56) + 24))(v13 + 56, 0), (v56 = CI::Context::assemble_leafTiles(a1, (v13 + 56), buffer, v54, v55, &v75)) != 0)))
    {
      v48 = v56;
      CFRetain(v56);
      v57 = (*(*(v13 + 56) + 24))(v13 + 56, 0);
      CI::TileTask::addAssembledIntermediate(a6, v13, v57, v77);
    }

    else
    {
      CI::CGNode::surfaceForROI(v13, a1, &v77.origin.x, &v75, buffer);
      v48 = buffer[0];
      if (!buffer[0])
      {
LABEL_59:
        CI::CGNode::cgImageForROI(buffer, v13, &v77);
        v23 = (*(*a1 + 56))(a1, buffer[0], v13 + 48, *(a2 + 120), *(a2 + 124), a4);
        v58 = buffer[0];
        buffer[0] = 0;
        if (v58)
        {
          CFRelease(v58);
        }

        if (!v48)
        {
          goto LABEL_69;
        }

        v42 = v48;
LABEL_63:
        CFRelease(v42);
        goto LABEL_69;
      }
    }

    if (IOSurfaceGetPlaneCount(v48) <= 1)
    {
      CI::TextureManager::intermediate(v12, v48, &v77, 2uLL, 0, 1);
    }

    goto LABEL_59;
  }

  switch(v22)
  {
    case '6':
      if (a5 == 3)
      {
        v41 = 1;
      }

      else
      {
        v41 = *(a2 + 124);
      }

      CI::SurfaceNode::surfaceForROI(v13, a1, &v75, buffer, v77.origin.x, v77.origin.y, v77.size.width, v77.size.height);
      v23 = (*(*a1 + 64))(a1, buffer[0], v13 + 48, *(v13 + 106), *(a2 + 120), v41, a5 == 4, a4, a5 == 3);
      v42 = buffer[0];
      buffer[0] = 0;
      if (!v42)
      {
        break;
      }

      goto LABEL_63;
    case '8':
      v31 = (*(*v13 + 440))(v13);
      v32 = *v13;
      if (v31)
      {
        v33 = (*(v32 + 440))(v13);
        v34 = (*(*a1 + 72))(a1, v33, *(v13 + 52), *(a2 + 120), *(a2 + 124), a4);
      }

      else
      {
        if (!(*(v32 + 448))(v13))
        {
          v23 = 0;
          break;
        }

        v43 = (*(*v13 + 448))(v13);
        v34 = (*(*a1 + 80))(a1, v43, *(a2 + 120), *(a2 + 124), 0, a4);
      }

      v23 = v34;
      break;
    case '<':
      intermediate_for_node = CI::TextureManager::get_intermediate_for_node(v12, a3);
      if ((*(v13 + 144) & 4) != 0)
      {
        (*(*v12 + 72))(v12, intermediate_for_node);
      }

      (*(*intermediate_for_node + 24))(v70, intermediate_for_node);
      v23 = (*(*a1 + 88))(a1, v70, *(a2 + 120), *(a2 + 124), a4);
      v70[0] = 0;
      v70[1] = 0;
      break;
  }

LABEL_69:
  CI::TileTask::incrementFillTimeForNode(a6, v13, v75);
  CI::TileTask::incrementFillPixelsForNode(a6, v13, v76);
  if (CI_LIMIT_SAMPLERS())
  {
LABEL_70:
    empty_surface = CI::TextureManager::get_empty_surface(v12);
    PixelFormat = IOSurfaceGetPixelFormat(empty_surface);
    LODWORD(buffer[0]) = CI::format_from_PixelFormatType(PixelFormat);
    WORD2(buffer[0]) = 0;
    v23 = (*(*a1 + 64))(a1, empty_surface, buffer, 0, *(a2 + 120), *(a2 + 124), 0, a4, 0);
  }

  v64 = CI_VERBOSE_SIGNPOSTS();
  if (v64)
  {
    v66 = ci_signpost_log_render(v64, v65);
    v67 = v74;
    if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v68 = v66;
      if (os_signpost_enabled(v66))
      {
        LOWORD(buffer[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v68, OS_SIGNPOST_INTERVAL_END, v67, "bind_sampler", &unk_19CFBCBAE, buffer, 2u);
      }
    }
  }

  TimerBase::~TimerBase(&buf, v65);
  return v23;
}

uint64_t CI::Context::kernel_argument_size(uint64_t a1, int a2)
{
  result = 4;
  switch(a2)
  {
    case 2:
      v4 = *(*a1 + 528);

      result = v4(a1, 10);
      break;
    case 3:
      v5 = (*(*a1 + 528))(a1, 10);
      result = (*(*a1 + 528))(a1, 6) + v5;
      break;
    case 5:
    case 13:
      return result;
    case 6:
    case 15:
      result = 8;
      break;
    case 7:
      result = 12;
      break;
    case 8:
    case 16:
    case 27:
    case 42:
    case 43:
    case 46:
    case 47:
      result = 16;
      break;
    case 9:
    case 18:
      result = 32;
      break;
    case 10:
    case 40:
    case 44:
      result = 48;
      break;
    case 11:
    case 41:
      result = 64;
      break;
    case 12:
      result = 2;
      break;
    case 14:
      result = 6;
      break;
    case 17:
      result = 24;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

BOOL CI::Context::format_is_supported_for_input(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZNK2CI7Context29format_is_supported_for_inputENS_11PixelFormatE_block_invoke;
  v3[3] = &__block_descriptor_tmp_19_2;
  v3[4] = a1;
  return CI::format_swizzle_for_input(a2, 0, v3) != 0;
}

BOOL CI::Context::format_is_supported_for_output(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  v11 = *a4;
  v12 = *(a4 + 2);
  v7 = (*(*a1 + 584))(a1);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK2CI7Context30format_is_supported_for_outputENS_11PixelFormatENS_15DestinationTypeE5IRect_block_invoke;
  v9[3] = &__block_descriptor_tmp_20_0;
  v9[4] = a1;
  v10 = a3;
  CI::format_swizzle_for_output(a2, &v11, v7, v9, v13);
  return LODWORD(v13[0]) != 0;
}

uint64_t CI::Context::swizzler_for_input(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZNK2CI7Context18swizzler_for_inputENS_11PixelFormatE_block_invoke;
  v3[3] = &__block_descriptor_tmp_21_1;
  v3[4] = a1;
  return CI::format_swizzle_for_input(a2, 0, v3);
}

BOOL CI::Context::converter_for_input(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK2CI7Context19converter_for_inputENS_11PixelFormatERNS_11ConvertTypeE_block_invoke;
  v7[3] = &__block_descriptor_tmp_22_0;
  v7[4] = a1;
  v4 = CI::format_swizzle_for_input(a2, 1, v7);
  *a3 = v5;
  return v4 != 0;
}

void CI::Context::swizzler_for_output(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v12 = *a3;
  v13 = *(a3 + 2);
  v9 = (*(*a1 + 584))(a1);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZNK2CI7Context19swizzler_for_outputENS_11PixelFormatE5IRectNS_15DestinationTypeE_block_invoke;
  v10[3] = &__block_descriptor_tmp_23_2;
  v10[4] = a1;
  v11 = a4;
  CI::format_swizzle_for_output(a2, &v12, v9, v10, a5);
}

BOOL CI::Context::converter_for_output(uint64_t a1, uint64_t a2, int *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI7Context20converter_for_outputENS_11PixelFormatERNS_11ConvertTypeE_block_invoke;
  v4[3] = &__block_descriptor_tmp_24_1;
  v4[4] = a1;
  return CI::format_converter_for_output(a2, a3, v4);
}

CGContext *CI::Context::set_cgcontext(CI::Context *this, CGContext *a2)
{
  result = *(this + 6);
  if (result != a2)
  {
    CGContextRelease(result);
    result = CGContextRetain(a2);
    *(this + 6) = result;
  }

  return result;
}

void CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::insert(uint64_t a1, uint64_t a2, CI::Object *this, int a4)
{
  if (this)
  {
    CI::Object::ref(this);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE6insertES2_PS1_j_block_invoke;
  v8[3] = &__block_descriptor_tmp_113;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = this;
  v9 = a4;
  Queue::execute_async((a1 + 56), v8);
}

uint64_t CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::find(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE4findES2__block_invoke;
  block[3] = &unk_1E75C4FB0;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v5;
  dispatch_sync(*(a1 + 56), block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void CI::Context::updateColorSpace(CGColorSpaceRef *this, CGColorSpaceRef space)
{
  if (space)
  {
    if (this[2])
    {
      CGColorSpaceRetain(space);
      CGColorSpaceRelease(this[2]);
      this[2] = space;
    }
  }
}

void CI::Context::updateWorkingSpace(CGColorSpaceRef *this, CGColorSpaceRef space)
{
  if (space)
  {
    if (this[3])
    {
      CGColorSpaceRetain(space);
      CGColorSpaceRelease(this[3]);
      this[3] = space;
    }
  }
}

CGColorSpaceRef ___ZN2CI7Context19defaultWorkingSpaceEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = dyld_program_sdk_at_least();
  v3 = MEMORY[0x1E695F108];
  if (!v2)
  {
    v3 = MEMORY[0x1E695F1B0];
  }

  result = CGColorSpaceCreateWithName(*v3);
  CI::Context::defaultWorkingSpace(void)::space = result;
  return result;
}

uint64_t CI::Context::defaultOutputRGBSpace(CI::Context *this)
{
  if (CI::Context::defaultOutputRGBSpace(void)::didCreate != -1)
  {
    CI::Context::defaultOutputRGBSpace();
  }

  return CI::Context::defaultOutputRGBSpace(void)::space;
}

CGColorSpaceRef ___ZN2CI7Context21defaultOutputRGBSpaceEv_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  CI::Context::defaultOutputRGBSpace(void)::space = result;
  return result;
}

uint64_t CI::Context::defaultOutputGraySpace(CI::Context *this)
{
  if (CI::Context::defaultOutputGraySpace(void)::didCreate != -1)
  {
    CI::Context::defaultOutputGraySpace();
  }

  return CI::Context::defaultOutputGraySpace(void)::space;
}

CGColorSpaceRef ___ZN2CI7Context22defaultOutputGraySpaceEv_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  CI::Context::defaultOutputGraySpace(void)::space = result;
  return result;
}

void CI::SerialRectArray::recurseSubdivide(double *a1, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v4 = *(a3 + 8);
    v5 = *(a3 + 16);
    if (v4 >= v5)
    {
      v15 = (v4 - *a3) >> 5;
      v16 = v15 + 1;
      if ((v15 + 1) >> 59)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      v17 = v5 - *a3;
      if (v17 >> 4 > v16)
      {
        v16 = v17 >> 4;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFE0)
      {
        v18 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<CGRect>>(a3, v18);
      }

      v20 = (32 * v15);
      v21 = *(a1 + 1);
      *v20 = *a1;
      v20[1] = v21;
      v7 = 32 * v15 + 32;
      v22 = *(a3 + 8) - *a3;
      v23 = v20 - v22;
      memcpy(v20 - v22, *a3, v22);
      v24 = *a3;
      *a3 = v23;
      *(a3 + 8) = v7;
      *(a3 + 16) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      v6 = *(a1 + 1);
      *v4 = *a1;
      v4[1] = v6;
      v7 = (v4 + 2);
    }

    *(a3 + 8) = v7;
  }

  else
  {
    v8 = a1[2];
    v9 = a1[3];
    if (v8 <= v9)
    {
      v19 = *a1;
      v26 = *(a1 + 1);
      v27 = v19;
      v28 = a1[2];
      v29 = floor(v9 * 0.5 * 0.25) * 4.0;
      v25 = *a1;
      *(&v25 + 1) = v29 + *(&v25 + 1);
      *(&v26 + 1) = v9 - v29;
      v13 = a2 >> 1;
      CI::SerialRectArray::recurseSubdivide(&v25, a2 >> 1, a3);
      v14 = &v27;
    }

    else
    {
      v10 = v8;
      v11 = *(a1 + 1);
      v27 = *a1;
      v29 = *(&v11 + 1);
      v28 = floor(v10 * 0.5 * 0.25) * 4.0;
      v12 = *(a1 + 1);
      v25 = *a1;
      *(&v26 + 1) = *(&v12 + 1);
      *&v25 = v28 + *&v25;
      *&v26 = v10 - v28;
      v13 = a2 >> 1;
      CI::SerialRectArray::recurseSubdivide(&v27, a2 >> 1, a3);
      v14 = &v25;
    }

    CI::SerialRectArray::recurseSubdivide(v14, v13, a3);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::parentROI>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::roiKey>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t ___ZN2CIL26dump_intermediate_for_nodeEPKNS_11ProgramNodeEPKNS_14intermediate_tEP16dispatch_group_s_block_invoke()
{
  CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::sRGB = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::sRGBLinear = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpPngImages = CI_PRINT_TREE_dump_intermediates();
  CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpRawImages = CI_PRINT_TREE_dump_raw_intermediates();
  result = CI_PRINT_TREE_dump_bmtl_intermediates();
  CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpBmtlImages = result;
  return result;
}

void ___ZN2CIL26dump_intermediate_for_nodeEPKNS_11ProgramNodeEPKNS_14intermediate_tEP16dispatch_group_s_block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_group_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(a1 + 40));
  if (CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpPngImages == 1)
  {
    v2 = CI_TEMP_DIR();
    v3 = getpid();
    snprintf(__str, 0x100uLL, "%s/%d_intermediate_%d_%d_%d_%d_%d.png", v2, v3, *(a1 + 96), *(a1 + 100), *(a1 + 104), *(a1 + 108), *(a1 + 112));
    v4 = SurfaceCroppedWriteToFile(*(a1 + 48), *(a1 + 56), __str, *(a1 + 80), *(a1 + 88));
    if (v4)
    {
      v6 = ci_logger_render(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v19 = __str;
        _os_log_impl(&dword_19CC36000, v6, OS_LOG_TYPE_DEFAULT, "Dumped intermediate to: %{public}s\n", buf, 0xCu);
      }
    }
  }

  if (CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpRawImages == 1)
  {
    v7 = CI_TEMP_DIR();
    v8 = getpid();
    snprintf(__str, 0x100uLL, "%s/%d_intermediate_%d_%d_%d_%d_%d.raw", v7, v8, *(a1 + 96), *(a1 + 100), *(a1 + 104), *(a1 + 108), *(a1 + 112));
    v9 = SurfaceCroppedWriteRawToFile(*(a1 + 48), __str, *(a1 + 80), *(a1 + 88));
    if (v9)
    {
      v11 = ci_logger_render(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v19 = __str;
        _os_log_impl(&dword_19CC36000, v11, OS_LOG_TYPE_DEFAULT, "Dumped raw intermediate to: %{public}s\n", buf, 0xCu);
      }
    }
  }

  if (CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpBmtlImages == 1)
  {
    v12 = CI_TEMP_DIR();
    v13 = getpid();
    snprintf(__str, 0x100uLL, "%s/%d_%s_%d_%d_%d_%d_%d.bmtl", v12, v13, *(*(*(a1 + 32) + 8) + 24), *(a1 + 96), *(a1 + 100), *(a1 + 104), *(a1 + 108), *(a1 + 112));
    v14 = SurfaceCroppedWriteBmtlToFile(*(a1 + 48), __str, *(a1 + 80), *(a1 + 88));
    if (v14)
    {
      v16 = ci_logger_render(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v19 = __str;
        _os_log_impl(&dword_19CC36000, v16, OS_LOG_TYPE_DEFAULT, "Dumped bmtl intermediate to: %{public}s\n", buf, 0xCu);
      }
    }
  }

  v17 = *(*(*(a1 + 32) + 8) + 24);
  if (v17)
  {
    free(v17);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  ReturnSurfaceToCache(*(a1 + 48));
  ReturnSurfaceToCache(*(a1 + 48));
}

void std::vector<CI::intermediate_t const*>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::intermediate_t const*>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::intermediate_t const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t ___ZN2CIL23CI_ASSEMBLE_INPUT_TILESEv_block_invoke()
{
  v0 = getenv("CI_ASSEMBLE_INPUT_TILES");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = CI::CI_ASSEMBLE_INPUT_TILES(void)::v;
  }

  CI::CI_ASSEMBLE_INPUT_TILES(void)::v = result;
  return result;
}

uint64_t CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::ObjectCache(uint64_t a1, unint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1065353216;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(a1 + 56) = dispatch_queue_create("CI::ObjectCacheQ", v4);
  *(a1 + 64) = dispatch_group_create();
  std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>(a1 + 16, vcvtps_u32_f32(a2 / *(a1 + 48)));
  return a1;
}

uint64_t CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::~ObjectCache(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EED2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_104;
  block[4] = a1;
  v2 = (a1 + 56);
  dispatch_sync(*(a1 + 56), block);
  Queue::~Queue(v2);
  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::~__hash_table(a1 + 16);
  return a1;
}

void std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::clear(uint64_t result)
{
  if (*(result + 24))
  {
    std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__deallocate_node(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry::~Entry((v2 + 3), a2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry::~Entry(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE5EntryD2Ev_block_invoke;
    v5[3] = &__block_descriptor_tmp_105;
    v5[4] = a1;
    CI::Object::performDeferredRoot(v5);
  }

  else
  {
    v3 = *a1;
    if (*a1)
    {
      CI::Object::unref(v3);
    }
  }

  return a1;
}

void ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE5EntryD2Ev_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t CI::ObjectCache<CI::Node,unsigned long long,false>::~ObjectCache(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI11ObjectCacheINS_4NodeEyLb0EED2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_106;
  block[4] = a1;
  v2 = (a1 + 56);
  dispatch_sync(*(a1 + 56), block);
  Queue::~Queue(v2);
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::~__hash_table(a1 + 16);
  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::clear(uint64_t result)
{
  if (*(result + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::__deallocate_node(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      CI::ObjectCache<CI::Node,unsigned long long,false>::Entry::~Entry((v2 + 3), a2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t CI::ObjectCache<CI::Node,unsigned long long,false>::Entry::~Entry(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE5EntryD2Ev_block_invoke;
    v5[3] = &__block_descriptor_tmp_107;
    v5[4] = a1;
    CI::Object::performDeferredRoot(v5);
  }

  else
  {
    v3 = *a1;
    if (*a1)
    {
      CI::Object::unref(v3);
    }
  }

  return a1;
}

void ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE5EntryD2Ev_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::~ObjectCache(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EED2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_108;
  block[4] = a1;
  v2 = (a1 + 56);
  dispatch_sync(*(a1 + 56), block);
  Queue::~Queue(v2);
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::~__hash_table(a1 + 16);
  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::clear(uint64_t result)
{
  if (*(result + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::__deallocate_node(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry::~Entry((v2 + 3), a2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry::~Entry(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE5EntryD2Ev_block_invoke;
    v5[3] = &__block_descriptor_tmp_109;
    v5[4] = a1;
    CI::Object::performDeferredRoot(v5);
  }

  else
  {
    v3 = *a1;
    if (*a1)
    {
      CI::Object::unref(v3);
    }
  }

  return a1;
}

void ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE5EntryD2Ev_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE5clearEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::clear(v1 + 16);
  *(v1 + 8) = 0;
}

void ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE5clearEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::clear(v1 + 16);
  *(v1 + 8) = 0;
}

void ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE5clearEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::clear(v1 + 16);
  *(v1 + 8) = 0;
}

void std::__tree<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey,CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::compareDepth,std::allocator<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey,CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::compareDepth,std::allocator<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey>>::destroy(*a1);
    std::__tree<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey,CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::compareDepth,std::allocator<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void *std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(uint64_t a1, unint64_t *a2, void *a3)
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
      v6 = v3[4];
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

uint64_t CI::SerialRectArray::maxParentDistance(CI::SerialRectArray *this)
{
  v1 = *this;
  v2 = *(this + 1);
  v3 = v2 - *this;
  if (v2 == *this)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = 0xEEEEEEEEEEEEEEEFLL * (v3 >> 3);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  do
  {
    v7 = (v1 + 120 * v4);
    v8 = v7[4];
    v9 = v7[5];
    if (v8 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = v7[4];
      do
      {
        if (v10 <= *(v11 + 40))
        {
          v10 = *(v11 + 40);
        }

        v11 += 48;
      }

      while (v11 != v9);
    }

    v12 = v7[7];
    v13 = v7[8];
    for (i = v12; i != v13; i += 48)
    {
      if (v10 <= *(i + 40))
      {
        v10 = *(i + 40);
      }
    }

    if (result <= v10)
    {
      if (v8 == v9)
      {
        result = 0;
      }

      else
      {
        LODWORD(result) = 0;
        do
        {
          v15 = *(v8 + 40);
          if (result <= v15)
          {
            result = v15;
          }

          else
          {
            result = result;
          }

          v8 += 48;
        }

        while (v8 != v9);
      }

      while (v12 != v13)
      {
        v16 = *(v12 + 40);
        if (result <= v16)
        {
          result = v16;
        }

        else
        {
          result = result;
        }

        v12 += 48;
      }
    }

    ++v4;
  }

  while (v4 != v6);
  return result;
}

void ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE6insertES2_PS1_j_block_invoke(void *a1)
{
  v2 = a1[4];
  ++v2[1];
  v3 = (a1 + 5);
  v4 = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>(v2 + 2, a1 + 5);
  if (!v4)
  {
    if (v2[5] == *v2)
    {
      CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::evict(v2);
    }

    *&v6 = a1 + 6;
    *(&v6 + 1) = v2 + 1;
    v7 = a1 + 7;
    v8 = v3;
    std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<CI::ProgramDigest const&>,std::tuple<CI::MainProgram* const&,unsigned long long &,unsigned int const&>>((v2 + 2), &std::piecewise_construct, &v8, &v6);
  }

  v4[4] = v2[1];
  v5 = a1[6];
  if (v5)
  {

    CI::Object::unref(v5);
  }
}

uint64_t CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::evict(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 32);
    do
    {
      if (v2[4] < v1[4])
      {
        v1 = v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::remove((a1 + 16), v1, v5);
  return std::unique_ptr<std::__hash_node<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](v5, v3);
}

void *std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}