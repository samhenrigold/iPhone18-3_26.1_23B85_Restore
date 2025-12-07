void AdapterParamSet::setIntParameter(AdapterParamSet *this, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "int");
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_5;
    case 4:
LABEL_5:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F70, 4);
      if (ParamByParamId)
      {
      }

      IntParamSpec::validateValue(ParamByParamId, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationBasisDevRelevance";
        goto LABEL_184;
      }

      *(this + 11) = a3;
      return;
    case 5:
      v17 = ParamSpecMgr::getParamByParamId(qword_281051F70, 5);
      if (v17)
      {
      }

      IntParamSpec::validateValue(v17, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationBasisMeanRelevance";
        goto LABEL_184;
      }

      *(this + 12) = a3;
      return;
    case 6:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051F70, 6);
      if (v26)
      {
      }

      IntParamSpec::validateValue(v26, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationBaumWelchMaxUttSeconds";
        goto LABEL_184;
      }

      *(this + 13) = a3;
      return;
    case 7:
      throwWrongTypeForParamId(7, "double", "int");
      goto LABEL_89;
    case 8:
LABEL_89:
      v23 = ParamSpecMgr::getParamByParamId(qword_281051F70, 8);
      if (v23)
      {
      }

      IntParamSpec::validateValue(v23, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationBaumWelchThreshScore";
        goto LABEL_184;
      }

      *(this + 16) = a3;
      return;
    case 9:
      v31 = ParamSpecMgr::getParamByParamId(qword_281051F70, 9);
      if (v31)
      {
      }

      IntParamSpec::validateValue(v31, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccSilenceToSpeechWeight";
        goto LABEL_184;
      }

      *(this + 17) = a3;
      return;
    case 10:
      throwWrongTypeForParamId(10, "double", "int");
      goto LABEL_37;
    case 11:
LABEL_37:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_38;
    case 12:
LABEL_38:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_39;
    case 13:
LABEL_39:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_40;
    case 14:
LABEL_40:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_41;
    case 15:
LABEL_41:
      v14 = ParamSpecMgr::getParamByParamId(qword_281051F70, 15);
      if (v14)
      {
      }

      IntParamSpec::validateValue(v14, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccGenoneClassMinFrameCount";
        goto LABEL_184;
      }

      *(this + 21) = a3;
      return;
    case 16:
      v21 = ParamSpecMgr::getParamByParamId(qword_281051F70, 16);
      if (v21)
      {
      }

      IntParamSpec::validateValue(v21, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccGlobalSmoothingMinAccumFrames";
        goto LABEL_184;
      }

      *(this + 22) = a3;
      return;
    case 17:
      v12 = ParamSpecMgr::getParamByParamId(qword_281051F70, 17);
      if (v12)
      {
      }

      IntParamSpec::validateValue(v12, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccGlobalSmoothingRelevance";
        goto LABEL_184;
      }

      *(this + 23) = a3;
      return;
    case 18:
      throwWrongTypeForParamId(18, "BOOL", "int");
      goto LABEL_124;
    case 19:
LABEL_124:
      v30 = ParamSpecMgr::getParamByParamId(qword_281051F70, 19);
      if (v30)
      {
      }

      IntParamSpec::validateValue(v30, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccMaxNumTransforms";
        goto LABEL_184;
      }

      *(this + 25) = a3;
      return;
    case 20:
      throwWrongTypeForParamId(20, "double", "int");
      goto LABEL_98;
    case 21:
LABEL_98:
      v25 = ParamSpecMgr::getParamByParamId(qword_281051F70, 21);
      if (v25)
      {
      }

      IntParamSpec::validateValue(v25, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccMinAccumFrames";
        goto LABEL_184;
      }

      *(this + 28) = a3;
      return;
    case 22:
      v29 = ParamSpecMgr::getParamByParamId(qword_281051F70, 22);
      if (v29)
      {
      }

      IntParamSpec::validateValue(v29, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccNumIterations";
        goto LABEL_184;
      }

      *(this + 29) = a3;
      return;
    case 23:
      v33 = ParamSpecMgr::getParamByParamId(qword_281051F70, 23);
      if (v33)
      {
      }

      IntParamSpec::validateValue(v33, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccOnlineCommitIntervalSeconds";
        goto LABEL_184;
      }

      *(this + 30) = a3;
      return;
    case 24:
      v36 = ParamSpecMgr::getParamByParamId(qword_281051F70, 24);
      if (v36)
      {
      }

      IntParamSpec::validateValue(v36, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccOnlineCommitIntervalUtts";
        goto LABEL_184;
      }

      *(this + 31) = a3;
      return;
    case 25:
      throwWrongTypeForParamId(25, "double", "int");
      goto LABEL_76;
    case 26:
LABEL_76:
      v20 = ParamSpecMgr::getParamByParamId(qword_281051F70, 26);
      if (v20)
      {
      }

      IntParamSpec::validateValue(v20, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccOnlineDecayInterval";
        goto LABEL_184;
      }

      *(this + 34) = a3;
      return;
    case 27:
      throwWrongTypeForParamId(27, "BOOL", "int");
      goto LABEL_23;
    case 28:
LABEL_23:
      v11 = ParamSpecMgr::getParamByParamId(qword_281051F70, 28);
      if (v11)
      {
      }

      IntParamSpec::validateValue(v11, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccOnlineNumTransformsMin";
        goto LABEL_184;
      }

      *(this + 36) = a3;
      return;
    case 29:
      v37 = ParamSpecMgr::getParamByParamId(qword_281051F70, 29);
      if (v37)
      {
      }

      IntParamSpec::validateValue(v37, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccOnlineNumTransformsRange";
        goto LABEL_184;
      }

      *(this + 37) = a3;
      return;
    case 30:
      v38 = ParamSpecMgr::getParamByParamId(qword_281051F70, 30);
      if (v38)
      {
      }

      IntParamSpec::validateValue(v38, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccRelevance";
        goto LABEL_184;
      }

      *(this + 38) = a3;
      return;
    case 31:
      v32 = ParamSpecMgr::getParamByParamId(qword_281051F70, 31);
      if (v32)
      {
      }

      IntParamSpec::validateValue(v32, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccRootGenoneClassMinFrameCount";
        goto LABEL_184;
      }

      *(this + 39) = a3;
      return;
    case 32:
      v24 = ParamSpecMgr::getParamByParamId(qword_281051F70, 32);
      if (v24)
      {
      }

      IntParamSpec::validateValue(v24, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccDecomposedAccumCutoffPercent";
        goto LABEL_184;
      }

      *(this + 40) = a3;
      return;
    case 33:
      throwWrongTypeForParamId(33, "BOOL", "int");
      goto LABEL_47;
    case 34:
LABEL_47:
      v15 = ParamSpecMgr::getParamByParamId(qword_281051F70, 34);
      if (v15)
      {
      }

      IntParamSpec::validateValue(v15, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccRidgeRegularizationFactor";
        goto LABEL_184;
      }

      *(this + 42) = a3;
      return;
    case 35:
      throwWrongTypeForParamId(35, "double", "int");
      goto LABEL_161;
    case 36:
LABEL_161:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_162;
    case 37:
LABEL_162:
      throwWrongTypeForParamId(a2, "enum", "int");
      goto LABEL_163;
    case 38:
LABEL_163:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_164;
    case 39:
LABEL_164:
      v39 = ParamSpecMgr::getParamByParamId(qword_281051F70, 39);
      if (v39)
      {
      }

      IntParamSpec::validateValue(v39, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMIntruderMinMicroseconds";
        goto LABEL_184;
      }

      *(this + 52) = a3;
      return;
    case 40:
      v34 = ParamSpecMgr::getParamByParamId(qword_281051F70, 40);
      if (v34)
      {
      }

      IntParamSpec::validateValue(v34, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMMaxIntruderCount";
        goto LABEL_184;
      }

      *(this + 53) = a3;
      return;
    case 41:
      v18 = ParamSpecMgr::getParamByParamId(qword_281051F70, 41);
      if (v18)
      {
      }

      IntParamSpec::validateValue(v18, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMMaxIntrudersPerStartTimeSegment";
        goto LABEL_184;
      }

      *(this + 54) = a3;
      return;
    case 42:
      throwWrongTypeForParamId(42, "double", "int");
      goto LABEL_52;
    case 43:
LABEL_52:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_53;
    case 44:
LABEL_53:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_54;
    case 45:
LABEL_54:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_55;
    case 46:
LABEL_55:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_56;
    case 47:
LABEL_56:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_57;
    case 48:
LABEL_57:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_58;
    case 49:
LABEL_58:
      v16 = ParamSpecMgr::getParamByParamId(qword_281051F70, 49);
      if (v16)
      {
      }

      IntParamSpec::validateValue(v16, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMNumIterations";
        goto LABEL_184;
      }

      *(this + 70) = a3;
      return;
    case 50:
      throwWrongTypeForParamId(50, "double", "int");
      goto LABEL_178;
    case 51:
LABEL_178:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_179;
    case 52:
LABEL_179:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_180;
    case 53:
LABEL_180:
      v42 = ParamSpecMgr::getParamByParamId(qword_281051F70, 53);
      if (v42)
      {
      }

      IntParamSpec::validateValue(v42, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMSmoothRelevance";
        goto LABEL_184;
      }

      *(this + 77) = a3;
      return;
    case 54:
      v8 = ParamSpecMgr::getParamByParamId(qword_281051F70, 54);
      if (v8)
      {
      }

      IntParamSpec::validateValue(v8, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMStartTimeSegmentMaxDeltaMicroseconds";
        goto LABEL_184;
      }

      *(this + 78) = a3;
      return;
    case 55:
      v40 = ParamSpecMgr::getParamByParamId(qword_281051F70, 55);
      if (v40)
      {
      }

      IntParamSpec::validateValue(v40, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMUniqMaxDeltaMicroseconds";
        goto LABEL_184;
      }

      *(this + 79) = a3;
      return;
    case 56:
      v41 = ParamSpecMgr::getParamByParamId(qword_281051F70, 56);
      if (v41)
      {
      }

      IntParamSpec::validateValue(v41, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDurationRelevance";
        goto LABEL_184;
      }

      *(this + 80) = a3;
      return;
    case 57:
      v9 = ParamSpecMgr::getParamByParamId(qword_281051F70, 57);
      if (v9)
      {
      }

      IntParamSpec::validateValue(v9, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationLogWeightRelevance";
        goto LABEL_184;
      }

      *(this + 81) = a3;
      return;
    case 58:
      v35 = ParamSpecMgr::getParamByParamId(qword_281051F70, 58);
      if (v35)
      {
      }

      IntParamSpec::validateValue(v35, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationMaxLogWeight";
        goto LABEL_184;
      }

      *(this + 82) = a3;
      return;
    case 59:
      throwWrongTypeForParamId(59, "BOOL", "int");
      goto LABEL_111;
    case 60:
LABEL_111:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_112;
    case 61:
LABEL_112:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_113;
    case 62:
LABEL_113:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_114;
    case 63:
LABEL_114:
      v28 = ParamSpecMgr::getParamByParamId(qword_281051F70, 63);
      if (v28)
      {
      }

      IntParamSpec::validateValue(v28, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationTransAccGenoneClassMinFrameCount";
        goto LABEL_184;
      }

      *(this + 90) = a3;
      return;
    case 64:
      v22 = ParamSpecMgr::getParamByParamId(qword_281051F70, 64);
      if (v22)
      {
      }

      IntParamSpec::validateValue(v22, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationTransAccGlobalSmoothingMinAccumFrames";
        goto LABEL_184;
      }

      *(this + 91) = a3;
      return;
    case 65:
      v19 = ParamSpecMgr::getParamByParamId(qword_281051F70, 65);
      if (v19)
      {
      }

      IntParamSpec::validateValue(v19, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationTransAccGlobalSmoothingRelevance";
        goto LABEL_184;
      }

      *(this + 92) = a3;
      return;
    case 66:
      v27 = ParamSpecMgr::getParamByParamId(qword_281051F70, 66);
      if (v27)
      {
      }

      IntParamSpec::validateValue(v27, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationTransAccMaxNumTransforms";
        goto LABEL_184;
      }

      *(this + 93) = a3;
      return;
    case 67:
      throwWrongTypeForParamId(67, "double", "int");
      goto LABEL_32;
    case 68:
LABEL_32:
      v13 = ParamSpecMgr::getParamByParamId(qword_281051F70, 68);
      if (v13)
      {
      }

      IntParamSpec::validateValue(v13, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationTransAccMinAccumFrames";
        goto LABEL_184;
      }

      *(this + 96) = a3;
      return;
    case 69:
      v43 = ParamSpecMgr::getParamByParamId(qword_281051F70, 69);
      if (v43)
      {
      }

      IntParamSpec::validateValue(v43, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationTransAccNumIterations";
        goto LABEL_184;
      }

      *(this + 97) = a3;
      break;
    case 70:
      v10 = ParamSpecMgr::getParamByParamId(qword_281051F70, 70);
      if (v10)
      {
      }

      IntParamSpec::validateValue(v10, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationTransAccRelevance";
LABEL_184:

        throwParamSetSetFailed(v7, "int");
      }

      else
      {
        *(this + 98) = a3;
      }

      break;
    default:

      throwWrongParamIdValue(a2, "int");
      return;
  }
}

void AdapterParamSet::setDoubleParameter(AdapterParamSet *this, int a2, double a3)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "double");
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_8;
    case 7:
LABEL_8:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F70, 7);
      if (ParamByParamId)
      {
      }

      DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationBaumWelchScale";
        goto LABEL_138;
      }

      *(this + 7) = a3;
      return;
    case 8:
      throwWrongTypeForParamId(8, "int", "double");
      goto LABEL_77;
    case 9:
LABEL_77:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_78;
    case 10:
LABEL_78:
      v18 = ParamSpecMgr::getParamByParamId(qword_281051F70, 10);
      if (v18)
      {
      }

      DoubleParamSpec::validateValue(v18, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccComponentBackoffPercent";
        goto LABEL_138;
      }

      *(this + 9) = a3;
      return;
    case 11:
      throwWrongTypeForParamId(11, "BOOL", "double");
      goto LABEL_109;
    case 12:
LABEL_109:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_110;
    case 13:
LABEL_110:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_111;
    case 14:
LABEL_111:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_112;
    case 15:
LABEL_112:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_113;
    case 16:
LABEL_113:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_114;
    case 17:
LABEL_114:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_115;
    case 18:
LABEL_115:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_116;
    case 19:
LABEL_116:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_117;
    case 20:
LABEL_117:
      v23 = ParamSpecMgr::getParamByParamId(qword_281051F70, 20);
      if (v23)
      {
      }

      DoubleParamSpec::validateValue(v23, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccMaxTotalComponentProbability";
        goto LABEL_138;
      }

      *(this + 13) = a3;
      return;
    case 21:
      throwWrongTypeForParamId(21, "int", "double");
      goto LABEL_84;
    case 22:
LABEL_84:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_85;
    case 23:
LABEL_85:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_86;
    case 24:
LABEL_86:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_87;
    case 25:
LABEL_87:
      v19 = ParamSpecMgr::getParamByParamId(qword_281051F70, 25);
      if (v19)
      {
      }

      DoubleParamSpec::validateValue(v19, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationConTransAccOnlineDecayFactor";
        goto LABEL_138;
      }

      *(this + 16) = a3;
      return;
    case 26:
      throwWrongTypeForParamId(26, "int", "double");
      goto LABEL_50;
    case 27:
LABEL_50:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_51;
    case 28:
LABEL_51:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_52;
    case 29:
LABEL_52:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_53;
    case 30:
LABEL_53:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_54;
    case 31:
LABEL_54:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_55;
    case 32:
LABEL_55:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_56;
    case 33:
LABEL_56:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_57;
    case 34:
LABEL_57:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_58;
    case 35:
LABEL_58:
      v14 = ParamSpecMgr::getParamByParamId(qword_281051F70, 35);
      if (v14)
      {
      }

      DoubleParamSpec::validateValue(v14, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMDevGradientWeight";
        goto LABEL_138;
      }

      *(this + 22) = a3;
      return;
    case 36:
      v13 = ParamSpecMgr::getParamByParamId(qword_281051F70, 36);
      if (v13)
      {
      }

      DoubleParamSpec::validateValue(v13, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMErrorBeta";
        goto LABEL_138;
      }

      *(this + 23) = a3;
      return;
    case 37:
      throwWrongTypeForParamId(37, "enum", "double");
      goto LABEL_31;
    case 38:
LABEL_31:
      v11 = ParamSpecMgr::getParamByParamId(qword_281051F70, 38);
      if (v11)
      {
      }

      DoubleParamSpec::validateValue(v11, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMErrorOffset";
        goto LABEL_138;
      }

      *(this + 25) = a3;
      return;
    case 39:
      throwWrongTypeForParamId(39, "int", "double");
      goto LABEL_93;
    case 40:
LABEL_93:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_94;
    case 41:
LABEL_94:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_95;
    case 42:
LABEL_95:
      v20 = ParamSpecMgr::getParamByParamId(qword_281051F70, 42);
      if (v20)
      {
      }

      DoubleParamSpec::validateValue(v20, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMMeanGradientWeight";
        goto LABEL_138;
      }

      *(this + 28) = a3;
      return;
    case 43:
      v24 = ParamSpecMgr::getParamByParamId(qword_281051F70, 43);
      if (v24)
      {
      }

      DoubleParamSpec::validateValue(v24, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMMinNegativeCount";
        goto LABEL_138;
      }

      *(this + 29) = a3;
      return;
    case 44:
      v9 = ParamSpecMgr::getParamByParamId(qword_281051F70, 44);
      if (v9)
      {
      }

      DoubleParamSpec::validateValue(v9, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMMinPositiveCount";
        goto LABEL_138;
      }

      *(this + 30) = a3;
      return;
    case 45:
      v15 = ParamSpecMgr::getParamByParamId(qword_281051F70, 45);
      if (v15)
      {
      }

      DoubleParamSpec::validateValue(v15, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMMinTotalCount";
        goto LABEL_138;
      }

      *(this + 31) = a3;
      return;
    case 46:
      v22 = ParamSpecMgr::getParamByParamId(qword_281051F70, 46);
      if (v22)
      {
      }

      DoubleParamSpec::validateValue(v22, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMNegativeGradientWeight";
        goto LABEL_138;
      }

      *(this + 32) = a3;
      return;
    case 47:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051F70, 47);
      if (v26)
      {
      }

      DoubleParamSpec::validateValue(v26, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMNormalizedDeltaMin";
        goto LABEL_138;
      }

      *(this + 33) = a3;
      return;
    case 48:
      v12 = ParamSpecMgr::getParamByParamId(qword_281051F70, 48);
      if (v12)
      {
      }

      DoubleParamSpec::validateValue(v12, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMNormalizedDeltaRange";
        goto LABEL_138;
      }

      *(this + 34) = a3;
      return;
    case 49:
      throwWrongTypeForParamId(49, "int", "double");
      goto LABEL_68;
    case 50:
LABEL_68:
      v16 = ParamSpecMgr::getParamByParamId(qword_281051F70, 50);
      if (v16)
      {
      }

      DoubleParamSpec::validateValue(v16, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMPositiveGradientWeight";
        goto LABEL_138;
      }

      *(this + 36) = a3;
      return;
    case 51:
      v8 = ParamSpecMgr::getParamByParamId(qword_281051F70, 51);
      if (v8)
      {
      }

      DoubleParamSpec::validateValue(v8, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationDTMMScoreScale";
        goto LABEL_138;
      }

      *(this + 37) = a3;
      return;
    case 52:
      throwWrongTypeForParamId(52, "BOOL", "double");
      goto LABEL_127;
    case 53:
LABEL_127:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_128;
    case 54:
LABEL_128:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_129;
    case 55:
LABEL_129:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_130;
    case 56:
LABEL_130:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_131;
    case 57:
LABEL_131:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_132;
    case 58:
LABEL_132:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_133;
    case 59:
LABEL_133:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_134;
    case 60:
LABEL_134:
      v25 = ParamSpecMgr::getParamByParamId(qword_281051F70, 60);
      if (v25)
      {
      }

      DoubleParamSpec::validateValue(v25, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationNonSilenceAccumulateFactor";
        goto LABEL_138;
      }

      *(this + 42) = a3;
      return;
    case 61:
      v17 = ParamSpecMgr::getParamByParamId(qword_281051F70, 61);
      if (v17)
      {
      }

      DoubleParamSpec::validateValue(v17, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationSilenceAccumulateFactor";
        goto LABEL_138;
      }

      *(this + 43) = a3;
      return;
    case 62:
      v21 = ParamSpecMgr::getParamByParamId(qword_281051F70, 62);
      if (v21)
      {
      }

      DoubleParamSpec::validateValue(v21, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationTransAccComponentBackoffPercent";
        goto LABEL_138;
      }

      *(this + 44) = a3;
      break;
    case 63:
      throwWrongTypeForParamId(63, "int", "double");
      goto LABEL_22;
    case 64:
LABEL_22:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_23;
    case 65:
LABEL_23:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_24;
    case 66:
LABEL_24:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_25;
    case 67:
LABEL_25:
      v10 = ParamSpecMgr::getParamByParamId(qword_281051F70, 67);
      if (v10)
      {
      }

      DoubleParamSpec::validateValue(v10, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "AdaptationTransAccMaxTotalComponentProbability";
LABEL_138:

        throwParamSetSetFailed(v7, "double");
      }

      else
      {
        *(this + 47) = a3;
      }

      break;
    case 68:
      throwWrongTypeForParamId(68, "int", "double");
      goto LABEL_44;
    case 69:
LABEL_44:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_45;
    case 70:
LABEL_45:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_46;
    default:
LABEL_46:

      throwWrongParamIdValue(a2, "double");
      return;
  }
}

double AdapterParamSet::setStringParameter(AdapterParamSet *this, int a2, const char *a3)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "string");
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_20;
    case 19:
LABEL_20:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_21;
    case 20:
LABEL_21:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_22;
    case 21:
LABEL_22:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_23;
    case 22:
LABEL_23:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_24;
    case 23:
LABEL_24:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_25;
    case 24:
LABEL_25:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_26;
    case 25:
LABEL_26:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_27;
    case 26:
LABEL_27:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_28;
    case 27:
LABEL_28:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_29;
    case 28:
LABEL_29:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_30;
    case 29:
LABEL_30:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_31;
    case 30:
LABEL_31:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_32;
    case 31:
LABEL_32:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_33;
    case 32:
LABEL_33:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_34;
    case 33:
LABEL_34:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_35;
    case 34:
LABEL_35:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_36;
    case 35:
LABEL_36:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_37;
    case 36:
LABEL_37:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_38;
    case 37:
LABEL_38:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_39;
    case 38:
LABEL_39:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_40;
    case 39:
LABEL_40:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_41;
    case 40:
LABEL_41:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_42;
    case 41:
LABEL_42:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_43;
    case 42:
LABEL_43:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_44;
    case 43:
LABEL_44:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_45;
    case 44:
LABEL_45:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_46;
    case 45:
LABEL_46:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_47;
    case 46:
LABEL_47:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_48;
    case 47:
LABEL_48:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_49;
    case 48:
LABEL_49:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_50;
    case 49:
LABEL_50:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_51;
    case 50:
LABEL_51:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_52;
    case 51:
LABEL_52:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_53;
    case 52:
LABEL_53:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_54;
    case 53:
LABEL_54:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_55;
    case 54:
LABEL_55:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_56;
    case 55:
LABEL_56:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_57;
    case 56:
LABEL_57:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_58;
    case 57:
LABEL_58:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_59;
    case 58:
LABEL_59:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_60;
    case 59:
LABEL_60:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_61;
    case 60:
LABEL_61:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_62;
    case 61:
LABEL_62:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_63;
    case 62:
LABEL_63:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_64;
    case 63:
LABEL_64:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_65;
    case 64:
LABEL_65:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_66;
    case 65:
LABEL_66:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_67;
    case 66:
LABEL_67:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_68;
    case 67:
LABEL_68:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_69;
    case 68:
LABEL_69:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_70;
    case 69:
LABEL_70:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_71;
    case 70:
LABEL_71:
      throwWrongTypeForParamId(a2, "int", "string");
      break;
    default:
      break;
  }

  return throwWrongParamIdValue(a2, "string");
}

double AdapterParamSet::setEnumParameter(AdapterParamSet *this, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "BOOL");
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_20;
    case 19:
LABEL_20:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_21;
    case 20:
LABEL_21:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_22;
    case 21:
LABEL_22:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_23;
    case 22:
LABEL_23:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_24;
    case 23:
LABEL_24:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_25;
    case 24:
LABEL_25:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_26;
    case 25:
LABEL_26:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_27;
    case 26:
LABEL_27:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_28;
    case 27:
LABEL_28:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_29;
    case 28:
LABEL_29:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_30;
    case 29:
LABEL_30:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_31;
    case 30:
LABEL_31:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_32;
    case 31:
LABEL_32:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_33;
    case 32:
LABEL_33:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_34;
    case 33:
LABEL_34:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_35;
    case 34:
LABEL_35:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_36;
    case 35:
LABEL_36:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_37;
    case 36:
LABEL_37:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_38;
    case 37:
LABEL_38:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F70, 37);
      if (ParamByParamId)
      {
      }

      result = EnumParamSpec::validateValue(ParamByParamId, a3);
      if (*(this + 9))
      {

        return throwParamSetSetFailed("AdaptationDTMMErrorFunction", "enum");
      }

      else
      {
        *(this + 48) = a3;
      }

      return result;
    case 38:
      throwWrongTypeForParamId(38, "double", "BOOL");
      goto LABEL_46;
    case 39:
LABEL_46:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_47;
    case 40:
LABEL_47:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_48;
    case 41:
LABEL_48:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_49;
    case 42:
LABEL_49:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_50;
    case 43:
LABEL_50:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_51;
    case 44:
LABEL_51:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_52;
    case 45:
LABEL_52:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_53;
    case 46:
LABEL_53:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_54;
    case 47:
LABEL_54:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_55;
    case 48:
LABEL_55:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_56;
    case 49:
LABEL_56:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_57;
    case 50:
LABEL_57:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_58;
    case 51:
LABEL_58:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_59;
    case 52:
