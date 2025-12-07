uint64_t re::AnimationBlendTree<re::GenericSRT<float>>::createInstance(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD888;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::GenericSRT<float>>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::GenericSRT<float>>::init(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v4 = a2;
  v207 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::Matrix3x3<float>>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v3);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v204, v24, v10, 0);
              re::EvaluationSkeletalPose::createInputHandle(&v188, v204, (v7 + 2360));
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_269;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v188);
              v10 = a2;
              if (v188)
              {
                if (*(&v188 + 1))
                {
                  (*(*v188 + 40))();
                  *(&v188 + 1) = 0;
                  v189 = 0;
                }

                *&v188 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v204);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v195 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v195 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v195);
                v173 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v195 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v195 = "scale";
                *&v195[8] = 5;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }

                *v195 = "rotation";
                *&v195[8] = 8;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v173;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }

                *v195 = "translation";
                *&v195[8] = 11;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v195 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v195 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v195);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v195 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v195);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v195 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v195);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v195 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v195);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v195 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v195);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v197 = 0u;
            memset(buf, 0, sizeof(buf));
            *v195 = 3;
            memset(&v195[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v195);
            *v195 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v195);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v197 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v195 = 4;
            memset(&v195[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v195);
            *v195 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v195);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v195);
  re::RigGraphCompilation::operator=((v7 + 160), &v195[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_273;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(buf, *(v26 + 184), v10, 0);
    re::EvaluationSkeletalPose::createOutputHandle(v204, buf, (v7 + 2360));
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v204);
    if (v204[0])
    {
      if (v204[1])
      {
        (*(*v204[0] + 40))();
        v204[1] = 0;
        v204[2] = 0;
      }

      v204[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>(buf, (v7 + 2360));
  (*(*(v7 + 5600) + 32))(&v188);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v4);
    if (v197 <= 4u)
    {
      if (v197 > 2u)
      {
        if (v197 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_253;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_267;
          }

          v72 = v200;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v197 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_233;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_266;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v201;
          v65 = v202;
          *v64 = v200;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v197 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_229;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_264;
          }

          v70 = *v27;
          v61 = v200;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v197 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_245;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_262;
          }

          v60 = *v27;
          v61 = v200;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v197 <= 6u)
    {
      if (v197 != 5)
      {
        if (v197 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_237;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v192 = v3;
        *&v192[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v204[3] && (v204[4] & 1) != 0)
          {
            (*(*v204[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_268;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_257;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v192 = v3;
      *&v192[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
      if (LOBYTE(v204[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v204[3] && (v204[4] & 1) != 0)
        {
          (*(*v204[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_265;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v203;
      v79 = v200;
      v78 = v201;
      v76[2] = v202;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v197 != 7)
      {
        if (v197 != 8)
        {
          if (v197 == 13 && (*(&v197 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_274;
            }

            v30 = strlen(*(v8[14] + v29));
            *v192 = *(v8[14] + v29);
            *&v192[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
            if (LOBYTE(v204[0]) != 1 && v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }

            v182[0] = "scale";
            v182[1] = 5;
            re::RigDataValue::attributeValue(buf, v182, v204);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v204[1], v31);
            v33 = *v32;
            v174 = v32[1];
            v181[0] = "rotation";
            v181[1] = 8;
            re::RigDataValue::attributeValue(buf, v181, v192);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v192[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v177[0] = "translation";
            v177[1] = 11;
            re::RigDataValue::attributeValue(buf, v177, v178);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v178[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v183 = v33;
            *(&v183 + 1) = v174;
            v184 = v36;
            v185 = v3;
            v186 = v41;
            v187 = v40;
            if (v178[0] & 1) == 0 && v179 && (v180)
            {
              (*(*v179 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v192[0] & 1) == 0 && *&v194[4] && (v194[12])
            {
              (*(**&v194[4] + 40))();
            }

            if (v204[0] & 1) == 0 && v204[3] && (v204[4])
            {
              (*(*v204[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_278;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v183);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_241;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v192 = v3;
        *&v192[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v204[3] && (v204[4] & 1) != 0)
          {
            (*(*v204[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_263;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v200;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_249;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v192 = v3;
      *&v192[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
      if (LOBYTE(v204[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v204[3] && (v204[4] & 1) != 0)
        {
          (*(*v204[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_261;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v200;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v188 & 1) == 0 && v190 && (v191)
  {
    (*(*v190 + 40))();
  }

  if (v195[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v195[8]);
  }

  else if (*&v195[24] && (v195[32] & 1) != 0)
  {
    (*(**&v195[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        *&v188 = *(*(v86 + 408) + v88);
        *(&v188 + 1) = v89;
        re::BindNode::bindPointWithOverride(v195, a3, re::introspect<float>(BOOL)::info, &v188);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_217;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v195;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v195[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      *&v188 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v109 = MEMORY[0x1E69E9C10];
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      *(&v204[1] + 6) = 797;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v87;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v3;
      _os_log_send_and_compose_impl(v111, &v188, buf, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_217:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v112 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      *(&v204[1] + 6) = 468;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v87;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v3;
      _os_log_send_and_compose_impl(v114, v192, buf, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_221:
      *&v188 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v115 = MEMORY[0x1E69E9C10];
      v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v116)
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      *(&v204[1] + 6) = 797;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v10;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v4;
      _os_log_send_and_compose_impl(v117, &v188, buf, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_225:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v118 = MEMORY[0x1E69E9C10];
      v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v119)
      {
        v120 = 3;
      }

      else
      {
        v120 = 2;
      }

      *(&v204[1] + 6) = 468;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v10;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v4;
      _os_log_send_and_compose_impl(v120, v192, buf, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_229:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v121 = MEMORY[0x1E69E9C10];
      v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v123, v178, v204, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_233:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v124 = MEMORY[0x1E69E9C10];
      v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v125)
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v126, v178, v204, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_237:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v127 = MEMORY[0x1E69E9C10];
      v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v128)
      {
        v129 = 3;
      }

      else
      {
        v129 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v129, v178, v204, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_241:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v130 = MEMORY[0x1E69E9C10];
      v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v131)
      {
        v132 = 3;
      }

      else
      {
        v132 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v132, v178, v204, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_245:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v133 = MEMORY[0x1E69E9C10];
      v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v134)
      {
        v135 = 3;
      }

      else
      {
        v135 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v135, v178, v204, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_249:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v136 = MEMORY[0x1E69E9C10];
      v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v137)
      {
        v138 = 3;
      }

      else
      {
        v138 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v138, v178, v204, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_253:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v139 = MEMORY[0x1E69E9C10];
      v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v140)
      {
        v141 = 3;
      }

      else
      {
        v141 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v141, v178, v204, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_257:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v142 = MEMORY[0x1E69E9C10];
      v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v143)
      {
        v144 = 3;
      }

      else
      {
        v144 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v144, v178, v204, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_261:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v151, v161);
      __break(1u);
LABEL_262:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v152, v162);
      __break(1u);
LABEL_263:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v153, v163);
      __break(1u);
LABEL_264:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v154, v164);
      __break(1u);
LABEL_265:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v155, v165);
      __break(1u);
LABEL_266:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v156, v166);
      __break(1u);
LABEL_267:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v157, v167);
      __break(1u);
LABEL_268:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v158, v168);
      __break(1u);
LABEL_269:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v145 = MEMORY[0x1E69E9C10];
      v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v195 = 136315906;
      *&v195[4] = "operator[]";
      *&v195[12] = 1024;
      if (v146)
      {
        v147 = 3;
      }

      else
      {
        v147 = 2;
      }

      *&v195[14] = 789;
      *&v195[18] = 2048;
      *&v195[20] = v3;
      *&v195[28] = 2048;
      *&v195[30] = v10;
      _os_log_send_and_compose_impl(v147, v192, buf, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_273:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v159, v169);
      __break(1u);
LABEL_274:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v148 = MEMORY[0x1E69E9C10];
      v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v149)
      {
        v150 = 3;
      }

      else
      {
        v150 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v150, v178, v204, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_278:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v160, v170);
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        *&v188 = v3;
        *(&v188 + 1) = v101;
        re::BindNode::bindPointWithOverride(v195, a3, re::introspect<re::GenericSRT<float>>(BOOL)::info, &v188);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_225;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v195;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v195[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_221;
    }
  }
}

uint64_t re::AnimationBlendTree<re::SkeletalPose>::createInstance(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD968;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::SkeletalPose>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::SkeletalPose>::init(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v4 = a2;
  v212 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::SkeletalPose>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v3);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v209, v24, v10, 0);
              re::EvaluationSkeletalPose::createInputHandle(&v193, v209, (v7 + 2360));
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_269;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v193);
              v10 = a2;
              if (v193)
              {
                if (*(&v193 + 1))
                {
                  (*(*v193 + 40))();
                  *(&v193 + 1) = 0;
                  v194 = 0;
                }

                *&v193 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v209);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v200 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v200);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v200 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v200);
                v178 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v200 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v200);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v200 = "scale";
                *&v200[8] = 5;
                re::RigDataValue::attributeValue(v17, v200, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v202)
                {
                  (*(**&buf[24] + 40))();
                }

                *v200 = "rotation";
                *&v200[8] = 8;
                re::RigDataValue::attributeValue(v17, v200, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v178;
                if (buf[0] & 1) == 0 && *&buf[24] && (v202)
                {
                  (*(**&buf[24] + 40))();
                }

                *v200 = "translation";
                *&v200[8] = 11;
                re::RigDataValue::attributeValue(v17, v200, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v202)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v200 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v200);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v200 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v200);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v200 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v200);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v200 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v200);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v200 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v200);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v200 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v200);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v202 = 0u;
            memset(buf, 0, sizeof(buf));
            *v200 = 3;
            memset(&v200[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v200);
            *v200 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v200);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v202 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v200 = 4;
            memset(&v200[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v200);
            *v200 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v200);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v200);
  re::RigGraphCompilation::operator=((v7 + 160), &v200[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_273;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(buf, *(v26 + 184), v10, 0);
    re::EvaluationSkeletalPose::createOutputHandle(v209, buf, (v7 + 2360));
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v209);
    if (v209[0])
    {
      if (v209[1])
      {
        (*(*v209[0] + 40))();
        v209[1] = 0;
        v209[2] = 0;
      }

      v209[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>(buf, (v7 + 2360));
  (*(*(v7 + 5600) + 32))(&v193);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v4);
    if (v202 <= 4u)
    {
      if (v202 > 2u)
      {
        if (v202 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_253;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v197 = v3;
          *&v197[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v197, 1, v209);
          if (LOBYTE(v209[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v209[3] && (v209[4] & 1) != 0)
            {
              (*(*v209[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_267;
          }

          v72 = v205;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v202 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_233;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v197 = v3;
          *&v197[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v197, 1, v209);
          if (LOBYTE(v209[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v209[3] && (v209[4] & 1) != 0)
            {
              (*(*v209[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_266;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v206;
          v65 = v207;
          *v64 = v205;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v202 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_229;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v197 = v3;
          *&v197[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v197, 1, v209);
          if (LOBYTE(v209[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v209[3] && (v209[4] & 1) != 0)
            {
              (*(*v209[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_264;
          }

          v70 = *v27;
          v61 = v205;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v202 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_245;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v197 = v3;
          *&v197[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v197, 1, v209);
          if (LOBYTE(v209[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v209[3] && (v209[4] & 1) != 0)
            {
              (*(*v209[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_262;
          }

          v60 = *v27;
          v61 = v205;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v202 <= 6u)
    {
      if (v202 != 5)
      {
        if (v202 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_237;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v197 = v3;
        *&v197[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v197, 1, v209);
        if (LOBYTE(v209[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v209[3] && (v209[4] & 1) != 0)
          {
            (*(*v209[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_268;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_257;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v197 = v3;
      *&v197[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v197, 1, v209);
      if (LOBYTE(v209[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v209[3] && (v209[4] & 1) != 0)
        {
          (*(*v209[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_265;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v208;
      v79 = v205;
      v78 = v206;
      v76[2] = v207;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v202 != 7)
      {
        if (v202 != 8)
        {
          if (v202 == 13 && (*(&v202 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_274;
            }

            v30 = strlen(*(v8[14] + v29));
            *v197 = *(v8[14] + v29);
            *&v197[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v197, 1, v209);
            if (LOBYTE(v209[0]) != 1 && v209[3] && (v209[4] & 1) != 0)
            {
              (*(*v209[3] + 40))();
            }

            v187[0] = "scale";
            v187[1] = 5;
            re::RigDataValue::attributeValue(buf, v187, v209);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v209[1], v31);
            v33 = *v32;
            v179 = v32[1];
            v186[0] = "rotation";
            v186[1] = 8;
            re::RigDataValue::attributeValue(buf, v186, v197);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v197[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v182[0] = "translation";
            v182[1] = 11;
            re::RigDataValue::attributeValue(buf, v182, v183);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v183[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v188 = v33;
            *(&v188 + 1) = v179;
            v189 = v36;
            v190 = v3;
            v191 = v41;
            v192 = v40;
            if (v183[0] & 1) == 0 && v184 && (v185)
            {
              (*(*v184 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v197[0] & 1) == 0 && *&v199[4] && (v199[12])
            {
              (*(**&v199[4] + 40))();
            }

            if (v209[0] & 1) == 0 && v209[3] && (v209[4])
            {
              (*(*v209[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_278;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v188);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_241;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v197 = v3;
        *&v197[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v197, 1, v209);
        if (LOBYTE(v209[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v209[3] && (v209[4] & 1) != 0)
          {
            (*(*v209[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_263;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v205;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_249;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v197 = v3;
      *&v197[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v197, 1, v209);
      if (LOBYTE(v209[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v209[3] && (v209[4] & 1) != 0)
        {
          (*(*v209[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_261;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v205;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v193 & 1) == 0 && v195 && (v196)
  {
    (*(*v195 + 40))();
  }

  if (v200[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v200[8]);
  }

  else if (*&v200[24] && (v200[32] & 1) != 0)
  {
    (*(**&v200[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        *&v193 = *(*(v86 + 408) + v88);
        *(&v193 + 1) = v89;
        re::BindNode::bindPointWithOverride(v200, a3, re::introspect<float>(BOOL)::info, &v193);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_217;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v200;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v200[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v200[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v200[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      *&v193 = 0;
      __s1 = 0u;
      v204 = 0u;
      v202 = 0u;
      memset(buf, 0, sizeof(buf));
      v114 = MEMORY[0x1E69E9C10];
      v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v209[0]) = 136315906;
      *(v209 + 4) = "operator[]";
      WORD2(v209[1]) = 1024;
      if (v115)
      {
        v116 = 3;
      }

      else
      {
        v116 = 2;
      }

      *(&v209[1] + 6) = 797;
      WORD1(v209[2]) = 2048;
      *(&v209[2] + 4) = v87;
      WORD2(v209[3]) = 2048;
      *(&v209[3] + 6) = v3;
      _os_log_send_and_compose_impl(v116, &v193, buf, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v209, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_217:
      *v197 = 0;
      __s1 = 0u;
      v204 = 0u;
      v202 = 0u;
      memset(buf, 0, sizeof(buf));
      v117 = MEMORY[0x1E69E9C10];
      v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v209[0]) = 136315906;
      *(v209 + 4) = "operator[]";
      WORD2(v209[1]) = 1024;
      if (v118)
      {
        v119 = 3;
      }

      else
      {
        v119 = 2;
      }

      *(&v209[1] + 6) = 468;
      WORD1(v209[2]) = 2048;
      *(&v209[2] + 4) = v87;
      WORD2(v209[3]) = 2048;
      *(&v209[3] + 6) = v3;
      _os_log_send_and_compose_impl(v119, v197, buf, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v209, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_221:
      *&v193 = 0;
      __s1 = 0u;
      v204 = 0u;
      v202 = 0u;
      memset(buf, 0, sizeof(buf));
      v120 = MEMORY[0x1E69E9C10];
      v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v209[0]) = 136315906;
      *(v209 + 4) = "operator[]";
      WORD2(v209[1]) = 1024;
      if (v121)
      {
        v122 = 3;
      }

      else
      {
        v122 = 2;
      }

      *(&v209[1] + 6) = 797;
      WORD1(v209[2]) = 2048;
      *(&v209[2] + 4) = v10;
      WORD2(v209[3]) = 2048;
      *(&v209[3] + 6) = v4;
      _os_log_send_and_compose_impl(v122, &v193, buf, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v209, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_225:
      *v197 = 0;
      __s1 = 0u;
      v204 = 0u;
      v202 = 0u;
      memset(buf, 0, sizeof(buf));
      v123 = MEMORY[0x1E69E9C10];
      v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v209[0]) = 136315906;
      *(v209 + 4) = "operator[]";
      WORD2(v209[1]) = 1024;
      if (v124)
      {
        v125 = 3;
      }

      else
      {
        v125 = 2;
      }

      *(&v209[1] + 6) = 468;
      WORD1(v209[2]) = 2048;
      *(&v209[2] + 4) = v10;
      WORD2(v209[3]) = 2048;
      *(&v209[3] + 6) = v4;
      _os_log_send_and_compose_impl(v125, v197, buf, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v209, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_229:
      v183[0] = 0;
      v210 = 0u;
      v211 = 0u;
      memset(v209, 0, sizeof(v209));
      v126 = MEMORY[0x1E69E9C10];
      v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v197 = 136315906;
      *&v197[4] = "operator[]";
      *&v197[12] = 1024;
      if (v127)
      {
        v128 = 3;
      }

      else
      {
        v128 = 2;
      }

      *&v197[14] = 797;
      v198 = 2048;
      *v199 = v4;
      *&v199[8] = 2048;
      *&v199[10] = v10;
      _os_log_send_and_compose_impl(v128, v183, v209, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_233:
      v183[0] = 0;
      v210 = 0u;
      v211 = 0u;
      memset(v209, 0, sizeof(v209));
      v129 = MEMORY[0x1E69E9C10];
      v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v197 = 136315906;
      *&v197[4] = "operator[]";
      *&v197[12] = 1024;
      if (v130)
      {
        v131 = 3;
      }

      else
      {
        v131 = 2;
      }

      *&v197[14] = 797;
      v198 = 2048;
      *v199 = v4;
      *&v199[8] = 2048;
      *&v199[10] = v10;
      _os_log_send_and_compose_impl(v131, v183, v209, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_237:
      v183[0] = 0;
      v210 = 0u;
      v211 = 0u;
      memset(v209, 0, sizeof(v209));
      v132 = MEMORY[0x1E69E9C10];
      v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v197 = 136315906;
      *&v197[4] = "operator[]";
      *&v197[12] = 1024;
      if (v133)
      {
        v134 = 3;
      }

      else
      {
        v134 = 2;
      }

      *&v197[14] = 797;
      v198 = 2048;
      *v199 = v4;
      *&v199[8] = 2048;
      *&v199[10] = v10;
      _os_log_send_and_compose_impl(v134, v183, v209, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_241:
      v183[0] = 0;
      v210 = 0u;
      v211 = 0u;
      memset(v209, 0, sizeof(v209));
      v135 = MEMORY[0x1E69E9C10];
      v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v197 = 136315906;
      *&v197[4] = "operator[]";
      *&v197[12] = 1024;
      if (v136)
      {
        v137 = 3;
      }

      else
      {
        v137 = 2;
      }

      *&v197[14] = 797;
      v198 = 2048;
      *v199 = v4;
      *&v199[8] = 2048;
      *&v199[10] = v10;
      _os_log_send_and_compose_impl(v137, v183, v209, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_245:
      v183[0] = 0;
      v210 = 0u;
      v211 = 0u;
      memset(v209, 0, sizeof(v209));
      v138 = MEMORY[0x1E69E9C10];
      v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v197 = 136315906;
      *&v197[4] = "operator[]";
      *&v197[12] = 1024;
      if (v139)
      {
        v140 = 3;
      }

      else
      {
        v140 = 2;
      }

      *&v197[14] = 797;
      v198 = 2048;
      *v199 = v4;
      *&v199[8] = 2048;
      *&v199[10] = v10;
      _os_log_send_and_compose_impl(v140, v183, v209, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_249:
      v183[0] = 0;
      v210 = 0u;
      v211 = 0u;
      memset(v209, 0, sizeof(v209));
      v141 = MEMORY[0x1E69E9C10];
      v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v197 = 136315906;
      *&v197[4] = "operator[]";
      *&v197[12] = 1024;
      if (v142)
      {
        v143 = 3;
      }

      else
      {
        v143 = 2;
      }

      *&v197[14] = 797;
      v198 = 2048;
      *v199 = v4;
      *&v199[8] = 2048;
      *&v199[10] = v10;
      _os_log_send_and_compose_impl(v143, v183, v209, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_253:
      v183[0] = 0;
      v210 = 0u;
      v211 = 0u;
      memset(v209, 0, sizeof(v209));
      v144 = MEMORY[0x1E69E9C10];
      v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v197 = 136315906;
      *&v197[4] = "operator[]";
      *&v197[12] = 1024;
      if (v145)
      {
        v146 = 3;
      }

      else
      {
        v146 = 2;
      }

      *&v197[14] = 797;
      v198 = 2048;
      *v199 = v4;
      *&v199[8] = 2048;
      *&v199[10] = v10;
      _os_log_send_and_compose_impl(v146, v183, v209, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_257:
      v183[0] = 0;
      v210 = 0u;
      v211 = 0u;
      memset(v209, 0, sizeof(v209));
      v147 = MEMORY[0x1E69E9C10];
      v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v197 = 136315906;
      *&v197[4] = "operator[]";
      *&v197[12] = 1024;
      if (v148)
      {
        v149 = 3;
      }

      else
      {
        v149 = 2;
      }

      *&v197[14] = 797;
      v198 = 2048;
      *v199 = v4;
      *&v199[8] = 2048;
      *&v199[10] = v10;
      _os_log_send_and_compose_impl(v149, v183, v209, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_261:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v156, v166);
      __break(1u);
LABEL_262:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v157, v167);
      __break(1u);
LABEL_263:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v158, v168);
      __break(1u);
LABEL_264:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v159, v169);
      __break(1u);
LABEL_265:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v160, v170);
      __break(1u);
LABEL_266:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v161, v171);
      __break(1u);
LABEL_267:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v162, v172);
      __break(1u);
LABEL_268:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v163, v173);
      __break(1u);
LABEL_269:
      *v197 = 0;
      __s1 = 0u;
      v204 = 0u;
      v202 = 0u;
      memset(buf, 0, sizeof(buf));
      v150 = MEMORY[0x1E69E9C10];
      v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v200 = 136315906;
      *&v200[4] = "operator[]";
      *&v200[12] = 1024;
      if (v151)
      {
        v152 = 3;
      }

      else
      {
        v152 = 2;
      }

      *&v200[14] = 789;
      *&v200[18] = 2048;
      *&v200[20] = v3;
      *&v200[28] = 2048;
      *&v200[30] = v10;
      _os_log_send_and_compose_impl(v152, v197, buf, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v200, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_273:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v164, v174);
      __break(1u);
LABEL_274:
      v183[0] = 0;
      v210 = 0u;
      v211 = 0u;
      memset(v209, 0, sizeof(v209));
      v153 = MEMORY[0x1E69E9C10];
      v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v197 = 136315906;
      *&v197[4] = "operator[]";
      *&v197[12] = 1024;
      if (v154)
      {
        v155 = 3;
      }

      else
      {
        v155 = 2;
      }

      *&v197[14] = 797;
      v198 = 2048;
      *v199 = v4;
      *&v199[8] = 2048;
      *&v199[10] = v10;
      _os_log_send_and_compose_impl(v155, v183, v209, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v176, v177);
      _os_crash_msg();
      __break(1u);
LABEL_278:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v165, v175);
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v109, v110, v111, v112, v113);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        *&v193 = v3;
        *(&v193 + 1) = v101;
        re::BindNode::bindPointWithOverride(v200, a3, re::introspect<re::SkeletalPose>(BOOL)::info, &v193);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_225;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v200;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v200[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v200[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v200[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_221;
    }
  }
}

uint64_t re::AnimationBlendTreeDefinition::findClipIndex(re::AnimationBlendTreeDefinition *this, unint64_t a2)
{
  if (*(this + 2) <= a2)
  {
    return -1;
  }

  v2 = 0;
  v3 = a2;
  if (a2)
  {
    v4 = (*(this + 4) + 16);
    do
    {
      v2 += re::StringID::operator==(v4, re::AnimationBlendTreeNodeDescription::kClip);
      v4 += 11;
      --v3;
    }

    while (v3);
  }

  return v2;
}

re::IntrospectionSharedLock *re::IntrospectionSharedLock::IntrospectionSharedLock(re::IntrospectionSharedLock *this)
{
  v2 = re::IntrospectionSharedLock::m_sharedLockLevel();
  v3 = v2;
  v4 = *v2;
  if (!*v2)
  {
    v5 = re::introspectionSharedMutex(v2);
    std::__shared_mutex_base::lock_shared(v5);
    v4 = *v3;
  }

  *v3 = v4 + 1;
  return this;
}

void re::IntrospectionSharedLock::~IntrospectionSharedLock(re::IntrospectionSharedLock *this)
{
  v1 = re::IntrospectionSharedLock::m_sharedLockLevel();
  if ((*v1)-- == 1)
  {
    v3 = re::introspectionSharedMutex(v1);
    std::__shared_mutex_base::unlock_shared(v3);
  }
}

re::IntrospectionDynamicArrayBase *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(re::IntrospectionDynamicArrayBase *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CADA48;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  return this;
}

void *re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionDynamicArrayBase::childInfo(re::IntrospectionDynamicArrayBase *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 494, v2, v3);
  result = _os_crash("assertion failure: (index == 0) Index out of range.");
  __break(1u);
  return result;
}

void re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v12 = 0;
  v14 = 0;
  v16 = 0;
  v18 = 0;
  v11[1] = &str_67;
  v13 = &str_67;
  v15 = &str_67;
  v17 = &str_67;
  v19 = &str_67;
  v20 = 0;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::add(this, v11);
  if (v18)
  {
    if (v18)
    {
    }
  }

  v18 = 0;
  v19 = &str_67;
  if (v16)
  {
    if (v16)
    {
    }
  }

  v16 = 0;
  v17 = &str_67;
  if (v14)
  {
    if (v14)
    {
    }
  }

  v14 = 0;
  v15 = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 88 * *(this + 2) - 88);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

void re::IntrospectionDynamicArrayBase::~IntrospectionDynamicArrayBase(re::IntrospectionDynamicArrayBase *this)
{
  *this = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArrayBase::resize(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "resize", 485);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionDynamicArrayBase::addElement(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "addElement", 486);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionDynamicArrayBase::size(re::IntrospectionDynamicArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "size", 487);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionDynamicArrayBase::elementAt(re::IntrospectionDynamicArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "elementAt", 488);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "elementAt", 489);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

uint64_t re::SerializedReference<re::IntrospectionBase const*>::reset(uint64_t result)
{
  *result = 0;
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    v4 = re::DynamicString::deinit(*(result + 8));
    result = (*(*v3 + 40))(v3, v1, v4);
    *(v2 + 8) = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 88 * v4;
        do
        {
          re::StringID::destroyString((v3 + 64));
          re::StringID::destroyString((v3 + 48));
          re::StringID::destroyString((v3 + 32));
          re::StringID::destroyString((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 88;
          v5 -= 88;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[11 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          LOBYTE(v12) = v8[4];
          v11[4] = v11[4] & 0xFFFFFFFFFFFFFFFELL | v8[4] & 1;
          v11[4] = v8[4] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[5] = v8[5];
          v8[5] = &str_67;
          v8[4] = 0;
          LOBYTE(v12) = v8[6];
          v11[6] = v11[6] & 0xFFFFFFFFFFFFFFFELL | v8[6] & 1;
          v11[6] = v8[6] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[7] = v8[7];
          v8[7] = &str_67;
          v8[6] = 0;
          LOBYTE(v12) = v8[8];
          v11[8] = v11[8] & 0xFFFFFFFFFFFFFFFELL | v8[8] & 1;
          v11[8] = v8[8] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[9] = v8[9];
          v8[9] = &str_67;
          v8[8] = 0;
          *(v11 + 20) = *(v8 + 20);
          re::StringID::destroyString((v8 + 8));
          re::StringID::destroyString((v8 + 6));
          re::StringID::destroyString((v8 + 4));
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 11;
          v8 += 11;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DynamicArray<re::AnimationBlendTreeNodeDescription>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 88 * a2;
    v9 = a2;
    do
    {
      v10 = result[4] + v8;
      re::StringID::destroyString((v10 + 64));
      re::StringID::destroyString((v10 + 48));
      re::StringID::destroyString((v10 + 32));
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 88;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4 + 40;
      do
      {
        v7 = result[4] + v6;
        *(v7 - 40) = 0;
        *(v7 - 32) = &str_67;
        *(v7 - 24) = 0;
        *(v7 - 16) = &str_67;
        *(v7 - 8) = 0;
        *v7 = &str_67;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 32) = &str_67;
        *(v7 + 40) = 0;
        v6 += 88;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

float re::DynamicArray<re::AnimationBlendTreeNodeDescription>::add(_anonymous_namespace_ *this, float *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 88 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = &str_67;
  v7 = *(a2 + 2);
  *(v5 + 16) = *(v5 + 16) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 16) = *(a2 + 2) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = *(a2 + 3);
  *(a2 + 2) = 0;
  *(a2 + 3) = &str_67;
  v8 = *(a2 + 4);
  *(v5 + 32) = *(v5 + 32) & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v5 + 32) = *(a2 + 4) & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v5 + 40) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = &str_67;
  v9 = *(a2 + 6);
  *(v5 + 48) = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v5 + 48) = *(a2 + 6) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v5 + 56) = *(a2 + 7);
  *(a2 + 6) = 0;
  *(a2 + 7) = &str_67;
  v10 = *(a2 + 8);
  *(v5 + 64) = *(v5 + 64) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v5 + 64) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v5 + 72) = *(a2 + 9);
  *(a2 + 8) = 0;
  *(a2 + 9) = &str_67;
  result = a2[20];
  *(v5 + 80) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::AnimationBlendTreeNodeDescription>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 88 * v8;
      do
      {
        re::StringID::destroyString((v9 + 64));
        re::StringID::destroyString((v9 + 48));
        re::StringID::destroyString((v9 + 32));
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 88;
        v10 -= 88;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 88 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 88;
        v14 -= 88;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 88 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 88 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::RigGraphConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphConnection>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphConnection>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphConnection>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigGraphConnection>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphConnection>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigGraphConnection>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphConnection>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphConnection>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
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
  re::StringID::invalid(&v11);
  re::StringID::invalid(&v12);
  re::StringID::invalid(&v13);
  re::StringID::invalid(&v14);
  re::StringID::invalid(&v15);
  re::StringID::invalid(&v16);
  re::StringID::invalid(&v17);
  re::StringID::invalid(&v18);
  re::StringID::invalid(&v19);
  re::StringID::invalid(&v20);
  v8 = re::DynamicArray<re::RigGraphConnection>::add(a4, &v11);
  if (v20)
  {
    if (v20)
    {
    }
  }

  *&v20 = 0;
  *(&v20 + 1) = &str_67;
  if (v19)
  {
    if (v19)
    {
    }
  }

  *&v19 = 0;
  *(&v19 + 1) = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  *&v18 = 0;
  *(&v18 + 1) = &str_67;
  if (v17)
  {
    if (v17)
    {
    }
  }

  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  if (v16)
  {
    if (v16)
    {
    }
  }

  *&v16 = 0;
  *(&v16 + 1) = &str_67;
  if (v15)
  {
    if (v15)
    {
    }
  }

  *&v15 = 0;
  *(&v15 + 1) = &str_67;
  if (v14)
  {
    if (v14)
    {
    }
  }

  *&v14 = 0;
  *(&v14 + 1) = &str_67;
  if (v13)
  {
    if (v13)
    {
    }
  }

  *&v13 = 0;
  *(&v13 + 1) = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  *&v12 = 0;
  *(&v12 + 1) = &str_67;
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (*(a4 + 4) + 160 * *(a4 + 2) - 160);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::RigGraphConnection>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 160 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 160 * a3;
}

void *re::DynamicArray<re::RigGraphConnection>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    result = result[4];
    if (result)
    {
      re::ObjectHelper::destroy<re::RigGraphConnection>(result, &result[20 * v1[2]]);
      result = (*(**v1 + 40))(*v1, v1[4]);
    }

    v1[4] = 0;
    v1[1] = 0;
    v1[2] = 0;
    *v1 = 0;
    ++*(v1 + 6);
  }

  return result;
}

void re::ObjectHelper::destroy<re::RigGraphConnection>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      re::StringID::destroyString((v3 + 144));
      re::StringID::destroyString((v3 + 128));
      re::StringID::destroyString((v3 + 112));
      re::StringID::destroyString((v3 + 96));
      re::StringID::destroyString((v3 + 80));
      re::StringID::destroyString((v3 + 64));
      re::StringID::destroyString((v3 + 48));
      re::StringID::destroyString((v3 + 32));
      re::StringID::destroyString((v3 + 16));
      re::StringID::destroyString(v3);
      v3 += 160;
    }

    while (v3 != a2);
  }
}

void *re::DynamicArray<re::RigGraphConnection>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RigGraphConnection>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 160 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::RigGraphConnection>(v8, v11);
          v8 = (v8 + 160);
          v11 += 20;
          v10 -= 160;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::ObjectHelper::move<re::RigGraphConnection>(re::StringID *a1, unint64_t *a2)
{
  v3 = *a1;
  *a2 = *a2 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  *a2 = *a1 & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  a2[1] = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = &str_67;
  v5 = (a1 + 16);
  v4 = *(a1 + 2);
  a2[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | *(a1 + 2) & 1;
  a2[2] = *(a1 + 2) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
  a2[3] = *(a1 + 3);
  *(a1 + 3) = &str_67;
  v7 = (a1 + 32);
  v6 = *(a1 + 4);
  *(a1 + 2) = 0;
  a2[4] = a2[4] & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  a2[4] = *(a1 + 4) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  a2[5] = *(a1 + 5);
  *(a1 + 5) = &str_67;
  *(a1 + 4) = 0;
  v9 = (a1 + 48);
  v8 = *(a1 + 6);
  a2[6] = a2[6] & 0xFFFFFFFFFFFFFFFELL | *(a1 + 6) & 1;
  a2[6] = *(a1 + 6) & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  a2[7] = *(a1 + 7);
  *(a1 + 7) = &str_67;
  *(a1 + 6) = 0;
  v11 = (a1 + 64);
  v10 = *(a1 + 8);
  a2[8] = a2[8] & 0xFFFFFFFFFFFFFFFELL | *(a1 + 8) & 1;
  a2[8] = *(a1 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  a2[9] = *(a1 + 9);
  *(a1 + 9) = &str_67;
  *(a1 + 8) = 0;
  v13 = (a1 + 80);
  v12 = *(a1 + 10);
  a2[10] = a2[10] & 0xFFFFFFFFFFFFFFFELL | *(a1 + 10) & 1;
  a2[10] = *(a1 + 10) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  a2[11] = *(a1 + 11);
  *(a1 + 11) = &str_67;
  *(a1 + 10) = 0;
  v15 = (a1 + 96);
  v14 = *(a1 + 12);
  a2[12] = a2[12] & 0xFFFFFFFFFFFFFFFELL | *(a1 + 12) & 1;
  a2[12] = *(a1 + 12) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  a2[13] = *(a1 + 13);
  *(a1 + 13) = &str_67;
  *(a1 + 12) = 0;
  v17 = (a1 + 112);
  v16 = *(a1 + 14);
  a2[14] = a2[14] & 0xFFFFFFFFFFFFFFFELL | *(a1 + 14) & 1;
  a2[14] = *(a1 + 14) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
  a2[15] = *(a1 + 15);
  *(a1 + 15) = &str_67;
  v19 = (a1 + 128);
  v18 = *(a1 + 16);
  *(a1 + 14) = 0;
  a2[16] = a2[16] & 0xFFFFFFFFFFFFFFFELL | v18 & 1;
  a2[16] = *(a1 + 16) & 0xFFFFFFFFFFFFFFFELL | v18 & 1;
  a2[17] = *(a1 + 17);
  *(a1 + 17) = &str_67;
  *(a1 + 16) = 0;
  v21 = *(a1 + 18);
  v20 = (a1 + 144);
  a2[18] = a2[18] & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
  a2[18] = *v20 & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
  a2[19] = *(a1 + 19);
  *(a1 + 19) = &str_67;
  *v20 = 0;
  re::StringID::destroyString(v20);
  re::StringID::destroyString(v19);
  re::StringID::destroyString(v17);
  re::StringID::destroyString(v15);
  re::StringID::destroyString(v13);
  re::StringID::destroyString(v11);
  re::StringID::destroyString(v9);
  re::StringID::destroyString(v7);
  re::StringID::destroyString(v5);

  re::StringID::destroyString(a1);
}

void re::DynamicArray<re::RigGraphConnection>::resize(re::StringID *result, unint64_t a2)
{
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 160 * a2;
    v9 = a2;
    do
    {
      v10 = *(result + 4) + v8;
      re::StringID::destroyString((v10 + 144));
      re::StringID::destroyString((v10 + 128));
      re::StringID::destroyString((v10 + 112));
      re::StringID::destroyString((v10 + 96));
      re::StringID::destroyString((v10 + 80));
      re::StringID::destroyString((v10 + 64));
      re::StringID::destroyString((v10 + 48));
      re::StringID::destroyString((v10 + 32));
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 160;
    }

    while (v9 < *(result + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      re::DynamicArray<re::RigGraphConnection>::setCapacity(result, a2);
      v4 = *(result + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 160 * v4 + 144;
      do
      {
        v7 = (*(result + 4) + v6);
        re::StringID::invalid((v7 - 144));
        re::StringID::invalid((v7 - 128));
        re::StringID::invalid((v7 - 112));
        re::StringID::invalid((v7 - 96));
        re::StringID::invalid((v7 - 80));
        re::StringID::invalid((v7 - 64));
        re::StringID::invalid((v7 - 48));
        re::StringID::invalid((v7 - 32));
        re::StringID::invalid((v7 - 16));
        re::StringID::invalid(v7);
        v6 += 160;
        --v5;
      }

      while (v5);
    }
  }

  *(result + 2) = a2;
  ++*(result + 6);
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphConnection>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::RigGraphConnection>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = (*(v3 + 4) + 160 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = a2[2];
  v5[2] = v5[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[3] = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  v8 = a2[4];
  v5[4] = v5[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[4] = a2[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[5] = a2[5];
  a2[4] = 0;
  a2[5] = &str_67;
  v9 = a2[6];
  v5[6] = v5[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[6] = a2[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[7] = a2[7];
  a2[6] = 0;
  a2[7] = &str_67;
  v10 = a2[8];
  v5[8] = v5[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[8] = a2[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[9] = a2[9];
  a2[8] = 0;
  a2[9] = &str_67;
  v11 = a2[10];
  v5[10] = v5[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[10] = a2[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[11] = a2[11];
  a2[10] = 0;
  a2[11] = &str_67;
  v12 = a2[12];
  v5[12] = v5[12] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v5[12] = a2[12] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v5[13] = a2[13];
  a2[12] = 0;
  a2[13] = &str_67;
  v13 = a2[14];
  v5[14] = v5[14] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  v5[14] = a2[14] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  v5[15] = a2[15];
  a2[14] = 0;
  a2[15] = &str_67;
  v14 = a2[16];
  v5[16] = v5[16] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  v5[16] = a2[16] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  v5[17] = a2[17];
  a2[16] = 0;
  a2[17] = &str_67;
  v15 = a2[18];
  v5[18] = v5[18] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
  v5[18] = a2[18] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
  v5[19] = a2[19];
  a2[18] = 0;
  a2[19] = &str_67;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphConnection>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RigGraphConnection>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigGraphConnection>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigGraphConnection>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, void *a3, re::Allocator *a4, unint64_t a5)
{
  if (*a2 == a4)
  {
    v9 = *(a2 + 16);
    *(a2 + 16) = 0;
    re::ObjectHelper::destroy<re::RigGraphConnection>(*(a2 + 32), *(a2 + 32) + 160 * v9);
  }

  else
  {
    re::DynamicArray<re::RigGraphConnection>::deinit(a2);
    *a2 = a4;
    re::DynamicArray<re::RigGraphConnection>::setCapacity(a2, a5);
  }

  ++*(a2 + 24);
  re::DynamicArray<re::RigGraphConnection>::resize(a2, a5);
  {
    re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), &v15);
    re::TypeInfo::TypeInfo(v14, &v16);
    v11 = *(a2 + 16);
    if (v11)
    {
      v12 = *(a2 + 32);
      v13 = 160 * v11;
      do
      {
        re::TypeInfo::destruct(v14, v12, a4, 0);
        re::TypeInfo::construct(v14, v12, a4, 0);
        v12 += 160;
        v13 -= 160;
      }

      while (v13);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 160 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 160 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = v4 << 6;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 24);
          re::StringID::destroyString(v3);
          v3 = (v3 + 64);
          v5 -= 64;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 48 * v4;
        do
        {
          re::StringID::destroyString((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 48;
          v5 -= 48;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::AnimationBlendTreeInstance<float>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<float>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<float>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v3);
      v0 = &unk_1EE187000;
    }
  }

  return v0[40];
}

float re::AnimationImpl<float>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 40))(a1);
  *a2 = 0;
  result = v4;
  *(a2 + 4) = result;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = result;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = a1[16];
  return result;
}

double re::AnimationImpl<float>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 120, 8);
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACC30;
  *(v2 + 108) = 0;
  return result;
}

BOOL re::AnimationImpl<float>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v5);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[40] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Timeline::debugLogTimelineData(re *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v13, a2);
    (*(*a1 + 104))(a1, v13);
    if (*&v13[0])
    {
      if (BYTE8(v13[0]))
      {
        (*(**&v13[0] + 40))();
      }

      memset(v13, 0, sizeof(v13));
    }

    v5 = (*(*a1 + 24))(a1);
    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v10 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v11 = *(a2 + 16);
        }

        else
        {
          v11 = a2 + 9;
        }

        *buf = 136315394;
        v15 = v11;
        v16 = 2048;
        v17 = v5;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "ANIM: %sChildren (%ld)\n", buf, 0x16u);
      }
    }

    if (v5)
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        v9 = (*(*a1 + 32))(a1, i);
        re::DynamicString::operator+(v12, a2, "  ");
        (*(*v9 + 96))(v9, v12);
        if (*&v12[0])
        {
          if (BYTE8(v12[0]))
          {
            (*(**&v12[0] + 40))();
          }

          memset(v12, 0, sizeof(v12));
        }
      }
    }
  }
}

void re::Animation<float>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<float>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, _DWORD *a4, uint64_t a5, _DWORD *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v11);
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<float>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, uint64_t a5, _DWORD *a6, double a7)
{
  v115 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    v15 = 0;
    v16 = *(a1 + 400);
    do
    {
      if (v16 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v16 + 1);
        v16 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v16++) = &v89 + v15;
      *(a1 + 400) = v16;
      ++*(a1 + 408);
      v15 += 4;
    }

    while (v15 != 12);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    re::AnimationBlendTreeInstance<float>::evaluateBlend(a1, 0, 0, 0.0);
    v17 = *(a1 + 360);
    if (v17)
    {
      v18 = *(*(a1 + 376) + 16 * v17 - 16);
      if (v18 != a6)
      {
        *a6 = *v18;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v81 = a6;
  v19 = *(a1 + 440);
  v20 = *(a1 + 320);
  v83 = *(a1 + 312);
  v87[0] = a2;
  v87[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v84, v14 + 44);
  v21 = v14[39];
  if (v21 != *(v19 + 56))
  {
    if (!v21)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v21; ++i)
    {
      LODWORD(v89) = 0;
      re::DynamicArray<float>::add((v19 + 40), &v89);
      v21 = v14[39];
    }
  }

  if (v21)
  {
    v23 = 0;
    a3 = 0;
    while (1)
    {
      v7 = v85;
      if (v85 <= a3)
      {
        break;
      }

      v24 = *(v86 + 8 * a3);
      v8 = v14[42];
      if (v8 <= v24)
      {
        goto LABEL_80;
      }

      v7 = v24 + 1;
      if (v8 <= v24 + 1)
      {
        goto LABEL_84;
      }

      if (v21 <= v24)
      {
        goto LABEL_88;
      }

      v25 = *(v14[40] + 8 * v24);
      v26 = re::Slice<re::AnimationClock>::range(v87, *(v14[43] + 8 * v24), *(v14[43] + 8 * v7));
      v7 = *(v19 + 56);
      if (v7 <= a3)
      {
        goto LABEL_92;
      }

      v28 = v27;
      if (!v27)
      {
        goto LABEL_96;
      }

      v29 = (*(v19 + 72) + v23);
      v30 = v26[16] != 1 || *v26 == 2;
      if (!v30 || (*v29 = *a4, v25[2] == 49))
      {
        (*(*v25 + 120))(v25, v26, v27, a4, a5, v29);
      }

      v7 = *(v19 + 16);
      if (v7 <= a3)
      {
        goto LABEL_97;
      }

      v7 = *(v19 + 56);
      if (v7 <= a3)
      {
        goto LABEL_101;
      }

      re::AnimationBlendTreeRigContext<float>::setRigDataValue<float>(v19, *(*(v19 + 32) + 8 * a3), *(*(v19 + 72) + 4 * a3));
      ++a3;
      v21 = v14[39];
      v23 += 4;
      if (a3 >= v21)
      {
        goto LABEL_34;
      }
    }

    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v52, &v88, &v89, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_80:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v24;
    v113 = 2048;
    v114 = v8;
    _os_log_send_and_compose_impl(v55, &v88, &v89, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_84:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v7;
    v113 = 2048;
    v114 = v8;
    _os_log_send_and_compose_impl(v57, &v88, &v89, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_88:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v24;
    v113 = 2048;
    v114 = v21;
    _os_log_send_and_compose_impl(v60, &v88, &v89, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_92:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v63, &v88, &v89, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_96:
    re::internal::assertLog(6, v27, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v73, v76);
    __break(1u);
LABEL_97:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v66, &v88, &v89, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_101:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v67 = MEMORY[0x1E69E9C10];
    v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v68)
    {
      v69 = 3;
    }

    else
    {
      v69 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v69, &v88, &v89, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_105:
    re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v35);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v74, v77);
    __break(1u);
LABEL_106:
    re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v75, v78);
    __break(1u);
LABEL_107:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v70 = MEMORY[0x1E69E9C10];
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = v7;
    v113 = 2048;
    v114 = a3;
    _os_log_send_and_compose_impl(v72, &v88, &v89, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
  }

LABEL_34:
  if (v83)
  {
    v31 = 0;
    v32 = 0;
    v7 = 0;
    do
    {
      if (!*(v20 + 3) || !re::BindPoint::isAlive(v20))
      {
        goto LABEL_68;
      }

      v33 = re::BindPoint::valueUntyped(v20);
      v35 = *(v19 + 232);
      if (v35 <= v7)
      {
        goto LABEL_105;
      }

      v36 = v33;
      v37 = *(v19 + 248);
      a3 = v37 + v31;
      v38 = *(v37 + v31 + 32);
      if (v38 > 5)
      {
        if (*(v37 + v31 + 32) <= 7u)
        {
          if (v38 != 6)
          {
            if (v38 == 7)
            {
              *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v37 + v31, v34) = *v33;
            }

            goto LABEL_68;
          }

          v46 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v37 + v31, v34);
        }

        else
        {
          if (v38 != 8)
          {
            if (v38 == 10)
            {
              a3 = *(v19 + 96);
              if (a3 <= v7)
              {
                goto LABEL_107;
              }

              re::EvaluationSkeletalPoseInputHandle::set((*(v19 + 112) + v32), v33);
            }

            else if (v38 == 13 && *(v37 + v31 + 40) >> 1 == 82389)
            {
              v43 = *(v37 + v31 + 48);
              if (v43 == "SRT" || !strcmp(v43, "SRT"))
              {
                re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(a3, v36);
              }
            }

            goto LABEL_68;
          }

          v46 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v37 + v31, v34);
        }

        *v46 = *v36;
      }

      else
      {
        if (*(v37 + v31 + 32) > 2u)
        {
          switch(v38)
          {
            case 3u:
              re::AnimationBlendTreeRigContext<float>::setRigDataValue<float>(v19, v7, *v33);
              break;
            case 4u:
              v47 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v37 + v31, v34);
              v49 = *(v36 + 1);
              v48 = *(v36 + 2);
              *v47 = *v36;
              v47[1] = v49;
              v47[2] = v48;
              break;
            case 5u:
              v39 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v37 + v31, v34);
              v40 = *(v36 + 3);
              v42 = *v36;
              v41 = *(v36 + 1);
              v39[2] = *(v36 + 2);
              v39[3] = v40;
              *v39 = v42;
              v39[1] = v41;
              break;
          }

          goto LABEL_68;
        }

        if (v38 == 1)
        {
          v44 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v37 + v31, v34);
          goto LABEL_60;
        }

        if (v38 == 2)
        {
          v44 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v37 + v31, v34);
LABEL_60:
          *Runtime = v44;
        }
      }

LABEL_68:
      ++v7;
      v32 += 24;
      v31 += 288;
      v20 = (v20 + 48);
    }

    while (v83 != v7);
  }

  if ((*(v19 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v19 + 2360));
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  re::EvaluationContextSlices::init(&v89, (v19 + 4896));
  (*(*(v19 + 5600) + 16))(v19 + 5600, &v89);
  if (!*(v19 + 272))
  {
    goto LABEL_106;
  }

  *v81 = *re::RigDataValue::getRuntimeValue<float>(*(v19 + 288), v50);
  if (v84 && v85)
  {
    (*(*v84 + 40))();
  }
}

void re::AnimationImpl<float>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash("assertion failure: (!Unreachable code) At least one overloaded version of evaluteCore must be overridden.");
  __break(1u);
}

void re::Timeline::child(re::Timeline *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not implemented.", "!Unreachable code", "child", 184);
  _os_crash("assertion failure: (!Unreachable code) Not implemented.");
  __break(1u);
}

void re::Timeline::debugLogData(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  v5 = re::AnimationLogObjects::loggingEnabled(v4);
  if (v5)
  {
    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v20 = *re::animationLogObjects(v7);
      v7 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        v22 = (*(a2 + 8) & 1) != 0 ? *(a2 + 16) : a2 + 9;
        re::Timeline::getTypeName(a1, v21, v38);
        v33 = (v38[8] & 1) != 0 ? *&v40[2] : &v38[9];
        *buf = 136315394;
        v42 = v22;
        v43 = 2080;
        v44 = v33;
        _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "ANIM: %stype: %s\n", buf, 0x16u);
        v7 = *v38;
        if (*v38)
        {
          if (v38[8])
          {
            v7 = (*(**v38 + 40))();
          }
        }
      }
    }

    v8 = re::animationLogObjects(v7);
    v9 = re::AnimationLogObjects::loggingEnabled(v8);
    if (v9)
    {
      v23 = *re::animationLogObjects(v9);
      v9 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (*(a2 + 8))
        {
          v24 = *(a2 + 16);
        }

        else
        {
          v24 = a2 + 9;
        }

        v34 = *(a1 + 32);
        *v38 = 136315394;
        *&v38[4] = v24;
        v39 = 2080;
        *v40 = v34;
        _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "ANIM: %sname: %s\n", v38, 0x16u);
      }
    }

    v10 = re::animationLogObjects(v9);
    v11 = re::AnimationLogObjects::loggingEnabled(v10);
    if (v11)
    {
      v25 = *re::animationLogObjects(v11);
      v11 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (*(a2 + 8))
        {
          v26 = *(a2 + 16);
        }

        else
        {
          v26 = a2 + 9;
        }

        v35 = *(a1 + 12);
        *v38 = 136315394;
        *&v38[4] = v26;
        v39 = 1024;
        *v40 = v35;
        _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "ANIM: %slayer: %d\n", v38, 0x12u);
      }
    }

    v12 = re::animationLogObjects(v11);
    v13 = re::AnimationLogObjects::loggingEnabled(v12);
    if (v13)
    {
      v27 = *re::animationLogObjects(v13);
      v13 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        v29 = (*(a2 + 8) & 1) != 0 ? *(a2 + 16) : a2 + 9;
        re::Timeline::getFillModeName(a1, v28, v38);
        v36 = (v38[8] & 1) != 0 ? *&v40[2] : &v38[9];
        *buf = 136315394;
        v42 = v29;
        v43 = 2080;
        v44 = v36;
        _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "ANIM: %sfillMode: %s\n", buf, 0x16u);
        v13 = *v38;
        if (*v38)
        {
          if (v38[8])
          {
            v13 = (*(**v38 + 40))();
          }
        }
      }
    }

    v14 = re::animationLogObjects(v13);
    v15 = re::AnimationLogObjects::loggingEnabled(v14);
    if (v15)
    {
      v30 = *re::animationLogObjects(v15);
      v15 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (*(a2 + 8))
        {
          v31 = *(a2 + 16);
        }

        else
        {
          v31 = a2 + 9;
        }

        if (*(a1 + 48))
        {
          v37 = *(a1 + 56);
        }

        else
        {
          v37 = a1 + 49;
        }

        *v38 = 136315394;
        *&v38[4] = v31;
        v39 = 2080;
        *v40 = v37;
        _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "ANIM: %stargetPath: %s\n", v38, 0x16u);
      }
    }

    v16 = re::animationLogObjects(v15);
    v17 = re::AnimationLogObjects::loggingEnabled(v16);
    if (v17)
    {
      v18 = *re::animationLogObjects(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v19 = *(a2 + 16);
        }

        else
        {
          v19 = a2 + 9;
        }

        v32 = (*(*a1 + 40))(a1);
        *v38 = 136315394;
        *&v38[4] = v19;
        v39 = 2048;
        *v40 = v32;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "ANIM: %sduration: %f\n", v38, 0x16u);
      }
    }
  }
}

uint64_t *re::Timeline::getTypeName@<X0>(re::Timeline *this@<X0>, const char *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v3 = *(this + 2);
  if (v3 > 0x3E)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = (&off_1E8717B78)[v3];
  }

  return re::DynamicString::format(a3, v4, a2);
}

uint64_t *re::Timeline::getFillModeName@<X0>(re::Timeline *this@<X0>, const char *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v3 = *(this + 16);
  if (v3 > 3)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = (&off_1E8717D70)[v3];
  }

  return re::DynamicString::format(a3, v4, a2);
}

uint64_t re::AnimationBlendTreeInstance<float>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD2B8;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::EvaluationModelSingleThread::~EvaluationModelSingleThread(re::EvaluationModelSingleThread *this)
{
  *this = &unk_1F5CB2E90;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 95);
  re::FixedArray<CoreIKTransform>::deinit(this + 92);
  re::FixedArray<CoreIKTransform>::deinit(this + 89);
  re::FixedArray<CoreIKTransform>::deinit(this + 86);
  re::FixedArray<CoreIKTransform>::deinit(this + 83);
  re::FixedArray<CoreIKTransform>::deinit(this + 80);
  re::FixedArray<CoreIKTransform>::deinit(this + 77);
  re::FixedArray<CoreIKTransform>::deinit(this + 74);
  re::FixedArray<CoreIKTransform>::deinit(this + 71);
  re::FixedArray<CoreIKTransform>::deinit(this + 68);
  re::FixedArray<CoreIKTransform>::deinit(this + 65);
  re::FixedArray<CoreIKTransform>::deinit(this + 62);
  re::FixedArray<CoreIKTransform>::deinit(this + 59);
  re::FixedArray<CoreIKTransform>::deinit(this + 56);
  re::FixedArray<CoreIKTransform>::deinit(this + 53);
  re::FixedArray<CoreIKTransform>::deinit(this + 50);
  re::FixedArray<CoreIKTransform>::deinit(this + 47);
  re::FixedArray<CoreIKTransform>::deinit(this + 44);
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  re::FixedArray<re::EvaluationModelSingleThread::BranchGroupExecutionData>::deinit(this + 32);
  re::FixedArray<re::EvaluationContext>::deinit(this + 29);
  re::FixedArray<re::EvaluationCallbackData>::deinit(this + 26);
  re::FixedArray<CoreIKTransform>::deinit(this + 23);
  re::FixedArray<CoreIKTransform>::deinit(this + 20);
  re::FixedArray<CoreIKTransform>::deinit(this + 17);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::FixedArray<CoreIKTransform>::deinit(this + 8);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  re::FixedArray<CoreIKTransform>::deinit(this + 2);
}

{
  re::EvaluationModelSingleThread::~EvaluationModelSingleThread(this);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<re::EvaluationModelSingleThread::BranchGroupExecutionData>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 456 * v2;
      do
      {
        re::EvaluationModelSingleThread::BranchGroupExecutionData::~BranchGroupExecutionData(v4);
        v4 = (v6 + 456);
        v5 -= 456;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::EvaluationModelSingleThread::BranchGroupExecutionData::~BranchGroupExecutionData(re::EvaluationModelSingleThread::BranchGroupExecutionData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 54);
  re::FixedArray<CoreIKTransform>::deinit(this + 51);
  re::FixedArray<CoreIKTransform>::deinit(this + 48);
  re::FixedArray<CoreIKTransform>::deinit(this + 45);
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::FixedArray<CoreIKTransform>::deinit(this + 36);
  re::FixedArray<CoreIKTransform>::deinit(this + 33);
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::FixedArray<CoreIKTransform>::deinit(this + 27);
  re::FixedArray<CoreIKTransform>::deinit(this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 21);
  re::FixedArray<CoreIKTransform>::deinit(this + 18);
  re::FixedArray<CoreIKTransform>::deinit(this + 15);
  re::FixedArray<CoreIKTransform>::deinit(this + 12);
  re::FixedArray<CoreIKTransform>::deinit(this + 9);
  re::FixedArray<re::EvaluationModelSingleThread>::deinit(this + 6);
  re::FixedArray<re::FixedRegisterIdTable>::deinit(this + 3);
  re::FixedArray<CoreIKTransform>::deinit(this);
}

void *re::FixedArray<re::EvaluationModelSingleThread>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 784 * v2;
      v6 = v4;
      do
      {
        (**v6)(v6);
        v6 += 98;
        v4 += 98;
        v5 -= 784;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::FixedRegisterIdTable>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 0;
      v5 = result[2];
      v6 = 192 * v2;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 168));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 144));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 120));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 96));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 72));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 48));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 24));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4));
        v4 += 192;
      }

      while (v6 != v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::EvaluationContext>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 432 * v2;
      do
      {
        re::EvaluationContext::~EvaluationContext(v4);
        v4 = (v6 + 432);
        v5 -= 432;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::EvaluationCallbackData>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 448 * v2;
      do
      {
        re::EvaluationCallbackData::~EvaluationCallbackData(v4);
        v4 = (v6 + 448);
        v5 -= 448;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::EvaluationCallbackData::~EvaluationCallbackData(re::EvaluationCallbackData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 52);
  re::FixedArray<CoreIKTransform>::deinit(this + 49);
  re::FixedArray<CoreIKTransform>::deinit(this + 46);
  re::FixedArray<CoreIKTransform>::deinit(this + 43);
  re::FixedArray<CoreIKTransform>::deinit(this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 37);
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::FixedArray<CoreIKTransform>::deinit(this + 31);
  re::FixedArray<CoreIKTransform>::deinit(this + 28);
  re::FixedArray<CoreIKTransform>::deinit(this + 25);
  re::FixedArray<CoreIKTransform>::deinit(this + 22);
  re::FixedArray<CoreIKTransform>::deinit(this + 19);
  re::FixedArray<CoreIKTransform>::deinit(this + 16);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  re::FixedArray<CoreIKTransform>::deinit(this + 7);
  re::FixedArray<CoreIKTransform>::deinit(this + 4);
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
}

uint64_t re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](a1, i);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v4 + 28);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v4 + 22);
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v4 + 16);
      re::DataArray<re::RigGraphOperatorDefinition>::deinit((v4 + 8));
      re::DynamicArray<unsigned long>::deinit((v4 + 8));
      re::DataArray<re::RigGraphNode>::deinit(v4);
      re::DynamicArray<unsigned long>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 3;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 272 * (a2 & 7);
}

{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 866;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 3;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 272 * (a2 & 7);
}

double re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 32;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

double re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 88;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v3 = (result + 8);
    re::StringID::destroyString((result + 2));
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((result + 12));

    re::StringID::destroyString(v3);
  }
}

uint64_t re::DataArray<re::RigGraphOperatorDefinition>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::RigGraphOperatorDefinition>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x1E69E9C10];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::RigGraphOperatorDefinition>::clear(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a1, 0);
  if (*&v24[0] != a1 || DWORD2(v24[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v24);
      re::DataArray<re::RigGraphOperatorDefinition>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v24);
    }

    while (*&v24[0] != a1 || WORD4(v24[0]) != 0xFFFF || WORD5(v24[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      v9 = a1[2];
      if (v9 <= v7)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v10 - 16));
      (*(**a1 + 40))(*a1, *(v10 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

void re::DataArray<re::RigGraphOperatorDefinition>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  v5 = re::DataArray<re::RigGraphOperatorDefinition>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit((v5 + 40));
    re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v6 + 2);
    re::StringID::destroyString(v6);
    v7 = *(a1 + 16);
    if (v7 <= HIWORD(v2))
    {
      v11 = 0;
      memset(v20, 0, sizeof(v20));
      v8 = MEMORY[0x1E69E9C10];
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v15 = 789;
      v16 = 2048;
      v17 = HIWORD(v2);
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

unint64_t re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(unsigned __int16 *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = *(*a1 + 16);
  if (v2 <= v1)
  {
    v7 = 0;
    memset(v16, 0, sizeof(v16));
    v4 = MEMORY[0x1E69E9C10];
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v11 = 797;
    v12 = 2048;
    v13 = v1;
    v14 = 2048;
    v15 = v2;
    _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
  }

  return (v1 << 16) | ((*(*(*(*a1 + 32) + 16 * v1 + 8) + 4 * a1[4]) & 0xFFFFFF) << 32) | a1[4];
}

uint64_t re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(uint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(result + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "removeAt";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 931;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  v4 = v3 - 1;
  if (v3 - 1 > a2)
  {
    *(*(result + 32) + 16 * a2) = *(*(result + 32) + 16 * v3 - 16);
    v4 = *(result + 16) - 1;
  }

  *(result + 16) = v4;
  ++*(result + 24);
  return result;
}

uint64_t re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(uint64_t a1, uint64_t a2, char a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  if ((a3 & 1) != 0 || !*(a2 + 40))
  {
    *(a1 + 8) = -1;
  }

  else
  {
    *(a1 + 8) = 0;
    if (!*(a2 + 16))
    {
      v8 = 0;
      memset(v17, 0, sizeof(v17));
      v5 = MEMORY[0x1E69E9C10];
      v9 = 136315906;
      v10 = "operator[]";
      v11 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      v12 = 797;
      v13 = 2048;
      v14 = 0;
      v15 = 2048;
      v16 = 0;
      _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
      _os_crash_msg();
      __break(1u);
    }

    if (!**(*(a2 + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(a1);
    }
  }

  return a1;
}

_WORD *re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(_WORD *result)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *result;
  v2 = *(*result + 16);
  v3 = v2 - 1;
  v4 = result[4];
  v5 = result[5];
  while (1)
  {
    ++v4;
    if (v5 < v3 && *(v1 + 44) <= v4)
    {
      v4 = 0;
      result[5] = ++v5;
    }

    if (v5 == v3 && *(v1 + 48) <= v4)
    {
      break;
    }

    v6 = v5;
    if (v2 <= v5)
    {
      result[4] = v4;
      v10 = 0;
      memset(v19, 0, sizeof(v19));
      v7 = MEMORY[0x1E69E9C10];
      v11 = 136315906;
      v12 = "operator[]";
      v13 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v14 = 797;
      v15 = 2048;
      v16 = v6;
      v17 = 2048;
      v18 = v2;
      _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(*(v1 + 32) + 16 * v5 + 8) + 4 * v4))
    {
      result[4] = v4;
      return result;
    }
  }

  *(result + 2) = -1;
  return result;
}

uint64_t re::DataArray<re::RigGraphOperatorDefinition>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 72 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DataArray<re::RigGraphNode>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::RigGraphNode>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x1E69E9C10];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::RigGraphNode>::clear(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a1, 0);
  if (*&v24[0] != a1 || DWORD2(v24[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v24);
      re::DataArray<re::RigGraphNode>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v24);
    }

    while (*&v24[0] != a1 || WORD4(v24[0]) != 0xFFFF || WORD5(v24[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      v9 = a1[2];
      if (v9 <= v7)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v10 - 16));
      (*(**a1 + 40))(*a1, *(v10 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

_DWORD *re::DataArray<re::RigGraphNode>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  result = re::DataArray<re::RigGraphNode>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((result + 40));
    re::DynamicArray<re::StringID>::deinit((v6 + 30));
    re::DynamicArray<re::RigGraphNodeChild>::deinit((v6 + 20));
    re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((v6 + 10));
    result = re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v6);
    v7 = *(a1 + 16);
    if (v7 <= HIWORD(v2))
    {
      v11 = 0;
      memset(v20, 0, sizeof(v20));
      v8 = MEMORY[0x1E69E9C10];
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v15 = 789;
      v16 = 2048;
      v17 = HIWORD(v2);
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::DataArray<re::RigGraphNode>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 200 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 24 * v4;
        v6 = (v3 + 8);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 24);
          v5 -= 24;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigGraphNodeChild>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 96 * v4;
        do
        {
          re::DynamicArray<re::RigGraphNodeOutputParameter>::deinit(v3 + 56);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v3 + 16);
          re::StringID::destroyString(v3);
          v3 = (v3 + 96);
          v5 -= 96;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigGraphNodeOutputParameter>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = v4 << 6;
        do
        {
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(v3 + 24);
          re::StringID::destroyString(v3);
          v3 = (v3 + 64);
          v5 -= 64;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 56 * v4;
        do
        {
          re::StringID::destroyString((v3 + 40));
          re::StringID::destroyString((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 56;
          v5 -= 56;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::StringID::destroyString((v3 + 24));
          re::StringID::destroyString(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::EvaluationTree::~EvaluationTree(re::EvaluationTree *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 2024);
  re::DynamicArray<re::EvaluationCallbackData>::deinit(this + 1984);
  for (i = 1944; i != 1624; i -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(this + i);
  }

  re::BucketArray<re::EvaluationBranchGroupData,8ul>::deinit(this + 1608);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1608);
  re::DynamicArray<unsigned long>::deinit(this + 1568);
  re::DynamicArray<unsigned long>::deinit(this + 1528);
  re::DynamicArray<unsigned long>::deinit(this + 1488);
  re::DynamicArray<unsigned long>::deinit(this + 1448);
  re::DynamicArray<unsigned long>::deinit(this + 1408);
  re::DynamicArray<unsigned long>::deinit(this + 1368);
  re::DynamicArray<unsigned long>::deinit(this + 1328);
  re::DynamicArray<unsigned long>::deinit(this + 1288);
  re::DynamicArray<unsigned long>::deinit(this + 1248);
  re::DynamicArray<unsigned long>::deinit(this + 1208);
  re::DynamicArray<unsigned long>::deinit(this + 1168);
  re::DynamicArray<unsigned long>::deinit(this + 1128);
  re::DynamicArray<unsigned long>::deinit(this + 1088);
  re::DynamicArray<unsigned long>::deinit(this + 1048);
  re::DynamicArray<unsigned long>::deinit(this + 1008);
  re::DynamicArray<unsigned long>::deinit(this + 968);
  re::DynamicArray<unsigned long>::deinit(this + 928);
  re::DynamicArray<unsigned long>::deinit(this + 888);
  re::DynamicArray<unsigned long>::deinit(this + 848);
  re::DynamicArray<unsigned long>::deinit(this + 808);
  re::DynamicArray<unsigned long>::deinit(this + 768);
  re::DynamicArray<unsigned long>::deinit(this + 728);
  re::DynamicArray<unsigned long>::deinit(this + 688);
  re::DynamicArray<unsigned long>::deinit(this + 648);
  re::DynamicArray<unsigned long>::deinit(this + 608);
  re::DynamicArray<unsigned long>::deinit(this + 568);
  re::DynamicArray<unsigned long>::deinit(this + 528);
  re::DynamicArray<unsigned long>::deinit(this + 488);
  re::DynamicArray<unsigned long>::deinit(this + 448);
  re::DynamicArray<unsigned long>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 368);
  re::DynamicArray<unsigned long>::deinit(this + 328);
  re::DynamicArray<unsigned long>::deinit(this + 288);
  re::DynamicArray<unsigned long>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 208);
  re::DynamicArray<unsigned long>::deinit(this + 168);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

uint64_t re::DynamicArray<re::EvaluationCallbackData>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 448 * v4;
        do
        {
          re::EvaluationCallbackData::~EvaluationCallbackData(v3);
          v3 = (v3 + 448);
          v5 -= 448;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::BucketArray<re::EvaluationBranchGroupData,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a1, i);
      re::EvaluationBranchGroupData::~EvaluationBranchGroupData(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 3;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 696 * (a2 & 7);
}

{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 866;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 3;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 696 * (a2 & 7);
}

void re::EvaluationBranchGroupData::~EvaluationBranchGroupData(re::EvaluationBranchGroupData *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 656);
  re::DynamicArray<unsigned long>::deinit(this + 616);
  re::DynamicArray<unsigned long>::deinit(this + 576);
  re::DynamicArray<unsigned long>::deinit(this + 536);
  re::DynamicArray<unsigned long>::deinit(this + 496);
  re::DynamicArray<unsigned long>::deinit(this + 456);
  re::DynamicArray<unsigned long>::deinit(this + 416);
  re::DynamicArray<unsigned long>::deinit(this + 376);
  re::DynamicArray<unsigned long>::deinit(this + 336);
  re::DynamicArray<unsigned long>::deinit(this + 296);
  re::DynamicArray<unsigned long>::deinit(this + 256);
  re::DynamicArray<unsigned long>::deinit(this + 216);
  re::DynamicArray<unsigned long>::deinit(this + 176);
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::DynamicArray<unsigned long>::deinit(this + 56);
  re::BucketArray<re::EvaluationBranchData,8ul>::deinit(this);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this);
}

uint64_t re::BucketArray<re::EvaluationBranchData,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](a1, i);
      re::DynamicArray<unsigned long>::deinit((v4 + 41));
      re::DynamicArray<unsigned long>::deinit((v4 + 36));
      re::DynamicArray<unsigned long>::deinit((v4 + 31));
      re::DynamicArray<unsigned long>::deinit((v4 + 26));
      re::DynamicArray<unsigned long>::deinit((v4 + 21));
      re::DynamicArray<unsigned long>::deinit((v4 + 16));
      re::DynamicArray<unsigned long>::deinit((v4 + 11));
      re::DynamicArray<unsigned long>::deinit((v4 + 6));
      std::unique_ptr<re::EvaluationTree,std::function<void ()(re::EvaluationTree*)>>::~unique_ptr[abi:nn200100](v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<re::EvaluationBranchData,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 3;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 368 * (a2 & 7);
}

{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 866;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 3;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 368 * (a2 & 7);
}

uint64_t *std::unique_ptr<re::EvaluationTree,std::function<void ()(re::EvaluationTree*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::EvaluationTree *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::EvaluationTree *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::EvaluationTree *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::EvaluationTree *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<void ()(re::EvaluationTree *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void re::RigGraphCompilation::~RigGraphCompilation(re::RigGraphCompilation *this)
{
  re::DynamicArray<re::RigDataValue>::deinit(this + 96);
  re::DynamicArray<re::RigDataValue>::deinit(this + 56);
  re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::deinit(this);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this);
}

uint64_t re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::operator[](a1, i);
      std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 6;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 40 * (a2 & 0x3F);
}

uint64_t re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 24 * v4;
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v3);
          v3 += 3;
          v5 -= 24;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::FixedArray<re::BindPoint>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2] + 8;
      v5 = 48 * v2;
      do
      {
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(v4);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(v4);
        v4 += 48;
        v5 -= 48;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::BlendSpaceAxisDefinition>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 48 * v2;
      do
      {
        re::StringID::destroyString((v4 + 16));
        re::StringID::destroyString(v4);
        v4 += 48;
        v5 -= 48;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

float re::AnimationBlendTreeInstance<float>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, float a4)
{
  v4 = a2;
  v91 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v46, &v74, &v86, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_58:
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v49, &v74, &v86, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v77 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = v18;
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v6;
    v84 = 2048;
    v85 = v51;
    _os_log_send_and_compose_impl(v53, &v77, &v86, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return a4;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    v16 = 0.0;
    do
    {
      v16 = re::AnimationBlendTreeInstance<float>::evaluateBlend(a1, v14 + *(v10 + 4), v15, v16);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v17 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v17 - 8);
    *(a1 + 400) = v17 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v74, (*(a1 + 80) + 352));
    v6 = *(v10 + 4);
    v18 = v75;
    if (v75 > v6)
    {
      v6 = *(v76 + 8 * v6);
      if (v74)
      {
        (*(*v74 + 40))(v74);
      }

      v19 = *(a1 + 80);
      v20 = v19[42];
      if (v20 > v6)
      {
        v21 = v6 + 1;
        if (v20 > v6 + 1)
        {
          v22 = v19[39];
          if (v22 > v6)
          {
            v23 = v19[43];
            v24 = *(v23 + 8 * v6);
            v25 = *(v19[40] + 8 * v6);
            v26 = re::Slice<re::AnimationClock>::range((a1 + 328), v24, *(v23 + 8 * v21));
            if (v27)
            {
              v28 = *(a1 + 424);
              v29 = *(a1 + 432);
              v30 = v26[16] != 1 || *v26 == 2;
              if (!v30 || (*v4 = *v28, v25[2] == 49))
              {
                (*(*v25 + 120))(v25, v26, v27, v28, v29, v4);
              }

              v86.n128_u64[0] = v4;
              v86.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_82:
            re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v70, v71);
            __break(1u);
          }

LABEL_78:
          v74 = 0;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v86 = 0u;
          v66 = MEMORY[0x1E69E9C10];
          v67 = v22;
          v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v78 = 136315906;
          v79 = "operator[]";
          v80 = 1024;
          if (v68)
          {
            v69 = 3;
          }

          else
          {
            v69 = 2;
          }

          v81 = 476;
          v82 = 2048;
          v83 = v6;
          v84 = 2048;
          v85 = v67;
          _os_log_send_and_compose_impl(v69, &v74, &v86, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
          goto LABEL_82;
        }

LABEL_74:
        v74 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v86 = 0u;
        v61 = MEMORY[0x1E69E9C10];
        v62 = v20;
        v63 = v21;
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v78 = 136315906;
        v79 = "operator[]";
        v80 = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v81 = 476;
        v82 = 2048;
        v83 = v63;
        v84 = 2048;
        v85 = v62;
        _os_log_send_and_compose_impl(v65, &v74, &v86, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
        _os_crash_msg();
        __break(1u);
        goto LABEL_78;
      }

LABEL_70:
      v74 = 0;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      v57 = MEMORY[0x1E69E9C10];
      v58 = v20;
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v78 = 136315906;
      v79 = "operator[]";
      v80 = 1024;
      if (v59)
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      v81 = 476;
      v82 = 2048;
      v83 = v6;
      v84 = 2048;
      v85 = v58;
      _os_log_send_and_compose_impl(v60, &v74, &v86, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
      _os_crash_msg();
      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_66:
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v81 = 468;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v56, &v74, &v86, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  v31 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v31 + 3) && re::BindPoint::isAlive(v31))
  {
    v86.n128_u64[0] = re::BindPoint::valueUntyped(v31);
    v86.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v86);
  }

LABEL_37:
  a4 = v11 + a4;
  v32 = *(a1 + 360);
  if (v32 != a3 + 2)
  {
    return a4;
  }

  v33 = *(a1 + 376) + 16 * v32;
  v34 = *(v33 - 16);
  v35 = *(v33 - 8);
  v36 = *(a1 + 368);
  v37 = *(v33 - 32);
  LODWORD(v33) = *(v33 - 24);
  *(a1 + 360) = v32 - 2;
  *(a1 + 368) = v36 + 2;
  if ((v33 & 1) == 0)
  {
    if (v35)
    {
      v38 = 0;
    }

    else
    {
      v38 = v34;
    }

    v39 = v37;
LABEL_44:
    if (v39)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v38 = 0;
  v39 = v34;
  if ((v35 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v40 = *(a1 + 400);
  v39 = *(*(a1 + 416) + 8 * v40 - 8);
  *(a1 + 400) = v40 - 1;
  ++*(a1 + 408);
LABEL_46:
  v41 = *v37;
  if (*(v10 + 7))
  {
    v42 = v41 + *v34;
  }

  else
  {
    v42 = ((v11 / a4) * *v34) + (v41 * (1.0 - (v11 / a4)));
  }

  *v39 = v42;
  v86.n128_u64[0] = v39;
  v86.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v86);
  if (v38)
  {
    v43 = *(a1 + 400);
    if (v43 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v43 + 1);
      v43 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v43) = v38;
    *(a1 + 400) = v43 + 1;
    ++*(a1 + 408);
  }

  return a4;
}

_anonymous_namespace_ *re::DynamicArray<float *>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<float *>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<float *>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<float *>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 8 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<float *>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::FixedArray<re::BindPoint>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = a1;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 48 * a3;
}

unint64_t re::Slice<re::AnimationClock>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash("assertion failure: (fromInclusive <= size()) Index out of range. fromInclusive = %zu, size = %zu", v5, v7);
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + 72 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash("assertion failure: (toExclusive <= size()) Index out of range. toExclusive = %zu, size = %zu", v6, v8);
  __break(1u);
  return result;
}

__n128 re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = *a2;
  *(*(a1 + 32) + 16 * v5) = *a2;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void *re::FixedArray<unsigned long>::FixedArray(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<unsigned long>::init<>(a1, v4, a2[1]);
    re::FixedArray<unsigned long>::copy(a1, a2);
  }

  return a1;
}

void re::FixedArray<unsigned long>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

void *re::FixedArray<unsigned long>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 8 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

float *re::AnimationBlendTreeRigContext<float>::setRigDataValue<float>(uint64_t a1, unint64_t a2, float a3)
{
  v3 = *(a1 + 232);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v3);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v7);
    __break(1u);
  }

  else
  {
    result = re::RigDataValue::getRuntimeValue<float>(*(a1 + 248) + 288 * a2, a2);
    *result = a3;
  }

  return result;
}

uint64_t re::RigDataValue::getRuntimeValue<unsigned int>(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v8 = *(a1 + 24);
    v5 = *(a1 + 176);
    v6 = *(v8 + 248);
    if (v6 > v5)
    {
      v7 = *(v8 + 256);
      return v7 + 4 * v5;
    }

LABEL_15:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v13, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    v6 = *(v4 + 32);
    if (v6 > v5)
    {
      v7 = *(v4 + 40);
      return v7 + 4 * v5;
    }

    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v10, &v17, &v26, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected runtime value type: %u", v14);
  __break(1u);
  return result;
}

uint64_t re::RigDataValue::getRuntimeValue<re::Vector2<float>>(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v8 = *(a1 + 24);
    v5 = *(a1 + 176);
    v6 = *(v8 + 368);
    if (v6 > v5)
    {
      v7 = *(v8 + 376);
      return v7 + 8 * v5;
    }

LABEL_15:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v13, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    v6 = *(v4 + 152);
    if (v6 > v5)
    {
      v7 = *(v4 + 160);
      return v7 + 8 * v5;
    }

    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v10, &v17, &v26, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected runtime value type: %u", v14);
  __break(1u);
  return result;
}

uint64_t re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v8 = *(a1 + 24);
    v5 = *(a1 + 176);
    v6 = *(v8 + 296);
    if (v6 > v5)
    {
      v7 = *(v8 + 304);
      return v7 + 48 * v5;
    }

LABEL_15:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v13, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    v6 = *(v4 + 80);
    if (v6 > v5)
    {
      v7 = *(v4 + 88);
      return v7 + 48 * v5;
    }

    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v10, &v17, &v26, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected runtime value type: %u", v14);
  __break(1u);
  return result;
}

uint64_t re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v8 = *(a1 + 24);
    v5 = *(a1 + 176);
    v6 = *(v8 + 320);
    if (v6 > v5)
    {
      v7 = *(v8 + 328);
      return v7 + (v5 << 6);
    }

LABEL_15:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v13, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    v6 = *(v4 + 104);
    if (v6 > v5)
    {
      v7 = *(v4 + 112);
      return v7 + (v5 << 6);
    }

    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v10, &v17, &v26, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected runtime value type: %u", v14);
  __break(1u);
  return result;
}

void *re::EvaluationContextSlices::init(re::EvaluationContextSlices *this, re::EvaluationContext *a2)
{
  re::SliceRegisterTable::operator=<re::FixedRegisterTable>(this, a2);
  v4 = *(a2 + 25);
  *(this + 16) = *(a2 + 26);
  *(this + 17) = v4;
  result = re::SliceRegisterTable::operator=<re::FixedRegisterTable>(this + 18, a2 + 27);
  v6 = *(a2 + 52);
  *(this + 34) = *(a2 + 53);
  *(this + 35) = v6;
  return result;
}

void *re::SliceRegisterTable::operator=<re::FixedRegisterTable>(void *result, void *a2)
{
  v2 = a2[1];
  *result = a2[2];
  result[1] = v2;
  v3 = a2[4];
  result[2] = a2[5];
  result[3] = v3;
  v4 = a2[7];
  result[4] = a2[8];
  result[5] = v4;
  v5 = a2[10];
  result[6] = a2[11];
  result[7] = v5;
  v6 = a2[13];
  result[8] = a2[14];
  result[9] = v6;
  v7 = a2[16];
  result[10] = a2[17];
  result[11] = v7;
  v8 = a2[19];
  result[12] = a2[20];
  result[13] = v8;
  v9 = a2[22];
  result[14] = a2[23];
  result[15] = v9;
  return result;
}

void re::AnimationBlendTreeInstance<float>::initBindPoints<float>(uint64_t a1, uint64_t a2, uint64_t a3, re::BindNode **a4)
{
  v45 = *MEMORY[0x1E69E9840];
  re::FixedArray<re::BindPoint>::init<>(a1, a2, *(a3 + 16));
  if (*(a3 + 16))
  {
    v8 = 0;
    v9 = 0;
    v10 = 8;
    *&v7 = 134218498;
    v28 = v7;
    do
    {
      {
        re::introspect<float>(BOOL)::info = re::introspect_float(0, v21);
      }

      v11 = *(a3 + 16);
      if (v11 <= v9)
      {
        *&v29 = 0;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        memset(buf, 0, sizeof(buf));
        v22 = MEMORY[0x1E69E9C10];
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v33 = 136315906;
        v34 = "operator[]";
        v35 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v36 = 797;
        v37 = 2048;
        v38 = v9;
        v39 = 2048;
        v40 = v11;
        _os_log_send_and_compose_impl(v24, &v29, buf, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v28, *(&v28 + 1));
        _os_crash_msg();
        __break(1u);
LABEL_20:
        v32 = 0;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        memset(buf, 0, sizeof(buf));
        v25 = MEMORY[0x1E69E9C10];
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v33 = 136315906;
        v34 = "operator[]";
        v35 = 1024;
        if (v26)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v36 = 468;
        v37 = 2048;
        v38 = v9;
        v39 = 2048;
        v40 = v11;
        _os_log_send_and_compose_impl(v27, &v32, buf, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v28, *(&v28 + 1));
        _os_crash_msg();
        __break(1u);
      }

      v12 = strlen(*(*(a3 + 32) + v10));
      *&v29 = *(*(a3 + 32) + v10);
      *(&v29 + 1) = v12;
      re::BindNode::bindPointWithOverride(&v30, a4, re::introspect<float>(BOOL)::info, &v29);
      v11 = *(a1 + 8);
      if (v11 <= v9)
      {
        goto LABEL_20;
      }

      v13 = (*(a1 + 16) + v8);
      *v13 = v30;
      re::DynamicArray<re::RigDataValue>::operator=((v13 + 1), v31);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v31);
      v14 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(v31);
      v15 = re::animationLogObjects(v14);
      v16 = re::AnimationLogObjects::loggingEnabled(v15);
      if (v16)
      {
        v17 = *re::animationLogObjects(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(re::DynamicArray<re::StringID>::operator[](*(a3 + 16), *(a3 + 32), v9) + 8);
          v19 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 8), *(a1 + 16), v9);
          v20 = "yes";
          if (!*(v19 + 24))
          {
            v20 = "no";
          }

          *buf = v28;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v18;
          *&buf[22] = 2080;
          *&buf[24] = v20;
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
        }
      }

      ++v9;
      v10 += 16;
      v8 += 48;
    }

    while (v9 < *(a3 + 16));
  }
}

double re::EvaluationTree::EvaluationTree(re::EvaluationTree *this)
{
  v1 = 0;
  *(this + 18) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 0;
  *(this + 68) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 78) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 0;
  *(this + 108) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 118) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 128) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 138) = 0;
  *(this + 148) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 158) = 0;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 178) = 0;
  *(this + 188) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 198) = 0;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 208) = 0;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 218) = 0;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 228) = 0;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 238) = 0;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 258) = 0;
  *(this + 268) = 0;
  *(this + 66) = 0u;
  *(this + 65) = 0u;
  *(this + 278) = 0;
  *(this + 1080) = 0u;
  *(this + 1096) = 0u;
  *(this + 288) = 0;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 298) = 0;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 308) = 0;
  *(this + 76) = 0u;
  *(this + 75) = 0u;
  *(this + 318) = 0;
  *(this + 1240) = 0u;
  *(this + 1256) = 0u;
  *(this + 1320) = 0u;
  *(this + 1336) = 0u;
  *(this + 338) = 0;
  *(this + 348) = 0;
  *(this + 86) = 0u;
  *(this + 85) = 0u;
  *(this + 358) = 0;
  *(this + 1400) = 0u;
  *(this + 1416) = 0u;
  *(this + 368) = 0;
  *(this + 91) = 0u;
  *(this + 90) = 0u;
  *(this + 378) = 0;
  *(this + 1480) = 0u;
  *(this + 1496) = 0u;
  *(this + 388) = 0;
  *(this + 96) = 0u;
  *(this + 95) = 0u;
  *(this + 398) = 0;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 88) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 168) = 0;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 248) = 0;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 328) = 0;
  *(this + 81) = 0u;
  *(this + 80) = 0u;
  *(this + 202) = 0;
  *(this + 100) = 0u;
  *(this + 406) = 1;
  *(this + 414) = 0;
  *(this + 206) = 0;
  *(this + 102) = 0u;
  do
  {
    v2 = this + v1;
    *(v2 + 212) = 0;
    *(v2 + 208) = 0;
    *(v2 + 210) = 0;
    *(v2 + 209) = 0;
    v1 += 40;
    *(v2 + 422) = 0;
  }

  while (v1 != 320);
  *(this + 502) = 0;
  *(this + 250) = 0;
  result = 0.0;
  *(this + 124) = 0u;
  *(this + 257) = 0;
  *(this + 126) = 0u;
  *(this + 127) = 0u;
  *(this + 512) = 0;
  return result;
}

void *re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 24 * a2;
    v9 = a2;
    do
    {
      result = re::FixedArray<CoreIKTransform>::deinit((v3[4] + v8));
      ++v9;
      v8 += 24;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = (v3[4] + v6);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

re::RigDataValue *re::DynamicArray<re::RigDataValue>::add(uint64_t a1, const re::RigDataValue *a2)
{
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicArray<re::RigDataValue>::growCapacity(a1, v4 + 1);
    v4 = *(a1 + 16);
  }

  result = re::RigDataValue::RigDataValue((*(a1 + 32) + 288 * v4), a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void *re::RigGraphCompilation::operator=(void *a1, void *a2)
{
  re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::operator=(a1, a2);
  re::DynamicArray<re::RigDataValue>::operator=((a1 + 7), a2 + 7);
  re::DynamicArray<re::RigDataValue>::operator=((a1 + 12), a2 + 12);
  return a1;
}

uint64_t *re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>@<X0>(uint64_t *__return_ptr a1@<X8>, re::EvaluationContextManager *this@<X0>)
{
  if ((*(this + 2528) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext(this);
  }

  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 9) = 0u;
  re::SliceRegisterIdTable::operator=<re::DynamicRegisterIdTable>(a1, this + 1);
  v4 = *(this + 43);
  a1[16] = *(this + 45);
  a1[17] = v4;
  result = re::SliceRegisterIdTable::operator=<re::DynamicRegisterIdTable>(a1 + 18, this + 181);
  v6 = *(this + 223);
  a1[34] = *(this + 225);
  a1[35] = v6;
  return result;
}

uint64_t re::DynamicArray<re::StringID>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = a1;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 16 * a3;
}

void *re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v12 = v8[1];
          *v11 = *v8;
          v11[1] = v12;
          *v8 = 0;
          v8[1] = 0;
          v13 = v11[2];
          v11[2] = v8[2];
          v8[2] = v13;
          re::FixedArray<CoreIKTransform>::deinit(v8);
          v8 += 3;
          v11 += 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigDataValue>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RigDataValue>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigDataValue>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

__n128 re::DynamicArray<re::EvaluationRegister>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::EvaluationRegister>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  result = *a2;
  v7 = *(a2 + 16);
  *v5 = *a2;
  v5[1] = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::EvaluationRegister>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::EvaluationRegister>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::EvaluationRegister>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::EvaluationRegister>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 32 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::EvaluationRegister>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<int>::add(_anonymous_namespace_ *this, _DWORD *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<float>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 4 * v4) = *a2;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

__n128 re::DynamicArray<re::Vector3<float>>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Vector3<float>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 16 * v4) = *a2;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Vector3<float>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Quaternion<float>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Quaternion<float>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

__n128 re::DynamicArray<re::Matrix3x3<float>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Matrix3x3<float>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  result = *a2;
  v7 = *(a2 + 32);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 32) = v7;
  *v5 = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Matrix3x3<float>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Matrix3x3<float>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

__n128 re::DynamicArray<re::Matrix4x4<float>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Matrix4x4<float>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  result = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v8;
  *v5 = result;
  *(v5 + 16) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Matrix4x4<float>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Matrix4x4<float>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Matrix4x4<float>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t *re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

void *re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::operator=(void *a1, void *a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || allocator() == other.allocator()", "operator=", 526);
        result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || allocator() == other.allocator()) ");
        __break(1u);
        return result;
      }
    }

    re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::swap(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::RigDataValue>::operator=(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = a2[1];
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = *(result + 16);
      *(result + 16) = a2[2];
      a2[2] = v10;
      v11 = *(result + 32);
      *(result + 32) = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

uint64_t re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::swap(uint64_t a1, uint64_t a2)
{
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::DynamicOverflowArray(v6, a1);
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::operator=(a1, a2);
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::operator=(a2, v6);
  result = v6[0];
  if (v6[0] && (v7 & 1) == 0)
  {
    result = (*(*v6[0] + 40))();
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  ++*(a1 + 48);
  ++*(a2 + 48);
  return result;
}

uint64_t re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 16))
    {
      if (*(a2 + 8))
      {
        re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(a1, a2);
      }

      else
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
        *a1 = *a2;
        *(a2 + 16) += 2;
        *(a1 + 16) += 2;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 16))
  {
    if (*(a2 + 8))
    {
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(a1, a2);
    }

    else
    {
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
      *a1 = *a2;
      *(a2 + 16) += 2;
      *(a1 + 16) += 2;
    }
  }

  else
  {
    *(a1 + 16) = 3;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
  }

  return a1;
}

void *re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, v4);
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 8 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 8 * v12), 8 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 8 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 8 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) += 4;
  *(a1 + 16) += 2;
  return result;
}