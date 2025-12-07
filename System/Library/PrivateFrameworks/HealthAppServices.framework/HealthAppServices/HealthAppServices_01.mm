unint64_t sub_251309280()
{
  result = qword_27F429CC0;
  if (!qword_27F429CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CC0);
  }

  return result;
}

unint64_t sub_2513092D8()
{
  result = qword_27F429CC8;
  if (!qword_27F429CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CC8);
  }

  return result;
}

unint64_t sub_251309330()
{
  result = qword_280C614F8[0];
  if (!qword_280C614F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C614F8);
  }

  return result;
}

unint64_t sub_251309388()
{
  result = qword_27F429CD0;
  if (!qword_27F429CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CD0);
  }

  return result;
}

unint64_t sub_2513093E0()
{
  result = qword_27F429CD8;
  if (!qword_27F429CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CD8);
  }

  return result;
}

unint64_t sub_251309438()
{
  result = qword_27F429CE0;
  if (!qword_27F429CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CE0);
  }

  return result;
}

unint64_t sub_251309490()
{
  result = qword_27F429CE8;
  if (!qword_27F429CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429CE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HAUserActivity.RestorationInfoKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HAUserActivity.RestorationInfoKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HAUserActivity.UserActivityVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HAUserActivity.UserActivityVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppURLRouting(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppURLRouting(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t static URLType.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLType.DataTypeNavigation(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for URLType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static URLType.DataTypeNavigation.allData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25130EF24();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t PluginURLType.bundleName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_251309A48(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25130F2D4();
  }
}

BOOL static AppURLRouting.useCurrentContext(url:)()
{
  sub_25130EE44();
  sub_2512F8818();
  v0 = sub_25130F174();

  return v0 == 0;
}

id static AppURLRouting.determineURLType(url:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25130EEC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v144 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25130BFD4(0, &qword_27F429C18, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v7 - 8);
  v146 = &v140 - v8;
  v155 = sub_25130ED24();
  v153 = *(v155 - 8);
  v9 = MEMORY[0x28223BE20](v155);
  v154 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v149 = &v140 - v11;
  sub_25130BFD4(0, &qword_27F429C70, MEMORY[0x277CC8958]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v140 - v13;
  v15 = sub_25130ED84();
  v151 = *(v15 - 8);
  v152 = v15;
  MEMORY[0x28223BE20](v15);
  v150 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HAURLValidator(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HAURL(0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v148 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v140 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v140 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v140 - v29;
  v145 = v5;
  v31 = *(v5 + 16);
  v31(&v140 - v29, a1, v4);
  v31(v19, a1, v4);
  if (HAURLValidator.isCHRURL()())
  {
    sub_25130C028(v19, type metadata accessor for HAURLValidator);
    sub_25130C028(v30, type metadata accessor for HAURL);
    strcpy(a2, "HealthRecords");
    *(a2 + 7) = -4864;
    v32 = type metadata accessor for URLType(0);
    v33 = a2;
LABEL_11:
    v42 = v32;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    v43 = *(*(v42 - 8) + 56);
    v44 = v33;
    return v43(v44, 0, 1, v42);
  }

  v147 = v19;
  v142 = a2;
  v143 = v30;
  v34 = sub_25130EE54();
  v35 = [v34 hk_isRewrittenEUDigitalCOVIDCertificateQRCodeURL];

  if (v35)
  {
    v36 = v147;
LABEL_8:
    sub_25130C028(v36, type metadata accessor for HAURLValidator);
    sub_25130C028(v143, type metadata accessor for HAURL);
    v40 = 0x655268746C616548;
    v41 = 0xED00007364726F63;
LABEL_9:
    v33 = v142;
    *v142 = v40;
    v33[1] = v41;
LABEL_10:
    v32 = type metadata accessor for URLType(0);
    goto LABEL_11;
  }

  v141 = a1;
  v37 = v147;
  if (HAURLValidator.isSmartHealthCardFile()() || (v38 = sub_25130EE54(), v39 = [v38 hk_isRewrittenHealthCardQRCodeURL], v38, v39))
  {
    v36 = v37;
    goto LABEL_8;
  }

  v46 = objc_opt_self();
  v140 = [v46 electrocardiogramType];
  v31(v28, v37, v4);
  v47 = HAURL.objectType.getter();
  if (v47)
  {
    v48 = v47;
    sub_25130C0D0();
    v49 = v140;
    v140 = v46;
    v50 = v37;
    v51 = v49;
    v52 = sub_25130F134();
    sub_25130C028(v28, type metadata accessor for HAURL);

    v37 = v50;
    v46 = v140;
    if (v52)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_25130C028(v28, type metadata accessor for HAURL);
  }

  v53 = [v46 atrialFibrillationEventType];
  v31(v25, v37, v4);
  v54 = HAURL.objectType.getter();
  if (!v54)
  {
    sub_25130C028(v25, type metadata accessor for HAURL);
LABEL_24:

    goto LABEL_25;
  }

  v55 = v54;
  if (!v53)
  {
    sub_25130C028(v25, type metadata accessor for HAURL);
    v53 = v55;
    goto LABEL_24;
  }

  sub_25130C0D0();
  v56 = v53;
  v57 = sub_25130F134();
  sub_25130C028(v25, type metadata accessor for HAURL);

  if (v57)
  {
LABEL_21:
    sub_25130C028(v37, type metadata accessor for HAURLValidator);
    sub_25130C028(v143, type metadata accessor for HAURL);
    v40 = 0x7472616548;
    v41 = 0xE500000000000000;
    goto LABEL_9;
  }

LABEL_25:
  v58 = objc_opt_self();
  v59 = [v58 healthAppSummaryHostName];
  v60 = sub_25130EFB4();
  v62 = v61;

  LOBYTE(v59) = sub_25130EAE0(v37, v60, v62);

  if (v59)
  {
    goto LABEL_58;
  }

  v63 = [v58 healthAppBrowseHostName];
  v64 = sub_25130EFB4();
  v66 = v65;

  LOBYTE(v63) = sub_25130EAE0(v37, v64, v66);

  if (v63)
  {
    sub_25130ED44();
    v68 = v151;
    v67 = v152;
    if ((*(v151 + 48))(v14, 1, v152) == 1)
    {
      sub_25130C028(v37, type metadata accessor for HAURLValidator);
      sub_25130C028(v143, type metadata accessor for HAURL);
      sub_25130C804(v14, &qword_27F429C70, MEMORY[0x277CC8958]);
LABEL_46:
      v42 = type metadata accessor for URLType(0);
      v33 = v142;
      goto LABEL_12;
    }

    v73 = v150;
    (*(v68 + 32))(v150, v14, v67);
    v74 = sub_25130ED34();
    if (v74)
    {
      v4 = v74;
      v31 = *(v74 + 16);
      if (v31)
      {
        v58 = 0;
        v75 = (v153 + 8);
        while (1)
        {
          if (v58 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_67;
          }

          (*(v153 + 16))(v154, v4 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v58, v155);
          if (sub_25130ED04() == 0x7972657571 && v76 == 0xE500000000000000)
          {
            break;
          }

          v77 = sub_25130F2D4();

          if (v77)
          {
            goto LABEL_50;
          }

          ++v58;
          (*v75)(v154, v155);
          if (v31 == v58)
          {
            goto LABEL_40;
          }
        }

LABEL_50:

        v83 = v153 + 32;
        v84 = v149;
        v85 = v155;
        (*(v153 + 32))(v149, v154, v155);
        v86 = sub_25130ED14();
        v88 = v87;
        (*(v83 - 24))(v84, v85);
        (*(v151 + 8))(v150, v152);
        sub_25130C028(v37, type metadata accessor for HAURLValidator);
        sub_25130C028(v143, type metadata accessor for HAURL);
        if (!v88)
        {
          goto LABEL_46;
        }

        goto LABEL_51;
      }

LABEL_40:

      (*(v151 + 8))(v150, v152);
    }

    else
    {
      (*(v68 + 8))(v73, v67);
    }

    sub_25130C028(v37, type metadata accessor for HAURLValidator);
    sub_25130C028(v143, type metadata accessor for HAURL);
    goto LABEL_46;
  }

  v69 = [v58 healthAppSharingInviteFlowPath];
  v70 = sub_25130EFB4();
  v72 = v71;

  if (sub_25130CA14(v37, v70, v72))
  {

LABEL_58:
    sub_25130C028(v37, type metadata accessor for HAURLValidator);
    sub_25130C028(v143, type metadata accessor for HAURL);
    v42 = type metadata accessor for URLType(0);
    v33 = v142;
    goto LABEL_12;
  }

  v78 = sub_25130EAE0(v37, v70, v72);

  if (v78)
  {
    goto LABEL_58;
  }

  if (HAURLValidator.isSharingProfileURL()())
  {
    goto LABEL_58;
  }

  v79 = [v58 healthTrendsHostName];
  v80 = sub_25130EFB4();
  v82 = v81;

  LOBYTE(v79) = sub_25130EAE0(v37, v80, v82);

  if ((v79 & 1) != 0 || sub_25130D7E4())
  {
    goto LABEL_58;
  }

  v90 = v148;
  v31(v148, v37, v4);
  v91 = HAURL.objectType.getter();
  sub_25130C028(v90, type metadata accessor for HAURL);
  if (v91)
  {

    v92 = sub_25130CBC0();
    v93 = v143;
    if (v92)
    {
      v94 = v146;
      HAURL.objectTypeAllDataNavigationSampleUUID.getter(v146);
      sub_25130C028(v37, type metadata accessor for HAURLValidator);
      sub_25130C028(v93, type metadata accessor for HAURL);
      v33 = v142;
      sub_25130C860(v94, v142, &qword_27F429C18, MEMORY[0x277CC95F0]);
      v95 = type metadata accessor for URLType.DataTypeNavigation(0);
      (*(*(v95 - 8) + 56))(v33, 0, 1, v95);
    }

    else
    {
      sub_25130C028(v37, type metadata accessor for HAURLValidator);
      sub_25130C028(v93, type metadata accessor for HAURL);
      v100 = type metadata accessor for URLType.DataTypeNavigation(0);
      v33 = v142;
      (*(*(v100 - 8) + 56))(v142, 1, 1, v100);
    }

    v42 = type metadata accessor for URLType(0);
    goto LABEL_12;
  }

  v96 = [v58 categoryTypeHostName];
  v97 = sub_25130EFB4();
  v99 = v98;

  LOBYTE(v96) = sub_25130EAE0(v37, v97, v99);

  if (v96)
  {
    goto LABEL_58;
  }

  if (HAURLValidator.isEmergencyOnboardingURL()())
  {
LABEL_62:
    sub_25130C028(v147, type metadata accessor for HAURLValidator);
    sub_25130C028(v143, type metadata accessor for HAURL);
    v40 = 0x797465666153;
    v41 = 0xE600000000000000;
    goto LABEL_9;
  }

  if (HAURLValidator.isMedicalIDURL()() || (v101 = [v58 healthProfileResourceSpecifier], v102 = sub_25130EFB4(), v104 = v103, v101, LOBYTE(v101) = sub_25130EAE0(v147, v102, v104), , (v101 & 1) != 0))
  {
LABEL_94:
    sub_25130C028(v147, type metadata accessor for HAURLValidator);
    sub_25130C028(v143, type metadata accessor for HAURL);
    v42 = type metadata accessor for URLType(0);
    v33 = v142;
    goto LABEL_12;
  }

LABEL_67:
  if (HAURLValidator.isHealthChecklistURL()())
  {
    goto LABEL_62;
  }

  if (sub_25130E21C())
  {
    sub_25130C028(v147, type metadata accessor for HAURLValidator);
    sub_25130C028(v143, type metadata accessor for HAURL);
    v40 = 0x73656C69666F7250;
    v41 = 0xE800000000000000;
    goto LABEL_9;
  }

  if (HAURLValidator.isResearchStudiesURL()())
  {
    v105 = (sub_25130EE34() + 16);
    if (*v105)
    {
      v106 = &v105[2 * *v105];
      v108 = *v106;
      v107 = v106[1];
    }

    else
    {
      v108 = 0;
      v107 = 0;
    }

    sub_25130C028(v147, type metadata accessor for HAURLValidator);
    sub_25130C028(v143, type metadata accessor for HAURL);
    v33 = v142;
    *v142 = v108;
    v33[1] = v107;
    v42 = type metadata accessor for URLType(0);
    goto LABEL_12;
  }

  if (sub_25130E490())
  {
    v109 = (sub_25130EE34() + 16);
    if (*v109)
    {
      v110 = &v109[2 * *v109];
      v86 = *v110;
      v88 = v110[1];
    }

    else
    {
      v86 = 0;
      v88 = 0;
    }

    v119 = [v58 authorizationManagementHostName];
    v120 = sub_25130EFB4();
    v122 = v121;

    if (v88)
    {
      if (v86 == v120 && v88 == v122)
      {

        sub_25130C028(v147, type metadata accessor for HAURLValidator);
        sub_25130C028(v143, type metadata accessor for HAURL);
LABEL_89:

        v86 = 0;
        v88 = 0;
        goto LABEL_51;
      }

      v123 = sub_25130F2D4();

      sub_25130C028(v147, type metadata accessor for HAURLValidator);
      sub_25130C028(v143, type metadata accessor for HAURL);
      if (v123)
      {
        goto LABEL_89;
      }
    }

    else
    {
      sub_25130C028(v147, type metadata accessor for HAURLValidator);
      sub_25130C028(v143, type metadata accessor for HAURL);
    }

LABEL_51:
    v89 = v142;
    *v142 = v86;
    v89[1] = v88;
    v42 = type metadata accessor for URLType(0);
LABEL_52:
    swift_storeEnumTagMultiPayload();
    v43 = *(*(v42 - 8) + 56);
    v44 = v89;
    return v43(v44, 0, 1, v42);
  }

  v111 = [v58 sharingOverviewHostName];
  v112 = sub_25130EFB4();
  v114 = v113;

  LOBYTE(v111) = sub_25130EAE0(v147, v112, v114);

  if (v111)
  {
    goto LABEL_94;
  }

  v115 = HAURL.pluginBundleName.getter();
  if (v116)
  {
    v117 = v115;
    v118 = v116;
    sub_25130C028(v147, type metadata accessor for HAURLValidator);
    sub_25130C028(v143, type metadata accessor for HAURL);
    v89 = v142;
    *v142 = v117;
    v89[1] = v118;
    v42 = type metadata accessor for URLType(0);
    goto LABEL_52;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v124 = result;
    v125 = [result isAppleInternalInstall];

    if (v125 && sub_25130EAE0(v147, 0xD000000000000010, 0x8000000251311F40))
    {
      goto LABEL_94;
    }

    if (sub_25130E8AC())
    {
      sub_25130C028(v147, type metadata accessor for HAURLValidator);
      sub_25130C028(v143, type metadata accessor for HAURL);
      v33 = v142;
      *v142 = 0xD000000000000015;
      v33[1] = 0x8000000251311F20;
      goto LABEL_10;
    }

    if (qword_280C61590 != -1)
    {
      swift_once();
    }

    v126 = sub_25130EF54();
    __swift_project_value_buffer(v126, qword_280C61668);
    v31(v144, v141, v4);
    v127 = sub_25130EF34();
    v128 = sub_25130F114();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v129 = 136446466;
      v156 = &type metadata for AppURLRouting;
      v157 = v130;
      sub_25130C088();
      v131 = sub_25130EFD4();
      v133 = sub_251302D38(v131, v132, &v157);

      *(v129 + 4) = v133;
      *(v129 + 12) = 2082;
      v134 = v144;
      v135 = sub_25130EE24();
      v137 = v136;
      (*(v145 + 8))(v134, v4);
      v138 = sub_251302D38(v135, v137, &v157);

      *(v129 + 14) = v138;
      _os_log_impl(&dword_2512F1000, v127, v128, "[%{public}s]: could not determine URL type for: %{public}s\n", v129, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253071680](v130, -1, -1);
      MEMORY[0x253071680](v129, -1, -1);
    }

    else
    {

      (*(v145 + 8))(v144, v4);
    }

    sub_25130C028(v147, type metadata accessor for HAURLValidator);
    sub_25130C028(v143, type metadata accessor for HAURL);
    v139 = type metadata accessor for URLType(0);
    return (*(*(v139 - 8) + 56))(v142, 1, 1, v139);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s17HealthAppServices7URLTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = a2;
  v55 = type metadata accessor for URLType.DataTypeNavigation(0);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25130BFD4(0, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v50 - v4;
  sub_25130C660(0, &qword_27F429D60, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
  v6 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v50 - v7;
  v8 = type metadata accessor for URLType(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v50 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v50 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v50 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - v21;
  sub_25130C6C4(0, &qword_27F429D68, type metadata accessor for URLType);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v50 - v25;
  v27 = (&v50 + *(v24 + 56) - v25);
  sub_25130C724(v56, &v50 - v25, type metadata accessor for URLType);
  sub_25130C724(v57, v27, type metadata accessor for URLType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_25130C724(v26, v20, type metadata accessor for URLType);
      v38 = *v20;
      v37 = v20[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_43;
      }

      if (v38 == *v27 && v37 == v27[1])
      {
        goto LABEL_62;
      }

      v40 = sub_25130F2D4();

      if ((v40 & 1) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_63;
    case 2u:
      sub_25130C724(v26, v17, type metadata accessor for URLType);
      v33 = *v17;
      v32 = v17[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_43;
      }

      v34 = *v27;
      v30 = v27[1];
      goto LABEL_28;
    case 3u:
      sub_25130C724(v26, v14, type metadata accessor for URLType);
      v33 = *v14;
      v32 = v14[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_43;
      }

      v30 = v27[1];
      if (!v32)
      {
        goto LABEL_57;
      }

      if (!v30)
      {
        goto LABEL_58;
      }

      v34 = *v27;
LABEL_28:
      if (v33 != v34 || v32 != v30)
      {
        goto LABEL_32;
      }

      goto LABEL_62;
    case 4u:
      sub_25130C724(v26, v11, type metadata accessor for URLType);
      v29 = *v11;
      v28 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_43:

        goto LABEL_44;
      }

      v30 = v27[1];
      if (v28)
      {
        if (v30)
        {
          if (v29 == *v27 && v28 == v30)
          {
LABEL_62:
          }

          else
          {
LABEL_32:
            v36 = sub_25130F2D4();

            if ((v36 & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
LABEL_57:
        if (!v30)
        {
          goto LABEL_63;
        }
      }

LABEL_58:

      goto LABEL_67;
    case 5u:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    default:
      sub_25130C724(v26, v22, type metadata accessor for URLType);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_25130C804(v22, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
LABEL_44:
        sub_25130C78C(v26);
        return 0;
      }

      v42 = *(v6 + 48);
      v43 = v54;
      sub_25130C860(v22, v54, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
      sub_25130C860(v27, v43 + v42, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
      v44 = *(v53 + 48);
      v45 = v55;
      if (v44(v43, 1, v55) != 1)
      {
        v46 = v52;
        sub_25130C8CC(v43, v52, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
        if (v44(v43 + v42, 1, v45) != 1)
        {
          v47 = v43 + v42;
          v48 = v51;
          sub_25130C938(v47, v51);
          v49 = _s17HealthAppServices7URLTypeO18DataTypeNavigationO2eeoiySbAE_AEtFZ_0(v46, v48);
          sub_25130C028(v48, type metadata accessor for URLType.DataTypeNavigation);
          sub_25130C028(v46, type metadata accessor for URLType.DataTypeNavigation);
          sub_25130C804(v43, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
          if (v49)
          {
            goto LABEL_63;
          }

LABEL_67:
          sub_25130C028(v26, type metadata accessor for URLType);
          return 0;
        }

        sub_25130C028(v46, type metadata accessor for URLType.DataTypeNavigation);
LABEL_66:
        sub_25130C5AC(v43, &qword_27F429D60, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
        goto LABEL_67;
      }

      if (v44(v43 + v42, 1, v45) != 1)
      {
        goto LABEL_66;
      }

      sub_25130C804(v43, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
LABEL_63:
      sub_25130C028(v26, type metadata accessor for URLType);
      return 1;
  }
}

BOOL _s17HealthAppServices7URLTypeO18DataTypeNavigationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_25130EF24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CC95F0];
  sub_25130BFD4(0, &qword_27F429C18, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v7 - 8);
  v28 = &v26 - v8;
  sub_25130C660(0, &qword_27F429D48, &qword_27F429C18, v6);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  sub_25130C6C4(0, &qword_27F429D50, type metadata accessor for URLType.DataTypeNavigation);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = *(v14 + 56);
  sub_25130C724(a1, &v26 - v15, type metadata accessor for URLType.DataTypeNavigation);
  sub_25130C724(v29, &v16[v17], type metadata accessor for URLType.DataTypeNavigation);
  v18 = *(v10 + 56);
  sub_25130C860(v16, v12, &qword_27F429C18, v6);
  sub_25130C860(&v16[v17], &v12[v18], &qword_27F429C18, v6);
  v19 = *(v4 + 48);
  if (v19(v12, 1, v3) != 1)
  {
    v20 = v28;
    sub_25130C8CC(v12, v28, &qword_27F429C18, MEMORY[0x277CC95F0]);
    if (v19(&v12[v18], 1, v3) != 1)
    {
      v22 = &v12[v18];
      v23 = v27;
      (*(v4 + 32))(v27, v22, v3);
      sub_25130C608();
      v24 = sub_25130EF84();
      v25 = *(v4 + 8);
      v25(v23, v3);
      v25(v20, v3);
      sub_25130C804(v12, &qword_27F429C18, MEMORY[0x277CC95F0]);
      return (v24 & 1) != 0;
    }

    (*(v4 + 8))(v20, v3);
LABEL_6:
    sub_25130C5AC(v12, &qword_27F429D48, &qword_27F429C18, MEMORY[0x277CC95F0]);
    return 0;
  }

  if (v19(&v12[v18], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_25130C804(v12, &qword_27F429C18, MEMORY[0x277CC95F0]);
  return 1;
}

void sub_25130BFD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25130F144();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25130C028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25130C088()
{
  result = qword_27F429CF0;
  if (!qword_27F429CF0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F429CF0);
  }

  return result;
}

unint64_t sub_25130C0D0()
{
  result = qword_27F429CF8;
  if (!qword_27F429CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F429CF8);
  }

  return result;
}

unint64_t sub_25130C120()
{
  result = qword_27F429D00;
  if (!qword_27F429D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429D00);
  }

  return result;
}

unint64_t sub_25130C184()
{
  result = qword_27F429D08;
  if (!qword_27F429D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429D08);
  }

  return result;
}

void sub_25130C240(uint64_t a1)
{
  sub_25130BFD4(319, &qword_27F429D20, type metadata accessor for URLType.DataTypeNavigation);
  if (v1 <= 0x3F)
  {
    sub_25130C2EC();
    if (v2 <= 0x3F)
    {
      sub_25130C31C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_25130C2EC()
{
  result = qword_27F429D28;
  if (!qword_27F429D28)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F429D28);
  }

  return result;
}

void sub_25130C31C()
{
  if (!qword_27F429C10)
  {
    v0 = sub_25130F144();
    if (!v1)
    {
      atomic_store(v0, &qword_27F429C10);
    }
  }
}

uint64_t sub_25130C36C(uint64_t a1, uint64_t a2)
{
  sub_25130C3D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_25130C3D8()
{
  if (!qword_27F429D30)
  {
    sub_25130BFD4(0, &qword_27F429C18, MEMORY[0x277CC95F0]);
    if (!v1)
    {
      atomic_store(v0, &qword_27F429D30);
    }
  }
}

uint64_t sub_25130C43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25130C3D8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_25130C4B8(uint64_t a1)
{
  sub_25130C3D8();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    sub_25130BFD4(319, &qword_27F429C18, MEMORY[0x277CC95F0]);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

uint64_t sub_25130C5AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25130C660(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_25130C608()
{
  result = qword_27F429D58;
  if (!qword_27F429D58)
  {
    sub_25130EF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429D58);
  }

  return result;
}

void sub_25130C660(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_25130BFD4(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_25130C6C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_25130C724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25130C78C(uint64_t a1)
{
  sub_25130C6C4(0, &qword_27F429D68, type metadata accessor for URLType);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25130C804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25130BFD4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25130C860(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25130BFD4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25130C8CC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25130BFD4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25130C938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLType.DataTypeNavigation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HAURLValidator.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25130EEC4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25130CA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_25130EEA4();
  if (v4)
  {
    v16 = v3;
    v17 = v4;
    v5 = objc_opt_self();
    v6 = [v5 externalHealthAppURLScheme];
    v7 = sub_25130EFB4();
    v9 = v8;

    sub_2512F8818();
    v10 = sub_25130F174();

    if (!v10)
    {
      v13 = [v5 externalHealthAppURLHost];
      sub_25130EFB4();

      sub_25130EE84();
      if (v14)
      {
        v15 = sub_25130F174();

        if (!v15)
        {
          sub_25130EE94();
          v11 = sub_25130F194();

          return v11 & 1;
        }
      }

      else
      {
      }
    }
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_25130CBC0()
{
  v1 = v0;
  v2 = type metadata accessor for HAURL(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25130EEA4();
  if (!v6)
  {
    goto LABEL_23;
  }

  v33[2] = v5;
  v33[3] = v6;
  v7 = objc_opt_self();
  v8 = [v7 internalHealthAppURLScheme];
  v9 = sub_25130EFB4();
  v11 = v10;

  v33[0] = v9;
  v33[1] = v11;
  sub_2512F8818();
  v12 = sub_25130F174();

  if (v12)
  {
    goto LABEL_23;
  }

  v13 = sub_25130EE84();
  v15 = v14;
  v16 = [v7 sampleTypeHostName];
  v17 = sub_25130EFB4();
  v19 = v18;

  if (!v15)
  {
    goto LABEL_12;
  }

  if (v13 == v17 && v15 == v19)
  {
  }

  else
  {
    v20 = sub_25130F2D4();

    if ((v20 & 1) == 0)
    {
LABEL_23:
      v31 = 0;
      return v31 & 1;
    }
  }

  v21 = sub_25130EEC4();
  (*(*(v21 - 8) + 16))(v4, v1, v21);
  v22 = HAURL.objectType.getter();
  if (!v22)
  {
LABEL_22:
    sub_25130EC04(v4);
    goto LABEL_23;
  }

  v23 = sub_25130EE34();
  v24 = v23;
  if (v23[2] < 3uLL)
  {
    sub_25130EC04(v4);
LABEL_12:

    goto LABEL_23;
  }

  if ((v23[4] != 47 || v23[5] != 0xE100000000000000) && (sub_25130F2D4() & 1) == 0)
  {

    goto LABEL_22;
  }

  v26 = v24[8];
  v25 = v24[9];

  v27 = [v7 sampleTypeAllDataPath];
  v28 = sub_25130EFB4();
  v30 = v29;

  if (v26 == v28 && v25 == v30)
  {
    v31 = 1;
  }

  else
  {
    v31 = sub_25130F2D4();
  }

  sub_25130EC04(v4);
  return v31 & 1;
}

Swift::Bool __swiftcall HAURLValidator.isCHRURL()()
{
  v1 = v0;
  sub_25130EEA4();
  if (v2)
  {
    sub_2512F8818();
    v3 = sub_25130F174();

    if (!v3)
    {
      sub_25130EE84();
      if (v9)
      {
        v10 = sub_25130F174();

        if (!v10)
        {
          return 1;
        }
      }
    }
  }

  sub_25130EEA4();
  if (v4)
  {
    sub_2512F8818();
    v5 = sub_25130F174();

    if (!v5)
    {
      sub_25130EE84();
      if (v11)
      {
        v12 = sub_25130F174();

        if (!v12)
        {
          sub_25130EE94();
          v13 = sub_25130F194();

          if (v13)
          {
            return 1;
          }
        }
      }
    }
  }

  if (sub_25130EAE0(v1, 0xD000000000000010, 0x8000000251311FA0) || sub_25130EAE0(v1, 0xD000000000000011, 0x8000000251311FC0) || sub_25130EAE0(v1, 0xD00000000000001DLL, 0x8000000251311FE0))
  {
    return 1;
  }

  sub_25130EEA4();
  if (!v6)
  {
    return 0;
  }

  sub_2512F8818();
  v7 = sub_25130F174();

  if (v7)
  {
    return 0;
  }

  sub_25130EE84();
  if (!v14)
  {
    return 0;
  }

  v15 = sub_25130F174();

  return v15 == 0;
}

Swift::Bool __swiftcall HAURLValidator.isSmartHealthCardFile()()
{
  if (sub_25130EE14() & 1) != 0 && (sub_25130EE44(), v0 = sub_25130F084(), , (v0))
  {
    if (qword_280C61590 != -1)
    {
      swift_once();
    }

    v1 = sub_25130EF54();
    __swift_project_value_buffer(v1, qword_280C61668);
    v2 = sub_25130EF34();
    v3 = sub_25130F124();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2512F1000, v2, v3, "[URL+ValidateURLs]: looks like this is a SMART Health Card", v4, 2u);
      MEMORY[0x253071680](v4, -1, -1);
    }

    return 1;
  }

  else
  {
    if (qword_280C61590 != -1)
    {
      swift_once();
    }

    v6 = sub_25130EF54();
    __swift_project_value_buffer(v6, qword_280C61668);
    v7 = sub_25130EF34();
    v8 = sub_25130F104();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_251302D38(0xD000000000000012, 0x8000000251312030, &v11);
      _os_log_impl(&dword_2512F1000, v7, v8, "[URL+ValidateURLs]: not a file URL and/or doesn't end with %s: not a SMART Health Card", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x253071680](v10, -1, -1);
      MEMORY[0x253071680](v9, -1, -1);
    }

    return 0;
  }
}

Swift::Bool __swiftcall HAURLValidator.hasObjectType(_:)(HKObjectType_optional a1)
{
  isa = a1.value.super.isa;
  v3 = type metadata accessor for HAURL(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25130EEC4();
  (*(*(v6 - 8) + 16))(v5, v1, v6);
  v7 = HAURL.objectType.getter();
  if (v7)
  {
    v8 = v7;
    if (isa)
    {
      sub_25130C0D0();
      v9 = isa;
      LOBYTE(isa) = sub_25130F134();
      sub_25130EC04(v5);
    }

    else
    {
      sub_25130EC04(v5);
    }
  }

  else
  {
    sub_25130EC04(v5);
    LOBYTE(isa) = 0;
  }

  return isa & 1;
}

Swift::Bool __swiftcall HAURLValidator.isSharingInviteFlowURL()()
{
  v1 = [objc_opt_self() healthAppSharingInviteFlowPath];
  v2 = sub_25130EFB4();
  v4 = v3;

  v5 = (sub_25130CA14(v0, v2, v4) & 1) != 0 || sub_25130EAE0(v0, v2, v4);

  return v5;
}

Swift::Bool __swiftcall HAURLValidator.isSharingProfileURL()()
{
  v1 = objc_opt_self();
  v2 = [v1 healthAppSharingProfilePath];
  v3 = sub_25130EFB4();
  v5 = v4;

  if (sub_25130CA14(v0, v3, v5))
  {

    return 1;
  }

  v7 = sub_25130EE54();
  v8 = [v7 resourceSpecifier];

  if (v8)
  {
    sub_25130EFB4();
    v10 = v9;

    sub_25130EEA4();
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = 0;
    sub_25130EEA4();
    if (!v12)
    {
LABEL_8:

LABEL_9:

      return 0;
    }
  }

  v13 = [v1 internalHealthAppURLScheme];
  sub_25130EFB4();

  sub_2512F8818();
  v14 = sub_25130F174();

  if (v14)
  {
    goto LABEL_8;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  MEMORY[0x253070D80](v3, v5);

  v15 = sub_25130F074();

  return (v15 & 1) != 0;
}

BOOL sub_25130D7E4()
{
  v0 = sub_25130EEA4();
  if (v1)
  {
    v16 = v0;
    v17 = v1;
    v2 = objc_opt_self();
    v3 = [v2 internalHealthAppURLScheme];
    v4 = sub_25130EFB4();
    v6 = v5;

    v15 = v4;
    sub_2512F8818();
    v7 = sub_25130F174();

    if (!v7)
    {
      v8 = sub_25130EE34();
      if (v8[2] == 2 && (v8[4] == 47 && v8[5] == 0xE100000000000000 || (sub_25130F2D4() & 1) != 0))
      {

        v9 = [v2 healthAppNotificationSettingsPath];
        sub_25130EFB4();

        v10 = [v2 healthProfileResourceSpecifier];
        sub_25130EFB4();

        sub_25130EE84();
        if (v11)
        {
          v12 = sub_25130F174();

          if (!v12)
          {
            v13 = sub_25130F174();

            return v13 == 0;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

Swift::Bool __swiftcall HAURLValidator.hasObjectType()()
{
  v1 = type metadata accessor for HAURL(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25130EEC4();
  (*(*(v4 - 8) + 16))(v3, v0, v4);
  v5 = HAURL.objectType.getter();
  sub_25130EC04(v3);
  if (v5)
  {
  }

  return v5 != 0;
}

Swift::Bool __swiftcall HAURLValidator.isEmergencyOnboardingURL()()
{
  v0 = sub_25130EEA4();
  if (v1)
  {
    v15 = v0;
    v16 = v1;
    v2 = objc_opt_self();
    v3 = [v2 internalHealthAppURLScheme];
    v4 = sub_25130EFB4();
    v6 = v5;

    v14 = v4;
    sub_2512F8818();
    v7 = sub_25130F174();

    if (!v7)
    {
      v8 = sub_25130EE34();
      if (v8[2] == 2 && (v8[4] == 47 && v8[5] == 0xE100000000000000 || (sub_25130F2D4() & 1) != 0))
      {

        v9 = [v2 healthAppMedicalIDPath];
        sub_25130EFB4();

        sub_25130EE84();
        if (v10)
        {
          v11 = sub_25130F174();

          if (!v11)
          {
            v12 = sub_25130F174();

            return v12 == 0;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

Swift::Bool __swiftcall HAURLValidator.isMedicalIDURL()()
{
  v0 = sub_25130EE54();
  v1 = [v0 resourceSpecifier];

  if (v1)
  {
    sub_25130EFB4();
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_self();
  v5 = [v4 healthAppMedicalIDPath];
  sub_25130EFB4();

  sub_25130EEA4();
  if (!v6 || (v7 = [v4 internalHealthAppURLScheme], sub_25130EFB4(), v7, sub_2512F8818(), v8 = sub_25130F174(), , , v8))
  {

LABEL_7:

    return 0;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  v10 = sub_25130F174();

  return !v10;
}

Swift::Bool __swiftcall HAURLValidator.isHealthChecklistURL()()
{
  v0 = sub_25130EEA4();
  if (!v1)
  {
    goto LABEL_3;
  }

  v35 = v0;
  v36 = v1;
  v2 = objc_opt_self();
  v3 = [v2 internalHealthAppURLScheme];
  v4 = sub_25130EFB4();
  v6 = v5;

  v33 = v4;
  v34 = v6;
  sub_2512F8818();
  v7 = sub_25130F174();

  if (v7)
  {
    goto LABEL_3;
  }

  v9 = sub_25130EE84();
  v11 = v10;
  v12 = [v2 healthAppHealthChecklistHostName];
  v13 = sub_25130EFB4();
  v15 = v14;

  if (v11)
  {
    if (v9 == v13 && v11 == v15)
    {

      LOBYTE(v8) = 1;
      return v8;
    }

    v16 = sub_25130F2D4();

    if (v16)
    {
      LOBYTE(v8) = 1;
      return v8;
    }
  }

  else
  {
  }

  v17 = sub_25130EE84();
  v19 = v18;
  v20 = [v2 healthProfileResourceSpecifier];
  v21 = sub_25130EFB4();
  v23 = v22;

  if (!v19)
  {
    goto LABEL_15;
  }

  if (v17 == v21 && v19 == v23)
  {
  }

  else
  {
    v24 = sub_25130F2D4();

    if ((v24 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v25 = *(sub_25130EE34() + 16);

  if (v25 < 2)
  {
    goto LABEL_3;
  }

  v26 = sub_25130EE34();
  if (!v26[2])
  {
LABEL_15:

    goto LABEL_3;
  }

  v28 = v26[4];
  v27 = v26[5];

  if (v28 == 47 && v27 == 0xE100000000000000)
  {

    goto LABEL_23;
  }

  v29 = sub_25130F2D4();

  if ((v29 & 1) == 0)
  {
LABEL_3:
    LOBYTE(v8) = 0;
    return v8;
  }

LABEL_23:
  v8 = sub_25130EE34();
  if (*(v8 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {

    v30 = [v2 healthAppHealthChecklistHostName];
    sub_25130EFB4();

    v31 = sub_25130F174();

    LOBYTE(v8) = v31 == 0;
  }

  return v8;
}

uint64_t sub_25130E21C()
{
  sub_25130EEA4();
  if (v0 && (v1 = [objc_opt_self() internalHealthAppURLScheme], sub_25130EFB4(), v1, sub_2512F8818(), v2 = sub_25130F174(), , , !v2) && (v5 = sub_25130EE84(), v6))
  {
    if (v5 == 0x656C69666F7270 && v6 == 0xE700000000000000)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_25130F2D4();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

Swift::Bool __swiftcall HAURLValidator.isResearchStudiesURL()()
{
  v0 = sub_25130EE54();
  v1 = [v0 resourceSpecifier];

  if (v1)
  {
    sub_25130EFB4();
    v3 = v2;

    sub_25130EEA4();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    sub_25130EEA4();
    if (!v5)
    {
LABEL_6:

      return 0;
    }
  }

  v6 = [objc_opt_self() internalHealthAppURLScheme];
  sub_25130EFB4();

  sub_2512F8818();
  v7 = sub_25130F174();

  if (v7)
  {
    goto LABEL_6;
  }

  if (!v3)
  {
    return 0;
  }

  v9 = sub_25130F074();

  return (v9 & 1) != 0;
}

void *sub_25130E490()
{
  v0 = objc_opt_self();
  v1 = [v0 authorizationManagementHostName];
  v2 = sub_25130EFB4();
  v4 = v3;

  sub_25130EEA4();
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [v0 internalHealthAppURLScheme];
  v7 = sub_25130EFB4();
  v9 = v8;

  sub_2512F8818();
  v10 = sub_25130F174();

  if (v10)
  {
    goto LABEL_3;
  }

  v13 = sub_25130EE74();
  if (!v14)
  {
    goto LABEL_3;
  }

  v15 = v14;
  if (v13 == v2 && v14 == v4 || (v16 = v13, (sub_25130F2D4() & 1) != 0))
  {
LABEL_9:

    v11 = 1;
    return (v11 & 1);
  }

  v17 = [v0 sharingOverviewHostName];
  sub_25130EFB4();

  LOBYTE(v17) = sub_25130F194();

  if ((v17 & 1) == 0)
  {
    goto LABEL_3;
  }

  v18 = *(sub_25130EE34() + 16);

  if (v18 < 2)
  {
    goto LABEL_3;
  }

  v19 = sub_25130EE34();
  if (!v19[2])
  {

    goto LABEL_3;
  }

  v21 = v19[4];
  v20 = v19[5];

  if (v21 == 47 && v20 == 0xE100000000000000)
  {

    goto LABEL_18;
  }

  v22 = sub_25130F2D4();

  if ((v22 & 1) == 0)
  {
LABEL_3:

    v11 = 0;
    return (v11 & 1);
  }

LABEL_18:
  result = sub_25130EE34();
  if (result[2] >= 2uLL)
  {
    v24 = result[6];
    v23 = result[7];

    if (v24 != v2 || v23 != v4)
    {
      v11 = sub_25130F2D4();

      return (v11 & 1);
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_25130E78C(SEL *a1)
{
  v2 = [objc_opt_self() *a1];
  v3 = sub_25130EFB4();
  v5 = v4;

  LOBYTE(v2) = sub_25130EAE0(v1, v3, v5);

  return v2 & 1;
}

Swift::Bool __swiftcall HAURLValidator.isInternalSettingsURL()()
{
  v1 = [objc_opt_self() sharedBehavior];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isAppleInternalInstall];

    if (v3)
    {

      LOBYTE(v1) = sub_25130EAE0(v0, 0xD000000000000010, 0x8000000251311F40);
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return v1;
}

uint64_t sub_25130E8AC()
{
  v0 = sub_25130EEA4();
  if (v1)
  {
    v19 = v0;
    v20 = v1;
    v2 = objc_opt_self();
    v3 = [v2 externalHealthAppURLScheme];
    v4 = sub_25130EFB4();
    v6 = v5;

    sub_2512F8818();
    v7 = sub_25130F174();

    if (!v7)
    {
      v10 = [v2 externalHealthAppURLHost];
      v11 = sub_25130EFB4();
      v13 = v12;

      sub_25130EE84();
      if (v14)
      {
        v15 = sub_25130F174();

        if (!v15)
        {
          v16 = sub_25130EE94();
          v18 = [v2 healthAppVisionRXIngestionURLPath];
          sub_25130EFB4();

          v8 = sub_25130F194();

          return v8 & 1;
        }
      }

      else
      {
      }
    }
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t HAURLValidator.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25130EEC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL sub_25130EAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25130EEA4();
  if (!v3)
  {
    return 0;
  }

  v4 = [objc_opt_self() internalHealthAppURLScheme];
  sub_25130EFB4();

  sub_2512F8818();
  v5 = sub_25130F174();

  if (v5)
  {
    return 0;
  }

  sub_25130EE84();
  if (!v7)
  {
    return 0;
  }

  v8 = sub_25130F174();

  return v8 == 0;
}

uint64_t sub_25130EC04(uint64_t a1)
{
  v2 = type metadata accessor for HAURL(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HAURLValidator(uint64_t a1)
{
  result = qword_280C61580;
  if (!qword_280C61580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}