LABEL_59:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_60;
    case 53:
LABEL_60:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_61;
    case 54:
LABEL_61:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_62;
    case 55:
LABEL_62:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_63;
    case 56:
LABEL_63:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_64;
    case 57:
LABEL_64:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_65;
    case 58:
LABEL_65:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_66;
    case 59:
LABEL_66:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_67;
    case 60:
LABEL_67:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_68;
    case 61:
LABEL_68:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_69;
    case 62:
LABEL_69:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_70;
    case 63:
LABEL_70:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_71;
    case 64:
LABEL_71:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_72;
    case 65:
LABEL_72:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_73;
    case 66:
LABEL_73:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_74;
    case 67:
LABEL_74:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_75;
    case 68:
LABEL_75:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_76;
    case 69:
LABEL_76:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_77;
    case 70:
LABEL_77:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      break;
    default:
      break;
  }

  return throwWrongParamIdValue(a2, "enum");
}

void AdapterParamSet::~AdapterParamSet(AdapterParamSet *this)
{
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);
}

{
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);

  JUMPOUT(0x26672B1B0);
}

uint64_t minAddAllocWithExtra(uint64_t result, int a2)
{
  v2 = ((90 * a2) >> 10) + 32;
  if (v2 <= result)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

void buildRegExp(const TFileObject *a1, TLexicon *a2, int a3)
{
  v11 = &unk_26288E448;
  v12 = vdupq_n_s64(1uLL);
  v13 = -1;
  if (!TFileObject::verify(a1, &v11, 1, 1))
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, &byte_262899963);
  *__p = byte_287529580;
  if (SHIBYTE(v10) < 0)
  {
    std::string::__init_copy_ctor_external(&__p[8], v9, *(&v9 + 1));
  }

  else
  {
    *&__p[8] = v9;
    v8 = v10;
  }

  *__p = &unk_287528000;
  if (v8 >= 0)
  {
    v3 = &__p[8];
  }

  else
  {
    v3 = *&__p[8];
  }

  conditionalAssert(v3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/decompounder.cpp", 70);
  *__p = byte_287529580;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(*&__p[8]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
  *exception = byte_287529580;
  v5 = (exception + 1);
  if ((__p[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v5, *__p, *&__p[8]);
  }

  else
  {
    v6 = *__p;
    exception[3] = *&__p[16];
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *exception = &unk_287528000;
}

void sub_2627CAAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_2627CAB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_2627CAB78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 121) < 0)
  {
    JUMPOUT(0x2627CABDCLL);
  }

  JUMPOUT(0x2627CAC00);
}

void sub_2627CABE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (LOBYTE(STACK[0x438]) == 1)
  {
    TWord::TWord(va, v9);
  }

  _Unwind_Resume(a1);
}

void TFsaBuilder::minimizeChildren(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    v9 = a4 + 1;
    do
    {
      v10 = v4[2];
      v12 = v10;
      if (!v10[1])
      {
        TFsaBuilder::minimizeChildren(a1, a2, v10, a4);
        v11 = std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::find<TState *>(a4, &v12);
        if (v9 == v11)
        {
          v12[1] = 1;
          std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__emplace_unique_key_args<TState *,TState * const&>(a4, &v12, &v12);
        }

        else
        {
          TFsa::moveTrans(a2, v4, a3, *(v11 + 32));
          TFsa::deleteState(a2, v12);
        }
      }

      v4 = v4[5];
    }

    while (v4);
  }
}

void TFsaBuilder::addSuffix(int a1, TAllocator *this, uint64_t *a3, _DWORD *a4)
{
  v4 = a3;
  if (*a4)
  {
    v6 = a4 + 1;
    do
    {
      v7 = TFsa::newState(this, 0);
      TFsa::newTrans(this, v4, v7, *(v6 - 1));
      v8 = *v6++;
      v4 = v7;
    }

    while (v8);
  }

  else
  {
    v7 = a3;
  }

  TFsa::addExtremity(this, v7, 1u);
}

void TDecompounder::load(TLexicon **this, const TLocaleInfo **a2)
{
  v86 = *MEMORY[0x277D85DE8];
  if (TInputStream::verifyHeader(a2, "TknDecomp", &pTknDecompVersion, 3))
  {
    std::string::basic_string[abi:ne200100]<0>(v50, &byte_262899963);
    *v66 = byte_287529580;
    if (SHIBYTE(v51) < 0)
    {
      std::string::__init_copy_ctor_external(&v66[8], v50[0], v50[1]);
    }

    else
    {
      *&v66[8] = *v50;
      v67 = v51;
    }

    *v66 = &unk_287528000;
    if (v67 >= 0)
    {
      v41 = &v66[8];
    }

    else
    {
      v41 = *&v66[8];
    }

    conditionalAssert(v41, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/decompounder.cpp", 382);
    *v66 = byte_287529580;
    if (SHIBYTE(v67) < 0)
    {
      operator delete(*&v66[8]);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v66, &byte_262899963);
    *exception = byte_287529580;
    v43 = (exception + 1);
    if ((v66[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v43, *v66, *&v66[8]);
    }

    else
    {
      v47 = *v66;
      exception[3] = *&v66[16];
      *&v43->__r_.__value_.__l.__data_ = v47;
    }

    *exception = &unk_287528000;
  }

  TFileObjectParser::TFileObjectParser(v50, a2);
  v4 = v50[0];
  *&v66[8] = xmmword_26286B6A0;
  *v66 = "L";
  v69 = xmmword_26286B6A0;
  v67 = -1;
  v68 = "B";
  v72 = xmmword_26286B6A0;
  v70 = -1;
  v71 = "B";
  v75 = xmmword_26286B6A0;
  v73 = -1;
  v74 = "B";
  v78 = xmmword_26286BF80;
  v76 = -1;
  v77 = "B";
  v79 = -1;
  v81 = xmmword_26286B6A0;
  v80 = "P";
  v84 = xmmword_26286B6A0;
  v82 = 1;
  v83 = "B";
  v85 = 1;
  if (TFileObject::verify(v50[0], v66, 7, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v61, &byte_262899963);
    *v63 = byte_287529580;
    if ((v61[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v63[8], *v61, *&v61[8]);
    }

    else
    {
      *&v63[8] = *v61;
      v64 = *&v61[16];
    }

    *v63 = &unk_287528000;
    if (v64 >= 0)
    {
      v44 = &v63[8];
    }

    else
    {
      v44 = *&v63[8];
    }

    conditionalAssert(v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/decompounder.cpp", 404);
    *v63 = byte_287529580;
    if (SHIBYTE(v64) < 0)
    {
      operator delete(*&v63[8]);
    }

    if ((v61[23] & 0x80000000) != 0)
    {
      operator delete(*v61);
    }

    v45 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v63, &byte_262899963);
    *v45 = byte_287529580;
    v46 = (v45 + 1);
    if ((v63[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v46, *v63, *&v63[8]);
    }

    else
    {
      v48 = *v63;
      v45[3] = *&v63[16];
      *&v46->__r_.__value_.__l.__data_ = v48;
    }

    *v45 = &unk_287528000;
  }

  v5 = v4[3];
  if (v5)
  {
    v49 = 0;
    while (1)
    {
      v6 = *(v5 + 1);
      if (!wcscmp(v6, "L"))
      {
        break;
      }

      if (!wcscmp(v6, "B"))
      {
        buildRegExp(v5, *this, 1);
      }

      if (!wcscmp(v6, "B"))
      {
        buildRegExp(v5, *this, 1);
      }

      if (!wcscmp(v6, "B"))
      {
        buildRegExp(v5, *this, 1);
      }

      if (!wcscmp(v6, "B"))
      {
        buildRegExp(v5, *this, 1);
      }

      if (!wcscmp(v6, "P"))
      {
        v49 = 1;
      }

      else
      {
        v49 |= wcscmp(v6, "B") == 0;
      }

      v5 = *(v5 + 2);
      if (!v5)
      {
        if (v49)
        {
          tknPrintString("Warning: Decompounder model has been lobotomized on load.\n");
        }

        goto LABEL_100;
      }
    }

    v7 = *this;
    *&v63[8] = vdupq_n_s64(1uLL);
    *v63 = &unk_26288E448;
    v64 = -1;
    if (TFileObject::verify(v5, v63, 1, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(v59, &byte_262899963);
      *v61 = byte_287529580;
      if (SHIBYTE(v60) < 0)
      {
        std::string::__init_copy_ctor_external(&v61[8], v59[0], v59[1]);
      }

      else
      {
        *&v61[8] = *v59;
        v62 = v60;
      }

      *v61 = &unk_287528000;
      if (v62 >= 0)
      {
        v33 = &v61[8];
      }

      else
      {
        v33 = *&v61[8];
      }

      conditionalAssert(v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/decompounder.cpp", 304);
      *v61 = byte_287529580;
      if (SHIBYTE(v62) < 0)
      {
        operator delete(*&v61[8]);
      }

      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59[0]);
      }

      v34 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v61, &byte_262899963);
      *v34 = byte_287529580;
      v35 = (v34 + 1);
      if ((v61[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v35, *v61, *&v61[8]);
      }

      else
      {
        v39 = *v61;
        v34[3] = *&v61[16];
        *&v35->__r_.__value_.__l.__data_ = v39;
      }

      *v34 = &unk_287528000;
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    v8 = *(v5 + 3);
    if (!v8)
    {
      v30 = 0;
      v29 = 0;
      goto LABEL_60;
    }

    v9 = 0;
    while (1)
    {
      if ((TFileObject::verify(v8, 0, 0) & 1) == 0)
      {
        if (!TLexicon::checkName(v7, *(v8 + 24), 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (*(getPropCheckTokenExistence() + 8) == 1 && !TLexicon::findHeadClone(v7, *(v8 + 24)))
          {
            loggableFileObject(v8);
            v15 = v52[23];
            v16 = *v52;
            loggableUnicode(*(v8 + 24), __p);
            if (v15 >= 0)
            {
              v18 = v52;
            }

            else
            {
              v18 = v16;
            }

            if (v55 >= 0)
            {
              v19 = __p;
            }

            else
            {
              v19 = __p[0];
            }

            tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v17, v18, v19);
            if (SHIBYTE(v55) < 0)
            {
              operator delete(__p[0]);
            }

            if ((v52[23] & 0x80000000) != 0)
            {
              operator delete(*v52);
            }
          }

          v20 = *(v8 + 24);
          v21 = v57;
          if (v57 >= v58)
          {
            v23 = (v57 - v56) >> 3;
            if ((v23 + 1) >> 61)
            {
              std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
            }

            v24 = (v58 - v56) >> 2;
            if (v24 <= v23 + 1)
            {
              v24 = v23 + 1;
            }

            if (v58 - v56 >= 0x7FFFFFFFFFFFFFF8)
            {
              v25 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v24;
            }

            if (v25)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(&v56, v25);
            }

            v26 = (8 * v23);
            *v26 = v20;
            v22 = 8 * v23 + 8;
            v27 = v26 - (v57 - v56);
            memcpy(v27, v56, v57 - v56);
            v28 = v56;
            v56 = v27;
            v57 = v22;
            v58 = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v57 = v20;
            v22 = (v21 + 8);
          }

          v57 = v22;
          goto LABEL_28;
        }

        loggableFileObject(v8);
        v10 = v52[23];
        v11 = *v52;
        loggableUnicode(*(v8 + 24), __p);
        if (v10 >= 0)
        {
          v13 = v52;
        }

        else
        {
          v13 = v11;
        }

        if (v55 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        tknPrintf("Error: %s'%s' is an invalid token name.\n", v12, v13, v14);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v52[23] & 0x80000000) != 0)
        {
          operator delete(*v52);
        }
      }

      v9 = 1;
LABEL_28:
      v8 = *(v8 + 16);
      if (!v8)
      {
        if (v9)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v52 = byte_287529580;
          if (SHIBYTE(v55) < 0)
          {
            std::string::__init_copy_ctor_external(&v52[8], __p[0], __p[1]);
          }

          else
          {
            *&v52[8] = *__p;
            v53 = v55;
          }

          *v52 = &unk_287528000;
          if (v53 >= 0)
          {
            v36 = &v52[8];
          }

          else
          {
            v36 = *&v52[8];
          }

          conditionalAssert(v36, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/decompounder.cpp", 337);
          *v52 = byte_287529580;
          if (SHIBYTE(v53) < 0)
          {
            operator delete(*&v52[8]);
          }

          if (SHIBYTE(v55) < 0)
          {
            operator delete(__p[0]);
          }

          v37 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v52, &byte_262899963);
          *v37 = byte_287529580;
          v38 = (v37 + 1);
          if ((v52[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v38, *v52, *&v52[8]);
          }

          else
          {
            v40 = *v52;
            v37[3] = *&v52[16];
            *&v38->__r_.__value_.__l.__data_ = v40;
          }

          *v37 = &unk_287528000;
        }

        v29 = v56;
        v30 = v57;
LABEL_60:
        v31 = 126 - 2 * __clz(v30 - v29);
        if (v30 == v29)
        {
          v32 = 0;
        }

        else
        {
          v32 = v31;
        }

        std::__introsort<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,false>(v29, v30, &v65, v32, 1);
        TFsaBuilder::operator()(v52, &v56);
      }
    }
  }

LABEL_100:
  TFileObjectParser::~TFileObjectParser(v50);
}

void sub_2627CBF1C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2627CBF24);
  }

  __clang_call_terminate(a1);
}

void TDecompounder::TDecompounder(TDecompounder *this, const TLocaleInfo **a2, TLexicon *a3, TTokenizerParamManager *a4)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  TDecompounder::load(this, a2);
}

void TDecompounder::~TDecompounder(TDecompounder *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    TFsa::~TFsa(v2);
    MEMORY[0x26672B1B0]();
  }

  v3 = *(this + 3);
  if (v3)
  {
    TRegExp::~TRegExp(v3);
    MEMORY[0x26672B1B0]();
  }

  v4 = *(this + 4);
  if (v4)
  {
    TRegExp::~TRegExp(v4);
    MEMORY[0x26672B1B0]();
  }

  v5 = *(this + 5);
  if (v5)
  {
    TRegExp::~TRegExp(v5);
    MEMORY[0x26672B1B0]();
  }

  v6 = *(this + 6);
  if (v6)
  {
    TRegExp::~TRegExp(v6);
    MEMORY[0x26672B1B0]();
  }
}

uint64_t TDecompounder::isValidWord(TDecompounder *this, unsigned int **a2, __int32 **a3, int a4, int a5)
{
  if (a4 && (a5 & 1) != 0)
  {
    return 0;
  }

  v44 = v46;
  v45 = xmmword_26286B6F0;
  v47 = 1;
  TWord::getTokenName(a3, &v44);
  v11 = *(this + 1);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v11 + 5624));
  if (*(v11 + TParam::getValidConfig((v11 + 5624), ActiveConfigHandle) + 5776) != 1)
  {
    goto LABEL_43;
  }

  v13 = *(this + 1);
  v14 = TParam::getActiveConfigHandle((v13 + 5128));
  if ((*(v13 + TParam::getValidConfig((v13 + 5128), v14) + 5280) & 1) == 0)
  {
    v15 = *(this + 3);
    if (v15)
    {
      if (*(&v45 + 1) >= v45)
      {
        if (v47)
        {
          LODWORD(v40) = 0;
          TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), &v40, 1uLL);
          v16 = v44;
          --*(&v45 + 1);
        }

        else
        {
          v16 = v44;
          if (v45)
          {
            v44[v45 - 1] = 0;
          }
        }
      }

      else
      {
        v16 = v44;
        v44[*(&v45 + 1)] = 0;
      }

      if (TRegExp::match(v15, v16, 0))
      {
        goto LABEL_50;
      }
    }
  }

  if (a4)
  {
    v17 = *(this + 5);
    if (v17)
    {
      if (*(&v45 + 1) >= v45)
      {
        if (v47)
        {
          LODWORD(v40) = 0;
          TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), &v40, 1uLL);
          v18 = v44;
          --*(&v45 + 1);
        }

        else
        {
          v18 = v44;
          if (v45)
          {
            v44[v45 - 1] = 0;
          }
        }
      }

      else
      {
        v18 = v44;
        v44[*(&v45 + 1)] = 0;
      }

      if (TRegExp::match(v17, v18, 0))
      {
        goto LABEL_50;
      }
    }

    if (a5)
    {
LABEL_26:
      v19 = *(this + 4);
      if (v19)
      {
        if (*(&v45 + 1) < v45)
        {
          v20 = v44;
          v44[*(&v45 + 1)] = 0;
          goto LABEL_42;
        }

        if (v47)
        {
LABEL_36:
          LODWORD(v40) = 0;
          TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), &v40, 1uLL);
          v20 = v44;
          --*(&v45 + 1);
          goto LABEL_42;
        }

        v20 = v44;
        if (v45)
        {
          v44[v45 - 1] = 0;
        }

LABEL_42:
        if (TRegExp::match(v19, v20, 0))
        {
          goto LABEL_50;
        }

        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (a4)
    {
      goto LABEL_43;
    }
  }

  else if (a5)
  {
    goto LABEL_26;
  }

  v19 = *(this + 6);
  if (v19)
  {
    if (*(&v45 + 1) < v45)
    {
      v20 = v44;
      v44[*(&v45 + 1)] = 0;
      goto LABEL_42;
    }

    if (v47)
    {
      goto LABEL_36;
    }

    v20 = v44;
    if (v45)
    {
      v44[v45 - 1] = 0;
    }

    goto LABEL_42;
  }

LABEL_43:
  v21 = *(this + 1);
  v22 = TParam::getActiveConfigHandle((v21 + 5376));
  if (*(v21 + TParam::getValidConfig((v21 + 5376), v22) + 5528) != 1 || a5 == 0)
  {
    goto LABEL_51;
  }

  v24 = **a2;
  {
    operator new();
  }

  isUpper = TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v24);
  v26 = *v44;
  {
    operator new();
  }

  if (isUpper == TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v26))
  {
LABEL_51:
    v27 = *(this + 1);
    v28 = TParam::getActiveConfigHandle((v27 + 6120));
    v29 = *(v27 + TParam::getValidConfig((v27 + 6120), v28) + 6272);
    v10 = 1;
    if (v29 != 1 || a5 == 0)
    {
      goto LABEL_98;
    }

    v40 = v42;
    v41 = xmmword_26286B6F0;
    v43 = 1;
    TWord::getCategoryTag(a2, &v40);
    v36 = v38;
    v37 = xmmword_26286B6F0;
    v39 = 1;
    TWord::getCategoryTag(a3, &v36);
    if (*(&v37 + 1) >= v37)
    {
      if (v39)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v36, *(&v37 + 1), &v48, 1uLL);
        v31 = v36;
        --*(&v37 + 1);
      }

      else
      {
        v31 = v36;
        if (v37)
        {
          v36[v37 - 1] = 0;
        }
      }
    }

    else
    {
      v31 = v36;
      v36[*(&v37 + 1)] = 0;
    }

    if (!wcscmp(v31, "X"))
    {
      goto LABEL_92;
    }

    v32 = *(&v41 + 1);
    if (*(&v41 + 1) >= v41)
    {
      if (v43)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v40, *(&v41 + 1), &v48, 1uLL);
        v33 = v40;
        v32 = --*(&v41 + 1);
      }

      else
      {
        v33 = v40;
        if (v41)
        {
          v40[v41 - 1] = 0;
        }
      }
    }

    else
    {
      v33 = v40;
      v40[*(&v41 + 1)] = 0;
    }

    if (!wcscmp(v33, "X"))
    {
      goto LABEL_92;
    }

    if (v32 >= v41)
    {
      if (v43)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v40, v32, &v48, 1uLL);
        v33 = v40;
        --*(&v41 + 1);
      }

      else if (v41)
      {
        v33[v41 - 1] = 0;
      }
    }

    else
    {
      v33[v32] = 0;
    }

    if (*(&v37 + 1) >= v37)
    {
      if (v39)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v36, *(&v37 + 1), &v48, 1uLL);
        v34 = v36;
        --*(&v37 + 1);
      }

      else
      {
        v34 = v36;
        if (v37)
        {
          v36[v37 - 1] = 0;
        }
      }
    }

    else
    {
      v34 = v36;
      v36[*(&v37 + 1)] = 0;
    }

    if (!wcsncmp(v33, v34, 2uLL))
    {
LABEL_92:
      if (v39 == 1 && v36 != v38 && v36)
      {
        MEMORY[0x26672B1B0]();
      }

      if (v43 == 1 && v40 != v42 && v40)
      {
        MEMORY[0x26672B1B0]();
      }

      goto LABEL_98;
    }

    if (v39 == 1 && v34 != v38 && v34)
    {
      MEMORY[0x26672B1B0](v34, 0x1000C4052888210);
    }

    if (v43 == 1 && v40 != v42 && v40)
    {
      MEMORY[0x26672B1B0]();
    }
  }

LABEL_50:
  v10 = 0;
LABEL_98:
  if (v47 == 1 && v44 != v46 && v44)
  {
    MEMORY[0x26672B1B0]();
  }

  return v10;
}

void sub_2627CC730(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0xC70]) == 1)
  {
    v4 = STACK[0x858];
    if (STACK[0x858] != v2)
    {
      if (v4)
      {
        MEMORY[0x26672B1B0](v4, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TDecompounder::decompound(TDecompounder *this, const TWord *a2, TFsa *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v128 = *MEMORY[0x277D85DE8];
  v120 = v122;
  v121 = xmmword_26286B6F0;
  v123 = 1;
  TWord::getWrittenForm(v6, &v120);
  v119[0] = TWord::getWordSpec(v7);
  v119[1] = v9;
  v115 = v117;
  v116 = xmmword_26286B6F0;
  v118 = 1;
  v10 = TStringParam::get((*(v8 + 1) + 10744));
  TBuffer<wchar_t>::assign(&v115, v10);
  v115[70] = 48;
  v124 = 0;
  std::vector<TState *>::vector[abi:ne200100](&v113, *(&v121 + 1) + 1, &v124);
  v93 = v7;
  v11 = TFsa::newState(v5, 0);
  *v113 = v11;
  TFsa::addExtremity(v5, *v113, 0);
  v96 = v5;
  v12 = *(&v121 + 1);
  if (*(&v121 + 1))
  {
    v13 = 0;
    while (1)
    {
      v112 = *(v113 + v13);
      if (!v112)
      {
        goto LABEL_126;
      }

      v108 = v110;
      v109 = xmmword_26286B6F0;
      v111 = 1;
      if (v12 >= v121)
      {
        if (v123)
        {
          LODWORD(v124) = 0;
          TBuffer<wchar_t>::insert(&v120, v12, &v124, 1uLL);
          v14 = v120;
          --*(&v121 + 1);
        }

        else
        {
          v14 = v120;
          if (v121)
          {
            v120[v121 - 1] = 0;
          }
        }
      }

      else
      {
        v14 = v120;
        v120[v12] = 0;
      }

      TBuffer<wchar_t>::assign(&v108, &v14[v13]);
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v15 = *(v8 + 1);
      ActiveConfigHandle = TParam::getActiveConfigHandle((v15 + 5128));
      if (*(v15 + TParam::getValidConfig((v15 + 5128), ActiveConfigHandle) + 5280) != 1 || (v17 = *(v8 + 2)) == 0 || !v17[25])
      {
        v25 = *v8;
        if (*(&v109 + 1) >= v109)
        {
          if (v111)
          {
            LODWORD(v124) = 0;
            TBuffer<wchar_t>::insert(&v108, *(&v109 + 1), &v124, 1uLL);
            v26 = v108;
            --*(&v109 + 1);
          }

          else
          {
            v26 = v108;
            if (v109)
            {
              v108[v109 - 1] = 0;
            }
          }
        }

        else
        {
          v26 = v108;
          v108[*(&v109 + 1)] = 0;
        }

        v27 = *(v8 + 1);
        v28 = TParam::getActiveConfigHandle((v27 + 16464));
        v29 = *(v27 + 4 * TParam::getValidConfig((v27 + 16464), v28) + 16624);
        v30 = *(v8 + 1);
        v31 = TParam::getActiveConfigHandle((v30 + 16112));
        v32 = *(v30 + 4 * TParam::getValidConfig((v30 + 16112), v31) + 16272);
        if (*(&v116 + 1) >= v116)
        {
          if (v118)
          {
            LODWORD(v124) = 0;
            TBuffer<wchar_t>::insert(&v115, *(&v116 + 1), &v124, 1uLL);
            v33 = v115;
            --*(&v116 + 1);
          }

          else
          {
            v33 = v115;
            if (v116)
            {
              v115[v116 - 1] = 0;
            }
          }
        }

        else
        {
          v33 = v115;
          v115[*(&v116 + 1)] = 0;
        }

        v124 = v126;
        v125 = xmmword_26286B6F0;
        v127 = 1;
        v34 = *v26;
        if (*v26)
        {
          v35 = v26 + 1;
          do
          {
            LODWORD(v102) = v34;
            TBuffer<wchar_t>::insert(&v124, *(&v125 + 1), &v102, 1uLL);
            if (*(&v125 + 1) >= v125)
            {
              if (v127)
              {
                LODWORD(v102) = 0;
                TBuffer<wchar_t>::insert(&v124, *(&v125 + 1), &v102, 1uLL);
                v36 = v124;
                --*(&v125 + 1);
              }

              else
              {
                v36 = v124;
                if (v125)
                {
                  *(v124 + v125 - 1) = 0;
                }
              }
            }

            else
            {
              v36 = v124;
              *(v124 + *(&v125 + 1)) = 0;
            }

            HeadClonesCollated = TLexicon::findHeadClonesCollated(v25, v36, v33, v29, v32, &v105);
            v38 = *v35++;
            v34 = v38;
          }

          while (((v38 != 0) & HeadClonesCollated) != 0);
          if ((v127 & 1) != 0 && v124 != v126 && v124)
          {
            MEMORY[0x26672B1B0]();
          }
        }

        goto LABEL_56;
      }

      v18 = v17[19];
      v19 = v17[20];
      if (v18 != v19)
      {
        while (!*v18)
        {
          if (++v18 == v19)
          {
            v18 = v19;
            break;
          }
        }
      }

      v20 = *v8;
      v21 = *v18;
      v22 = *(&v109 + 1);
      v23 = v109;
      if (*(&v109 + 1) >= v109)
      {
        if (v111)
        {
          LODWORD(v102) = 0;
          TBuffer<wchar_t>::insert(&v108, *(&v109 + 1), &v102, 1uLL);
          v23 = v109;
          v22 = --*(&v109 + 1);
          v24 = v108;
        }

        else
        {
          v24 = v108;
          if (!v109)
          {
            goto LABEL_54;
          }

          v108[v109 - 1] = 0;
        }
      }

      else
      {
        v24 = v108;
        v108[*(&v109 + 1)] = 0;
      }

      if (v22 < v23)
      {
        break;
      }

      if ((v111 & 1) == 0)
      {
        if (v23)
        {
          v24[v23 - 1] = 0;
        }

        goto LABEL_54;
      }

      LODWORD(v102) = 0;
      TBuffer<wchar_t>::insert(&v108, v22, &v102, 1uLL);
      v39 = v108;
      --*(&v109 + 1);
LABEL_55:
      v40 = *(v8 + 1);
      v41 = TParam::getActiveConfigHandle((v40 + 16464));
      v42 = *(v40 + 4 * TParam::getValidConfig((v40 + 16464), v41) + 16624);
      v43 = *(v8 + 1);
      v44 = TParam::getActiveConfigHandle((v43 + 16112));
      ValidConfig = TParam::getValidConfig((v43 + 16112), v44);
      fsaSearch(v20, v21, v24, v39, &v124, &v124, 0, v42, *(v43 + 4 * ValidConfig + 16272), &v105);
LABEL_56:
      v125 = 0uLL;
      v124 = 0;
      std::vector<TItnRule *>::push_back[abi:ne200100](&v124, &v112);
      v94 = v13;
      v46 = v105;
      if (v106 != v105)
      {
        for (i = 0; i < (v106 - v105) >> 5; ++i)
        {
          v48 = &v46[32 * i];
          v50 = *v48;
          v49 = *(v48 + 1);
          v51 = *(v8 + 1);
          v52 = TParam::getActiveConfigHandle((v51 + 5376));
          if (*(v51 + TParam::getValidConfig((v51 + 5376), v52) + 5528) == 1)
          {
            *(v105 + 4 * i + 2) &= 0xFFFFFFFFFFFFFFBCLL;
          }

          v53 = v49 + v94;
          v54 = *TWord::getOptionalTagBits(v50);
          if ((v54 & 0x80) != 0)
          {
            if (v94 && *(&v121 + 1) != v53)
            {
              goto LABEL_72;
            }
          }

          else if (TDecompounder::isValidWord(v8, v93, v50, v94 == 0, *(&v121 + 1) == v53))
          {
            v55 = *(v8 + 1);
            v56 = TParam::getActiveConfigHandle((v55 + 5872));
            if (*(v55 + TParam::getValidConfig((v55 + 5872), v56) + 6024) != 1 || v119[0] == -1)
            {
              if (!*(v113 + v53))
              {
                v58 = TFsa::newState(v96, 0);
                *(v113 + v53) = v58;
              }

              operator new();
            }

LABEL_72:
            if (TWord::getWordSpec(v50) != -1 && v125 != v124)
            {
              v59 = 0;
              v60 = (v125 - v124) >> 3;
              if (v60 <= 1)
              {
                v60 = 1;
              }

              v95 = v60;
              while (1)
              {
                v61 = *(v124 + v59);
                v103 = 0;
                v104 = 0;
                v102 = 0;
                v62 = *(v61 + 16);
                if (!v62)
                {
                  goto LABEL_110;
                }

                do
                {
                  v101 = v62;
                  if ((v54 & 0x80) != 0 && (*TWord::getOptionalTagBits(*(*v62 + 8)) & 0x80) != 0)
                  {
                    std::vector<TItnRule *>::push_back[abi:ne200100](&v102, &v101);
                  }

                  else
                  {
                    v63 = *(v8 + 1);
                    v64 = TParam::getActiveConfigHandle((v63 + 5872));
                    if (*(v63 + TParam::getValidConfig((v63 + 5872), v64) + 6024) == 1 && v119[0] != -1)
                    {
                      __p = 0;
                      v99 = 0;
                      v100 = 0;
                      v66 = v101;
                      if (v101)
                      {
                        do
                        {
                          *&v97 = TWord::getWordSpec(*(*v66 + 8));
                          *(&v97 + 1) = v67;
                          std::vector<SDWordSpec>::push_back[abi:ne200100](&__p, &v97);
                          v66 = *(v66[3] + 16);
                        }

                        while (v66);
                        v68 = v99 - 16;
                        if (__p != v99 && v68 > __p)
                        {
                          v70 = __p + 16;
                          do
                          {
                            v71 = *(v70 - 1);
                            *(v70 - 1) = *v68;
                            *v68 = v71;
                            v68 -= 16;
                            v72 = v70 >= v68;
                            v70 += 16;
                          }

                          while (!v72);
                        }
                      }

                      *&v97 = TWord::getWordSpec(v50);
                      *(&v97 + 1) = v73;
                      std::vector<SDWordSpec>::push_back[abi:ne200100](&__p, &v97);
                      v74 = (v99 - __p) >> 4;
                      if (*(&v121 + 1) == v53)
                      {
                        HaveCommonPron = SDWord_WordsHaveCommonPron(__p, v74, v119, 1u);
                      }

                      else
                      {
                        HaveCommonPron = SDWord_WordsHavePrefixPron(__p, v74, v119, 1u);
                      }

                      if (!HaveCommonPron)
                      {
                        std::vector<TItnRule *>::push_back[abi:ne200100](&v102, &v101);
                      }

                      if (__p)
                      {
                        v99 = __p;
                        operator delete(__p);
                      }
                    }
                  }

                  v62 = v62[4];
                }

                while (v62);
                v76 = v102;
                v77 = v103;
                if (v102 == v103)
                {
                  goto LABEL_110;
                }

                if (TState::getTransCount(v61, 0) != (v77 - v76) >> 3)
                {
                  break;
                }

                if (v102)
                {
                  v103 = v102;
                  operator delete(v102);
                }

                if (++v59 == v95)
                {
                  goto LABEL_116;
                }
              }

              __p = TFsa::newState(v96, 0);
              std::vector<TItnRule *>::push_back[abi:ne200100](&v124, &__p);
              v78 = v102;
              if (v103 != v102)
              {
                v79 = 0;
                do
                {
                  TFsa::moveTrans(v96, v78[v79], v78[v79][3], *(v125 - 8));
                  ++v79;
                  v78 = v102;
                }

                while (v79 < (v103 - v102) >> 3);
              }

              if (*(v61 + 24))
              {
                operator new();
              }

LABEL_110:
              if (!*(v113 + v53))
              {
                v80 = TFsa::newState(v96, 0);
                *(v113 + v53) = v80;
              }

              operator new();
            }
          }

LABEL_116:
          v46 = v105;
        }
      }

      if (v124)
      {
        *&v125 = v124;
        operator delete(v124);
        v46 = v105;
      }

      if (v46)
      {
        v106 = v46;
        operator delete(v46);
      }

      v13 = v94;
      if (v111 == 1 && v108 != v110 && v108)
      {
        MEMORY[0x26672B1B0]();
      }

      v12 = *(&v121 + 1);
LABEL_126:
      if (++v13 >= v12)
      {
        goto LABEL_127;
      }
    }

    v24[v22] = 0;
LABEL_54:
    v39 = v24;
    goto LABEL_55;
  }

LABEL_127:
  v81 = *(v114 - 1);
  if (v81)
  {
    TFsa::addExtremity(v96, v81, 1u);
  }

  std::vector<unsigned long>::vector[abi:ne200100](&v124, (v96[7] - v96[6]) >> 3);
  v108 = 0;
  v109 = 0uLL;
  std::vector<TState *>::reserve(&v108, v96[5]);
  v83 = v96[6];
  v82 = v96[7];
  if (v83 != v82)
  {
    while (!*v83)
    {
      if (++v83 == v82)
      {
        goto LABEL_141;
      }
    }
  }

  if (v83 != v82)
  {
    do
    {
      v84 = *v83;
      v105 = v84;
      if (!v84[3] && v84[5] == -1)
      {
        std::vector<TItnRule *>::push_back[abi:ne200100](&v108, &v105);
        v84 = v105;
      }

      TransCount = TState::getTransCount(v84, 1u);
      *(v124 + *v105) = TransCount;
      v86 = v83 + 1;
      do
      {
        v83 = v86;
        if (v86 == v82)
        {
          break;
        }

        ++v86;
      }

      while (!*v83);
    }

    while (v83 != v96[7]);
  }

LABEL_141:
  v87 = v108;
  if (v109 != v108)
  {
    v88 = 0;
    do
    {
      v89 = *&v87[2 * v88];
      for (j = v89[2]; j; j = j[4])
      {
        v91 = j[3];
        v92 = v124;
        --*(v124 + *v91);
        if (!v92[*v91])
        {
          v105 = v91;
          std::vector<TItnRule *>::push_back[abi:ne200100](&v108, &v105);
        }

        if (*j)
        {
          MEMORY[0x26672B1B0](*j, 0x1060C40A1FB9E56);
        }
      }

      TFsa::deleteState(v96, v89);
      ++v88;
      v87 = v108;
    }

    while (v88 < (v109 - v108) >> 3);
  }

  if (v87)
  {
    *&v109 = v87;
    operator delete(v87);
  }

  if (v124)
  {
    *&v125 = v124;
    operator delete(v124);
  }

  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }

  if (v118 == 1 && v115 != v117 && v115)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v123 == 1 && v120 != v122 && v120)
  {
    MEMORY[0x26672B1B0]();
  }
}

void sub_2627CD508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v34 = STACK[0xD68];
  if (STACK[0xD68])
  {
    STACK[0xD70] = v34;
    operator delete(v34);
  }

  v35 = STACK[0x4E8];
  if (STACK[0x4E8])
  {
    STACK[0x4F0] = v35;
    operator delete(v35);
  }

  if (LOBYTE(STACK[0x918]) == 1)
  {
    v36 = STACK[0x500];
    if (STACK[0x500] != a11)
    {
      if (v36)
      {
        MEMORY[0x26672B1B0](v36, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  if (LOBYTE(STACK[0xD48]) == 1 && STACK[0x930] != a12 && STACK[0x930] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void fsaSearch(void *a1, uint64_t a2, int *a3, int *a4, __int32 *a5, _DWORD *a6, unsigned int a7, size_t a8, size_t a9, uint64_t a10)
{
  v15 = a2;
  if (*(a2 + 40) != -1)
  {
    *a6 = 0;
    HeadClone = TLexicon::findHeadClone(a1, a5);
    if (!HeadClone)
    {
      HeadClone = TLexicon::addTempWord(a1, a5, 0, 0, 0);
    }

    v48 = v50;
    v49 = xmmword_26286B6F0;
    v51 = 1;
    v44 = v46;
    v45 = xmmword_26286B6F0;
    v47 = 1;
    v42 = HeadClone;
    TWord::getWrittenForm(HeadClone, &v48);
    TBuffer<wchar_t>::resize(&v44, 0);
    TBuffer<wchar_t>::insert(&v44, 0, a3, a4 - a3);
    if (*(&v45 + 1) >= v45)
    {
      if (v47)
      {
        v52[0] = 0;
        TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), v52, 1uLL);
        v18 = v44;
        --*(&v45 + 1);
      }

      else
      {
        v18 = v44;
        if (v45)
        {
          v44[v45 - 1] = 0;
        }
      }
    }

    else
    {
      v18 = v44;
      v44[*(&v45 + 1)] = 0;
    }

    if (*(&v49 + 1) >= v49)
    {
      if (v51)
      {
        v52[0] = 0;
        TBuffer<wchar_t>::insert(&v48, *(&v49 + 1), v52, 1uLL);
        v19 = v48;
        --*(&v49 + 1);
      }

      else
      {
        v19 = v48;
        if (v49)
        {
          v48[v49 - 1] = 0;
        }
      }
    }

    else
    {
      v19 = v48;
      v48[*(&v49 + 1)] = 0;
    }

    Score = TLexicon::makeScore(a1, v18, v19, a8, a9);
    v41 = v15;
    v22 = *(&v45 + 1);
    v23 = *(a10 + 8);
    v24 = *(a10 + 16);
    if (v23 >= v24)
    {
      v40 = v21;
      v26 = (v23 - *a10) >> 5;
      v27 = v26 + 1;
      if ((v26 + 1) >> 59)
      {
        std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
      }

      v28 = v24 - *a10;
      if (v28 >> 4 > v27)
      {
        v27 = v28 >> 4;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFE0)
      {
        v29 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<TLexiconMatch>>(a10, v29);
      }

      v30 = 32 * v26;
      *v30 = v42;
      *(v30 + 8) = v22;
      *(v30 + 16) = Score;
      *(v30 + 24) = v40;
      v25 = 32 * v26 + 32;
      v31 = *(a10 + 8) - *a10;
      v32 = 32 * v26 - v31;
      memcpy((v30 - v31), *a10, v31);
      v33 = *a10;
      *a10 = v32;
      *(a10 + 8) = v25;
      *(a10 + 16) = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v23 = v42;
      *(v23 + 8) = v22;
      *(v23 + 16) = Score;
      v25 = v23 + 32;
      *(v23 + 24) = v21;
    }

    *(a10 + 8) = v25;
    if (v47 == 1 && v44 != v46 && v44)
    {
      MEMORY[0x26672B1B0]();
    }

    v15 = v41;
    if (v51 == 1 && v48 != v50 && v48)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  for (i = *(v15 + 24); i; i = i[5])
  {
    v35 = *i;
    if (*i == 92)
    {
      v36 = 1;
    }

    else
    {
      v36 = a7;
    }

    if (v36)
    {
      v37 = 0;
    }

    else
    {
      v38 = *a4;
      v39 = a1[34];
      if (!v39)
      {
        goto LABEL_47;
      }

      if (v38 < 0x10000)
      {
        v38 = *(v39 + 4 * v38);
      }

      if (v35 < 0x10000)
      {
        LODWORD(v39) = *(v39 + 4 * v35);
      }

      else
      {
LABEL_47:
        v39 = *i;
      }

      if (v38 != v39)
      {
        continue;
      }

      v37 = 1;
    }

    *a6 = v35;
    fsaSearch(a1, i[2], a3, &a4[v37], a5, a6 + 1, v36, a8, a9, a10);
  }
}

void sub_2627CDAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (LOBYTE(STACK[0x468]) == 1 && a19 != a14 && a19)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x888]) == 1)
  {
    v20 = STACK[0x470];
    if (STACK[0x470] != a15)
    {
      if (v20)
      {
        MEMORY[0x26672B1B0](v20, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  _Unwind_Resume(a1);
}

void std::vector<SDWordSpec>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnRuleControl>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

void TDecompounder::addWords(TDecompounder *this, char **a2, TGraph *a3, TSegmenter *a4)
{
  Segment = TSegmenter::getSegment(a4, a2[2]);
  if (Segment)
  {
    v9 = Segment;
    v10 = *(Segment + 24);
    v11 = v10 > 5;
    v12 = (1 << v10) & 0x2D;
    if (v11 || v12 == 0)
    {
      v73 = v75;
      v74 = xmmword_26286B6F0;
      v76 = 1;
      TBuffer<wchar_t>::assign(&v73, *Segment);
      v14 = *(v9 + 8);
      if (*(v9 + 24) == 1 && (v15 = *(this + 1), ActiveConfigHandle = TParam::getActiveConfigHandle((v15 + 13360)), *(v15 + TParam::getValidConfig((v15 + 13360), ActiveConfigHandle) + 13512) == 1) && *v14)
      {
        v17 = 0;
        do
        {
          v18 = TSegmenter::getSegment(a4, v14);
          v19 = v18;
          if (!v18)
          {
            break;
          }

          if (**v18 != 45)
          {
            break;
          }

          v20 = TSegmenter::getSegment(a4, *(v18 + 8));
          v21 = v20;
          if (!v20)
          {
            break;
          }

          if (*(v20 + 24) != 1)
          {
            break;
          }

          v22 = 0;
          v23 = *v19;
            ;
          }

          TBuffer<wchar_t>::insert(&v73, *(&v74 + 1), v23, v22 - 1);
          v25 = 0;
          v26 = *v21;
            ;
          }

          TBuffer<wchar_t>::insert(&v73, *(&v74 + 1), v26, v25 - 1);
          v14 = *(v21 + 8);
          v17 = 1;
        }

        while (*v14);
      }

      else
      {
        v17 = 0;
      }

      OutEdge = TVertex::getOutEdge(a2);
      if (!OutEdge)
      {
        goto LABEL_30;
      }

      v29 = 0;
LABEL_24:
      v29 |= (*(OutEdge + 64) & 0xC0) == 0;
      while (1)
      {
        OutEdge = *(OutEdge + 8);
        if (!OutEdge)
        {
          break;
        }

        if ((*(OutEdge + 32) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if (v17 & 1 | ((v29 & 1) == 0) || (v30 = *(this + 1), v31 = TParam::getActiveConfigHandle((v30 + 13112)), *(v30 + TParam::getValidConfig((v30 + 13112), v31) + 13264) == 1))
      {
LABEL_30:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v32 = *this;
        if (*(&v74 + 1) >= v74)
        {
          if (v76)
          {
            v60[0] = 0;
            TBuffer<wchar_t>::insert(&v73, *(&v74 + 1), v60, 1uLL);
            v33 = v73;
            --*(&v74 + 1);
          }

          else
          {
            v33 = v73;
            if (v74)
            {
              v73[v74 - 1] = 0;
            }
          }
        }

        else
        {
          v33 = v73;
          v73[*(&v74 + 1)] = 0;
        }

        v34 = TStringParam::get((*(this + 1) + 10744));
        v35 = *(this + 1);
        v36 = TParam::getActiveConfigHandle((v35 + 16464));
        v37 = *(v35 + 4 * TParam::getValidConfig((v35 + 16464), v36) + 16624);
        v38 = *(this + 1);
        v39 = TParam::getActiveConfigHandle((v38 + 16112));
        ValidConfig = TParam::getValidConfig((v38 + 16112), v39);
        TLexicon::findHeadClonesCollated(v32, v33, v34, v37, *(v38 + 4 * ValidConfig + 16272), &v70);
        if (v70 == v71)
        {
          goto LABEL_44;
        }

        v41 = (v71 - v70) >> 5;
        if (v41 <= 1)
        {
          v41 = 1;
        }

        v42 = v70 + 16;
        while ((*v42 & 0x35) != 0)
        {
          v42 += 32;
          if (!--v41)
          {
            goto LABEL_44;
          }
        }

        v43 = *(v42 - 2);
        if (!v43)
        {
LABEL_44:
          v44 = *this;
          if (*(&v74 + 1) >= v74)
          {
            if (v76)
            {
              v60[0] = 0;
              TBuffer<wchar_t>::insert(&v73, *(&v74 + 1), v60, 1uLL);
              v45 = v73;
              --*(&v74 + 1);
            }

            else
            {
              v45 = v73;
              if (v74)
              {
                v73[v74 - 1] = 0;
              }
            }
          }

          else
          {
            v45 = v73;
            v73[*(&v74 + 1)] = 0;
          }

          v43 = TLexicon::addTempWord(v44, v45, 0, 0, 0);
        }

        TFsa::TFsa(v60);
        TDecompounder::decompound(this, v43, v60);
        if (v61)
        {
          v58 = 0;
          std::vector<TVertex *>::vector[abi:ne200100](__p, (v63 - v62) >> 3, &v58);
          v46 = v66;
          if (v66 != v67)
          {
            while (!*v46)
            {
              if (++v46 == v67)
              {
                v46 = v67;
                break;
              }
            }
          }

          *(__p[0] + **v46) = a2;
          v47 = TGraph::addVertex(a3, v14);
          v48 = v68;
          if (v68 != v69)
          {
            while (!*v48)
            {
              if (++v48 == v69)
              {
                v48 = v69;
                break;
              }
            }
          }

          *(__p[0] + **v48) = v47;
          v50 = v62;
          v49 = v63;
          if (v63 != v62)
          {
            v51 = 0;
            do
            {
              if (*(v50 + 8 * v51) && !*(__p[0] + v51))
              {
                v52 = TGraph::addVertex(a3, 0);
                *(__p[0] + v51) = v52;
                v50 = v62;
                v49 = v63;
              }

              ++v51;
            }

            while (v51 < (v49 - v50) >> 3);
          }

          v54 = v64;
          v53 = v65;
          if (v65 != v64)
          {
            v55 = 0;
            do
            {
              v56 = *(v54 + 8 * v55);
              if (v56)
              {
                v57 = *v56;
                TGraph::addEdge(a3, *(__p[0] + **(v56 + 24)), *(__p[0] + **(v56 + 16)), *v56);
                MEMORY[0x26672B1B0](v57, 0x1060C40A1FB9E56);
                v54 = v64;
                v53 = v65;
              }

              ++v55;
            }

            while (v55 < (v53 - v54) >> 3);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        TFsa::~TFsa(v60);
        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }
      }

      if (v76 == 1 && v73 != v75)
      {
        if (v73)
        {
          MEMORY[0x26672B1B0]();
        }
      }
    }
  }
}

void sub_2627CE17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  TFsa::~TFsa(&a15);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  if (LOBYTE(STACK[0x540]) == 1 && a46 != a10 && a46 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,false>(uint64_t result, const __int32 **a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a3;
  v7 = result;
LABEL_2:
  v8 = v7;
LABEL_3:
  v9 = 1 - a4;
  while (1)
  {
    v7 = v8;
    v10 = v9;
    v11 = a2 - v8;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v67 = *(a2 - 1);
        v68 = *v8;
        result = wcscmp(v67, *v8);
        if ((result & 0x80000000) != 0)
        {
          *v8 = v67;
          *(a2 - 1) = v68;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(v8, v8 + 1, v8 + 2, a2 - 1);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(v8, v8 + 1, v8 + 2, v8 + 3);
      v63 = *(a2 - 1);
      v64 = v8[3];
      result = wcscmp(v63, v64);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v8[3] = v63;
      *(a2 - 1) = v64;
      v65 = v8[2];
      v61 = v8[3];
      result = wcscmp(v61, v65);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v8[2] = v61;
      v8[3] = v65;
      v66 = v8[1];
      result = wcscmp(v61, v66);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v8[1] = v61;
      v8[2] = v66;
      goto LABEL_72;
    }

LABEL_11:
    if (v11 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v8, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v8, a2);
      }
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,wchar_t const**>(v8, a2, a2, v5);
      }

      return result;
    }

    v12 = &v8[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 >= 0x81)
    {
      v15 = *v12;
      v16 = *v8;
      v17 = wcscmp(*v12, *v7);
      v18 = wcscmp(v14, v15);
      if (v17 < 0)
      {
        if (v18 < 0)
        {
          *v7 = v14;
        }

        else
        {
          *v7 = v15;
          *v12 = v16;
          v27 = *(a2 - 1);
          if ((wcscmp(v27, v16) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          *v12 = v27;
        }

        *(a2 - 1) = v16;
      }

      else if (v18 < 0)
      {
        *v12 = v14;
        *(a2 - 1) = v15;
        v19 = *v12;
        v20 = *v7;
        if (wcscmp(*v12, *v7) < 0)
        {
          *v7 = v19;
          *v12 = v20;
        }
      }

LABEL_30:
      v29 = v12 - 1;
      v30 = *(v12 - 1);
      v31 = *(v7 + 8);
      v32 = wcscmp(v30, v31);
      v33 = *(a2 - 2);
      v34 = wcscmp(v33, v30);
      if (v32 < 0)
      {
        if (v34 < 0)
        {
          *(v7 + 8) = v33;
        }

        else
        {
          *(v7 + 8) = v30;
          *v29 = v31;
          v37 = *(a2 - 2);
          if ((wcscmp(v37, v31) & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          *v29 = v37;
        }

        *(a2 - 2) = v31;
      }

      else if (v34 < 0)
      {
        *v29 = v33;
        *(a2 - 2) = v30;
        v35 = *v29;
        v36 = *(v7 + 8);
        if (wcscmp(*v29, v36) < 0)
        {
          *(v7 + 8) = v35;
          *v29 = v36;
        }
      }

LABEL_41:
      v40 = v12[1];
      v39 = v12 + 1;
      v38 = v40;
      v41 = *(v7 + 16);
      v42 = wcscmp(v40, v41);
      v43 = *(a2 - 3);
      v44 = wcscmp(v43, v40);
      if (v42 < 0)
      {
        if (v44 < 0)
        {
          *(v7 + 16) = v43;
        }

        else
        {
          *(v7 + 16) = v38;
          *v39 = v41;
          v47 = *(a2 - 3);
          if ((wcscmp(v47, v41) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          *v39 = v47;
        }

        *(a2 - 3) = v41;
      }

      else if (v44 < 0)
      {
        *v39 = v43;
        *(a2 - 3) = v38;
        v45 = *v39;
        v46 = *(v7 + 16);
        if (wcscmp(*v39, v46) < 0)
        {
          *(v7 + 16) = v45;
          *v39 = v46;
        }
      }

LABEL_50:
      v48 = *v13;
      v49 = *v29;
      v50 = wcscmp(*v13, *v29);
      v51 = *v39;
      v52 = wcscmp(*v39, v48);
      if (v50 < 0)
      {
        if ((v52 & 0x80000000) == 0)
        {
          *v29 = v48;
          *v13 = v49;
          v29 = v13;
          v48 = v51;
          if ((wcscmp(v51, v49) & 0x80000000) == 0)
          {
            v48 = v49;
            goto LABEL_58;
          }
        }
      }

      else
      {
        if ((v52 & 0x80000000) == 0)
        {
LABEL_58:
          v53 = *v7;
          *v7 = v48;
          *v13 = v53;
          v5 = a3;
          goto LABEL_59;
        }

        *v13 = v51;
        *v39 = v48;
        v39 = v13;
        v48 = v49;
        if ((wcscmp(v51, v49) & 0x80000000) == 0)
        {
          v48 = v51;
          goto LABEL_58;
        }
      }

      *v29 = v51;
      *v39 = v49;
      goto LABEL_58;
    }

    v21 = *v8;
    v22 = *v12;
    v23 = wcscmp(*v7, *v12);
    v24 = wcscmp(v14, v21);
    if (v23 < 0)
    {
      if (v24 < 0)
      {
        *v12 = v14;
        goto LABEL_38;
      }

      *v12 = v21;
      *v7 = v22;
      v28 = *(a2 - 1);
      if (wcscmp(v28, v22) < 0)
      {
        *v7 = v28;
LABEL_38:
        *(a2 - 1) = v22;
      }
    }

    else if (v24 < 0)
    {
      *v7 = v14;
      *(a2 - 1) = v21;
      v25 = *v7;
      v26 = *v12;
      if (wcscmp(*v7, *v12) < 0)
      {
        *v12 = v25;
        *v7 = v26;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && (wcscmp(*(v7 - 8), *v7) & 0x80000000) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(v7, a2);
      v8 = result;
      goto LABEL_66;
    }

    v54 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(v7, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_64;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v7, v54);
    v8 = v54 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v54 + 1, a2);
    if (result)
    {
      a4 = -v10;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v9 = v10 + 1;
    if (!v56)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,false>(v7, v54, v5, -v10, a5 & 1);
      v8 = v54 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v10;
      goto LABEL_3;
    }
  }

  v57 = *v8;
  v58 = v8[1];
  v59 = wcscmp(v58, *v8);
  v60 = *(a2 - 1);
  result = wcscmp(v60, v58);
  if ((v59 & 0x80000000) == 0)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    *(v7 + 8) = v60;
    *(a2 - 1) = v58;
    v61 = *(v7 + 8);
LABEL_72:
    v62 = *v7;
    result = wcscmp(v61, *v7);
    if ((result & 0x80000000) != 0)
    {
      *v7 = v61;
      *(v7 + 8) = v62;
    }

    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    *v7 = v60;
  }

  else
  {
    *v7 = v58;
    *(v7 + 8) = v57;
    v69 = *(a2 - 1);
    result = wcscmp(v69, v57);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    *(v7 + 8) = v69;
  }

  *(a2 - 1) = v57;
  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(const __int32 **a1, const __int32 **a2, const __int32 **a3, const __int32 **a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = wcscmp(*a2, *a1);
  v11 = *a3;
  v12 = wcscmp(*a3, v8);
  if (v10 < 0)
  {
    if (v12 < 0)
    {
      *a1 = v11;
    }

    else
    {
      *a1 = v8;
      *a2 = v9;
      v8 = *a3;
      if ((wcscmp(*a3, v9) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      *a2 = v8;
    }

    *a3 = v9;
    v8 = v9;
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    *a2 = v11;
    *a3 = v8;
    v13 = *a2;
    v14 = *a1;
    if (wcscmp(*a2, *a1) < 0)
    {
      *a1 = v13;
      *a2 = v14;
      v8 = *a3;
    }
  }

  else
  {
    v8 = v11;
  }

LABEL_11:
  v15 = *a4;
  result = wcscmp(*a4, v8);
  if ((result & 0x80000000) != 0)
  {
    *a3 = v15;
    *a4 = v8;
    v17 = *a3;
    v18 = *a2;
    result = wcscmp(*a3, *a2);
    if ((result & 0x80000000) != 0)
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *a1;
      result = wcscmp(*a2, *a1);
      if ((result & 0x80000000) != 0)
      {
        *a1 = v19;
        *a2 = v20;
      }
    }
  }

  return result;
}

const __int32 **std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **result, const __int32 **a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 1;
    if (result + 1 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = *v6;
        v7 = v6[1];
        v6 = v4;
        result = wcscmp(v7, v8);
        if ((result & 0x80000000) != 0)
        {
          v9 = v5;
          while (1)
          {
            *(v3 + v9 + 8) = v8;
            if (!v9)
            {
              break;
            }

            v8 = *(v3 + v9 - 8);
            result = wcscmp(v7, v8);
            v9 -= 8;
            if ((result & 0x80000000) == 0)
            {
              v10 = (v3 + v9 + 8);
              goto LABEL_10;
            }
          }

          v10 = v3;
LABEL_10:
          *v10 = v7;
        }

        v4 = v6 + 1;
        v5 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

const __int32 **std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **result, const __int32 **a2)
{
  if (result != a2)
  {
    v3 = result;
    while (v3 + 1 != a2)
    {
      v5 = *v3;
      v4 = v3[1];
      ++v3;
      result = wcscmp(v4, v5);
      if ((result & 0x80000000) != 0)
      {
        v6 = v3;
        do
        {
          *v6 = v5;
          v5 = *(v6 - 2);
          result = wcscmp(v4, v5);
          --v6;
        }

        while ((result & 0x80000000) != 0);
        *v6 = v4;
      }
    }
  }

  return result;
}

const __int32 **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(const __int32 **a1, const __int32 **a2)
{
  v2 = a2;
  v4 = *a1;
  if (wcscmp(*a1, *(a2 - 1)) < 0)
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while ((wcscmp(v4, v7) & 0x80000000) == 0);
  }

  else
  {
    v5 = a1 + 1;
    do
    {
      v6 = v5;
      if (v5 >= v2)
      {
        break;
      }

      ++v5;
    }

    while ((wcscmp(v4, *v6) & 0x80000000) == 0);
  }

  if (v6 < v2)
  {
    do
    {
      v8 = *--v2;
    }

    while (wcscmp(v4, v8) < 0);
  }

  if (v6 < v2)
  {
    v9 = *v6;
    v10 = *v2;
    do
    {
      *v6 = v10;
      *v2 = v9;
      do
      {
        v11 = v6[1];
        ++v6;
        v9 = v11;
      }

      while ((wcscmp(v4, v11) & 0x80000000) == 0);
      do
      {
        v12 = *--v2;
        v10 = v12;
      }

      while (wcscmp(v4, v12) < 0);
    }

    while (v6 < v2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v4;
  return v6;
}

const __int32 **std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(const __int32 **a1, const __int32 **a2)
{
  v4 = 0;
  v5 = *a1;
  do
  {
    v6 = a1[++v4];
  }

  while (wcscmp(v6, v5) < 0);
  v7 = &a1[v4];
  v8 = &a1[v4 - 1];
  if (v4 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *--a2;
    }

    while ((wcscmp(v10, v5) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v9 = *--a2;
    }

    while ((wcscmp(v9, v5) & 0x80000000) == 0);
  }

  if (v7 < a2)
  {
    v11 = *a2;
    v12 = &a1[v4];
    v13 = a2;
    do
    {
      *v12 = v11;
      *v13 = v6;
      do
      {
        v14 = v12[1];
        ++v12;
        v6 = v14;
      }

      while (wcscmp(v14, v5) < 0);
      do
      {
        v15 = *--v13;
        v11 = v15;
      }

      while ((wcscmp(v15, v5) & 0x80000000) == 0);
    }

    while (v12 < v13);
    v8 = v12 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v5;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **a1, const __int32 **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *a1;
        v13 = a1[1];
        v14 = wcscmp(v13, *a1);
        v15 = *(a2 - 1);
        v16 = wcscmp(v15, v13);
        if (v14 < 0)
        {
          if (v16 < 0)
          {
            *a1 = v15;
          }

          else
          {
            *a1 = v13;
            a1[1] = v12;
            v28 = *(a2 - 1);
            if ((wcscmp(v28, v12) & 0x80000000) == 0)
            {
              return 1;
            }

            a1[1] = v28;
          }

          *(a2 - 1) = v12;
          return 1;
        }

        if ((v16 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v15;
        *(a2 - 1) = v13;
        v9 = a1[1];
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v7 = *(a2 - 1);
        v8 = a1[3];
        if ((wcscmp(v7, v8) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[3] = v7;
        *(a2 - 1) = v8;
        v10 = a1[2];
        v9 = a1[3];
        if ((wcscmp(v9, v10) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[2] = v9;
        a1[3] = v10;
        v11 = a1[1];
        if ((wcscmp(v9, v11) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v9;
        a1[2] = v11;
        break;
      default:
        goto LABEL_18;
    }

    v17 = *a1;
    if (wcscmp(v9, *a1) < 0)
    {
      *a1 = v9;
      a1[1] = v17;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (wcscmp(v5, *a1) < 0)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_18:
  v19 = a1 + 1;
  v18 = a1[1];
  v20 = *a1;
  v21 = wcscmp(v18, *a1);
  v23 = a1 + 2;
  v22 = a1[2];
  v24 = wcscmp(v22, v18);
  if (v21 < 0)
  {
    v26 = a1;
    v27 = a1 + 2;
    if (v24 < 0)
    {
      goto LABEL_28;
    }

    *a1 = v18;
    a1[1] = v20;
    v29 = wcscmp(v22, v20);
    v26 = a1 + 1;
    v27 = a1 + 2;
    if (v29 < 0)
    {
      goto LABEL_28;
    }
  }

  else if (v24 < 0)
  {
    *v19 = v22;
    *v23 = v18;
    v25 = wcscmp(v22, v20);
    v26 = a1;
    v27 = a1 + 1;
    if (v25 < 0)
    {
LABEL_28:
      *v26 = v22;
      *v27 = v20;
    }
  }

  v30 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v31 = 0;
  for (i = 24; ; i += 8)
  {
    v33 = *v30;
    v34 = *v23;
    if (wcscmp(*v30, *v23) < 0)
    {
      v35 = i;
      while (1)
      {
        *(a1 + v35) = v34;
        v36 = v35 - 8;
        if (v35 == 8)
        {
          break;
        }

        v34 = *(a1 + v35 - 16);
        v37 = wcscmp(v33, v34);
        v35 = v36;
        if ((v37 & 0x80000000) == 0)
        {
          v38 = (a1 + v36);
          goto LABEL_37;
        }
      }

      v38 = a1;
LABEL_37:
      *v38 = v33;
      if (++v31 == 8)
      {
        break;
      }
    }

    v23 = v30++;
    if (v30 == a2)
    {
      return 1;
    }
  }

  return v30 + 1 == a2;
}

const __int32 **std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,wchar_t const**>(const __int32 **a1, const __int32 **a2, const __int32 **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (wcscmp(*v12, *a1) < 0)
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v16 = *a1;
        v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, a4, v8);
        if (v15 == v17)
        {
          *v17 = v16;
        }

        else
        {
          *v17 = *v15;
          *v15 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, (v17 + 1), a4, v17 + 1 - a1);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(uint64_t result, uint64_t a2, uint64_t a3, const __int32 **a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v8 = a3;
      v9 = (a4 - result) >> 2;
      v10 = v9 + 1;
      v11 = (result + 8 * (v9 + 1));
      v12 = v9 + 2;
      v13 = *v11;
      if (v9 + 2 < a3)
      {
        v14 = v11[1];
        if (wcscmp(*v11, v14) < 0)
        {
          v13 = v14;
          ++v11;
          v10 = v12;
        }
      }

      v15 = *v5;
      result = wcscmp(v13, *v5);
      if ((result & 0x80000000) == 0)
      {
        v21 = v8;
        do
        {
          v16 = v11;
          *v5 = v13;
          if (v7 < v10)
          {
            break;
          }

          v17 = (2 * v10) | 1;
          v11 = (v6 + 8 * v17);
          v18 = 2 * v10 + 2;
          v13 = *v11;
          if (v18 < v8)
          {
            v19 = v11[1];
            v20 = wcscmp(*v11, v19);
            if (v20 < 0)
            {
              v13 = v19;
              ++v11;
            }

            v8 = v21;
            if (v20 < 0)
            {
              v17 = v18;
            }
          }

          result = wcscmp(v13, v15);
          v5 = v16;
          v10 = v17;
        }

        while ((result & 0x80000000) == 0);
        *v16 = v15;
      }
    }
  }

  return result;
}

const __int32 **std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[v5];
    v8 = v7 + 1;
    v9 = v7[1];
    v10 = (2 * v5) | 1;
    v11 = 2 * v5 + 2;
    if (v11 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v14 = v7[2];
      v13 = v7 + 2;
      v12 = v14;
      if (wcscmp(v9, v14) >= 0)
      {
        v5 = v10;
      }

      else
      {
        v9 = v12;
        v8 = v13;
        v5 = v11;
      }
    }

    *a1 = v9;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + 8 * (v4 >> 1));
    v8 = *v7;
    v10 = (a2 - 8);
    v9 = *(a2 - 8);
    result = wcscmp(*v7, v9);
    if ((result & 0x80000000) != 0)
    {
      do
      {
        v11 = v7;
        *v10 = v8;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 8 * v6);
        v8 = *v7;
        result = wcscmp(*v7, v9);
        v10 = v11;
      }

      while ((result & 0x80000000) != 0);
      *v11 = v9;
    }
  }

  return result;
}

uint64_t std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::find<TState *>(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = TFsaBuilder::TStateCompare::operator()(a1, *(v3 + 32), *a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || TFsaBuilder::TStateCompare::operator()(a1, *a2, *(v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t TFsaBuilder::TStateCompare::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  v4 = *(a3 + 40);
  if ((v3 != -1) == (v4 != -1))
  {
    return std::__lexicographical_compare[abi:ne200100]<TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,std::__identity,std::__identity,TFsaBuilder::TTransCompare>(*(a2 + 24), 1u, 0, 1, *(a3 + 24), 1u, 0, 1);
  }

  return v4 != -1 && v3 == -1;
}

uint64_t std::__lexicographical_compare[abi:ne200100]<TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,std::__identity,std::__identity,TFsaBuilder::TTransCompare>(unint64_t *a1, unsigned int a2, unint64_t *a3, int a4, unint64_t *a5, unsigned int a6, unint64_t *a7, int a8)
{
  if (a6 == a8 && a5 == a7)
  {
    return 0;
  }

  while (a2 != a4 || a1 != a3)
  {
    v9 = *a1;
    v10 = *a5;
    v11 = *a1 >= *a5;
    if (*a1 == *a5)
    {
      v9 = a1[2];
      v10 = a5[2];
      v11 = v9 >= v10;
    }

    if (!v11)
    {
      break;
    }

    if (v10 >= v9)
    {
      a1 = a1[a2 + 4];
      a5 = a5[a6 + 4];
      if (a6 != a8 || a5 != a7)
      {
        continue;
      }
    }

    return 0;
  }

  return 1;
}

void *std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__emplace_unique_key_args<TState *,TState * const&>(uint64_t **a1, uint64_t *a2, void *a3)
{
  v3 = *std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__find_equal<TState *>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__find_equal<TState *>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!TFsaBuilder::TStateCompare::operator()(a1, *a3, v4[4]))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!TFsaBuilder::TStateCompare::operator()(a1, v8[4], *a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::vector<TState *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<TState *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2627CF754(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<TVertex *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<TState *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2627CF82C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL arabicToRoman(unint64_t a1, uint64_t a2)
{
  v2 = a1 - 3000;
  if (a1 - 3000 >= 0xFFFFFFFFFFFFF449)
  {
    v4 = a1;
    v5 = 0;
    v6 = 1000;
    do
    {
      if (v6 <= v4)
      {
        v7 = 0;
        v8 = (&arabicToRoman(unsigned long,TBuffer<wchar_t> &)::pppszRomanTable[9 * (3 - v5)])[v4 / v6 - 1];
          ;
        }

        TBuffer<wchar_t>::insert(a2, *(a2 + 16), v8, v7 - 1);
      }

      v4 %= v6;
      ++v5;
      v6 /= 0xAuLL;
    }

    while (v5 != 4);
  }

  return v2 < 0xFFFFFFFFFFFFF449;
}

BOOL romanToArabic(__int32 *a1, void *a2)
{
  *a2 = 0;
  v2 = *a1;
  if (*a1)
  {
    v4 = a1;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = wcschr(dword_26288E760, v2);
      if (!v7)
      {
        break;
      }

      v8 = v7 - dword_26288E760;
      if (v8 <= 6)
      {
        v9 = v7 - dword_26288E760;
      }

      else
      {
        v9 = v8 - 7;
      }

      v2 = v4[1];
      if (!v2)
      {
        goto LABEL_19;
      }

      v10 = wcschr(dword_26288E760, v4[1]);
      if (!v10)
      {
        return 1;
      }

      v11 = v10 - dword_26288E760;
      if (v11 > 6)
      {
        v11 -= 7;
      }

      if (v5 && v11 > v9)
      {
        return 1;
      }

      v5 = v9 == v11;
      if (v9)
      {
        if (v11 >= v9)
        {
          return 1;
        }
      }

      else if (v11 > v9 + 2)
      {
        return 1;
      }

      if (v11 > v9)
      {
        v5 = 0;
        v6 += romanToArabic(wchar_t const*,unsigned long &)::pNums[v11] - romanToArabic(wchar_t const*,unsigned long &)::pNums[v9];
        *a2 = v6;
        v12 = v4[2];
        v4 += 2;
        v2 = v12;
        if (!v12)
        {
          return v6 == 0;
        }
      }

      else
      {
LABEL_19:
        v6 += romanToArabic(wchar_t const*,unsigned long &)::pNums[v9];
        *a2 = v6;
        ++v4;
        if (!v2)
        {
          return v6 == 0;
        }
      }
    }
  }

  return 1;
}

char *getNextToken(char *a1, const void **a2, char *a3)
{
  TBuffer<char>::resize(a2, 0);
  if (!a1)
  {
    return 0;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = a1;
  while (strchr(a3, v6))
  {
    v8 = *++a1;
    v6 = v8;
    ++v7;
    if (!v8)
    {
      return 0;
    }
  }

  v9 = a1;
  do
  {
    if (strchr(a3, v6))
    {
      break;
    }

    v11 = *++v9;
    v6 = v11;
  }

  while (v11);
  TBuffer<char>::resize(a2, 0);
  TBuffer<char>::insert(a2, 0, a1, v9 - v7);
  return v9;
}

int *getNextToken(int *a1, const void **a2, __int32 *a3)
{
  TBuffer<wchar_t>::resize(a2, 0);
  if (!a1)
  {
    return 0;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = a1;
  while (wcschr(a3, v6))
  {
    v8 = a1[1];
    ++a1;
    v6 = v8;
    ++v7;
    if (!v8)
    {
      return 0;
    }
  }

  v9 = a1;
  do
  {
    if (wcschr(a3, v6))
    {
      break;
    }

    v11 = v9[1];
    ++v9;
    v6 = v11;
  }

  while (v11);
  TBuffer<wchar_t>::resize(a2, 0);
  TBuffer<wchar_t>::insert(a2, 0, a1, v9 - v7);
  return v9;
}

const void **slashEscape(const void **result, uint64_t a2)
{
  for (i = result; ; i = (i + 4))
  {
    v4 = *i;
    if (*i > 12)
    {
      switch(v4)
      {
        case 13:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = &unk_26288E7B4;
          goto LABEL_13;
        case 34:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = &unk_26288E7CC;
          goto LABEL_13;
        case 92:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = &unk_26288E7C0;
LABEL_13:
          v8 = 2;
          goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (v4 == 9)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = &unk_26288E79C;
      goto LABEL_13;
    }

    if (v4 == 10)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = &unk_26288E7A8;
      goto LABEL_13;
    }

    if (!v4)
    {
      break;
    }

LABEL_16:
    v9 = *i;
    v5 = *(a2 + 16);
    v7 = &v9;
    v6 = a2;
    v8 = 1;
LABEL_14:
    result = TBuffer<wchar_t>::insert(v6, v5, v7, v8);
  }

  return result;
}

{
  for (i = result; ; i = (i + 1))
  {
    v4 = *i;
    if (v4 > 0xC)
    {
      switch(v4)
      {
        case 0xDu:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = "\\r";
          goto LABEL_13;
        case 0x22u:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = "\";
          goto LABEL_13;
        case 0x5Cu:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = "\\\"";
LABEL_13:
          v8 = 2;
          goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (v4 == 9)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = "\\t";
      goto LABEL_13;
    }

    if (v4 == 10)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = "\\n";
      goto LABEL_13;
    }

    if (!*i)
    {
      break;
    }

LABEL_16:
    v9 = v4;
    v5 = *(a2 + 16);
    v7 = &v9;
    v6 = a2;
    v8 = 1;
LABEL_14:
    result = TBuffer<char>::insert(v6, v5, v7, v8);
  }

  return result;
}

const void **tildeEscape(const void **result, uint64_t a2)
{
  for (i = result; ; i = (i + 4))
  {
    v4 = *i;
    if (*i <= 31)
    {
      break;
    }

    if (v4 != 32)
    {
      if (v4 == 95)
      {
        v5 = *(a2 + 16);
        v6 = a2;
        v7 = &unk_26288E808;
        goto LABEL_16;
      }

      if (v4 == 126)
      {
        v5 = *(a2 + 16);
        v6 = a2;
        v7 = &unk_26288E7FC;
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    v5 = *(a2 + 16);
    v6 = a2;
    v7 = &unk_26288E814;
LABEL_19:
    v8 = 1;
LABEL_20:
    result = TBuffer<wchar_t>::insert(v6, v5, v7, v8);
  }

  if (v4 > 9)
  {
    if (v4 == 10)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = &unk_26288E7E4;
      goto LABEL_16;
    }

    if (v4 == 13)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = &unk_26288E7F0;
LABEL_16:
      v8 = 2;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v4 == 9)
  {
    v5 = *(a2 + 16);
    v6 = a2;
    v7 = &unk_26288E7D8;
    goto LABEL_16;
  }

  if (v4)
  {
LABEL_18:
    v9 = *i;
    v5 = *(a2 + 16);
    v7 = &v9;
    v6 = a2;
    goto LABEL_19;
  }

  return result;
}

const void **formatString(__int32 *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = wcschr(a1, 37);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = v7 + 1;
      v9 = (v7[1] - 49);
      if (v9 > 8 || v9 >= (a2[1] - *a2) >> 3)
      {
        v8 = v7;
      }

      else
      {
        TBuffer<wchar_t>::insert(a3, *(a3 + 16), v5, v7 - v5);
        v10 = 0;
        v11 = *(*a2 + 8 * v9);
          ;
        }

        TBuffer<wchar_t>::insert(a3, *(a3 + 16), v11, v10 - 1);
        v5 = v7 + 2;
      }

      v7 = wcschr(v8 + 1, 37);
    }

    while (v7);
  }

  v13 = 0;
  v14 = *(a3 + 16);
    ;
  }

  return TBuffer<wchar_t>::insert(a3, v14, v5, v13 - 1);
}

void MrecInitModule_recogctl_recogctl(void)
{
  if (!gParDebugShowPerFrameRecognitionTimes)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowPerFrameRecognitionTimes", &unk_26288E838, &unk_26288E838, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowPerFrameRecognitionTimes = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPerFrameRecognitionTimes);
  }

  if (!gParDebugShowRecogWorkTypeStateTransitions)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowRecogWorkTypeStateTransitions", &unk_26288E838, &unk_26288E838, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowRecogWorkTypeStateTransitions = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowRecogWorkTypeStateTransitions);
  }

  if (!gParDebugShowParamSetParametersOnLoad)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowParamSetParametersOnLoad", &unk_26288E838, &unk_26288E838, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowParamSetParametersOnLoad = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowParamSetParametersOnLoad);
  }

  if (!gParDebugResultProcessing)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugResultProcessing", &unk_26288E838, &unk_26288E838, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugResultProcessing = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDebugResultProcessing);
  }
}

uint64_t RecogSpecLayer::RecogSpecLayer(uint64_t a1, uint64_t a2, int a3, int a4, char a5, int a6, int a7, int a8, double a9, char a10, int a11, int a12, unsigned int a13, unsigned int a14, int a15, int a16, unsigned int a17, uint64_t a18, char a19, char a20, char a21, unsigned int a22, unsigned int a23, unsigned int a24, unsigned int a25, int a26, int a27)
{
  v27 = a2;
  v29 = a16;
  if (a4)
  {
    memset(&v61[8], 0, 20);
    v62 = 0;
    if (a7 + a6 + *(a2 + 364) >= 5000)
    {
      a6 = 5000;
    }

    else
    {
      a6 += a7 + *(a2 + 364);
    }

    *v61 = 0xFFFFFFFFLL;
    a7 = 0;
  }

  else
  {
    *&v61[24] = a15;
    *&v61[12] = a12;
    *&v61[16] = __PAIR64__(a14, a13);
    v62 = a11;
    if (a3)
    {
      v61[4] = *(a2 + 204);
      *&v61[8] = *(a2 + 84);
    }

    else
    {
      *&v61[4] = 0;
    }

    *v61 = *(a2 + 304);
  }

  if (a4)
  {
    a9 = *(a2 + 352);
    v30 = *(a2 + 360);
    v31 = v30 == -1 || a16 == -1;
    v32 = v30 + a16;
    if (v31)
    {
      v29 = -1;
    }

    else
    {
      v29 = v32;
    }
  }

  v60 = *(a2 + 164);
  v59 = *(a2 + 296);
  v58 = *(a2 + 292);
  v57 = *(a2 + 288);
  v56 = *(a2 + 300);
  v55 = *(a2 + 284);
  v54 = *(a2 + 344);
  v53 = *(a2 + 56);
  v51 = *(a2 + 60);
  v52 = *(a2 + 64);
  v50 = *(a2 + 68);
  v49 = *(a2 + 448);
  v48 = *(a2 + 228);
  v33 = *(a2 + 236);
  v63 = a1;
  if (a3)
  {
    v34 = *(v27 + 40);
  }

  else
  {
    v34 = 0;
  }

  *(&v47 + 1) = __PAIR64__(a25, a24);
  *&v47 = __PAIR64__(a23, a22);
  HIDWORD(v46) = *(v27 + 48);
  HIDWORD(v45) = *(v27 + 168);
  LODWORD(v46) = *(v27 + 160);
  LOBYTE(v45) = *(v27 + 196);
  HIDWORD(v44) = *(v27 + 380);
  LODWORD(v44) = *(v27 + 324);
  *(&v43 + 1) = __PAIR64__(*(v27 + 240), v33);
  LODWORD(v43) = v48;
  DWORD1(v43) = *(v27 + 232);
  *(&v42 + 1) = a18;
  *&v42 = __PAIR64__(a17, v29);
  *(&v41 + 1) = __PAIR64__(v52, v54);
  *&v41 = __PAIR64__(v55, v56);
  *(&v38 + 1) = __PAIR64__(v57, v58);
  *&v38 = __PAIR64__(v59, v60);
  RecognizerOptions::RecognizerOptions(a1, a5, a6, a7, a8, a10, v61[4] & 1, v62, a9, *&v61[12], *&v61[8], *v61, v38, v41, __SPAIR64__(v51, v53), v50, v49, v42, v43, *(v27 + 52), *(v27 + 53), a19, a20, v34 & 1, *(v27 + 260), v44, *(v27 + 372), *(v27 + 376), *(v27 + 384), *(v27 + 72), *(v27 + 73), *(v27 + 74), *(v27 + 75), *(v27 + 192), v45, v46, *(v27 + 44), a21, v47, a26, a27);
  v35.n128_u64[0] = *(v27 + 424);
  v36.n128_u64[0] = *(v27 + 488);
  v40 = *(v27 + 160);
  LOBYTE(v39) = *(v27 + 196);
  FstCoreOptions::FstCoreOptions(v63 + 216, *(v27 + 416), v35.n128_f64[0], *(v27 + 444), *(v27 + 432), *(v27 + 436), *(v27 + 440), -v36.n128_f64[0], v36, v35, *(v27 + 476), *(v27 + 496), BYTE4(*(v27 + 496)), *(v27 + 48), *(v27 + 44), *(v27 + 192), v39, *(v27 + 168), v40, SBYTE1(v40), SBYTE2(v40), SHIBYTE(v40));
  *(v63 + 296) = v27;
  if (*(v63 + 17) != 1 || *(v63 + 140) != 1 || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 429, "recogctl/recogctl", 12, "%.500s %.500s %.500s %.500s", "SearchActiveNodePreserveMultipleHistories", "true", "SearchLatticeComputeOnlyBestTimes", "true"), (v27 = *(v63 + 296)) != 0))
  {
    ++*(v27 + 36);
  }

  return v63;
}

void sub_2627D0678(_Unwind_Exception *a1)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

uint64_t RecogSpecLayer::RecogSpecLayer(uint64_t a1, uint64_t a2)
{
  RecognizerOptions::RecognizerOptions(a1, a2);
  FstCoreOptions::FstCoreOptions(v4 + 216, a2 + 216);
  v5 = *(a2 + 296);
  *(a1 + 296) = v5;
  if (v5)
  {
    ++*(v5 + 36);
  }

  return a1;
}

void RecogSpecLayer::~RecogSpecLayer(RecogSpecLayer *this)
{
  v1 = *(this + 37);
  if (v1)
  {
    --*(v1 + 36);
    *(this + 37) = 0;
  }

  MrecInitModule_sdpres_sdapi();

  MrecInitModule_sdpres_sdapi();
}

void RecogSpec::RecogSpec(RecogSpec *this, char a2, char a3, __int16 a4, __int16 a5)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 6) = a3;
  *(this + 1) = a4;
  *(this + 2) = a5;
}

uint64_t RecogSpec::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 2) = *(a2 + 2);
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      DgnDelete<RecogSpecLayer>(*(*(a1 + 8) + 8 * v4));
      *(*(a1 + 8) + 8 * v4++) = 0;
    }

    while (v4 < *(a1 + 16));
  }

  DgnIOwnArray<RecogSpecLayer *>::copyArraySlice((a1 + 8), (a2 + 8), 0, *(a2 + 16));
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      v6 = MemChunkAlloc(0x130uLL, 0);
      *(*(a1 + 8) + 8 * v5) = RecogSpecLayer::RecogSpecLayer(v6, *(*(a1 + 8) + 8 * v5));
      ++v5;
    }

    while (v5 < *(a1 + 16));
  }

  return a1;
}

RecogSpecLayer *DgnDelete<RecogSpecLayer>(RecogSpecLayer *result)
{
  if (result)
  {
    RecogSpecLayer::~RecogSpecLayer(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void RecogSpec::RecogSpec(RecogSpec *this, const RecogSpec *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  RecogSpec::operator=(this, a2);
}

uint64_t sizeObject<RecogSpecLayer *>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v5 = *(a1 + 8);
    v14 = gShadowDiagnosticShowIdealizedObjectSizes;
    if (v5 >= 1)
    {
      v6 = v5 - 1;
      v7 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v7)
        {
          v8 = 4;
        }

        else
        {
          v8 = 8;
        }

        v9 = *(*a1 + 8 * v6);
        if (v9)
        {
          v10 = RecognizerOptions::sizeObject(*(*a1 + 8 * v6), a2);
          v8 += v10 + sizeObject(v9 + 216, a2);
          v7 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v8;
        v11 = v6-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v14 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

unint64_t RecogSpec::addLayer(unsigned __int8 *a1, uint64_t a2, int a3, char a4, int a5, int a6, int a7, char a8, double a9, int a10, int a11, unsigned int a12, unsigned int a13, int a14, int a15, unsigned int a16, unsigned int a17, unsigned int a18, char a19, char a20, char a21, unsigned int a22, unsigned int a23, unsigned int a24, unsigned int a25, int a26, int a27)
{
  v30 = *a1;
  v31 = MemChunkAlloc(0x130uLL, 0);
  result = RecogSpecLayer::RecogSpecLayer(v31, a2, v30, a3, a4, a5, a6, a7, a9, a8, a10, a11, a12, a13, a14, a15, a16, __SPAIR64__(a18, a17), a19, a20, a21, a22, a23, a24, a25, a26, a27);
  v33 = *(a1 + 4);
  if (v33 == *(a1 + 5))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts((a1 + 8), 1, 1);
    v33 = *(a1 + 4);
  }

  *(*(a1 + 1) + 8 * v33) = v31;
  *(a1 + 4) = v33 + 1;
  return result;
}

void RecogContext::RecogContext(RecogContext *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

void RecogContext::~RecogContext(RecogContext *this)
{
  DgnDelete<DgnArray<DgnPrimArray<unsigned int>>>(*this);
  DgnDelete<PelScoreCacheData>(*(this + 3));
  DgnDelete<PelScoreCacheData>(*(this + 4));
  DgnDelete<DgnPrimArray<unsigned int>>(*(this + 5));
  DgnDelete<DgnPrimArray<unsigned int>>(*(this + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

void *DgnDelete<DgnArray<DgnPrimArray<unsigned int>>>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnArray<DgnPrimArray<unsigned char>>::releaseAll(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void RecogLayerPhaseStats::RecogLayerPhaseStats(RecogLayerPhaseStats *this)
{
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  PelStats::resetStats(this);
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  LMStats::resetStats((this + 176));
  SearchStats::resetStats(this + 328);
  NetStats::resetStats((this + 360));
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  FstStats::resetStats((this + 464));
  *(this + 45) = 0u;
  *(this + 46) = 0u;
}

void RecogLayerPhaseStats::printSize(RecogLayerPhaseStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 766);
  if (v51)
  {
    v13 = v50;
  }

  else
  {
    v13 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288E838, a3, &unk_26288E838, v13);
  DgnString::~DgnString(&v50);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288E838);
  v15 = SnapTime::sizeObject(this + 720, 0);
  v16 = SnapTime::sizeObject(this + 720, 1);
  v17 = SnapTime::sizeObject(this + 720, 3);
  v18 = (a3 + 1);
  v49 = a3;
  v19 = (34 - a3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 768);
  if (v51)
  {
    v21 = v50;
  }

  else
  {
    v21 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v18, &unk_26288E838, v19, v19, v21, v15, v16, v17);
  DgnString::~DgnString(&v50);
  *a4 += v15;
  *a5 += v16;
  *a6 += v17;
  v22 = PelStats::sizeObject(this, 0);
  v23 = PelStats::sizeObject(this, 1);
  v24 = PelStats::sizeObject(this, 3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 769);
  if (v51)
  {
    v26 = v50;
  }

  else
  {
    v26 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v18, &unk_26288E838, v19, v19, v26, v22, v23, v24);
  DgnString::~DgnString(&v50);
  *a4 += v22;
  *a5 += v23;
  *a6 += v24;
  v27 = LMStats::sizeObject(this + 176, 0);
  v28 = LMStats::sizeObject(this + 176, 1);
  v29 = LMStats::sizeObject(this + 176, 3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 770);
  if (v51)
  {
    v31 = v50;
  }

  else
  {
    v31 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v18, &unk_26288E838, v19, v19, v31, v27, v28, v29);
  DgnString::~DgnString(&v50);
  *a4 += v27;
  *a5 += v28;
  *a6 += v29;
  v32 = sizeObject(this + 328, 0);
  v33 = sizeObject(this + 328, 1);
  v34 = sizeObject(this + 328, 3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 771);
  if (v51)
  {
    v36 = v50;
  }

  else
  {
    v36 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v18, &unk_26288E838, v19, v19, v36, v32, v33, v34);
  DgnString::~DgnString(&v50);
  *a4 += v32;
  *a5 += v33;
  *a6 += v34;
  v37 = NetStats::sizeObject(this + 360, 0);
  v38 = NetStats::sizeObject(this + 360, 1);
  v39 = NetStats::sizeObject(this + 360, 3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 772);
  if (v51)
  {
    v41 = v50;
  }

  else
  {
    v41 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v18, &unk_26288E838, v19, v19, v41, v37, v38, v39);
  DgnString::~DgnString(&v50);
  *a4 += v37;
  *a5 += v38;
  *a6 += v39;
  v42 = FstStats::sizeObject(this + 464, 0);
  v43 = FstStats::sizeObject(this + 464, 1);
  v44 = FstStats::sizeObject(this + 464, 3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 773);
  if (v51)
  {
    v46 = v50;
  }

  else
  {
    v46 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v18, &unk_26288E838, v19, v19, v46, v42, v43, v44);
  DgnString::~DgnString(&v50);
  *a4 += v42;
  *a5 += v43;
  *a6 += v44;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 775);
  if (v51)
  {
    v48 = v50;
  }

  else
  {
    v48 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v49, &unk_26288E838, (35 - v49), (35 - v49), v48, *a4, *a5, *a6);
  DgnString::~DgnString(&v50);
}

void sub_2627D1194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

unint64_t PRStats::recordPartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a2 + 8);
  *(a1 + 16) = v8;
  v9 = (a1 + 16);
  v10 = *(a1 + 72);
  if (v10 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = 0;
    while (*(*(a1 + 64) + 4 * v12) == *(*a2 + 4 * v12))
    {
      if (v11 == ++v12)
      {
        goto LABEL_10;
      }
    }

    LODWORD(v11) = v12;
  }

LABEL_10:
  v13 = v10 - v11;
  v14 = v8 - v11;
  if (v13 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v16 = v14 - v15;
  v17 = *(a1 + 20);
  v18.i32[0] = 1;
  v18.i32[1] = v8;
  *(a1 + 36) = vadd_s32(*(a1 + 36), v18);
  v19.i32[0] = v16 + v13;
  v19.i32[1] = v15;
  v19.i64[1] = __PAIR64__(v16, v13 - v15);
  *(a1 + 20) = vaddq_s32(v17, v19);
  if (v16 + v13)
  {
    *(a1 + 44) = vadd_s32(*(a1 + 44), v18);
    DgnPrimArray<int>::copyArraySlice((a1 + 64), a2, 0, v8);
  }

  v20 = vcvtq_f64_s64(*(a1 + 88));
  v21 = vsubq_f64(vcvtq_f64_s64(*(a4 + 1)), v20);
  __asm { FMOV            V3.2D, #0.5 }

  *(a1 + 112) = vaddq_f64(*(a1 + 112), vmulq_f64(v21, vsubq_f64(vaddq_f64(vmulq_f64(v21, _Q3), v20), vdupq_lane_s64(COERCE__INT64(*(a1 + 56)), 0))));
  v27 = *a4;
  CyclesPerSecond = ClockTimer::getCyclesPerSecond(&ClockTimer::smClockTimer);
  v29 = (1000000 * (v27 % CyclesPerSecond) / CyclesPerSecond + 1000000 * (v27 / CyclesPerSecond));
  v30 = *(a1 + 80);
  result = ClockTimer::getCyclesPerSecond(&ClockTimer::smClockTimer);
  v32 = (1000000 * (v30 % result) / result + 1000000 * (v30 / result));
  *(a1 + 128) = *(a1 + 128) + (v29 - v32) * ((v29 - v32) * 0.5 + v32 - *(a1 + 56));
  v33 = *(a4 + 1);
  *(a1 + 80) = *a4;
  *(a1 + 96) = v33;
  *(a1 + 56) = a3;
  for (i = *(a1 + 8); *(a2 + 8) > i; *(a1 + 8) = i)
  {
    if (i == *(a1 + 12))
    {
      DgnArray<RecogResultToken>::reallocElts(a1, 1, 1);
      i = *(a1 + 8);
    }

    v35 = *a1 + 96 * i;
    v36 = *v9;
    v37 = *(v9 + 2);
    *(v35 + 16) = *(v9 + 1);
    *(v35 + 32) = v37;
    *v35 = v36;
    *(v35 + 56) = 0;
    *(v35 + 48) = 0;
    result = DgnPrimArray<int>::copyArraySlice((v35 + 48), v9 + 6, 0, *(a1 + 72));
    v38 = *(a1 + 96);
    *(v35 + 64) = *(a1 + 80);
    *(v35 + 80) = v38;
    i = *(a1 + 8) + 1;
  }

  return result;
}

void RecogLayerStats::RecogLayerStats(RecogLayerStats *this)
{
  RecogLayerPhaseStats::RecogLayerPhaseStats(this);
  RecogLayerPhaseStats::RecogLayerPhaseStats((v2 + 752));
  LatticeStats::LatticeStats((this + 1552));
  *(this + 502) = 0;
  *(this + 1976) = 0u;
  *(this + 1992) = 0u;
  *(this + 1960) = 0u;
  *(this + 143) = 0u;
  *(this + 144) = 0u;
  *(this + 145) = 0u;
  *(this + 146) = 0u;
  *(this + 147) = 0u;
  *(this + 94) = 0u;
  *(this + 95) = 0u;
  *(this + 96) = 0u;
  *(this + 126) = 0u;
  *(this + 127) = 0u;
  *(this + 128) = 0u;
  *(this + 129) = 0u;
  *(this + 130) = 0u;
  *(this + 131) = 0u;
  *(this + 132) = 0u;
  *(this + 133) = 0u;
  *(this + 536) = 0;
  *(this + 570) = 0;
  *(this + 2248) = 0u;
  *(this + 2264) = 0u;
  *(this + 2216) = 0u;
  *(this + 2232) = 0u;
  *(this + 2184) = 0u;
  *(this + 2200) = 0u;
  *(this + 2152) = 0u;
  *(this + 2168) = 0u;
}

void RecogLayerStats::printSize(RecogLayerStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1041);
  if (v44)
  {
    v13 = v43;
  }

  else
  {
    v13 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288E838, a3, &unk_26288E838, v13);
  DgnString::~DgnString(&v43);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288E838);
  if (this)
  {
    v42 = 0;
    v43 = 0;
    v15 = (a3 + 1);
    v41 = 0;
    RecogLayerPhaseStats::printSize(this, 0xFFFFFFFFLL, v15, &v43, &v42, &v41);
    *a4 += v43;
    *a5 += v42;
    *a6 += v41;
  }

  else
  {
    v15 = (a3 + 1);
  }

  v42 = 0;
  v43 = 0;
  v41 = 0;
  RecogLayerPhaseStats::printSize((this + 752), 0xFFFFFFFFLL, v15, &v43, &v42, &v41);
  *a4 += v43;
  *a5 += v42;
  *a6 += v41;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047);
  if (v44)
  {
    v17 = v43;
  }

  else
  {
    v17 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, v15, &unk_26288E838, (34 - a3), (34 - a3), v17, 4, 4, 0);
  DgnString::~DgnString(&v43);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047);
  if (v44)
  {
    v19 = v43;
  }

  else
  {
    v19 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, v15, &unk_26288E838, (34 - a3), (34 - a3), v19, 4, 4, 0);
  DgnString::~DgnString(&v43);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047);
  if (v44)
  {
    v21 = v43;
  }

  else
  {
    v21 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v15, &unk_26288E838, (34 - a3), (34 - a3), v21, 8, 8, 0);
  DgnString::~DgnString(&v43);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047);
  if (v44)
  {
    v23 = v43;
  }

  else
  {
    v23 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v15, &unk_26288E838, (34 - a3), (34 - a3), v23, 8, 8, 0);
  DgnString::~DgnString(&v43);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047);
  if (v44)
  {
    v25 = v43;
  }

  else
  {
    v25 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v15, &unk_26288E838, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v43);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047);
  if (v44)
  {
    v27 = v43;
  }

  else
  {
    v27 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v15, &unk_26288E838, (34 - a3), (34 - a3), v27, 8, 8, 0);
  DgnString::~DgnString(&v43);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1049);
  if (v44)
  {
    v29 = v43;
  }

  else
  {
    v29 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v15, &unk_26288E838, (34 - a3), (34 - a3), v29, 4, 4, 0);
  DgnString::~DgnString(&v43);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1051);
  if (v44)
  {
    v31 = v43;
  }

  else
  {
    v31 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v15, &unk_26288E838, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v43);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1053);
  if (v44)
  {
    v33 = v43;
  }

  else
  {
    v33 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v15, &unk_26288E838, (34 - a3), (34 - a3), v33, 4, 4, 0);
  DgnString::~DgnString(&v43);
  *a4 += 4;
  *a5 += 4;
  v34 = LatticeStats::sizeObject(this + 1552, 0);
  v35 = LatticeStats::sizeObject(this + 1552, 1);
  v36 = LatticeStats::sizeObject(this + 1552, 3);
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1055);
  if (v44)
  {
    v38 = v43;
  }

  else
  {
    v38 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v15, &unk_26288E838, (34 - a3), (34 - a3), v38, v34, v35, v36);
  DgnString::~DgnString(&v43);
  *a4 += v34;
  *a5 += v35;
  *a6 += v36;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1056);
  if (v44)
  {
    v40 = v43;
  }

  else
  {
    v40 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, a3, &unk_26288E838, (35 - a3), (35 - a3), v40, *a4, *a5, *a6);
  DgnString::~DgnString(&v43);
}

void sub_2627D1B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void RecogPhaseStats::RecogPhaseStats(RecogPhaseStats *this)
{
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  PelStats::resetStats(this);
  PrefStats::resetStats((this + 176));
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  PelStats::resetStats((this + 288));
}

void RecogPhaseStats::printSize(RecogPhaseStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v40, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1072);
  if (v41)
  {
    v13 = v40;
  }

  else
  {
    v13 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288E838, a3, &unk_26288E838, v13);
  DgnString::~DgnString(&v40);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288E838);
  v15 = SnapTime::sizeObject(this + 256, 0);
  v16 = SnapTime::sizeObject(this + 256, 1);
  v17 = SnapTime::sizeObject(this + 256, 3);
  v18 = (a3 + 1);
  v39 = a3;
  v19 = (34 - a3);
  getShipObjectSizeDescription(&v40, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1073);
  if (v41)
  {
    v21 = v40;
  }

  else
  {
    v21 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v18, &unk_26288E838, v19, v19, v21, v15, v16, v17);
  DgnString::~DgnString(&v40);
  *a4 += v15;
  *a5 += v16;
  *a6 += v17;
  v22 = PelStats::sizeObject(this, 0);
  v23 = PelStats::sizeObject(this, 1);
  v24 = PelStats::sizeObject(this, 3);
  getShipObjectSizeDescription(&v40, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1075);
  if (v41)
  {
    v26 = v40;
  }

  else
  {
    v26 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v18, &unk_26288E838, v19, v19, v26, v22, v23, v24);
  DgnString::~DgnString(&v40);
  *a4 += v22;
  *a5 += v23;
  *a6 += v24;
  v27 = PrefStats::sizeObject(this + 176, 0);
  v28 = PrefStats::sizeObject(this + 176, 1);
  v29 = PrefStats::sizeObject(this + 176, 3);
  getShipObjectSizeDescription(&v40, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1076);
  if (v41)
  {
    v31 = v40;
  }

  else
  {
    v31 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v18, &unk_26288E838, v19, v19, v31, v27, v28, v29);
  DgnString::~DgnString(&v40);
  *a4 += v27;
  *a5 += v28;
  *a6 += v29;
  v32 = PelStats::sizeObject(this + 288, 0);
  v33 = PelStats::sizeObject(this + 288, 1);
  v34 = PelStats::sizeObject(this + 288, 3);
  getShipObjectSizeDescription(&v40, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1078);
  if (v41)
  {
    v36 = v40;
  }

  else
  {
    v36 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v18, &unk_26288E838, v19, v19, v36, v32, v33, v34);
  DgnString::~DgnString(&v40);
  *a4 += v32;
  *a5 += v33;
  *a6 += v34;
  getShipObjectSizeDescription(&v40, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1079);
  if (v41)
  {
    v38 = v40;
  }

  else
  {
    v38 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v39, &unk_26288E838, (35 - v39), (35 - v39), v38, *a4, *a5, *a6);
  DgnString::~DgnString(&v40);
}

void sub_2627D1F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void RecogStats::RecogStats(RecogStats *this)
{
  *this = 0;
  *(this + 1) = 0;
  RecogPhaseStats::RecogPhaseStats((this + 16));
  RecogPhaseStats::RecogPhaseStats((this + 480));
  *(this + 244) = 0;
  *(this + 980) = 0;
  *(this + 118) = 0;
  *(this + 120) = 0;
  *(this + 119) = 0;
  *(this + 965) = 0;
  bzero(this + 984, 0x298uLL);
}

void RecogStats::printSize(RecogStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1123);
  if (v177)
  {
    v13 = v176;
  }

  else
  {
    v13 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288E838, a3, &unk_26288E838, v13);
  DgnString::~DgnString(&v176);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288E838);
  v15 = (a3 + 1);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1125);
  if (v177)
  {
    v17 = v176;
  }

  else
  {
    v17 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v16, (a3 + 1), &unk_26288E838, (a3 + 1), &unk_26288E838, v17);
  v173 = a3;
  DgnString::~DgnString(&v176);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v18, (a3 + 1), &unk_26288E838);
  LODWORD(v19) = *(this + 2);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *this;
      v175 = 0;
      v176 = 0;
      v174 = 0;
      RecogLayerStats::printSize((v25 + v20), v21, (v173 + 2), &v176, &v175, &v174);
      v24 += v174;
      v23 += v175;
      v22 += v176;
      ++v21;
      v19 = *(this + 2);
      v20 += 2368;
    }

    while (v21 < v19);
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v22 = 0;
  }

  v26 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v26 = 12;
  }

  v27 = v26 + v23;
  v28 = v26 + v22 + 2368 * (*(this + 3) - v19);
  v29 = (34 - v173);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1125);
  if (v177)
  {
    v31 = v176;
  }

  else
  {
    v31 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v15, &unk_26288E838, v29, v29, v31, v28, v27, v24);
  DgnString::~DgnString(&v176);
  *a4 += v28;
  *a5 += v27;
  *a6 += v24;
  v175 = 0;
  v176 = 0;
  v174 = 0;
  RecogPhaseStats::printSize((this + 16), 0xFFFFFFFFLL, v15, &v176, &v175, &v174);
  *a4 += v176;
  *a5 += v175;
  *a6 += v174;
  v175 = 0;
  v176 = 0;
  v174 = 0;
  RecogPhaseStats::printSize((this + 480), 0xFFFFFFFFLL, v15, &v176, &v175, &v174);
  *a4 += v176;
  *a5 += v175;
  *a6 += v174;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1131);
  if (v177)
  {
    v33 = v176;
  }

  else
  {
    v33 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v15, &unk_26288E838, v29, v29, v33, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1133);
  if (v177)
  {
    v35 = v176;
  }

  else
  {
    v35 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v15, &unk_26288E838, v29, v29, v35, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1135);
  if (v177)
  {
    v37 = v176;
  }

  else
  {
    v37 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v15, &unk_26288E838, v29, v29, v37, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1137);
  if (v177)
  {
    v39 = v176;
  }

  else
  {
    v39 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v15, &unk_26288E838, v29, v29, v39, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1139);
  if (v177)
  {
    v41 = v176;
  }

  else
  {
    v41 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v15, &unk_26288E838, v29, v29, v41, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1141);
  if (v177)
  {
    v43 = v176;
  }

  else
  {
    v43 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v15, &unk_26288E838, v29, v29, v43, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1143);
  if (v177)
  {
    v45 = v176;
  }

  else
  {
    v45 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_26288E838, v29, v29, v45, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1145);
  if (v177)
  {
    v47 = v176;
  }

  else
  {
    v47 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v15, &unk_26288E838, v29, v29, v47, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1147);
  if (v177)
  {
    v49 = v176;
  }

  else
  {
    v49 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v15, &unk_26288E838, v29, v29, v49, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1149);
  if (v177)
  {
    v51 = v176;
  }

  else
  {
    v51 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v15, &unk_26288E838, v29, v29, v51, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1151);
  if (v177)
  {
    v53 = v176;
  }

  else
  {
    v53 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v15, &unk_26288E838, v29, v29, v53, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1153);
  if (v177)
  {
    v55 = v176;
  }

  else
  {
    v55 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v15, &unk_26288E838, v29, v29, v55, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1155);
  if (v177)
  {
    v57 = v176;
  }

  else
  {
    v57 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v15, &unk_26288E838, v29, v29, v57, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1157);
  if (v177)
  {
    v59 = v176;
  }

  else
  {
    v59 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v15, &unk_26288E838, v29, v29, v59, 8, 8, 0);
  DgnString::~DgnString(&v176);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1159);
  if (v177)
  {
    v61 = v176;
  }

  else
  {
    v61 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v15, &unk_26288E838, v29, v29, v61, 8, 8, 0);
  DgnString::~DgnString(&v176);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1161);
  if (v177)
  {
    v63 = v176;
  }

  else
  {
    v63 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &unk_26288E838, v29, v29, v63, 8, 8, 0);
  DgnString::~DgnString(&v176);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1163);
  if (v177)
  {
    v65 = v176;
  }

  else
  {
    v65 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v15, &unk_26288E838, v29, v29, v65, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1165);
  if (v177)
  {
    v67 = v176;
  }

  else
  {
    v67 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v15, &unk_26288E838, v29, v29, v67, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1167);
  if (v177)
  {
    v69 = v176;
  }

  else
  {
    v69 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v15, &unk_26288E838, v29, v29, v69, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1169);
  if (v177)
  {
    v71 = v176;
  }

  else
  {
    v71 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v15, &unk_26288E838, v29, v29, v71, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  v72 = SnapTime::sizeObject(this + 1024, 0);
  v73 = SnapTime::sizeObject(this + 1024, 1);
  v74 = SnapTime::sizeObject(this + 1024, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1171);
  if (v177)
  {
    v76 = v176;
  }

  else
  {
    v76 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v15, &unk_26288E838, v29, v29, v76, v72, v73, v74);
  DgnString::~DgnString(&v176);
  *a4 += v72;
  *a5 += v73;
  *a6 += v74;
  v77 = SnapTime::sizeObject(this + 1056, 0);
  v78 = SnapTime::sizeObject(this + 1056, 1);
  v79 = SnapTime::sizeObject(this + 1056, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1173);
  if (v177)
  {
    v81 = v176;
  }

  else
  {
    v81 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v15, &unk_26288E838, v29, v29, v81, v77, v78, v79);
  DgnString::~DgnString(&v176);
  *a4 += v77;
  *a5 += v78;
  *a6 += v79;
  v82 = SnapTime::sizeObject(this + 1088, 0);
  v83 = SnapTime::sizeObject(this + 1088, 1);
  v84 = SnapTime::sizeObject(this + 1088, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1175);
  if (v177)
  {
    v86 = v176;
  }

  else
  {
    v86 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v15, &unk_26288E838, v29, v29, v86, v82, v83, v84);
  DgnString::~DgnString(&v176);
  *a4 += v82;
  *a5 += v83;
  *a6 += v84;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1177);
  if (v177)
  {
    v88 = v176;
  }

  else
  {
    v88 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v15, &unk_26288E838, v29, v29, v88, 8, 8, 0);
  DgnString::~DgnString(&v176);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1179);
  if (v177)
  {
    v90 = v176;
  }

  else
  {
    v90 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v15, &unk_26288E838, v29, v29, v90, 8, 8, 0);
  DgnString::~DgnString(&v176);
  *a4 += 8;
  *a5 += 8;
  v91 = SnapTime::sizeObject(this + 1136, 0);
  v92 = SnapTime::sizeObject(this + 1136, 1);
  v93 = SnapTime::sizeObject(this + 1136, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1181);
  if (v177)
  {
    v95 = v176;
  }

  else
  {
    v95 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v15, &unk_26288E838, v29, v29, v95, v91, v92, v93);
  DgnString::~DgnString(&v176);
  *a4 += v91;
  *a5 += v92;
  *a6 += v93;
  v96 = SnapTime::sizeObject(this + 1168, 0);
  v97 = SnapTime::sizeObject(this + 1168, 1);
  v98 = SnapTime::sizeObject(this + 1168, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1182);
  if (v177)
  {
    v100 = v176;
  }

  else
  {
    v100 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v99, v15, &unk_26288E838, v29, v29, v100, v96, v97, v98);
  DgnString::~DgnString(&v176);
  *a4 += v96;
  *a5 += v97;
  *a6 += v98;
  v101 = SnapTime::sizeObject(this + 1200, 0);
  v102 = SnapTime::sizeObject(this + 1200, 1);
  v103 = SnapTime::sizeObject(this + 1200, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1184);
  if (v177)
  {
    v105 = v176;
  }

  else
  {
    v105 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v104, v15, &unk_26288E838, v29, v29, v105, v101, v102, v103);
  DgnString::~DgnString(&v176);
  *a4 += v101;
  *a5 += v102;
  *a6 += v103;
  v106 = SnapTime::sizeObject(this + 1232, 0);
  v107 = SnapTime::sizeObject(this + 1232, 1);
  v108 = SnapTime::sizeObject(this + 1232, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1186);
  if (v177)
  {
    v110 = v176;
  }

  else
  {
    v110 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v109, v15, &unk_26288E838, v29, v29, v110, v106, v107, v108);
  DgnString::~DgnString(&v176);
  *a4 += v106;
  *a5 += v107;
  *a6 += v108;
  v111 = SnapTime::sizeObject(this + 1264, 0);
  v112 = SnapTime::sizeObject(this + 1264, 1);
  v113 = SnapTime::sizeObject(this + 1264, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1188);
  if (v177)
  {
    v115 = v176;
  }

  else
  {
    v115 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v114, v15, &unk_26288E838, v29, v29, v115, v111, v112, v113);
  DgnString::~DgnString(&v176);
  *a4 += v111;
  *a5 += v112;
  *a6 += v113;
  v116 = SnapTime::sizeObject(this + 1296, 0);
  v117 = SnapTime::sizeObject(this + 1296, 1);
  v118 = SnapTime::sizeObject(this + 1296, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1190);
  if (v177)
  {
    v120 = v176;
  }

  else
  {
    v120 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v119, v15, &unk_26288E838, v29, v29, v120, v116, v117, v118);
  DgnString::~DgnString(&v176);
  *a4 += v116;
  *a5 += v117;
  *a6 += v118;
  v121 = SnapTime::sizeObject(this + 1328, 0);
  v122 = SnapTime::sizeObject(this + 1328, 1);
  v123 = SnapTime::sizeObject(this + 1328, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1192);
  if (v177)
  {
    v125 = v176;
  }

  else
  {
    v125 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v124, v15, &unk_26288E838, v29, v29, v125, v121, v122, v123);
  DgnString::~DgnString(&v176);
  *a4 += v121;
  *a5 += v122;
  *a6 += v123;
  v126 = SnapTime::sizeObject(this + 1360, 0);
  v127 = SnapTime::sizeObject(this + 1360, 1);
  v128 = SnapTime::sizeObject(this + 1360, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1194);
  if (v177)
  {
    v130 = v176;
  }

  else
  {
    v130 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v129, v15, &unk_26288E838, v29, v29, v130, v126, v127, v128);
  DgnString::~DgnString(&v176);
  *a4 += v126;
  *a5 += v127;
  *a6 += v128;
  v131 = SnapTime::sizeObject(this + 1392, 0);
  v132 = SnapTime::sizeObject(this + 1392, 1);
  v133 = SnapTime::sizeObject(this + 1392, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1196);
  if (v177)
  {
    v135 = v176;
  }

  else
  {
    v135 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v134, v15, &unk_26288E838, v29, v29, v135, v131, v132, v133);
  DgnString::~DgnString(&v176);
  *a4 += v131;
  *a5 += v132;
  *a6 += v133;
  v136 = SnapTime::sizeObject(this + 1424, 0);
  v137 = SnapTime::sizeObject(this + 1424, 1);
  v138 = SnapTime::sizeObject(this + 1424, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1198);
  if (v177)
  {
    v140 = v176;
  }

  else
  {
    v140 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v139, v15, &unk_26288E838, v29, v29, v140, v136, v137, v138);
  DgnString::~DgnString(&v176);
  *a4 += v136;
  *a5 += v137;
  *a6 += v138;
  v141 = SnapTime::sizeObject(this + 1456, 0);
  v142 = SnapTime::sizeObject(this + 1456, 1);
  v143 = SnapTime::sizeObject(this + 1456, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1200);
  if (v177)
  {
    v145 = v176;
  }

  else
  {
    v145 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v144, v15, &unk_26288E838, v29, v29, v145, v141, v142, v143);
  DgnString::~DgnString(&v176);
  *a4 += v141;
  *a5 += v142;
  *a6 += v143;
  v146 = SnapTime::sizeObject(this + 1488, 0);
  v147 = SnapTime::sizeObject(this + 1488, 1);
  v148 = SnapTime::sizeObject(this + 1488, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1202);
  if (v177)
  {
    v150 = v176;
  }

  else
  {
    v150 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v15, &unk_26288E838, v29, v29, v150, v146, v147, v148);
  DgnString::~DgnString(&v176);
  *a4 += v146;
  *a5 += v147;
  *a6 += v148;
  v151 = SnapTime::sizeObject(this + 1520, 0);
  v152 = SnapTime::sizeObject(this + 1520, 1);
  v153 = SnapTime::sizeObject(this + 1520, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1204);
  if (v177)
  {
    v155 = v176;
  }

  else
  {
    v155 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v154, v15, &unk_26288E838, v29, v29, v155, v151, v152, v153);
  DgnString::~DgnString(&v176);
  *a4 += v151;
  *a5 += v152;
  *a6 += v153;
  v156 = SnapTime::sizeObject(this + 1552, 0);
  v157 = SnapTime::sizeObject(this + 1552, 1);
  v158 = SnapTime::sizeObject(this + 1552, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1206);
  if (v177)
  {
    v160 = v176;
  }

  else
  {
    v160 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v159, v15, &unk_26288E838, v29, v29, v160, v156, v157, v158);
  DgnString::~DgnString(&v176);
  *a4 += v156;
  *a5 += v157;
  *a6 += v158;
  v161 = SnapTime::sizeObject(this + 1584, 0);
  v162 = SnapTime::sizeObject(this + 1584, 1);
  v163 = SnapTime::sizeObject(this + 1584, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1208);
  if (v177)
  {
    v165 = v176;
  }

  else
  {
    v165 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v164, v15, &unk_26288E838, v29, v29, v165, v161, v162, v163);
  DgnString::~DgnString(&v176);
  *a4 += v161;
  *a5 += v162;
  *a6 += v163;
  v166 = SnapTime::sizeObject(this + 1616, 0);
  v167 = SnapTime::sizeObject(this + 1616, 1);
  v168 = SnapTime::sizeObject(this + 1616, 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1210);
  if (v177)
  {
    v170 = v176;
  }

  else
  {
    v170 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v169, v15, &unk_26288E838, v29, v29, v170, v166, v167, v168);
  DgnString::~DgnString(&v176);
  *a4 += v166;
  *a5 += v167;
  *a6 += v168;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1211);
  if (v177)
  {
    v172 = v176;
  }

  else
  {
    v172 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, v173, &unk_26288E838, (35 - v173), (35 - v173), v172, *a4, *a5, *a6);
  DgnString::~DgnString(&v176);
}

void sub_2627D37D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t RecogStats::initRecognitionPhaseTimes(uint64_t a1, int64x2_t *a2, int64x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int64x2_t *a10)
{
  v17 = *(a4 + 8);
  v89[0] = 0;
  v89[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v89, a4, 0, v17);
  v88[0] = 0;
  v88[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v88, a5, 0, *(a5 + 8));
  v87[0] = 0;
  v87[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v87, a6, 0, *(a6 + 8));
  v86[0] = 0;
  v86[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v86, a7, 0, *(a7 + 8));
  v85[0] = 0;
  v85[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v85, a8, 0, *(a8 + 8));
  v84[0] = 0;
  v84[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v84, a9, 0, *(a9 + 8));
  v18 = v89[0];
  v19 = (v17 - 1);
  if (v17 - 1 >= 0)
  {
    v20 = 0;
    v21 = v89[0] + 32 * v19;
    v22 = v84[0] + 32 * v19;
    v23 = v19 + 1;
    v24 = v85[0] + 32 * v19;
    v25 = v86[0] + 32 * v19;
    v26 = v87[0] + 32 * v19;
    v27 = v88[0] + 32 * v19;
    do
    {
      v28 = *(v22 + v20);
      if (!v28)
      {
        v29 = v22 + v20;
        if (*(v22 + v20 + 8) || *(v29 + 16) || *(v22 + v20 + 24))
        {
          v28 = 0;
        }

        else
        {
          if (v20)
          {
            v41 = (v21 + v20 + 56);
          }

          else
          {
            v41 = &a10[1].i64[1];
          }

          if (v20)
          {
            v42 = (v21 + v20 + 32);
          }

          else
          {
            v42 = a10;
          }

          if (v20)
          {
            v43 = (v21 + v20 + 40);
          }

          else
          {
            v43 = &a10->i64[1];
          }

          if (v20)
          {
            v44 = (v21 + v20 + 48);
          }

          else
          {
            v44 = a10 + 1;
          }

          v28 = v42->i64[0];
          v45 = v44->i64[0];
          v46 = *v43;
          v47 = *v41;
          *(v22 + v20) = v28;
          *(v29 + 8) = v46;
          *(v29 + 16) = v45;
          *(v22 + v20 + 24) = v47;
        }
      }

      v30 = *(v24 + v20);
      if (!v30)
      {
        v31 = v24 + v20;
        if (*(v24 + v20 + 8) || *(v31 + 16) || *(v24 + v20 + 24))
        {
          v30 = 0;
        }

        else
        {
          v48 = *(v22 + v20 + 24);
          *(v24 + v20) = v28;
          *(v31 + 8) = *(v22 + v20 + 8);
          *(v24 + v20 + 24) = v48;
          v30 = v28;
        }
      }

      v32 = *(v25 + v20);
      if (!v32)
      {
        v33 = v25 + v20;
        if (*(v25 + v20 + 8) || *(v33 + 16) || *(v25 + v20 + 24))
        {
          v32 = 0;
        }

        else
        {
          v49 = *(v24 + v20 + 24);
          *(v25 + v20) = v30;
          *(v33 + 8) = *(v24 + v20 + 8);
          *(v25 + v20 + 24) = v49;
          v32 = v30;
        }
      }

      v34 = *(v26 + v20);
      if (!v34)
      {
        v35 = v26 + v20;
        if (*(v26 + v20 + 8) || *(v35 + 16) || *(v26 + v20 + 24))
        {
          v34 = 0;
        }

        else
        {
          v50 = *(v25 + v20 + 24);
          *(v26 + v20) = v32;
          *(v35 + 8) = *(v25 + v20 + 8);
          *(v26 + v20 + 24) = v50;
          v34 = v32;
        }
      }

      v36 = *(v27 + v20);
      if (!v36)
      {
        v37 = v27 + v20;
        if (*(v27 + v20 + 8) || *(v37 + 16) || *(v27 + v20 + 24))
        {
          v36 = 0;
        }

        else
        {
          v51 = *(v26 + v20 + 24);
          *(v27 + v20) = v34;
          *(v37 + 8) = *(v26 + v20 + 8);
          *(v27 + v20 + 24) = v51;
          v36 = v34;
        }
      }

      if (!*(v21 + v20))
      {
        v38 = v21 + v20;
        if (!*(v21 + v20 + 8) && !*(v38 + 16) && !*(v21 + v20 + 24))
        {
          v39 = *(v27 + v20 + 24);
          *(v21 + v20) = v36;
          *(v38 + 8) = *(v27 + v20 + 8);
          *(v21 + v20 + 24) = v39;
        }
      }

      v20 -= 32;
    }

    while (v23-- > 1);
    v18 = v89[0];
  }

  if (a3->i64[0] | a3->i64[1] | a3[1].i64[0] | a3[1].i64[1])
  {
    v52 = a3;
  }

  else
  {
    v52 = v18;
  }

  v53 = vsubq_s64(a2[1], *(a1 + 1104));
  v54 = *v52;
  v55 = v52[1];
  *(a1 + 1328) = vsubq_s64(*a2, *(a1 + 1088));
  *(a1 + 1344) = v53;
  v56 = vsubq_s64(v55, a2[1]);
  *(a1 + 1360) = vsubq_s64(v54, *a2);
  *(a1 + 1376) = v56;
  v57 = vsubq_s64(v18[1], v55);
  *(a1 + 1392) = vsubq_s64(*v18, v54);
  *(a1 + 1408) = v57;
  v58 = 0uLL;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0u;
  if (v17)
  {
    v59 = 0;
    v60 = v88[0];
    v61 = v87[0];
    v62 = v86[0];
    v63 = 0uLL;
    v64 = v85[0];
    v65 = 0uLL;
    v66 = 0uLL;
    v67 = v84[0];
    do
    {
      v68 = (v60 + 32 * v59);
      v69 = &v18[2 * v59];
      v70 = vsubq_s64(v68[1], v69[1]);
      *(a1 + 1424) = vaddq_s64(vsubq_s64(*v68, *v69), *(a1 + 1424));
      *(a1 + 1440) = vaddq_s64(v70, *(a1 + 1440));
      v71 = (v61 + 32 * v59);
      v58 = vaddq_s64(vsubq_s64(*v71, *v68), v58);
      v72 = vsubq_s64(v71[1], v68[1]);
      *(a1 + 1456) = v58;
      v63 = vaddq_s64(v72, v63);
      *(a1 + 1472) = v63;
      v73 = (v62 + 32 * v59);
      v65 = vaddq_s64(vsubq_s64(*v73, *v71), v65);
      v74 = vsubq_s64(v73[1], v71[1]);
      *(a1 + 1488) = v65;
      v66 = vaddq_s64(v74, v66);
      *(a1 + 1504) = v66;
      v75 = (v64 + 32 * v59);
      v76 = vsubq_s64(v75[1], v73[1]);
      *(a1 + 1520) = vaddq_s64(vsubq_s64(*v75, *v73), *(a1 + 1520));
      *(a1 + 1536) = vaddq_s64(v76, *(a1 + 1536));
      v77 = (v67 + 32 * v59);
      v78 = vsubq_s64(v77[1], v75[1]);
      *(a1 + 1552) = vaddq_s64(vsubq_s64(*v77, *v75), *(a1 + 1552));
      *(a1 + 1568) = vaddq_s64(v78, *(a1 + 1568));
      if (v59 == v19)
      {
        v79 = vsubq_s64(a10[1], v77[1]);
        *(a1 + 1584) = vaddq_s64(vsubq_s64(*a10, *v77), *(a1 + 1584));
        *(a1 + 1600) = vaddq_s64(v79, *(a1 + 1600));
        ++v59;
      }

      else
      {
        ++v59;
        v80 = &v18[2 * v59];
        v81 = vsubq_s64(v80[1], v77[1]);
        *(a1 + 1584) = vaddq_s64(vsubq_s64(*v80, *v77), *(a1 + 1584));
        *(a1 + 1600) = vaddq_s64(v81, *(a1 + 1600));
      }
    }

    while (v59 != v17);
  }

  v82 = a10[1];
  *(a1 + 1616) = *a10;
  *(a1 + 1632) = v82;
  DgnIArray<Utterance *>::~DgnIArray(v84);
  DgnIArray<Utterance *>::~DgnIArray(v85);
  DgnIArray<Utterance *>::~DgnIArray(v86);
  DgnIArray<Utterance *>::~DgnIArray(v87);
  DgnIArray<Utterance *>::~DgnIArray(v88);
  return DgnIArray<Utterance *>::~DgnIArray(v89);
}

void sub_2627D3E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  va_copy(va4, va3);
  v15 = va_arg(va4, void);
  v17 = va_arg(va4, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnIArray<Utterance *>::~DgnIArray(va3);
  DgnIArray<Utterance *>::~DgnIArray(va4);
  _Unwind_Resume(a1);
}

void PrefiltererThreadInsurance::~PrefiltererThreadInsurance(PrefiltererThreadInsurance *this)
{
  v2 = *this;
  if (v2)
  {
    if ((**(this + 1) & 1) == 0)
    {
      v3 = **(this + 2);
      (*(*v2 + 136))(v2, 0);
      v4 = (*(**this + 96))();
      **(this + 2) = v4;
      if (v3 != v4)
      {
        v5 = *(this + 4);
        v13 = 0u;
        v14 = 0u;
        SnapTime::recordTime(&v13, 1, 0, 0, 0);
        v6 = v5[1];
        v7 = vsubq_s64(v13, *v5);
        *v5 = v13;
        v8 = vsubq_s64(v14, v6);
        v5[1] = v14;
        v9 = *(this + 5);
        v10 = vaddq_s64(*v9, v7);
        v11 = vaddq_s64(v9[1], v8);
        *v9 = v10;
        v9[1] = v11;
        if (*(*(this + 1) + 4) == -16)
        {
          v12 = *(this + 3);
          *v12 = v10;
          v12[1] = v11;
        }
      }
    }
  }
}

void ChannelThreadInsurance::~ChannelThreadInsurance(ChannelThreadInsurance *this)
{
  if (*this)
  {
    v2 = *(this + 1);
    if ((*v2 & 1) == 0)
    {
      v3 = *(v2 + 16);
      ChannelMgr::maybeStopCollectingDataForUtt(ChannelMgr::smpChannelMgr, *this, v14);
      v4 = *(this + 3);
      v5 = v4[1];
      *v4 = vaddq_s64(*v4, v14[0]);
      v4[1] = vaddq_s64(v5, v14[1]);
      UttFeatureArraySynchronizedArray::update(*(this + 1), *this);
      v6 = *(*(this + 1) + 16);
      **(this + 2) = v6;
      if (v3 != v6)
      {
        v7 = *(this + 4);
        v15 = 0u;
        v16 = 0u;
        SnapTime::recordTime(&v15, 1, 0, 0, 0);
        v8 = v7[1];
        v9 = vsubq_s64(v15, *v7);
        *v7 = v15;
        v10 = vsubq_s64(v16, v8);
        v7[1] = v16;
        v11 = *(this + 5);
        v12 = vaddq_s64(v9, *v11);
        v13 = vaddq_s64(v10, v11[1]);
        *v11 = v12;
        v11[1] = v13;
      }
    }
  }
}

void LookaheadThreadInsurance::~LookaheadThreadInsurance(LookaheadThreadInsurance *this)
{
  v2 = *(this + 1);
  if (v2 && (**(this + 2) & 1) == 0)
  {
    v3 = **(this + 3);
    (*(*v2 + 56))(v2, 0);
    v4 = (*(**(this + 1) + 32))(*(this + 1));
    **(this + 3) = v4;
    if (v3 != v4)
    {
      v5 = *(this + 4);
      v12 = 0u;
      v13 = 0u;
      SnapTime::recordTime(&v12, 1, 0, 0, 0);
      v6 = v5[1];
      v7 = vsubq_s64(v12, *v5);
      *v5 = v12;
      v8 = vsubq_s64(v13, v6);
      v5[1] = v13;
      v9 = *(this + 5);
      v10 = vaddq_s64(v7, *v9);
      v11 = vaddq_s64(v8, v9[1]);
      *v9 = v10;
      v9[1] = v11;
    }
  }
}

void FrameTransformThreadInsurance::~FrameTransformThreadInsurance(FrameTransformThreadInsurance *this)
{
  v2 = *(this + 1);
  if (v2 && (**(this + 2) & 1) == 0)
  {
    v3 = **(this + 3);
    (*(*v2 + 104))(v2, 0);
    v4 = (*(**(this + 1) + 32))(*(this + 1));
    **(this + 3) = v4;
    if (v3 != v4)
    {
      v5 = *(this + 4);
      v12 = 0u;
      v13 = 0u;
      SnapTime::recordTime(&v12, 1, 0, 0, 0);
      v6 = v5[1];
      v7 = vsubq_s64(v12, *v5);
      *v5 = v12;
      v8 = vsubq_s64(v13, v6);
      v5[1] = v13;
      v9 = *(this + 5);
      v10 = vaddq_s64(v7, *v9);
      v11 = vaddq_s64(v8, v9[1]);
      *v9 = v10;
      v9[1] = v11;
    }
  }
}

void *ProcessPrefilterer::ProcessPrefilterer(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6, char a7, _BYTE *a8, _DWORD *a9, int64x2_t *a10, int64x2_t *a11, int64x2_t *a12)
{
  v12 = a5;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a8;
  *(a1 + 8) = a5;
  *(a1 + 9) = *a9;
  *(a1 + 40) = a6;
  *(a1 + 41) = a7;
  *(a1 + 44) = 0xFFFFFFF000000000;
  if (!a2 || *a8 == 1)
  {
    *(a1 + 9) = a5;
    return a1;
  }

  v17 = (*(*a2 + 120))(a2);
  v18 = v17;
  if (v17)
  {
    *(a1 + 11) = (*(**a1 + 136))(*a1, (a1[5] & 1) == 0, a1[3]);
  }

  if (*(a1 + 41) == 1)
  {
    if ((*a3 & 1) == 0 && (!a4 || *a4 != 1))
    {
      return a1;
    }

    v12 = *(a3 + 16);
  }

  if (*(a1 + 40) == 1 && !*(a1 + 11) && v12 >= ReturnListQueue::getNextFrameTime(a1[3]) && (*a1[3] & 1) == 0)
  {
    *(a1 + 11) = (*(**a1 + 112))(*a1, v12, a3, a4);
  }

  if (((*(**a1 + 120))() & 1) == 0)
  {
    v19 = (*(**a1 + 96))();
    *a9 = v19;
    if ((v18 & 1) != 0 || *(a1 + 9) < v19)
    {
      v25 = 0u;
      v26 = 0u;
      SnapTime::recordTime(&v25, 1, 0, 0, 0);
      v20 = v26;
      v21 = vsubq_s64(v25, *a11);
      v22 = vsubq_s64(v26, a11[1]);
      *a11 = v25;
      a11[1] = v20;
      v23 = vaddq_s64(v22, a12[1]);
      *a12 = vaddq_s64(v21, *a12);
      a12[1] = v23;
    }
  }

  *(a1 + 9) = *a9;
  if (*(a1[3] + 4) == -16)
  {
    v24 = a12[1];
    *a10 = *a12;
    a10[1] = v24;
  }

  return a1;
}

void ProcessPrefilterer::~ProcessPrefilterer(ProcessPrefilterer *this)
{
  if (*this)
  {
    if ((*(this + 41) & 1) == 0)
    {
      v2 = *(this + 3);
      if ((*v2 & 1) == 0 && (*(this + 40) != 1 || ReturnListQueue::getNextFrameTime(v2) > *(this + 8)))
      {
        v3 = *(this + 11);
        if (v3 < 2)
        {
          goto LABEL_12;
        }

        if (v3 == 2)
        {
          v4 = *(this + 1);
        }

        else
        {
          if (v3 != 3)
          {
            return;
          }

          v4 = *(this + 2);
        }

        if (*(v4 + 16) > *(this + 9))
        {
LABEL_12:
          (*(**this + 128))(*this, *(this + 1), *(this + 2));
        }
      }
    }
  }
}

_DWORD *ProcessLookahead::ProcessLookahead(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, _BYTE *a8, _DWORD *a9, int64x2_t *a10, int64x2_t *a11)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  a1[4] = a4;
  a1[5] = *a9;
  *(a1 + 24) = a5;
  *(a1 + 25) = a7;
  *(a1 + 4) = a8;
  if (a2 && *a8 != 1)
  {
    (*(*a2 + 56))(a2, (a5 | a7 | a6) ^ 1u, a8);
    if (*(a1 + 25) == 1)
    {
      if (*a3 != 1)
      {
        return a1;
      }

      a1[4] = *(a3 + 16);
      if (**(a1 + 4) != 1)
      {
        goto LABEL_11;
      }
    }

    if (a6 && *(a1 + 24) == 1 && *(*(a1 + 4) + 16) <= a1[4])
    {
LABEL_11:
      (*(**a1 + 40))();
    }

    v15 = (*(**a1 + 32))();
    a1[5] = v15;
    if (*a9 != v15)
    {
      v20 = 0u;
      v21 = 0u;
      SnapTime::recordTime(&v20, 1, 0, 0, 0);
      v16 = v21;
      v17 = vsubq_s64(v20, *a10);
      v18 = vsubq_s64(v21, a10[1]);
      *a10 = v20;
      a10[1] = v16;
      v19 = vaddq_s64(v18, a11[1]);
      *a11 = vaddq_s64(v17, *a11);
      a11[1] = v19;
      *a9 = a1[5];
    }
  }

  else
  {
    a1[5] = a4;
  }

  return a1;
}

void ProcessLookahead::~ProcessLookahead(ProcessLookahead *this)
{
  v2 = *this;
  if (v2)
  {
    if ((*(this + 25) & 1) == 0)
    {
      v3 = *(this + 4);
      if ((*v3 & 1) == 0 && (*(this + 24) != 1 || *(v3 + 16) > *(this + 4)) && *(*(this + 1) + 16) > *(this + 5))
      {
        (*(*v2 + 48))(v2);
      }
    }
  }
}

_DWORD *ProcessFrameTransform::ProcessFrameTransform(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, char a8, uint64_t a9, _DWORD *a10, int64x2_t *a11, int64x2_t *a12)
{
  *a1 = a3;
  *(a1 + 1) = a4;
  a1[4] = a5;
  a1[5] = -16;
  a1[6] = *a10;
  *(a1 + 28) = a6;
  *(a1 + 29) = a8;
  *(a1 + 4) = a9;
  if (!a3)
  {
    a1[5] = a5;
LABEL_8:
    a1[6] = a5;
    return a1;
  }

  LODWORD(a5) = (*(*a3 + 40))(a3, a5);
  v14 = *a1;
  a1[5] = a5;
  if (!v14 || **(a1 + 4) == 1)
  {
    goto LABEL_8;
  }

  if (a7 & 1) != 0 || (a1[7])
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a1 + 29) ^ 1;
  }

  (*(*v14 + 104))(v14, v15 & 1);
  if (*(a1 + 29) == 1)
  {
    v17 = *(a1 + 1);
    if (*v17 != 1)
    {
      return a1;
    }

    v18 = *(v17 + 16);
    a1[5] = v18;
    if (**(a1 + 4) != 1)
    {
      goto LABEL_17;
    }
  }

  if (a7 && *(*(a1 + 4) + 16) <= a1[4])
  {
    v18 = a1[5];
    v17 = *(a1 + 1);
LABEL_17:
    (*(**a1 + 80))(*a1, v18, v17);
  }

  v19 = (*(**a1 + 32))();
  a1[6] = v19;
  if (*a10 != v19)
  {
    v24 = 0u;
    v25 = 0u;
    SnapTime::recordTime(&v24, 1, 0, 0, 0);
    v20 = v25;
    v21 = vsubq_s64(v24, *a11);
    v22 = vsubq_s64(v25, a11[1]);
    *a11 = v24;
    a11[1] = v20;
    v23 = vaddq_s64(v22, a12[1]);
    *a12 = vaddq_s64(v21, *a12);
    a12[1] = v23;
    *a10 = a1[6];
  }

  return a1;
}

void ProcessFrameTransform::~ProcessFrameTransform(ProcessFrameTransform *this)
{
  v2 = *this;
  if (v2)
  {
    if ((*(this + 29) & 1) == 0)
    {
      v3 = *(this + 4);
      if ((*v3 & 1) == 0 && (*(this + 28) != 1 || *(v3 + 16) > *(this + 4)) && *(*(this + 1) + 16) > *(this + 6))
      {
        (*(*v2 + 96))(v2);
      }
    }
  }
}

void ProcessChannel::ProcessChannel(ProcessChannel *this, int a2, int a3, int a4, int a5, Utterance *a6, UttFeatureArraySynchronizedArray *a7, int *a8, int64x2_t *a9, int64x2_t *a10, int64x2_t *a11)
{
  *this = a6;
  *(this + 1) = a7;
  if (a6 && (a3 | a4 | a5) == 1 && (*a7 & 1) == 0)
  {
    v15 = ChannelMgr::smpChannelMgr;
    ChannelMgr::maybeStopCollectingDataForUtt(ChannelMgr::smpChannelMgr, a6, &v31);
    if (a4)
    {
      ChannelMgr::collectThroughUttFrame(v15, *this, &v33);
      v31 = vaddq_s64(v31, v33);
      v32 = vaddq_s64(v32, v34);
    }

    v16 = *this;
    if (a5 && *(v16 + 416) == 1)
    {
      v17 = 0uLL;
      v18 = 0uLL;
      while ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v17), vceqzq_s64(v18))))) & 1) != 0)
      {
        v27 = v17;
        v29 = v18;
        ClockTimer::useFreeTime(&v33);
        v28 = vaddq_s64(v33, v27);
        v30 = vaddq_s64(v34, v29);
        ChannelMgr::collectAvailableDataForUtt(v15, *this);
        v17 = v28;
        if (!v28.i64[0])
        {
          if (!v28.i64[1])
          {
            v18 = v30;
            if (v30.i64[0])
            {
              v17 = 0uLL;
              goto LABEL_16;
            }

            if (v30.i64[1])
            {
              v17 = 0uLL;
              v19.i64[0] = 0;
              v19.i64[1] = v30.i64[1];
              v18 = v19;
              goto LABEL_16;
            }

            goto LABEL_15;
          }

          v17.i64[0] = 0;
        }

        v18 = v30;
LABEL_16:
        v16 = *this;
        if ((*(*this + 416) & 1) == 0)
        {
          v31 = vaddq_s64(v31, v17);
          v32 = vaddq_s64(v32, v18);
          goto LABEL_22;
        }
      }

      ChannelMgr::collectAvailableDataForUtt(v15, v16);
LABEL_15:
      ClockTimer::useFreeTime(&v33);
      v17 = v33;
      v18 = v34;
      goto LABEL_16;
    }

LABEL_22:
    UttFeatureArraySynchronizedArray::update(*(this + 1), v16);
    v20 = *(this + 1);
    v21 = *(v20 + 16);
    if (*v20 == 1)
    {
      *(v20 + 4) = v21;
    }

    v33 = 0u;
    v34 = 0u;
    SnapTime::recordTime(&v33, 1, 0, 0, 0);
    v22 = v34;
    v23 = vsubq_s64(v33, *a10);
    v24 = vsubq_s64(v34, a10[1]);
    *a10 = v33;
    a10[1] = v22;
    v25 = vaddq_s64(v24, a11[1]);
    *a11 = vaddq_s64(v23, *a11);
    a11[1] = v25;
    v26 = vaddq_s64(a9[1], v32);
    *a9 = vaddq_s64(*a9, v31);
    a9[1] = v26;
    *a8 = v21;
  }
}

void ProcessChannel::~ProcessChannel(Utterance **this)
{
  if (*this)
  {
    if ((*this[1] & 1) == 0)
    {
      ChannelMgr::maybeStartCollectingDataForUtt(ChannelMgr::smpChannelMgr, *this);
    }
  }
}

void RecogController::RecogController(RecogController *this, const RecogSpec *a2, int a3, PrefiltererSearchParamSet *a4, SearchCrossLayerParamSet *a5)
{
  *this = &unk_2875278E0;
  RecogSpec::RecogSpec((this + 8), a2);
  *(this + 136) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 72) = 0u;
  v9 = (this + 72);
  *(this + 88) = 0u;
  v10 = (this + 88);
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *&v11 = 0xF0000000FLL;
  *(&v11 + 1) = 0xF0000000FLL;
  *(this + 292) = v11;
  *(this + 77) = -16;
  *(this + 39) = 0xF0000000FLL;
  *(this + 98) = 0;
  *(this + 25) = 0u;
  *(this + 552) = 0u;
  *(this + 340) = 0;
  *(this + 332) = 0;
  *(this + 89) = 0;
  *(this + 348) = 0;
  *(this + 54) = 0u;
  *(this + 53) = 0u;
  *(this + 52) = 0u;
  *(this + 51) = 0u;
  *(this + 50) = 0u;
  *(this + 49) = 0u;
  *(this + 48) = 0u;
  *(this + 47) = 0u;
  *(this + 46) = 0u;
  *(this + 45) = 0u;
  *(this + 44) = 0u;
  *(this + 43) = 0u;
  *(this + 42) = 0u;
  *(this + 41) = 0u;
  *(this + 40) = 0u;
  *(this + 39) = 0u;
  *(this + 38) = 0u;
  *(this + 37) = 0u;
  *(this + 36) = 0u;
  *(this + 114) = a4;
  *(this + 115) = a5;
  *(this + 232) = -1;
  Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::Hash(this + 936, 0, 16);
  *(this + 224) = 0;
  *(this + 38) = 0;
  *(this + 156) = 0;
  *(this + 144) = 0;
  *(this + 290) = 0;
  *(this + 104) = 0;
  *(this + 48) = 0;
  *(this + 137) = 0;
  *(this + 568) = 0;
  *(this + 111) = 0;
  *(this + 113) = 0;
  *(this + 40) = 0;
  *(this + 82) = 0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 529) = 0u;
  v12 = *(a2 + 4);
  v13 = *(this + 114);
  if (v13)
  {
    ++*(v13 + 36);
  }

  v14 = *(this + 115);
  if (v14)
  {
    ++*(v14 + 36);
  }

  *(this + 448) = 0;
  if (*(this + 71) < v12)
  {
    v45 = 0;
    *(this + 71) = realloc_array(*(this + 34), &v45, v12, *(this + 70), *(this + 70), 1);
    *(this + 34) = v45;
    *(this + 70) = v12;
LABEL_8:
    bzero(*(this + 34), v12);
    v15 = 0;
    goto LABEL_9;
  }

  *(this + 70) = v12;
  if (v12)
  {
    goto LABEL_8;
  }

  v15 = 1;
LABEL_9:
  *(this + 898) = 0;
  v16 = *(this + 21);
  if (v12 > v16)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 72, v12 - v16, 0);
  }

  v17 = *(this + 20);
  if (v17 <= v12)
  {
    if (v17 < v12)
    {
      v20 = v12 - v17;
      v21 = 16 * v17;
      do
      {
        v22 = (*v9 + v21);
        *v22 = 0;
        v22[1] = 0;
        v21 += 16;
        --v20;
      }

      while (v20);
    }
  }

  else if (v17 > v12)
  {
    v18 = v17;
    v19 = 16 * v17 - 16;
    do
    {
      --v18;
      DgnIArray<Utterance *>::~DgnIArray(*v9 + v19);
      v19 -= 16;
    }

    while (v18 > v12);
  }

  *(this + 20) = v12;
  v23 = *(this + 25);
  if (v12 > v23)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 88, v12 - v23, 0);
  }

  v24 = *(this + 24);
  if (v24 <= v12)
  {
    if (v24 < v12)
    {
      v27 = v12 - v24;
      v28 = 16 * v24;
      do
      {
        v29 = (*v10 + v28);
        *v29 = 0;
        v29[1] = 0;
        v28 += 16;
        --v27;
      }

      while (v27);
    }
  }

  else if (v24 > v12)
  {
    v25 = v24;
    v26 = 16 * v24 - 16;
    do
    {
      --v25;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*v10 + v26);
      v26 -= 16;
    }

    while (v25 > v12);
  }

  *(this + 24) = v12;
  if ((v15 & 1) == 0)
  {
    v30 = 0;
    v31 = v12;
    do
    {
      v32 = *v9 + v30;
      v33 = *(v32 + 12);
      if (v33 <= 0x63)
      {
        DgnArray<RecogResultToken>::reallocElts(v32, 100 - v33, 0);
      }

      v34 = *v10 + v30;
      v35 = *(v34 + 12);
      if (v35 <= 0x63)
      {
        DgnPrimArray<unsigned int>::reallocElts(v34, 100 - v35, 0);
      }

      v30 += 16;
      --v31;
    }

    while (v31);
  }

  v36 = *(this + 29);
  if (v12 > v36)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 104, v12 - v36, 0);
  }

  *(this + 28) = v12;
  v37 = *(this + 33);
  if (v37 <= 0x63)
  {
    DgnArray<WordLatticeLC>::reallocElts(this + 120, 100 - v37, 0);
  }

  v38 = *(this + 37);
  if (v38 <= 0x63)
  {
    DgnArray<PrefilterResultFrame>::reallocElts(this + 136, 100 - v38, 0);
  }

  if (a3)
  {
    v39 = MemChunkAlloc(0x670uLL, 0);
    RecogStats::RecogStats(v39);
    *(this + 113) = v39;
    v40 = *(v39 + 3);
    if (v12 > v40)
    {
      DgnArray<RecogLayerStats>::reallocElts(v39, v12 - v40, 0);
    }

    v41 = *(v39 + 2);
    if (v41 <= v12)
    {
      if (v41 < v12)
      {
        v42 = v12 - v41;
        v43 = 2368 * v41;
        do
        {
          RecogLayerStats::RecogLayerStats((*v39 + v43));
          v43 += 2368;
          --v42;
        }

        while (v42);
      }
    }

    else
    {
      DgnArray<RecogLayerStats>::destructAt(v39, v12, v41 - v12);
    }

    *(v39 + 2) = v12;
  }

  *(this + 880) = 0;
}

void sub_2627D5218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::~Hash(v19 + 800);
  DgnIArray<Utterance *>::~DgnIArray(a12);
  DgnIArray<Utterance *>::~DgnIArray(a13);
  DgnIArray<Utterance *>::~DgnIArray(a14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19 + 416);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19 + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19 + 136);
  DgnIArray<Utterance *>::~DgnIArray(v19);
  DgnArray<WordLatticeLC>::releaseAll(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a16);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v18);
  DgnArray<DgnArray<ParseToken>>::releaseAll(v17);
  DgnIOwnArray<FstCore *>::releaseAll(a11);
  DgnIOwnArray<Recognizer *>::releaseAll(a10);
  DgnIOwnArray<RecogSpecLayer *>::releaseAll(v16 + 16);
  _Unwind_Resume(a1);
}

void RecogController::~RecogController(RecogController *this)
{
  *this = &unk_2875278E0;
  v2 = *(this + 114);
  if (v2)
  {
    --*(v2 + 36);
    *(this + 114) = 0;
  }

  v3 = *(this + 115);
  if (v3)
  {
    --*(v3 + 36);
    *(this + 115) = 0;
  }

  if (*(this + 10))
  {
    v4 = 0;
    do
    {
      DgnDelete<Recognizer>(*(*(this + 4) + 8 * v4));
      *(*(this + 4) + 8 * v4) = 0;
      DgnDelete<FstCore>(*(*(this + 6) + 8 * v4));
      *(*(this + 6) + 8 * v4++) = 0;
    }

    while (v4 < *(this + 10));
  }

  DgnDelete<PelScorer>(*(this + 31));
  *(this + 31) = 0;
  DgnDelete<PelScoreCacheData>(*(this + 32));
  *(this + 32) = 0;
  DgnDelete<PelScoreCacheData>(*(this + 33));
  *(this + 33) = 0;
  DgnDelete<ReproMgr>(*(this + 111));
  *(this + 111) = 0;
  DgnDelete<RecogStats>(*(this + 113));
  *(this + 113) = 0;
  DgnDelete<ReturnListQueue>(*(this + 65));
  *(this + 65) = 0;
  DgnDelete<PrefilterResult>(*(this + 66));
  *(this + 66) = 0;
  DgnDelete<PrefilterResult>(*(this + 67));
  *(this + 67) = 0;
  Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::~Hash(this + 936);
  DgnIArray<Utterance *>::~DgnIArray(this + 864);
  DgnIArray<Utterance *>::~DgnIArray(this + 816);
  DgnIArray<Utterance *>::~DgnIArray(this + 576);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 552);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 400);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 136);
  DgnArray<WordLatticeLC>::releaseAll(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 88);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 72);
  DgnIOwnArray<FstCore *>::releaseAll(this + 48);
  DgnIOwnArray<Recognizer *>::releaseAll(this + 32);
  DgnIOwnArray<RecogSpecLayer *>::releaseAll(this + 16);
}

{
  RecogController::~RecogController(this);

  JUMPOUT(0x26672B1B0);
}

ReproMgr *DgnDelete<ReproMgr>(ReproMgr *result)
{
  if (result)
  {
    ReproMgr::~ReproMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnDelete<RecogStats>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnArray<RecogLayerStats>::releaseAll(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

ReturnListQueue *DgnDelete<ReturnListQueue>(ReturnListQueue *result)
{
  if (result)
  {
    ReturnListQueue::~ReturnListQueue(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void RecogController::printSize(RecogController *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3050);
  if (LODWORD(v342[1]))
  {
    v13 = v342[0];
  }

  else
  {
    v13 = &unk_26288E838;
  }

  v339 = a3;
  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288E838, a3, &unk_26288E838, v13);
  v338 = a6;
  DgnString::~DgnString(v342);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288E838);
  v15 = sizeObject<RecogSpecLayer *>(this + 16, 0) + 6;
  v16 = sizeObject<RecogSpecLayer *>(this + 16, 1) + 6;
  v17 = (a3 + 1);
  v18 = (34 - a3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3051);
  if (LODWORD(v342[1]))
  {
    v20 = v342[0];
  }

  else
  {
    v20 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, v17, &unk_26288E838, v18, v18, v20, v15, v16, 0);
  DgnString::~DgnString(v342);
  *a4 += v15;
  *a5 += v16;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3052);
  if (LODWORD(v342[1]))
  {
    v22 = v342[0];
  }

  else
  {
    v22 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v21, v17, &unk_26288E838, v17, &unk_26288E838, v22);
  DgnString::~DgnString(v342);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v23, v17, &unk_26288E838);
  v24 = *(this + 10);
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *(this + 4);
      if (*(v29 + 8 * v25))
      {
        v341 = 0;
        v342[0] = 0;
        v340 = 0;
        Recognizer::printSize(*(v29 + 8 * v25), v25, (v339 + 2), v342, &v341, &v340);
        v26 += v342[0];
        v27 += v341;
        v28 += v340;
        v24 = *(this + 10);
      }

      ++v25;
    }

    while (v25 < v24);
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v24 = 0;
  }

  v30 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 12;
  }

  v31 = v30 + v26;
  v32 = v30 + v27;
  v33 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v33 = 3;
  }

  v34 = v31 + (*(this + 11) << v33);
  v35 = v32 + (v24 << v33);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3052);
  if (LODWORD(v342[1]))
  {
    v37 = v342[0];
  }

  else
  {
    v37 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v17, &unk_26288E838, v18, v18, v37, v34, v35, v28);
  DgnString::~DgnString(v342);
  *a4 += v34;
  *a5 += v35;
  *v338 += v28;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3053);
  if (LODWORD(v342[1]))
  {
    v39 = v342[0];
  }

  else
  {
    v39 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v38, v17, &unk_26288E838, v17, &unk_26288E838, v39);
  DgnString::~DgnString(v342);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v40, v17, &unk_26288E838);
  v41 = *(this + 14);
  if (v41)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = *(this + 6);
      if (*(v46 + 8 * v42))
      {
        v341 = 0;
        v342[0] = 0;
        v340 = 0;
        FstCore::printSize(*(v46 + 8 * v42), v42, (v339 + 2), v342, &v341, &v340);
        v43 += v342[0];
        v44 += v341;
        v45 += v340;
        v41 = *(this + 14);
      }

      ++v42;
    }

    while (v42 < v41);
  }

  else
  {
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v41 = 0;
  }

  v47 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v47 = 12;
  }

  v48 = v47 + v43;
  v49 = v47 + v44;
  v50 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v50 = 3;
  }

  v51 = v48 + (*(this + 15) << v50);
  v52 = v49 + (v41 << v50);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3053);
  if (LODWORD(v342[1]))
  {
    v54 = v342[0];
  }

  else
  {
    v54 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v17, &unk_26288E838, v18, v18, v54, v51, v52, v45);
  DgnString::~DgnString(v342);
  *a4 += v51;
  *a5 += v52;
  *v338 += v45;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3055);
  if (LODWORD(v342[1]))
  {
    v56 = v342[0];
  }

  else
  {
    v56 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v17, &unk_26288E838, v18, v18, v56, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  v57 = sizeObject<DgnArray<RecogResultToken>>(this + 72, 0);
  v58 = sizeObject<DgnArray<RecogResultToken>>(this + 72, 1);
  v59 = sizeObject<DgnArray<RecogResultToken>>(this + 72, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3057);
  if (LODWORD(v342[1]))
  {
    v61 = v342[0];
  }

  else
  {
    v61 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v17, &unk_26288E838, v18, v18, v61, v57, v58, v59);
  DgnString::~DgnString(v342);
  *a4 += v57;
  *a5 += v58;
  *v338 += v59;
  v62 = sizeObject<DgnPrimArray<unsigned int>>(this + 88, 0);
  v63 = sizeObject<DgnPrimArray<unsigned int>>(this + 88, 1);
  v342[0] = 0;
  v342[1] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v342);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3059);
  if (LODWORD(v342[1]))
  {
    v65 = v342[0];
  }

  else
  {
    v65 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v17, &unk_26288E838, v18, v18, v65, v62, v63, 0);
  DgnString::~DgnString(v342);
  *a4 += v62;
  *a5 += v63;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 12;
  }

  else
  {
    v66 = 16;
  }

  v67 = *(this + 28);
  v68 = *(this + 29);
  if (v68 >= v67)
  {
    v69 = 0;
    if (v67 > 0)
    {
      v66 += 4 * (v67 - 1) + 4;
    }

    v70 = v66 + 4 * (v68 - v67);
  }

  else
  {
    v69 = 4 * v67;
    v70 = v66;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3061);
  if (LODWORD(v342[1]))
  {
    v72 = v342[0];
  }

  else
  {
    v72 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v17, &unk_26288E838, v18, v18, v72, v70, v66, v69);
  DgnString::~DgnString(v342);
  *a4 += v70;
  *a5 += v66;
  *v338 += v69;
  v73 = sizeObject<WordLatticeLC>(this + 120, 0);
  v74 = sizeObject<WordLatticeLC>(this + 120, 1);
  v75 = sizeObject<WordLatticeLC>(this + 120, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3063);
  if (LODWORD(v342[1]))
  {
    v77 = v342[0];
  }

  else
  {
    v77 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v17, &unk_26288E838, v18, v18, v77, v73, v74, v75);
  DgnString::~DgnString(v342);
  *a4 += v73;
  *a5 += v74;
  *v338 += v75;
  v78 = sizeObject<HistContents>(this + 136, 0);
  v79 = sizeObject<HistContents>(this + 136, 1);
  v342[0] = 0x3FFFFAFFFFFFLL;
  *&v342[1] = xmmword_26286CC40;
  v342[3] = 0x1F0000001FLL;
  sizeObject(v342, 2);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3065);
  if (LODWORD(v342[1]))
  {
    v81 = v342[0];
  }

  else
  {
    v81 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v17, &unk_26288E838, v18, v18, v81, v78, v79, 0);
  DgnString::~DgnString(v342);
  *a4 += v78;
  *a5 += v79;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3067);
  if (LODWORD(v342[1]))
  {
    v83 = v342[0];
  }

  else
  {
    v83 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v17, &unk_26288E838, v18, v18, v83, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3069);
  if (LODWORD(v342[1]))
  {
    v85 = v342[0];
  }

  else
  {
    v85 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v17, &unk_26288E838, v18, v18, v85, 1, 1, 0);
  DgnString::~DgnString(v342);
  ++*a4;
  ++*a5;
  v86 = SnapTime::sizeObject(this + 160, 0);
  v87 = SnapTime::sizeObject(this + 160, 1);
  v88 = SnapTime::sizeObject(this + 160, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3071);
  if (LODWORD(v342[1]))
  {
    v90 = v342[0];
  }

  else
  {
    v90 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v17, &unk_26288E838, v18, v18, v90, v86, v87, v88);
  DgnString::~DgnString(v342);
  *a4 += v86;
  *a5 += v87;
  *v338 += v88;
  v91 = SnapTime::sizeObject(this + 192, 0);
  v92 = SnapTime::sizeObject(this + 192, 1);
  v93 = SnapTime::sizeObject(this + 192, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3073);
  if (LODWORD(v342[1]))
  {
    v95 = v342[0];
  }

  else
  {
    v95 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v17, &unk_26288E838, v18, v18, v95, v91, v92, v93);
  DgnString::~DgnString(v342);
  *a4 += v91;
  *a5 += v92;
  *v338 += v93;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3075);
  if (LODWORD(v342[1]))
  {
    v97 = v342[0];
  }

  else
  {
    v97 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v17, &unk_26288E838, v18, v18, v97, 1, 1, 0);
  DgnString::~DgnString(v342);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v98 = 4;
  }

  else
  {
    v98 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3076);
  if (LODWORD(v342[1]))
  {
    v100 = v342[0];
  }

  else
  {
    v100 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v99, v17, &unk_26288E838, v18, v18, v100, v98, v98, 0);
  DgnString::~DgnString(v342);
  *a4 += v98;
  *a5 += v98;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v101 = 4;
  }

  else
  {
    v101 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3077);
  if (LODWORD(v342[1]))
  {
    v103 = v342[0];
  }

  else
  {
    v103 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v17, &unk_26288E838, v18, v18, v103, v101, v101, 0);
  DgnString::~DgnString(v342);
  *a4 += v101;
  *a5 += v101;
  v104 = *(this + 31);
  if (v104)
  {
    v341 = 0;
    v342[0] = 0;
    v340 = 0;
    (*(*v104 + 32))(v104, 0xFFFFFFFFLL, v17, v342, &v341, &v340);
    *a4 += v342[0];
    *a5 += v341;
    *v338 += v340;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v105 = 4;
  }

  else
  {
    v105 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3079);
  if (LODWORD(v342[1]))
  {
    v107 = v342[0];
  }

  else
  {
    v107 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v17, &unk_26288E838, v18, v18, v107, v105, v105, 0);
  DgnString::~DgnString(v342);
  *a4 += v105;
  *a5 += v105;
  v108 = *(this + 32);
  if (v108)
  {
    v341 = 0;
    v342[0] = 0;
    v340 = 0;
    PelScoreCacheData::printSize(v108, 0xFFFFFFFFLL, v17, v342, &v341, &v340);
    *a4 += v342[0];
    *a5 += v341;
    *v338 += v340;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v109 = 4;
  }

  else
  {
    v109 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3081);
  if (LODWORD(v342[1]))
  {
    v111 = v342[0];
  }

  else
  {
    v111 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v17, &unk_26288E838, v18, v18, v111, v109, v109, 0);
  DgnString::~DgnString(v342);
  *a4 += v109;
  *a5 += v109;
  v112 = *(this + 33);
  if (v112)
  {
    v341 = 0;
    v342[0] = 0;
    v340 = 0;
    PelScoreCacheData::printSize(v112, 0xFFFFFFFFLL, v17, v342, &v341, &v340);
    *a4 += v342[0];
    *a5 += v341;
    *v338 += v340;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v113 = 4;
  }

  else
  {
    v113 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3083);
  if (LODWORD(v342[1]))
  {
    v115 = v342[0];
  }

  else
  {
    v115 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v114, v17, &unk_26288E838, v18, v18, v115, v113, v113, 0);
  DgnString::~DgnString(v342);
  *a4 += v113;
  *a5 += v113;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v116 = 12;
  }

  else
  {
    v116 = 16;
  }

  v117 = *(this + 70);
  v118 = *(this + 71);
  v119 = v118 >= v117;
  v120 = v118 - v117;
  if (v119)
  {
    if (v117 > 0)
    {
      v121 = (v117 - 1) + v116 + 1;
    }

    else
    {
      v121 = v116;
    }

    v116 = v121 + v120;
    v117 = 0;
  }

  else
  {
    v121 = v116;
  }

  v122 = v117;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3085);
  if (LODWORD(v342[1]))
  {
    v124 = v342[0];
  }

  else
  {
    v124 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v123, v17, &unk_26288E838, v18, v18, v124, v116, v121, v122);
  DgnString::~DgnString(v342);
  *a4 += v116;
  *a5 += v121;
  *v338 += v122;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3087);
  if (LODWORD(v342[1]))
  {
    v126 = v342[0];
  }

  else
  {
    v126 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v125, v17, &unk_26288E838, v18, v18, v126, 1, 1, 0);
  DgnString::~DgnString(v342);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3089);
  if (LODWORD(v342[1]))
  {
    v128 = v342[0];
  }

  else
  {
    v128 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v17, &unk_26288E838, v18, v18, v128, 1, 1, 0);
  DgnString::~DgnString(v342);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3091);
  if (LODWORD(v342[1]))
  {
    v130 = v342[0];
  }

  else
  {
    v130 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v129, v17, &unk_26288E838, v18, v18, v130, 1, 1, 0);
  DgnString::~DgnString(v342);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3093);
  if (LODWORD(v342[1]))
  {
    v132 = v342[0];
  }

  else
  {
    v132 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v131, v17, &unk_26288E838, v18, v18, v132, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3095);
  if (LODWORD(v342[1]))
  {
    v134 = v342[0];
  }

  else
  {
    v134 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v133, v17, &unk_26288E838, v18, v18, v134, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3097);
  if (LODWORD(v342[1]))
  {
    v136 = v342[0];
  }

  else
  {
    v136 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v17, &unk_26288E838, v18, v18, v136, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3099);
  if (LODWORD(v342[1]))
  {
    v138 = v342[0];
  }

  else
  {
    v138 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v17, &unk_26288E838, v18, v18, v138, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3101);
  if (LODWORD(v342[1]))
  {
    v140 = v342[0];
  }

  else
  {
    v140 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v139, v17, &unk_26288E838, v18, v18, v140, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3103);
  if (LODWORD(v342[1]))
  {
    v142 = v342[0];
  }

  else
  {
    v142 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v141, v17, &unk_26288E838, v18, v18, v142, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3105);
  if (LODWORD(v342[1]))
  {
    v144 = v342[0];
  }

  else
  {
    v144 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v17, &unk_26288E838, v18, v18, v144, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3107);
  if (LODWORD(v342[1]))
  {
    v146 = v342[0];
  }

  else
  {
    v146 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v17, &unk_26288E838, v18, v18, v146, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3109);
  if (LODWORD(v342[1]))
  {
    v148 = v342[0];
  }

  else
  {
    v148 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v147, v17, &unk_26288E838, v18, v18, v148, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3111);
  if (LODWORD(v342[1]))
  {
    v150 = v342[0];
  }

  else
  {
    v150 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v17, &unk_26288E838, v18, v18, v150, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3113);
  if (LODWORD(v342[1]))
  {
    v152 = v342[0];
  }

  else
  {
    v152 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v151, v17, &unk_26288E838, v18, v18, v152, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3115);
  if (LODWORD(v342[1]))
  {
    v154 = v342[0];
  }

  else
  {
    v154 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v153, v17, &unk_26288E838, v18, v18, v154, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3117);
  if (LODWORD(v342[1]))
  {
    v156 = v342[0];
  }

  else
  {
    v156 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v155, v17, &unk_26288E838, v18, v18, v156, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v157 = 12;
  }

  else
  {
    v157 = 16;
  }

  v158 = *(this + 88);
  v159 = *(this + 89);
  if (v159 >= v158)
  {
    v160 = 0;
    if (v158 > 0)
    {
      v157 += 8 * (v158 - 1) + 8;
    }

    v161 = v157 + 8 * (v159 - v158);
  }

  else
  {
    v160 = 8 * v158;
    v161 = v157;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3119);
  if (LODWORD(v342[1]))
  {
    v163 = v342[0];
  }

  else
  {
    v163 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v162, v17, &unk_26288E838, v18, v18, v163, v161, v157, v160);
  DgnString::~DgnString(v342);
  *a4 += v161;
  *a5 += v157;
  *v338 += v160;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3121);
  if (LODWORD(v342[1]))
  {
    v165 = v342[0];
  }

  else
  {
    v165 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v164, v17, &unk_26288E838, v18, v18, v165, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3123);
  if (LODWORD(v342[1]))
  {
    v167 = v342[0];
  }

  else
  {
    v167 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v166, v17, &unk_26288E838, v18, v18, v167, 8, 8, 0);
  DgnString::~DgnString(v342);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3125);
  if (LODWORD(v342[1]))
  {
    v169 = v342[0];
  }

  else
  {
    v169 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v168, v17, &unk_26288E838, v18, v18, v169, 8, 8, 0);
  DgnString::~DgnString(v342);
  *a4 += 8;
  *a5 += 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v170 = 4;
  }

  else
  {
    v170 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3127);
  if (LODWORD(v342[1]))
  {
    v172 = v342[0];
  }

  else
  {
    v172 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, v17, &unk_26288E838, v18, v18, v172, v170, v170, 0);
  DgnString::~DgnString(v342);
  *a4 += v170;
  *a5 += v170;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3129);
  if (LODWORD(v342[1]))
  {
    v174 = v342[0];
  }

  else
  {
    v174 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v173, v17, &unk_26288E838, v18, v18, v174, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v175 = 12;
  }

  else
  {
    v175 = 16;
  }

  v176 = *(this + 102);
  v177 = *(this + 103);
  v119 = v177 >= v176;
  v178 = v177 - v176;
  if (v119)
  {
    if (v176 > 0)
    {
      v179 = (v176 - 1) + v175 + 1;
    }

    else
    {
      v179 = v175;
    }

    v175 = v179 + v178;
    v176 = 0;
  }

  else
  {
    v179 = v175;
  }

  v180 = v176;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3131);
  if (LODWORD(v342[1]))
  {
    v182 = v342[0];
  }

  else
  {
    v182 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v181, v17, &unk_26288E838, v18, v18, v182, v175, v179, v180);
  DgnString::~DgnString(v342);
  *a4 += v175;
  *a5 += v179;
  *v338 += v180;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3133);
  if (LODWORD(v342[1]))
  {
    v184 = v342[0];
  }

  else
  {
    v184 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v183, v17, &unk_26288E838, v18, v18, v184, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v185 = 4;
  }

  else
  {
    v185 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3134);
  if (LODWORD(v342[1]))
  {
    v187 = v342[0];
  }

  else
  {
    v187 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v186, v17, &unk_26288E838, v18, v18, v187, v185, v185, 0);
  DgnString::~DgnString(v342);
  *a4 += v185;
  *a5 += v185;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v188 = 4;
  }

  else
  {
    v188 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3135);
  if (LODWORD(v342[1]))
  {
    v190 = v342[0];
  }

  else
  {
    v190 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v189, v17, &unk_26288E838, v18, v18, v190, v188, v188, 0);
  DgnString::~DgnString(v342);
  *a4 += v188;
  *a5 += v188;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v191 = 4;
  }

  else
  {
    v191 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3137);
  if (LODWORD(v342[1]))
  {
    v193 = v342[0];
  }

  else
  {
    v193 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v192, v17, &unk_26288E838, v18, v18, v193, v191, v191, 0);
  DgnString::~DgnString(v342);
  *a4 += v191;
  *a5 += v191;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v194 = 4;
  }

  else
  {
    v194 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3139);
  if (LODWORD(v342[1]))
  {
    v196 = v342[0];
  }

  else
  {
    v196 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v195, v17, &unk_26288E838, v18, v18, v196, v194, v194, 0);
  DgnString::~DgnString(v342);
  *a4 += v194;
  *a5 += v194;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v197 = 4;
  }

  else
  {
    v197 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3141);
  if (LODWORD(v342[1]))
  {
    v199 = v342[0];
  }

  else
  {
    v199 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v198, v17, &unk_26288E838, v18, v18, v199, v197, v197, 0);
  DgnString::~DgnString(v342);
  *a4 += v197;
  *a5 += v197;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v200 = 4;
  }

  else
  {
    v200 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3143);
  if (LODWORD(v342[1]))
  {
    v202 = v342[0];
  }

  else
  {
    v202 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v201, v17, &unk_26288E838, v18, v18, v202, v200, v200, 0);
  DgnString::~DgnString(v342);
  *a4 += v200;
  *a5 += v200;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v203 = 4;
  }

  else
  {
    v203 = 8;
  }

  v204 = *(this + 59);
  if (v204)
  {
    v205 = v203 + sizeObject<DgnPrimArray<unsigned char>>(v204 + 8, 0) + 5;
    v206 = *(this + 59);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v203 = 4;
    }

    else
    {
      v203 = 8;
    }

    if (v206)
    {
      v203 += sizeObject<DgnPrimArray<unsigned char>>(v206 + 8, 1) + 5;
      if (*(this + 59))
      {
        v342[0] = 0;
        v342[1] = 0;
        DgnPrimArray<unsigned int>::~DgnPrimArray(v342);
      }
    }
  }

  else
  {
    v205 = v203;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3145);
  if (LODWORD(v342[1]))
  {
    v208 = v342[0];
  }

  else
  {
    v208 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v207, v17, &unk_26288E838, v18, v18, v208, v205, v203, 0);
  DgnString::~DgnString(v342);
  *a4 += v205;
  *a5 += v203;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v209 = 4;
  }

  else
  {
    v209 = 8;
  }

  v210 = *(this + 60);
  if (v210)
  {
    v211 = v209 + sizeObject<DgnPrimArray<unsigned char>>(v210 + 8, 0) + 5;
    v212 = *(this + 60);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v209 = 4;
    }

    else
    {
      v209 = 8;
    }

    if (v212)
    {
      v209 += sizeObject<DgnPrimArray<unsigned char>>(v212 + 8, 1) + 5;
      if (*(this + 60))
      {
        v342[0] = 0;
        v342[1] = 0;
        DgnPrimArray<unsigned int>::~DgnPrimArray(v342);
      }
    }
  }

  else
  {
    v211 = v209;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3147);
  if (LODWORD(v342[1]))
  {
    v214 = v342[0];
  }

  else
  {
    v214 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v213, v17, &unk_26288E838, v18, v18, v214, v211, v209, 0);
  DgnString::~DgnString(v342);
  *a4 += v211;
  *a5 += v209;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3149);
  if (LODWORD(v342[1]))
  {
    v216 = v342[0];
  }

  else
  {
    v216 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v215, v17, &unk_26288E838, v18, v18, v216, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3151);
  if (LODWORD(v342[1]))
  {
    v218 = v342[0];
  }

  else
  {
    v218 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v217, v17, &unk_26288E838, v18, v18, v218, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v219 = 4;
  }

  else
  {
    v219 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3152);
  if (LODWORD(v342[1]))
  {
    v221 = v342[0];
  }

  else
  {
    v221 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v220, v17, &unk_26288E838, v18, v18, v221, v219, v219, 0);
  DgnString::~DgnString(v342);
  *a4 += v219;
  *a5 += v219;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v222 = 4;
  }

  else
  {
    v222 = 8;
  }

  v223 = *(this + 63);
  if (v223)
  {
    v224 = v222 + sizeObject<ScoreFixArray>(v223 + 8, 0) + 5;
    v225 = *(this + 63);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v222 = 4;
    }

    else
    {
      v222 = 8;
    }

    if (v225)
    {
      v222 += sizeObject<ScoreFixArray>(v225 + 8, 1) + 5;
      if (*(this + 63))
      {
        v342[0] = 0;
        LODWORD(v342[1]) = 0;
        DgnPrimFixArray<double>::~DgnPrimFixArray(v342);
      }
    }
  }

  else
  {
    v224 = v222;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3154);
  if (LODWORD(v342[1]))
  {
    v227 = v342[0];
  }

  else
  {
    v227 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v226, v17, &unk_26288E838, v18, v18, v227, v224, v222, 0);
  DgnString::~DgnString(v342);
  *a4 += v224;
  *a5 += v222;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v228 = 4;
  }

  else
  {
    v228 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3156);
  if (LODWORD(v342[1]))
  {
    v230 = v342[0];
  }

  else
  {
    v230 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v229, v17, &unk_26288E838, v18, v18, v230, v228, v228, 0);
  DgnString::~DgnString(v342);
  *a4 += v228;
  *a5 += v228;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v231 = 4;
  }

  else
  {
    v231 = 8;
  }

  v232 = *(this + 65);
  if (v232)
  {
    v233 = sizeObject(v232, 0) + v231;
    v234 = *(this + 65);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v231 = 4;
    }

    else
    {
      v231 = 8;
    }

    v235 = v338;
    if (v234 && (v231 += sizeObject(v234, 1), (v236 = *(this + 65)) != 0))
    {
      v237 = sizeObject(v236, 3);
    }

    else
    {
      v237 = 0;
    }
  }

  else
  {
    v237 = 0;
    v233 = v231;
    v235 = v338;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3158);
  if (LODWORD(v342[1]))
  {
    v239 = v342[0];
  }

  else
  {
    v239 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v238, v17, &unk_26288E838, v18, v18, v239, v233, v231, v237);
  DgnString::~DgnString(v342);
  *a4 += v233;
  *a5 += v231;
  *v235 += v237;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v240 = 4;
  }

  else
  {
    v240 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3159);
  if (LODWORD(v342[1]))
  {
    v242 = v342[0];
  }

  else
  {
    v242 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v241, v17, &unk_26288E838, v18, v18, v242, v240, v240, 0);
  DgnString::~DgnString(v342);
  *a4 += v240;
  *a5 += v240;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v243 = 4;
  }

  else
  {
    v243 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3161);
  if (LODWORD(v342[1]))
  {
    v245 = v342[0];
  }

  else
  {
    v245 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v244, v17, &unk_26288E838, v18, v18, v245, v243, v243, 0);
  DgnString::~DgnString(v342);
  *a4 += v243;
  *a5 += v243;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3163);
  if (LODWORD(v342[1]))
  {
    v247 = v342[0];
  }

  else
  {
    v247 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v246, v17, &unk_26288E838, v18, v18, v247, 1, 1, 0);
  DgnString::~DgnString(v342);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3166);
  if (LODWORD(v342[1]))
  {
    v249 = v342[0];
  }

  else
  {
    v249 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v248, v17, &unk_26288E838, v18, v18, v249, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v250 = 12;
  }

  else
  {
    v250 = 16;
  }

  v251 = *(this + 140);
  v252 = *(this + 141);
  v119 = v252 >= v251;
  v253 = v252 - v251;
  if (v119)
  {
    if (v251 > 0)
    {
      v254 = (v251 - 1) + v250 + 1;
    }

    else
    {
      v254 = v250;
    }

    v250 = v254 + v253;
    v251 = 0;
  }

  else
  {
    v254 = v250;
  }

  v255 = v251;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3168);
  if (LODWORD(v342[1]))
  {
    v257 = v342[0];
  }

  else
  {
    v257 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v256, v17, &unk_26288E838, v18, v18, v257, v250, v254, v255);
  DgnString::~DgnString(v342);
  *a4 += v250;
  *a5 += v254;
  *v338 += v255;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3170);
  if (LODWORD(v342[1]))
  {
    v259 = v342[0];
  }

  else
  {
    v259 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v258, v17, &unk_26288E838, v18, v18, v259, 1, 1, 0);
  DgnString::~DgnString(v342);
  ++*a4;
  ++*a5;
  v260 = sizeObject<Germ>(this + 576, 0);
  v261 = sizeObject<Germ>(this + 576, 1);
  v342[0] = 4211081215;
  sizeObject(v342, 2);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3172);
  if (LODWORD(v342[1]))
  {
    v263 = v342[0];
  }

  else
  {
    v263 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v262, v17, &unk_26288E838, v18, v18, v263, v260, v261, 0);
  DgnString::~DgnString(v342);
  *a4 += v260;
  *a5 += v261;
  v264 = SnapTime::sizeObject(this + 592, 0);
  v265 = SnapTime::sizeObject(this + 592, 1);
  v266 = SnapTime::sizeObject(this + 592, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3174);
  if (LODWORD(v342[1]))
  {
    v268 = v342[0];
  }

  else
  {
    v268 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v267, v17, &unk_26288E838, v18, v18, v268, v264, v265, v266);
  DgnString::~DgnString(v342);
  *a4 += v264;
  *a5 += v265;
  *v338 += v266;
  v269 = SnapTime::sizeObject(this + 624, 0);
  v270 = SnapTime::sizeObject(this + 624, 1);
  v271 = SnapTime::sizeObject(this + 624, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3176);
  if (LODWORD(v342[1]))
  {
    v273 = v342[0];
  }

  else
  {
    v273 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v272, v17, &unk_26288E838, v18, v18, v273, v269, v270, v271);
  DgnString::~DgnString(v342);
  *a4 += v269;
  *a5 += v270;
  *v338 += v271;
  v274 = SnapTime::sizeObject(this + 656, 0);
  v275 = SnapTime::sizeObject(this + 656, 1);
  v276 = SnapTime::sizeObject(this + 656, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3178);
  if (LODWORD(v342[1]))
  {
    v278 = v342[0];
  }

  else
  {
    v278 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v277, v17, &unk_26288E838, v18, v18, v278, v274, v275, v276);
  DgnString::~DgnString(v342);
  *a4 += v274;
  *a5 += v275;
  *v338 += v276;
  v279 = SnapTime::sizeObject(this + 688, 0);
  v280 = SnapTime::sizeObject(this + 688, 1);
  v281 = SnapTime::sizeObject(this + 688, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3180);
  if (LODWORD(v342[1]))
  {
    v283 = v342[0];
  }

  else
  {
    v283 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v282, v17, &unk_26288E838, v18, v18, v283, v279, v280, v281);
  DgnString::~DgnString(v342);
  *a4 += v279;
  *a5 += v280;
  *v338 += v281;
  v284 = SnapTime::sizeObject(this + 720, 0);
  v285 = SnapTime::sizeObject(this + 720, 1);
  v286 = SnapTime::sizeObject(this + 720, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3182);
  if (LODWORD(v342[1]))
  {
    v288 = v342[0];
  }

  else
  {
    v288 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v287, v17, &unk_26288E838, v18, v18, v288, v284, v285, v286);
  DgnString::~DgnString(v342);
  *a4 += v284;
  *a5 += v285;
  *v338 += v286;
  v289 = SnapTime::sizeObject(this + 752, 0);
  v290 = SnapTime::sizeObject(this + 752, 1);
  v291 = SnapTime::sizeObject(this + 752, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3184);
  if (LODWORD(v342[1]))
  {
    v293 = v342[0];
  }

  else
  {
    v293 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v292, v17, &unk_26288E838, v18, v18, v293, v289, v290, v291);
  DgnString::~DgnString(v342);
  *a4 += v289;
  *a5 += v290;
  *v338 += v291;
  v294 = SnapTime::sizeObject(this + 784, 0);
  v295 = SnapTime::sizeObject(this + 784, 1);
  v296 = SnapTime::sizeObject(this + 784, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3186);
  if (LODWORD(v342[1]))
  {
    v298 = v342[0];
  }

  else
  {
    v298 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v297, v17, &unk_26288E838, v18, v18, v298, v294, v295, v296);
  DgnString::~DgnString(v342);
  *a4 += v294;
  *a5 += v295;
  *v338 += v296;
  v299 = sizeObject<SnapTime>(this + 816, 0);
  v300 = sizeObject<SnapTime>(this + 816, 1);
  memset(v342, 0, sizeof(v342));
  SnapTime::sizeObject(v342, 2);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3188);
  if (LODWORD(v342[1]))
  {
    v302 = v342[0];
  }

  else
  {
    v302 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v301, v17, &unk_26288E838, v18, v18, v302, v299, v300, 0);
  DgnString::~DgnString(v342);
  *a4 += v299;
  *a5 += v300;
  v303 = SnapTime::sizeObject(this + 832, 0);
  v304 = SnapTime::sizeObject(this + 832, 1);
  v305 = SnapTime::sizeObject(this + 832, 3);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3190);
  if (LODWORD(v342[1]))
  {
    v307 = v342[0];
  }

  else
  {
    v307 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v306, v17, &unk_26288E838, v18, v18, v307, v303, v304, v305);
  DgnString::~DgnString(v342);
  *a4 += v303;
  *a5 += v304;
  *v338 += v305;
  v308 = sizeObject<SnapTime>(this + 864, 0);
  v309 = sizeObject<SnapTime>(this + 864, 1);
  memset(v342, 0, sizeof(v342));
  SnapTime::sizeObject(v342, 2);
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3192);
  if (LODWORD(v342[1]))
  {
    v311 = v342[0];
  }

  else
  {
    v311 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v310, v17, &unk_26288E838, v18, v18, v311, v308, v309, 0);
  DgnString::~DgnString(v342);
  *a4 += v308;
  *a5 += v309;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3194);
  if (LODWORD(v342[1]))
  {
    v313 = v342[0];
  }

  else
  {
    v313 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v312, v17, &unk_26288E838, v18, v18, v313, 1, 1, 0);
  DgnString::~DgnString(v342);
  ++*a4;
  ++*a5;
  v314 = *(this + 111);
  if (v314)
  {
    v341 = 0;
    v342[0] = 0;
    v340 = 0;
    ReproMgr::printSize(v314, 0xFFFFFFFFLL, v17, v342, &v341, &v340);
    *a4 += v342[0];
    *a5 += v341;
    *v338 += v340;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v315 = 4;
  }

  else
  {
    v315 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3196);
  if (LODWORD(v342[1]))
  {
    v317 = v342[0];
  }

  else
  {
    v317 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v316, v17, &unk_26288E838, v18, v18, v317, v315, v315, 0);
  DgnString::~DgnString(v342);
  *a4 += v315;
  *a5 += v315;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3198);
  if (LODWORD(v342[1]))
  {
    v319 = v342[0];
  }

  else
  {
    v319 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v318, v17, &unk_26288E838, v18, v18, v319, 1, 1, 0);
  DgnString::~DgnString(v342);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3200);
  if (LODWORD(v342[1]))
  {
    v321 = v342[0];
  }

  else
  {
    v321 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v320, v17, &unk_26288E838, v18, v18, v321, 1, 1, 0);
  DgnString::~DgnString(v342);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3202);
  if (LODWORD(v342[1]))
  {
    v323 = v342[0];
  }

  else
  {
    v323 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v322, v17, &unk_26288E838, v18, v18, v323, 1, 1, 0);
  DgnString::~DgnString(v342);
  ++*a4;
  ++*a5;
  v324 = *(this + 113);
  if (v324)
  {
    v341 = 0;
    v342[0] = 0;
    v340 = 0;
    RecogStats::printSize(v324, 0xFFFFFFFFLL, v17, v342, &v341, &v340);
    *a4 += v342[0];
    *a5 += v341;
    *v338 += v340;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v325 = 4;
  }

  else
  {
    v325 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3204);
  if (LODWORD(v342[1]))
  {
    v327 = v342[0];
  }

  else
  {
    v327 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v326, v17, &unk_26288E838, v18, v18, v327, v325, v325, 0);
  DgnString::~DgnString(v342);
  *a4 += v325;
  *a5 += v325;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v328 = 4;
  }

  else
  {
    v328 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3206);
  if (LODWORD(v342[1]))
  {
    v330 = v342[0];
  }

  else
  {
    v330 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v329, v17, &unk_26288E838, v18, v18, v330, v328, v328, 0);
  DgnString::~DgnString(v342);
  *a4 += v328;
  *a5 += v328;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v331 = 4;
  }

  else
  {
    v331 = 8;
  }

  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3208);
  if (LODWORD(v342[1]))
  {
    v333 = v342[0];
  }

  else
  {
    v333 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v332, v17, &unk_26288E838, v18, v18, v333, v331, v331, 0);
  DgnString::~DgnString(v342);
  *a4 += v331;
  *a5 += v331;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3210);
  if (LODWORD(v342[1]))
  {
    v335 = v342[0];
  }

  else
  {
    v335 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v334, v17, &unk_26288E838, v18, v18, v335, 4, 4, 0);
  DgnString::~DgnString(v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(v342, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3212);
  if (LODWORD(v342[1]))
  {
    v337 = v342[0];
  }

  else
  {
    v337 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v336, v339, &unk_26288E838, (35 - v339), (35 - v339), v337, *a4, *a5, *v338);
  DgnString::~DgnString(v342);
}