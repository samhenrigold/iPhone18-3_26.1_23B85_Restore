unint64_t sub_25B11C668()
{
  result = qword_27FA39E58;
  if (!qword_27FA39E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA39E58);
  }

  return result;
}

uint64_t HMServiceGroup.controlSupportedServiceKind()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B1616A4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v121 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v140 = &v121 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v121 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v121 - v15;
  v126 = v17;
  v18 = v17 + 56;
  v19 = *(v17 + 56);
  (v19)(a1, 1, 1, v4);
  v151 = v2;
  v20 = [v2 services];
  sub_25B11C668();
  v21 = sub_25B161C64();

  if (v21 >> 62)
  {
LABEL_43:
    v23 = sub_25B161E54();
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_3:
      v123 = v7;
      v124 = v19;
      v125 = v18;
      v122 = a1;
      v18 = 0;
      v147 = v21 & 0xC000000000000001;
      v153 = *MEMORY[0x277D15640];
      v129 = v21 & 0xFFFFFFFFFFFFFF8;
      v138 = *MEMORY[0x277D15810];
      v146 = "widgetSupportedServiceKind()";
      v144 = (v126 + 104);
      v157 = (v126 + 8);
      v136 = *MEMORY[0x277D15760];
      v139 = (v126 + 16);
      v137 = (v126 + 88);
      v135 = *MEMORY[0x277D158D0];
      v134 = *MEMORY[0x277D156D8];
      v133 = *MEMORY[0x277D15870];
      v132 = *MEMORY[0x277D15888];
      v131 = *MEMORY[0x277D15718];
      v130 = *MEMORY[0x277D15898];
      v128 = *MEMORY[0x277D15720];
      *&v22 = 136315906;
      v141 = v22;
      *&v22 = 136315650;
      v127 = v22;
      v148 = v16;
      v149 = v4;
      v142 = v23;
      v143 = v10;
      v145 = v21;
      while (1)
      {
        if (v147)
        {
          v24 = MEMORY[0x25F862410](v18, v21);
        }

        else
        {
          if (v18 >= *(v129 + 16))
          {
            goto LABEL_42;
          }

          v24 = *(v21 + 8 * v18 + 32);
        }

        v25 = v24;
        v19 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (qword_27FA39B08 != -1)
        {
          swift_once();
        }

        v26 = sub_25B161A14();
        v27 = __swift_project_value_buffer(v26, qword_27FA3A0A0);
        v28 = v25;
        v29 = v151;
        v156 = v27;
        v30 = sub_25B1619F4();
        v7 = sub_25B161D64();

        v31 = os_log_type_enabled(v30, v7);
        v154 = v18 + 1;
        v155 = v18;
        if (v31)
        {
          v32 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v158 = v19;
          *v32 = v141;
          *(v32 + 4) = sub_25B108480(0xD00000000000001DLL, v146 | 0x8000000000000000, &v158);
          *(v32 + 12) = 2080;
          v33 = [v28 name];
          v34 = sub_25B161B34();
          v36 = v35;

          v37 = sub_25B108480(v34, v36, &v158);

          *(v32 + 14) = v37;
          *(v32 + 22) = 2080;
          v38 = [v28 serviceType];
          v39 = sub_25B161B34();
          v41 = v40;

          v42 = sub_25B108480(v39, v41, &v158);

          *(v32 + 24) = v42;
          *(v32 + 32) = 2080;
          v43 = v29;
          v44 = [v29 name];
          v45 = sub_25B161B34();
          v47 = v46;

          v48 = v45;
          v4 = v149;
          v49 = sub_25B108480(v48, v47, &v158);
          v10 = v143;

          *(v32 + 34) = v49;
          _os_log_impl(&dword_25B105000, v30, v7, "%s: Checking service %s of type %s for accessory %s", v32, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v19, -1, -1);
          v50 = v32;
          v16 = v148;
          MEMORY[0x25F862BF0](v50, -1, -1);
        }

        else
        {
          v43 = v29;
        }

        sub_25B161DD4();
        v51 = v150;
        (*v144)(v150, v153, v4);
        sub_25B11DA20(&qword_27FA39D80, MEMORY[0x277D158F0]);
        v52 = sub_25B161AA4();
        v53 = *v157;
        (*v157)(v51, v4);
        if ((v52 & 1) == 0)
        {
          v54 = v140;
          v55 = *v139;
          (*v139)(v140, v16, v4);
          v56 = (*v137)(v54, v4);
          if (v56 == v138 || v56 == v136 || v56 == v135 || v56 == v134 || v56 == v133 || v56 == v132 || v56 == v153 || v56 == v131 || v56 == v130 || v56 == v128)
          {
            v77 = HMService.primaryControlCharacteristic.getter();
            if (v77)
            {
              v92 = v77;

              v55(v10, v16, v4);
              v93 = v123;
              v55(v123, v16, v4);
              v94 = v28;
              v95 = v43;
              v96 = sub_25B1619F4();
              v97 = sub_25B161D64();

              if (os_log_type_enabled(v96, v97))
              {
                v98 = swift_slowAlloc();
                v156 = swift_slowAlloc();
                v158 = v156;
                *v98 = 136316162;
                *(v98 + 4) = sub_25B108480(0xD00000000000001DLL, v146 | 0x8000000000000000, &v158);
                *(v98 + 12) = 2080;
                v99 = ServiceKind.debugDescription.getter();
                v101 = v100;
                v53(v10, v149);
                v102 = sub_25B108480(v99, v101, &v158);

                *(v98 + 14) = v102;
                *(v98 + 22) = 2080;
                v103 = sub_25B161694();
                v105 = v104;
                v53(v93, v149);
                v106 = sub_25B108480(v103, v105, &v158);

                *(v98 + 24) = v106;
                *(v98 + 32) = 2080;
                v107 = [v94 name];
                v108 = sub_25B161B34();
                v110 = v109;

                v111 = sub_25B108480(v108, v110, &v158);

                *(v98 + 34) = v111;
                *(v98 + 42) = 2080;
                v112 = [v95 name];
                v113 = sub_25B161B34();
                v115 = v114;

                v116 = sub_25B108480(v113, v115, &v158);

                *(v98 + 44) = v116;
                _os_log_impl(&dword_25B105000, v96, v97, "%s: Found supported service kind %s(%s) having a primary control characteristic with service %s for serviceGroup %s", v98, 0x34u);
                v117 = v156;
                swift_arrayDestroy();
                MEMORY[0x25F862BF0](v117, -1, -1);
                v118 = v98;
                v4 = v149;
                MEMORY[0x25F862BF0](v118, -1, -1);
              }

              else
              {

                v53(v93, v4);
                v53(v10, v4);
              }

              v119 = v122;
              sub_25B11D9B8(v122);
              (*(v126 + 32))(v119, v148, v4);
              return v124(v119, 0, 1, v4);
            }

            v152 = v53;
            v57 = v28;
            v78 = v43;
            v58 = sub_25B1619F4();
            a1 = sub_25B161D64();

            if (os_log_type_enabled(v58, a1))
            {
              v19 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v158 = v79;
              *v19 = v127;
              *(v19 + 4) = sub_25B108480(0xD00000000000001DLL, v146 | 0x8000000000000000, &v158);
              *(v19 + 6) = 2080;
              v7 = &off_279932000;
              v80 = [v57 name];
              v81 = sub_25B161B34();
              v83 = v82;

              v84 = sub_25B108480(v81, v83, &v158);

              *(v19 + 14) = v84;
              *(v19 + 11) = 2080;
              v85 = [v78 name];
              v86 = sub_25B161B34();
              v88 = v87;

              v89 = v86;
              v4 = v149;
              v90 = sub_25B108480(v89, v88, &v158);
              v10 = v143;

              *(v19 + 3) = v90;
              _os_log_impl(&dword_25B105000, v58, a1, "%s: Did not find primary control characteristic for service %s for serviceGroup %s, continuing to next service", v19, 0x20u);
              swift_arrayDestroy();
              v91 = v79;
              v16 = v148;
              MEMORY[0x25F862BF0](v91, -1, -1);
              v76 = v19;
LABEL_33:
              MEMORY[0x25F862BF0](v76, -1, -1);
            }

            else
            {
            }

            v152(v16, v4);
            goto LABEL_5;
          }

          v53(v140, v4);
        }

        v57 = v28;
        v19 = v43;
        v58 = sub_25B1619F4();
        a1 = sub_25B161D64();

        if (os_log_type_enabled(v58, a1))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v158 = v60;
          *v59 = v141;
          *(v59 + 4) = sub_25B108480(0xD00000000000001DLL, v146 | 0x8000000000000000, &v158);
          *(v59 + 12) = 2080;
          v61 = [v57 serviceType];
          v62 = sub_25B161B34();
          v152 = v53;
          v64 = v63;

          v65 = sub_25B108480(v62, v64, &v158);

          *(v59 + 14) = v65;
          *(v59 + 22) = 2080;
          v7 = &off_279932000;
          v66 = [v57 name];
          v67 = sub_25B161B34();
          v69 = v68;

          v70 = sub_25B108480(v67, v69, &v158);

          *(v59 + 24) = v70;
          *(v59 + 32) = 2080;
          v71 = [v19 name];
          v19 = sub_25B161B34();
          v73 = v72;

          v74 = sub_25B108480(v19, v73, &v158);
          v10 = v143;

          *(v59 + 34) = v74;
          _os_log_impl(&dword_25B105000, v58, a1, "%s: ServiceType %s for service %s for serviceGroup %s is not supported.", v59, 0x2Au);
          swift_arrayDestroy();
          v75 = v60;
          v16 = v148;
          MEMORY[0x25F862BF0](v75, -1, -1);
          v76 = v59;
          v4 = v149;
          goto LABEL_33;
        }

        v53(v16, v4);
LABEL_5:
        v18 = v155 + 1;
        v21 = v145;
        if (v154 == v142)
        {
        }
      }
    }
  }
}

HMService_optional __swiftcall HMServiceGroup.serviceWithPrimaryControlCharacteristic()()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v29 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v28 = &v22 - v6;
  v7 = [v1 services];
  sub_25B11C668();
  v8 = sub_25B161C64();

  if (v8 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v10 = 0;
    v27 = v8 & 0xC000000000000001;
    v26 = v8 & 0xFFFFFFFFFFFFFF8;
    v25 = *MEMORY[0x277D15640];
    v23 = i;
    v24 = (v3 + 104);
    v11 = (v3 + 8);
    while (1)
    {
      if (v27)
      {
        v12 = MEMORY[0x25F862410](v10, v8);
      }

      else
      {
        if (v10 >= *(v26 + 16))
        {
          goto LABEL_19;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = HMService.primaryControlCharacteristic.getter();
      if (v15)
      {
        v18 = v15;

        goto LABEL_22;
      }

      sub_25B161DD4();
      (*v24)(v29, v25, v2);
      sub_25B11DA20(&qword_27FA39E18, MEMORY[0x277D158F8]);
      sub_25B161C14();
      sub_25B161C14();
      v3 = v31;
      if (v32 == v30 && v33 == v31)
      {
        v20 = *v11;
        (*v11)(v29, v2);
        v20(v28, v2);

LABEL_17:

        goto LABEL_22;
      }

      v16 = sub_25B161FA4();
      v17 = *v11;
      (*v11)(v29, v2);
      v17(v28, v2);

      if (v16)
      {
        goto LABEL_17;
      }

      ++v10;
      if (v14 == v23)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v13 = 0;
LABEL_22:
  v21 = v13;
  result.value.super.isa = v21;
  result.is_nil = v19;
  return result;
}

HMService_optional __swiftcall HMServiceGroup.primaryService()()
{
  v1 = [v0 services];
  sub_25B11C668();
  v2 = sub_25B161C64();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F862410](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isPrimaryService])
      {

        goto LABEL_17;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v6 = 0;
LABEL_17:
  v9 = v6;
  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

uint64_t sub_25B11D9B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B11DA20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25B1616A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B11DA80()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA39E60);
  __swift_project_value_buffer(v0, qword_27FA39E60);
  return sub_25B1613E4();
}

uint64_t (*static EnergyForecastIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FA39A80 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161414();
  __swift_project_value_buffer(v1, qword_27FA39E60);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B11DBF4()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA39E78);
  __swift_project_value_buffer(v0, qword_27FA39E78);
  return sub_25B1611C4();
}

uint64_t sub_25B11DC80@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_25B11DD6C(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 == -1)
  {
    v7 = a3(0);
  }

  else
  {
    swift_once();
    v7 = a3(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a4);
  swift_beginAccess();
  v10 = *(v8 - 8);
  (*(v10 + 24))(v9, a1, v8);
  swift_endAccess();
  return (*(v10 + 8))(a1, v8);
}

uint64_t (*static EnergyForecastIntent.description.modify(uint64_t a1))(void)
{
  if (qword_27FA39A88 != -1)
  {
    swift_once();
  }

  v1 = sub_25B1611D4();
  __swift_project_value_buffer(v1, qword_27FA39E78);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25B11DEEC@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_25B11DFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (*a5 == -1)
  {
    v10 = a6(0);
  }

  else
  {
    swift_once();
    v10 = a6(0);
  }

  v11 = v10;
  v12 = __swift_project_value_buffer(v10, a7);
  swift_beginAccess();
  (*(*(v11 - 8) + 24))(v12, a1, v11);
  return swift_endAccess();
}

uint64_t (*EnergyForecastIntent.homeIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOEnergyForecastIntent__homeIdentifier);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

id sub_25B11E13C(char *a1, uint64_t a2, void *a3)
{
  v3 = a1;
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    v4 = sub_25B161B24();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_25B11E1D4(void *a1)
{
  sub_25B161274();
  sub_25B161144();

  return v2;
}

void sub_25B11E228(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_25B161B34();
  }

  v5 = a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B11E2A8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_25B161274();
  sub_25B161154();
}

double sub_25B11E2F0@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25B11E348(uint64_t *a1, void *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*EnergyForecastIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOEnergyForecastIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t EnergyForecastIntent.useCurrentLocation.getter()
{
  sub_25B161274();
  sub_25B161144();

  return v1;
}

uint64_t sub_25B11E484@<X0>(_BYTE *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  *a2 = v4;
  return result;
}

uint64_t sub_25B11E4DC(char *a1, void *a2)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t EnergyForecastIntent.useCurrentLocation.setter(char a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*EnergyForecastIntent.useCurrentLocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOEnergyForecastIntent__useCurrentLocation);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t EnergyForecastIntent.home.getter()
{
  sub_25B161274();
  sub_25B161144();
}

double sub_25B11E664@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25B11E6BC(uint64_t *a1, void *a2)
{
  sub_25B11B1C8(*a1, a1[1]);
  sub_25B161274();
  sub_25B161154();
}

uint64_t EnergyForecastIntent.home.setter(__int128 *a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*EnergyForecastIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOEnergyForecastIntent__home);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

void sub_25B11E7F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_25B11E858(void *a1)
{
  sub_25B161274();
  v1 = sub_25B161164();

  return v1;
}

uint64_t static EnergyForecastIntent.parameterSummary.getter()
{
  v0 = sub_25B161374();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA468], v0);
  v5[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EB0, &qword_25B163858);
  sub_25B12063C(&qword_27FA39EB8, &protocol conformance descriptor for EnergyForecastIntent);
  sub_25B11AEBC(&qword_27FA39EC0, &qword_27FA39EB0, &qword_25B163858, MEMORY[0x277CBA2C0]);
  sub_25B11AEBC(&qword_27FA39EC8, &qword_27FA39ED0, &unk_25B163860, MEMORY[0x277CB9F10]);
  return sub_25B1613A4();
}

uint64_t sub_25B11EAD4()
{
  swift_getKeyPath();
  sub_25B12063C(&qword_27FA39EB8, &protocol conformance descriptor for EnergyForecastIntent);
  v0 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25B163810;
  *(v1 + 32) = v0;
  type metadata accessor for EnergyForecastIntent();
  sub_25B161274();
  v2 = sub_25B161264();

  return v2;
}

uint64_t sub_25B11EBC8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EB0, &qword_25B163858);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = type metadata accessor for EnergyForecastIntent();
  sub_25B12063C(&qword_27FA39EB8, &protocol conformance descriptor for EnergyForecastIntent);
  sub_25B161284();
  v9 = sub_25B11AEBC(&qword_27FA39EC0, &qword_27FA39EB0, &qword_25B163858, MEMORY[0x277CBA2C0]);
  MEMORY[0x25F861800](v5, v8, v1, v9);
  v10 = *(v2 + 8);
  v10(v5, v1);
  MEMORY[0x25F8617F0](v7, v8, v1, v9);
  return (v10)(v7, v1);
}

uint64_t sub_25B11EDA8()
{
  swift_getKeyPath();
  sub_25B12063C(&qword_27FA39EB8, &protocol conformance descriptor for EnergyForecastIntent);
  v0 = sub_25B161274();

  swift_getKeyPath();
  sub_25B161274();
  v1 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25B163820;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for EnergyForecastIntent();
  sub_25B161274();
  v3 = sub_25B161264();

  return v3;
}

id EnergyForecastIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EnergyForecastIntent.init()()
{
  ObjectType = swift_getObjectType();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v49 = &v42 - v1;
  v2 = sub_25B161584();
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_25B1613F4();
  v48 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v60 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B161B14();
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_25B161294();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v42 - v18;
  v58 = &v42 - v18;
  v20 = sub_25B161414();
  v64 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v57 = OBJC_IVAR___NHOEnergyForecastIntent__homeIdentifier;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v62 = *(v21 + 56);
  v63 = v21 + 56;
  v62(v19, 1, 1, v20);
  v55 = sub_25B161AB4();
  v69 = 0;
  v70 = 0;
  v22 = *(v55 - 8);
  v54 = *(v22 + 56);
  v56 = (v22 + 56);
  v43 = v16;
  v54(v16, 1, 1, v55);
  v23 = sub_25B1610C4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v52 = v13;
  v25(v13, 1, 1, v23);
  v27 = *MEMORY[0x277CBA308];
  v28 = *(v7 + 104);
  v66 = v7 + 104;
  v28(v65, v27, v67);
  v29 = v58;
  v30 = sub_25B161194();
  v31 = v61;
  *&v61[v57] = v30;
  v44 = OBJC_IVAR___NHOEnergyForecastIntent__homeName;
  sub_25B1613E4();
  v62(v29, 1, 1, v64);
  v69 = 0;
  v70 = 0;
  v54(v43, 1, 1, v55);
  v32 = v52;
  v56 = v25;
  v57 = v23;
  v45 = v26;
  v25(v52, 1, 1, v23);
  LODWORD(v55) = v27;
  v54 = v28;
  v28(v65, v27, v67);
  *&v31[v44] = sub_25B161194();
  v53 = OBJC_IVAR___NHOEnergyForecastIntent__useCurrentLocation;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v43 = "HOME_ACCESSORY_ENTITY_TITLE";
  v33 = v59;
  v42 = __swift_project_value_buffer(v59, qword_27FA3E770);
  v48 = *(v48 + 16);
  (v48)(v60, v42, v33);
  sub_25B161574();
  sub_25B161424();
  v34 = v58;
  v62(v58, 1, 1, v64);
  LOBYTE(v69) = 1;
  v35 = sub_25B161CB4();
  (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
  v56(v32, 1, 1, v57);
  v36 = v65;
  (v54)(v65, v55, v67);
  v37 = sub_25B1611A4();
  v38 = v61;
  *&v61[v53] = v37;
  v53 = OBJC_IVAR___NHOEnergyForecastIntent__home;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  (v48)(v60, v42, v59);
  sub_25B161574();
  sub_25B161424();
  v62(v34, 1, 1, v64);
  v69 = 0;
  v70 = 0;
  v40 = v56;
  v39 = v57;
  v56(v52, 1, 1, v57);
  v40(v47, 1, 1, v39);
  (v54)(v36, v55, v67);
  sub_25B120304();
  *&v38[v53] = sub_25B161184();
  v68.receiver = v38;
  v68.super_class = ObjectType;
  return objc_msgSendSuper2(&v68, sel_init);
}

char *EnergyForecastIntent.__allocating_init(homeIdentifier:)(uint64_t a1, unint64_t a2)
{
  v3 = sub_25B161414();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = [objc_allocWithZone(v2) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v5 = v4;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161274();
  sub_25B161154();

  return v5;
}

char *EnergyForecastIntent.__allocating_init(homeIdentifier:homeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25B161414();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = [objc_allocWithZone(v4) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v7 = v6;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161274();
  sub_25B161154();

  return v7;
}

id EnergyForecastIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B11FC54@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39A80 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA39E60);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B11FD34(uint64_t a1, uint64_t a2)
{
  v2 = sub_25B161374();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v3 + 104))(v5, *MEMORY[0x277CBA468], v2);
  v7[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EB0, &qword_25B163858);
  sub_25B11AEBC(&qword_27FA39EC0, &qword_27FA39EB0, &qword_25B163858, MEMORY[0x277CBA2C0]);
  sub_25B11AEBC(&qword_27FA39EC8, &qword_27FA39ED0, &unk_25B163860, MEMORY[0x277CB9F10]);
  return sub_25B1613A4();
}

uint64_t sub_25B11FF20(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_25B12063C(&qword_27FA39F38, &protocol conformance descriptor for EnergyForecastIntent);
  *v4 = v2;
  v4[1] = sub_25B11FFE8;

  return MEMORY[0x28210C3E0](a2, v5);
}

uint64_t sub_25B11FFE8()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

id sub_25B1200F0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

void sub_25B120128()
{
  sub_25B12063C(&qword_27FA39F30, &protocol conformance descriptor for EnergyForecastIntent);

  JUMPOUT(0x25F861550);
}

uint64_t EnergyForecastIntent.configuredHomeID.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v2, v3);
    sub_25B1610F4();
    sub_25B120358(v2, v3);
    return v1;
  }

  else
  {
    sub_25B120358(0, v3);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t EnergyForecastIntent.configuredHomeName.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v2, v3);
    sub_25B1610F4();
    sub_25B120358(v2, v3);
    return v1;
  }

  else
  {
    sub_25B120358(0, v3);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

unint64_t sub_25B120304()
{
  result = qword_27FA39F00;
  if (!qword_27FA39F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39F00);
  }

  return result;
}

uint64_t sub_25B120358(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25B120438()
{
  result = qword_27FA39F18;
  if (!qword_27FA39F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39F18);
  }

  return result;
}

uint64_t sub_25B12063C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnergyForecastIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t HMActionSet.iconSymbolName.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_25B161B24();
  v3 = [v1 objectForKeyedSubscript_];

  if (!v3 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F48, &qword_25B163A50), (swift_dynamicCast() & 1) == 0))
  {
    v12 = 0;
    v13 = 0;
  }

  v4 = sub_25B161B24();
  v5 = [v1 objectForKeyedSubscript_];

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F48, &qword_25B163A50);
    if (swift_dynamicCast())
    {
      if (!v13 && (sub_25B161BF4() & 1) != 0)
      {
        v6 = sub_25B161B24();

        v7 = HFImageIconIdentifier.symbolMapping.getter(v6);
        v9 = v8;

        v12 = v7;
        v13 = v9;
      }
    }
  }

  v10 = sub_25B1208C0();

  if (v13)
  {
    v10 = v12;
    sub_25B161264();
  }

  return v10;
}

unint64_t sub_25B1208C0()
{
  v0 = 0x69662E6573756F68;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F58, &qword_25B163A60);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  sub_25B161D54();
  v7 = sub_25B161D44();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_25B121660(v6, v4);
    v9 = (*(v8 + 88))(v4, v7);
    if (v9 == *MEMORY[0x277D16EF0])
    {
      v0 = 0xD000000000000013;
    }

    else if (v9 == *MEMORY[0x277D16F10])
    {
      v0 = 0xD000000000000015;
    }

    else if (v9 == *MEMORY[0x277D16F38])
    {
      v0 = 0x2E78616D2E6E7573;
    }

    else if (v9 == *MEMORY[0x277D16F28])
    {
      v0 = 0x6174732E6E6F6F6DLL;
    }

    else
    {
      (*(v8 + 8))(v4, v7);
    }
  }

  sub_25B1215F8(v6);
  return v0;
}

uint64_t HMActionSet.iconTintColor.getter()
{
  v1 = sub_25B161A24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 applicationData];
  v6 = [v5 dictionary];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F48, &qword_25B163A50);
  v7 = sub_25B161A84();

  if (!*(v7 + 16) || (v8 = sub_25B108A28(0xD00000000000001FLL, 0x800000025B166950), (v9 & 1) == 0))
  {
LABEL_11:

    return HMActionSet.defaultTint.getter();
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_unknownObjectRetain();

  v16[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F50, &qword_25B163A58);
  if (swift_dynamicCast())
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      sub_25B108A28(114, 0xE100000000000000);
      if (v12)
      {
        if (*(v11 + 16))
        {
          sub_25B108A28(103, 0xE100000000000000);
          if (v13)
          {
            if (*(v11 + 16))
            {
              sub_25B108A28(98, 0xE100000000000000);
              if (v14)
              {

                (*(v2 + 104))(v4, *MEMORY[0x277CE0EE0], v1);
                return sub_25B161A54();
              }
            }
          }
        }
      }
    }

    goto LABEL_11;
  }

  return HMActionSet.defaultTint.getter();
}

uint64_t HMActionSet.defaultTint.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F58, &qword_25B163A60);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - v4;
  sub_25B161D54();
  v6 = sub_25B161D44();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_2;
  }

  sub_25B121660(v5, v3);
  v9 = (*(v7 + 88))(v3, v6);
  if (v9 == *MEMORY[0x277D16EF0] || v9 == *MEMORY[0x277D16F10])
  {
    v10 = [objc_opt_self() systemOrangeColor];
LABEL_10:
    v11 = v10;
    v8 = sub_25B161A64();
    goto LABEL_11;
  }

  if (v9 == *MEMORY[0x277D16F38])
  {
    v10 = [objc_opt_self() systemYellowColor];
    goto LABEL_10;
  }

  if (v9 == *MEMORY[0x277D16F28])
  {
    v10 = [objc_opt_self() systemIndigoColor];
    goto LABEL_10;
  }

  (*(v7 + 8))(v3, v6);
LABEL_2:
  v8 = _sSo11HMActionSetC15NanoHomeIntentsE15backupTintColor7SwiftUI0H0Vvg_0();
LABEL_11:
  v12 = v8;
  sub_25B1215F8(v5);
  return v12;
}

uint64_t HMActionSet.umbrellaCategories.getter()
{
  v1 = [v0 actions];
  sub_25B1216D0();
  sub_25B12171C();
  v2 = sub_25B161D04();

  sub_25B121064(MEMORY[0x277D84FA0], v2);
  v4 = v3;

  return v4;
}

void sub_25B121064(void *a1, uint64_t a2)
{
  v54 = sub_25B1616A4();
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_25B161884();
  v55 = *(v52 - 8);
  v6 = MEMORY[0x28223BE20](v52);
  v51 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = v46 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v49 = v46 - v11;
  MEMORY[0x28223BE20](v10);
  v56 = v46 - v12;
  v59 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    sub_25B161264();
    sub_25B161264();
    sub_25B161E44();
    sub_25B1216D0();
    sub_25B12171C();
    sub_25B161D24();
    v13 = v63;
    v59 = v62;
    v14 = v64;
    v15 = v65;
    v16 = v66;
  }

  else
  {
    v17 = -1 << *(v59 + 32);
    v13 = v59 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v59 + 56);
    sub_25B161264();
    sub_25B161264();
    v15 = 0;
  }

  v46[0] = v14;
  v60 = (v14 + 64) >> 6;
  v46[4] = v55 + 32;
  v47 = (v4 + 8);
  v46[3] = v55 + 16;
  v46[2] = v55 + 8;
  v20 = &off_279932000;
  v21 = &off_279932000;
  v48 = v13;
  while (v59 < 0)
  {
    v27 = sub_25B161E64();
    if (!v27 || (v61 = v27, sub_25B1216D0(), swift_dynamicCast(), v26 = v67, v25 = v15, v22 = v16, !v67))
    {
LABEL_22:
      sub_25B11A930(v59);
      return;
    }

LABEL_19:
    v28 = v26;
    objc_opt_self();
    v58 = v28;
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v57 = v22;
      v30 = [v29 v20[268]];
      v31 = [v30 v21[269]];

      if (v31)
      {
        v32 = v53;
        sub_25B161DD4();

        v33 = v49;
        sub_25B161674();
        (*v47)(v32, v54);
        v35 = v55;
        v34 = v56;
        v36 = v33;
        v37 = v52;
        (*(v55 + 32))(v56, v36, v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F70, &unk_25B163A70);
        v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v39 = swift_allocObject();
        v40 = *(v35 + 16);
        v40(v39 + v38, v34, v37);
        v67 = a1;
        sub_25B161264();
        v41 = v51;
        v40(v51, (v39 + v38), v37);
        v42 = v50;
        sub_25B13E148(v50, v41);
        v43 = *(v35 + 8);
        v20 = &off_279932000;
        v43(v42, v37);
        v44 = v67;
        swift_setDeallocating();
        v43(v39 + v38, v37);
        swift_deallocClassInstance();
        v45 = v37;
        v13 = v48;
        v43(v56, v45);

        a1 = v44;
        v21 = &off_279932000;
      }

      v22 = v57;
    }

    v15 = v25;
    v16 = v22;
  }

  v23 = v15;
  v24 = v16;
  v25 = v15;
  if (v16)
  {
LABEL_15:
    v22 = (v24 - 1) & v24;
    v26 = *(*(v59 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v26)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v60)
    {
      goto LABEL_22;
    }

    v24 = *(v13 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_25B1215F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F58, &qword_25B163A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B121660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F58, &qword_25B163A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B1216D0()
{
  result = qword_27FA39F60;
  if (!qword_27FA39F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA39F60);
  }

  return result;
}

unint64_t sub_25B12171C()
{
  result = qword_27FA39F68;
  if (!qword_27FA39F68)
  {
    sub_25B1216D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39F68);
  }

  return result;
}

uint64_t sub_25B121774()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0x4C5F544547444957, 0xEF524548434E5541);
  qword_27FA39F78 = result;
  unk_27FA39F80 = v1;
  return result;
}

uint64_t sub_25B12180C()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001DLL, 0x800000025B166BD0);
  qword_27FA39F88 = result;
  unk_27FA39F90 = v1;
  return result;
}

uint64_t sub_25B121898()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001DLL, 0x800000025B166BB0);
  qword_27FA39F98 = result;
  unk_27FA39FA0 = v1;
  return result;
}

uint64_t sub_25B121924()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001CLL, 0x800000025B166B90);
  qword_27FA39FA8 = result;
  unk_27FA39FB0 = v1;
  return result;
}

uint64_t sub_25B1219B0()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000017, 0x800000025B166B70);
  qword_27FA39FB8 = result;
  unk_27FA39FC0 = v1;
  return result;
}

uint64_t static NHOIntentLocalization.homeSpecificEnergyWidgetName(homeName:)(uint64_t a1, uint64_t a2)
{
  _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000014, 0x800000025B1669B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39FE8, &qword_25B163A80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B162FE0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_25B1224A8();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_25B161264();
  v5 = sub_25B161B44();

  return v5;
}

uint64_t sub_25B121C00()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001CLL, 0x800000025B166B50);
  qword_27FA39FC8 = result;
  unk_27FA39FD0 = v1;
  return result;
}

uint64_t static NHOIntentLocalization.homeSpecificElectricityUsageWidgetName(homeName:)(uint64_t a1, uint64_t a2)
{
  _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000020, 0x800000025B1669D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39FE8, &qword_25B163A80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B162FE0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_25B1224A8();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_25B161264();
  v5 = sub_25B161B44();

  return v5;
}

uint64_t sub_25B121E50()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001CLL, 0x800000025B166B30);
  qword_27FA39FD8 = result;
  unk_27FA39FE0 = v1;
  return result;
}

uint64_t sub_25B121EB4(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;
  sub_25B161264();
  return v4;
}

id sub_25B121F38(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = sub_25B161B24();

  return v6;
}

uint64_t static NHOIntentLocalization.homeSpecificElectricityRatesWidgetName(homeName:)(uint64_t a1, uint64_t a2)
{
  _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000020, 0x800000025B166A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39FE8, &qword_25B163A80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B162FE0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_25B1224A8();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_25B161264();
  v5 = sub_25B161B44();

  return v5;
}

id NHOIntentLocalization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NHOIntentLocalization.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NHOIntentLocalization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B122248()
{
  v0 = sub_25B1613F4();
  __swift_allocate_value_buffer(v0, qword_27FA3E770);
  v1 = __swift_project_value_buffer(v0, qword_27FA3E770);
  *v1 = type metadata accessor for NHOIntentLocalization();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B161B24();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (v5)
  {
    v6 = sub_25B161B24();
    v7 = sub_25B161B24();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v9 = sub_25B161B34();
    v11 = v10;

    v12 = v9 == a1 && v11 == a2;
    if (v12 || (sub_25B161FA4() & 1) != 0)
    {

      v13 = sub_25B161B24();
      v14 = sub_25B161B24();
      v15 = [v5 localizedStringForKey:v13 value:0 table:v14];

      a1 = sub_25B161B34();
    }

    else
    {

      return v9;
    }
  }

  else
  {
    sub_25B161264();
  }

  return a1;
}

unint64_t sub_25B1224A8()
{
  result = qword_27FA39FF0;
  if (!qword_27FA39FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39FF0);
  }

  return result;
}

uint64_t sub_25B1226BC()
{
  v0 = sub_25B161A14();
  __swift_allocate_value_buffer(v0, qword_27FA3A070);
  __swift_project_value_buffer(v0, qword_27FA3A070);
  return sub_25B161A04();
}

uint64_t sub_25B1227CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25B161A14();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_25B161A04();
}

uint64_t sub_25B122868@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25B161A14();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t NHOSmartStackAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x726F737365636361;
  v3 = 0x746867694C6C6C61;
  v4 = 0x6B616570536C6C61;
  if (v1 != 3)
  {
    v4 = 0x736B636F4C6C6C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65536E6F69746361;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

NanoHomeIntents::NHOSmartStackAction_optional __swiftcall NHOSmartStackAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25B161F64();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25B122A00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65536E6F69746361;
    }

    else
    {
      v4 = 0x726F737365636361;
    }

    if (v3)
    {
      v5 = 0xE900000000000074;
    }

    else
    {
      v5 = 0xE900000000000079;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x746867694C6C6C61;
    v5 = 0xE900000000000073;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x6B616570536C6C61;
    }

    else
    {
      v4 = 0x736B636F4C6C6C61;
    }

    if (v3 == 3)
    {
      v5 = 0xEB00000000737265;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x65536E6F69746361;
    }

    else
    {
      v6 = 0x726F737365636361;
    }

    if (a2)
    {
      v2 = 0xE900000000000074;
    }

    else
    {
      v2 = 0xE900000000000079;
    }

    if (v4 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    if (v4 != 0x746867694C6C6C61)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xEB00000000737265;
    if (v4 != 0x6B616570536C6C61)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    if (v4 != 0x736B636F4C6C6C61)
    {
LABEL_34:
      v7 = sub_25B161FA4();
      goto LABEL_35;
    }
  }

  if (v5 != v2)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_25B122BB8()
{
  sub_25B162024();
  sub_25B161BA4();

  return sub_25B162044();
}

uint64_t sub_25B122CA4(uint64_t a1)
{
  sub_25B161BA4();
}

uint64_t sub_25B122D7C(uint64_t a1)
{
  sub_25B162024();
  sub_25B161BA4();

  return sub_25B162044();
}

void sub_25B122E70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0x726F737365636361;
  v5 = 0x746867694C6C6C61;
  v6 = 0xEB00000000737265;
  v7 = 0x6B616570536C6C61;
  if (v2 != 3)
  {
    v7 = 0x736B636F4C6C6C61;
    v6 = 0xE800000000000000;
  }

  if (v2 == 2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65536E6F69746361;
    v3 = 0xE900000000000074;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v6;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t sub_25B122FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A1F8, &qword_25B163F88);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A200, &qword_25B163F90) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25B163AC0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_25B161204();
  v4[v1] = 1;
  sub_25B161204();
  v4[2 * v1] = 2;
  sub_25B161204();
  v4[3 * v1] = 3;
  sub_25B161204();
  v4[4 * v1] = 4;
  sub_25B161204();
  v5 = sub_25B1266D8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FA3A0B8 = v5;
  return result;
}

uint64_t static NHOSmartStackAction.caseDisplayRepresentations.getter()
{
  if (qword_27FA39B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_25B161264();
}

uint64_t static NHOSmartStackAction.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27FA39B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FA3A0B8 = a1;
}

uint64_t (*static NHOSmartStackAction.caseDisplayRepresentations.modify(uint64_t a1))(void)
{
  if (qword_27FA39B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25B123394(uint64_t a1)
{
  v2 = sub_25B125578();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_25B1233E0()
{
  if (qword_27FA39B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_25B161264();
}

uint64_t sub_25B123458(uint64_t a1)
{
  v2 = sub_25B125E84();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_25B1234B4()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA3A0C0);
  __swift_project_value_buffer(v0, qword_27FA3A0C0);
  return sub_25B1613E4();
}

uint64_t (*static NHOSmartStackActionIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FA39B18 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161414();
  __swift_project_value_buffer(v1, qword_27FA3A0C0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B12361C()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA3A0D8);
  __swift_project_value_buffer(v0, qword_27FA3A0D8);
  return sub_25B1611C4();
}

uint64_t (*static NHOSmartStackActionIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FA39B20 != -1)
  {
    swift_once();
  }

  v1 = sub_25B1611D4();
  __swift_project_value_buffer(v1, qword_27FA3A0D8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*NHOSmartStackActionIntent.homeID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__homeID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOSmartStackActionIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOSmartStackActionIntent.smartStackAction.getter()
{
  sub_25B161274();
  sub_25B161144();
}

uint64_t sub_25B123964@<X0>(_BYTE *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  *a2 = v4;
  return result;
}

uint64_t NHOSmartStackActionIntent.smartStackAction.setter(char *a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOSmartStackActionIntent.smartStackAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__smartStackAction);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOSmartStackActionIntent.actionID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__actionID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOSmartStackActionIntent.actionName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__actionName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOSmartStackActionIntent.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__icon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOSmartStackActionIntent.useHomeKitRecommendations.getter()
{
  sub_25B161274();
  sub_25B161144();

  return v1;
}

uint64_t NHOSmartStackActionIntent.useHomeKitRecommendations.setter(char a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B123E44@<X0>(_BYTE *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  *a2 = v4;
  return result;
}

uint64_t sub_25B123E9C(char *a1, void *a2)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOSmartStackActionIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

uint64_t NHOSmartStackActionIntent.accessoriesAndScenes.getter()
{
  sub_25B161274();
  sub_25B161144();

  return v1;
}

uint64_t NHOSmartStackActionIntent.accessoriesAndScenes.setter(uint64_t a1, uint64_t a2)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B124104@<X0>(void *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_25B12415C(uint64_t *a1, void *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOSmartStackActionIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOSmartStackActionIntent.requestConfirmationText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__requestConfirmationText);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

double sub_25B124308@<D0>(_OWORD *a3@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t (*NHOSmartStackActionIntent.requestConfirmationIcon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__requestConfirmationIcon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOSmartStackActionIntent.isSmartStack.getter()
{
  sub_25B161274();
  sub_25B161144();

  return v1;
}

uint64_t sub_25B12444C@<X0>(_BYTE *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  *a2 = v4;
  return result;
}

uint64_t sub_25B1244A4(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOSmartStackActionIntent.isSmartStack.setter(char a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOSmartStackActionIntent.isSmartStack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__isSmartStack);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

id NHOSmartStackActionIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *NHOSmartStackActionIntent.init()()
{
  ObjectType = swift_getObjectType();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v81 = &v75 - v1;
  v2 = sub_25B161294();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v79 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v75 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v75 - v15;
  v17 = sub_25B161414();
  v101 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = OBJC_IVAR___NHOSmartStackActionIntent__homeID;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v20 = *(v18 + 56);
  v94 = v18 + 56;
  v100 = v20;
  v20(v16, 1, 1, v17);
  v90 = sub_25B161AB4();
  v103 = 0;
  v104 = 0;
  v21 = *(v90 - 8);
  v88 = *(v21 + 56);
  v96 = v21 + 56;
  v88(v13, 1, 1, v90);
  v99 = sub_25B1610C4();
  v22 = *(v99 - 8);
  v93 = *(v22 + 56);
  v23 = v22 + 56;
  v24 = v10;
  v93(v10, 1, 1, v99);
  v92 = v23;
  v98 = *MEMORY[0x277CBA308];
  v25 = *(v3 + 104);
  v95 = v3 + 104;
  v97 = v25;
  v26 = v2;
  v87 = v2;
  v25(v5);
  v27 = v16;
  v28 = v24;
  v29 = sub_25B161194();
  v30 = v91;
  *&v91[v78] = v29;
  v78 = OBJC_IVAR___NHOSmartStackActionIntent__homeName;
  sub_25B1613E4();
  v100(v27, 1, 1, v101);
  v103 = 0;
  v104 = 0;
  v84 = v13;
  v88(v13, 1, 1, v90);
  v93(v24, 1, 1, v99);
  v31 = v97;
  v97(v5, v98, v26);
  *&v30[v78] = sub_25B161194();
  v78 = OBJC_IVAR___NHOSmartStackActionIntent__smartStackAction;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A148, &unk_25B163AF8);
  sub_25B1613E4();
  v100(v27, 1, 1, v101);
  LOBYTE(v103) = 5;
  v32 = v99;
  v33 = v93;
  v93(v28, 1, 1, v99);
  v33(v79, 1, 1, v32);
  v89 = v5;
  v34 = v87;
  v31(v5, v98, v87);
  sub_25B125578();
  v83 = v27;
  *&v91[v78] = sub_25B161174();
  v79 = OBJC_IVAR___NHOSmartStackActionIntent__actionID;
  sub_25B1613E4();
  v35 = v100;
  v100(v27, 1, 1, v101);
  v103 = 0;
  v104 = 0;
  v36 = v84;
  v37 = v90;
  v38 = v88;
  v88(v84, 1, 1, v90);
  v39 = v93;
  v93(v28, 1, 1, v99);
  v40 = v34;
  v41 = v97;
  v97(v89, v98, v40);
  v42 = v83;
  *&v79[v91] = sub_25B161194();
  v79 = OBJC_IVAR___NHOSmartStackActionIntent__actionName;
  sub_25B1613E4();
  v35(v42, 1, 1, v101);
  v103 = 0;
  v104 = 0;
  v38(v36, 1, 1, v37);
  v43 = v99;
  v39(v28, 1, 1, v99);
  v44 = v87;
  v41(v89, v98, v87);
  v45 = v83;
  v46 = sub_25B161194();
  v47 = v91;
  *&v79[v91] = v46;
  v79 = OBJC_IVAR___NHOSmartStackActionIntent__icon;
  sub_25B1613E4();
  v48 = v101;
  v100(v45, 1, 1, v101);
  v103 = 0;
  v104 = 0;
  v88(v36, 1, 1, v90);
  v93(v28, 1, 1, v43);
  v49 = v89;
  v97(v89, v98, v44);
  *&v79[v47] = sub_25B161194();
  v76 = OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B1613E4();
  v50 = v100;
  v100(v45, 1, 1, v48);
  LOBYTE(v103) = 2;
  v78 = sub_25B161CB4();
  v51 = *(v78 - 8);
  v77 = *(v51 + 56);
  v79 = (v51 + 56);
  v77(v81, 1, 1, v78);
  v82 = v28;
  v52 = v93;
  v93(v28, 1, 1, v99);
  v53 = v98;
  v97(v49, v98, v87);
  *(v47 + v76) = sub_25B1611A4();
  v76 = OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A158, &qword_25B163B08);
  sub_25B1613E4();
  v50(v45, 1, 1, v101);
  v103 = 0;
  v104 = 0;
  v54 = v88;
  v88(v84, 1, 1, v90);
  v55 = v99;
  v52(v82, 1, 1, v99);
  v56 = v53;
  v57 = v87;
  v97(v89, v56, v87);
  v58 = v83;
  v59 = sub_25B161194();
  v60 = v91;
  *&v91[v76] = v59;
  v76 = OBJC_IVAR___NHOSmartStackActionIntent__requestConfirmationText;
  sub_25B1613E4();
  v100(v58, 1, 1, v101);
  v103 = 0;
  v104 = 0;
  v54(v84, 1, 1, v90);
  v61 = v93;
  v93(v82, 1, 1, v55);
  v62 = v98;
  v63 = v57;
  v64 = v97;
  v97(v89, v98, v63);
  v65 = v83;
  *&v60[v76] = sub_25B161194();
  v76 = OBJC_IVAR___NHOSmartStackActionIntent__requestConfirmationIcon;
  sub_25B1613E4();
  v100(v65, 1, 1, v101);
  v103 = 0;
  v104 = 0;
  v88(v84, 1, 1, v90);
  v66 = v82;
  v61(v82, 1, 1, v99);
  v67 = v89;
  v68 = v87;
  v64(v89, v62, v87);
  v69 = sub_25B161194();
  v70 = v91;
  *&v91[v76] = v69;
  v71 = OBJC_IVAR___NHOSmartStackActionIntent__isSmartStack;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B1613E4();
  v100(v65, 1, 1, v101);
  LOBYTE(v103) = 2;
  v77(v81, 1, 1, v78);
  v93(v66, 1, 1, v99);
  v97(v67, v98, v68);
  *&v70[v71] = sub_25B1611A4();
  v102.receiver = v70;
  v102.super_class = ObjectType;
  v72 = objc_msgSendSuper2(&v102, sel_init);
  v103 = 0xD000000000000024;
  v104 = 0x800000025B166D10;
  v73 = v72;
  sub_25B161274();
  sub_25B161154();

  LOBYTE(v103) = 1;
  sub_25B161274();
  sub_25B161154();

  return v73;
}

unint64_t sub_25B125578()
{
  result = qword_27FA3A150;
  if (!qword_27FA3A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A150);
  }

  return result;
}

char *NHOSmartStackActionIntent.__allocating_init(homeID:homeName:actionID:actionName:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = [objc_allocWithZone(v10) init];
  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161264();
  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  return v11;
}

uint64_t sub_25B1257CC()
{
  v9 = v0;
  if (qword_27FA39AD0 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161A14();
  __swift_project_value_buffer(v1, qword_27FA39FF8);
  v2 = sub_25B1619F4();
  v3 = sub_25B161D94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v8);
    _os_log_impl(&dword_25B105000, v2, v3, "%s Perform method is only supported on watchOS", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F862BF0](v5, -1, -1);
    MEMORY[0x25F862BF0](v4, -1, -1);
  }

  sub_25B1610D4();
  v6 = *(v0 + 8);

  return v6();
}

id NHOSmartStackActionIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B125A60@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B18 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A0C0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B125B28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOSmartStackActionIntent.perform()(a1);
}

uint64_t sub_25B125BC0()
{
  v1 = sub_25B126134(&qword_27FA3A1D0, &protocol conformance descriptor for NHOSmartStackActionIntent);

  return MEMORY[0x28210B538](v0, v1);
}

unint64_t sub_25B125C10()
{
  result = qword_27FA3A168;
  if (!qword_27FA3A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A168);
  }

  return result;
}

unint64_t sub_25B125C68()
{
  result = qword_27FA3A170;
  if (!qword_27FA3A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A170);
  }

  return result;
}

unint64_t sub_25B125CC0()
{
  result = qword_27FA3A178;
  if (!qword_27FA3A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A178);
  }

  return result;
}

unint64_t sub_25B125D18()
{
  result = qword_27FA3A180;
  if (!qword_27FA3A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A180);
  }

  return result;
}

unint64_t sub_25B125D7C()
{
  result = qword_27FA3A188;
  if (!qword_27FA3A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A188);
  }

  return result;
}

unint64_t sub_25B125DD4()
{
  result = qword_27FA3A190;
  if (!qword_27FA3A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A190);
  }

  return result;
}

unint64_t sub_25B125E2C()
{
  result = qword_27FA3A198;
  if (!qword_27FA3A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A198);
  }

  return result;
}

unint64_t sub_25B125E84()
{
  result = qword_27FA3A1A0;
  if (!qword_27FA3A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A1A0);
  }

  return result;
}

unint64_t sub_25B125F2C()
{
  result = qword_27FA3A1A8;
  if (!qword_27FA3A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A1A8);
  }

  return result;
}

unint64_t sub_25B125F84()
{
  result = qword_27FA3A1B0;
  if (!qword_27FA3A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A1B0);
  }

  return result;
}

unint64_t sub_25B125FDC()
{
  result = qword_27FA3A1B8;
  if (!qword_27FA3A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A1B8);
  }

  return result;
}

uint64_t sub_25B126134(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NHOSmartStackActionIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NHOSmartStackAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NHOSmartStackAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25B1266D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A200, &qword_25B163F90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A208, &qword_25B163F98);
    v7 = sub_25B161F54();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_25B161274();
    while (1)
    {
      sub_25B1268AC(v9, v5);
      result = sub_25B108AA0(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_25B161244();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25B1268AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A200, &qword_25B163F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

const char *NHOFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "rvc";
  }

  else
  {
    return "EagleRoost";
  }
}

uint64_t NHOFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for NHOFeatureFlags;
  v4[4] = sub_25B1269C0();
  LOBYTE(v4[0]) = v1;
  v2 = sub_25B1615B4();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_25B1269C0()
{
  result = qword_27FA3A210;
  if (!qword_27FA3A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A210);
  }

  return result;
}

uint64_t NHOFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_25B162024();
  MEMORY[0x25F862580](v1);
  return sub_25B162044();
}

const char *sub_25B126ACC()
{
  if (*v0)
  {
    return "rvc";
  }

  else
  {
    return "EagleRoost";
  }
}

uint64_t RestrictedGuestFeatureFlags.isEnabled.getter()
{
  v2[3] = &type metadata for RestrictedGuestFeatureFlags;
  v2[4] = sub_25B126B74();
  v0 = sub_25B1615B4();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

unint64_t sub_25B126B74()
{
  result = qword_27FA3A218;
  if (!qword_27FA3A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A218);
  }

  return result;
}

uint64_t RestrictedGuestFeatureFlags.hashValue.getter()
{
  sub_25B162024();
  MEMORY[0x25F862580](0);
  return sub_25B162044();
}

uint64_t sub_25B126C44()
{
  sub_25B162024();
  MEMORY[0x25F862580](0);
  return sub_25B162044();
}

uint64_t sub_25B126CB0(uint64_t a1)
{
  sub_25B162024();
  MEMORY[0x25F862580](0);
  return sub_25B162044();
}

uint64_t sub_25B126D18()
{
  v2[3] = &type metadata for NHOFeatureFlags;
  v2[4] = sub_25B1269C0();
  LOBYTE(v2[0]) = 0;
  v0 = sub_25B1615B4();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

id NHOFeatureFlagsObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NHOFeatureFlagsObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NHOFeatureFlagsObjC();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NHOFeatureFlagsObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NHOFeatureFlagsObjC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25B126EC4()
{
  result = qword_27FA3A220;
  if (!qword_27FA3A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A220);
  }

  return result;
}

unint64_t sub_25B126F1C()
{
  result = qword_27FA3A228;
  if (!qword_27FA3A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A228);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NHOFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NHOFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RestrictedGuestFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RestrictedGuestFeatureFlags(_WORD *result, int a2, int a3)
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

uint64_t sub_25B1271E0()
{
  v0 = sub_25B161584();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_25B1613F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B161B14();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_25B161414();
  __swift_allocate_value_buffer(v6, qword_27FA3A230);
  __swift_project_value_buffer(v6, qword_27FA3A230);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_27FA3E770);
  (*(v2 + 16))(v4, v7, v1);
  sub_25B161574();
  return sub_25B161424();
}

uint64_t static ActionSetControlIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B28 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A230);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t (*ActionSetControlIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t sub_25B1275CC(uint64_t *a1, uint64_t *a2)
{
  sub_25B12908C(*a1, a1[1], a1[2]);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*ActionSetControlIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t sub_25B127760(char *a1, uint64_t *a2)
{
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*ActionSetControlIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B10BAFC;
}

uint64_t static ActionSetControlIntent.parameterSummary.getter()
{
  sub_25B1279F0();

  return sub_25B161284();
}

uint64_t sub_25B1278FC()
{
  swift_getKeyPath();
  sub_25B1279F0();
  v0 = sub_25B161274();

  swift_getKeyPath();
  sub_25B161274();
  v1 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25B163820;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_25B161274();
  v3 = sub_25B161264();

  return v3;
}

unint64_t sub_25B1279F0()
{
  result = qword_27FA3A248;
  if (!qword_27FA3A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A248);
  }

  return result;
}

uint64_t ActionSetControlIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v40 - v2;
  v61 = sub_25B161294();
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v49 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v60 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_25B161584();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25B1613F4();
  v65 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25B161B14();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_25B161414();
  v20 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v58 = "HOME_ACCESSORY_ENTITY_TITLE";
  v59 = __swift_project_value_buffer(v14, qword_27FA3E770);
  v54 = *(v65 + 16);
  v65 += 16;
  v43 = v16;
  v54(v16, v59, v14);
  sub_25B161574();
  v51 = v19;
  sub_25B161424();
  v23 = *(v20 + 56);
  v56 = v20 + 56;
  v57 = v23;
  v23(v10, 1, 1, v63);
  v24 = sub_25B1610C4();
  v53 = v14;
  v25 = v24;
  v66 = 0;
  v67 = 0;
  v26 = *(v24 - 8);
  v41 = v10;
  v42 = v13;
  v27 = v22;
  v28 = *(v26 + 56);
  v29 = v26 + 56;
  v30 = v48;
  v28(v48, 1, 1, v24);
  v28(v60, 1, 1, v25);
  v52 = *MEMORY[0x277CBA308];
  v55 = *(v64 + 104);
  v64 += 104;
  v31 = v49;
  v32 = v61;
  v55(v49);
  sub_25B120304();
  v40 = v27;
  v33 = v32;
  *v62 = sub_25B161184();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A250, &unk_25B164140);
  sub_25B161AC4();
  v34 = v43;
  v54(v43, v59, v53);
  sub_25B161574();
  sub_25B161424();
  v35 = v41;
  v57(v41, 1, 1, v63);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v44 = v25;
  v45 = v28;
  v46 = v29;
  v28(v30, 1, 1, v25);
  v28(v60, 1, 1, v25);
  (v55)(v31, v52, v33);
  sub_25B1282D4();
  v36 = sub_25B161184();
  v37 = v62;
  v62[1] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v54(v34, v59, v53);
  sub_25B161574();
  sub_25B161424();
  v57(v35, 1, 1, v63);
  LOBYTE(v66) = 2;
  v38 = sub_25B161CB4();
  (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
  v45(v30, 1, 1, v44);
  (v55)(v31, v52, v61);
  result = sub_25B1611A4();
  v37[2] = result;
  return result;
}

unint64_t sub_25B1282D4()
{
  result = qword_27FA3A258;
  if (!qword_27FA3A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A258);
  }

  return result;
}

uint64_t ActionSetControlIntent.init(home:actionSet:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = v42 - v6;
  v61 = sub_25B161294();
  v66 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v45 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v44 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v42 - v13;
  v15 = sub_25B161584();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_25B1613F4();
  v17 = *(v16 - 8);
  v64 = v16;
  v65 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25B161B14();
  MEMORY[0x28223BE20](v20 - 8);
  v63 = sub_25B161414();
  v21 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  sub_25B128C68(*a2, a2[1], a2[2]);
  v22 = a1[1];
  v47 = *a1;
  v46 = v22;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v57 = "HOME_ACCESSORY_ENTITY_TITLE";
  v23 = v64;
  v24 = __swift_project_value_buffer(v64, qword_27FA3E770);
  v25 = *(v65 + 16);
  v65 += 16;
  v58 = v24;
  v59 = v25;
  v49 = v19;
  v25(v19, v24, v23);
  sub_25B161574();
  sub_25B161424();
  v26 = *(v21 + 56);
  v55 = v21 + 56;
  v56 = v26;
  v26(v14, 1, 1, v63);
  v27 = sub_25B1610C4();
  v50 = v27;
  v69 = 0uLL;
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v53 = v29;
  v30 = v14;
  v52 = v28 + 56;
  v31 = v60;
  v29(v60, 1, 1, v27);
  v32 = v44;
  v29(v44, 1, 1, v27);
  v51 = *MEMORY[0x277CBA308];
  v54 = *(v66 + 104);
  v66 += 104;
  v33 = v45;
  v54(v45);
  sub_25B120304();
  v43 = sub_25B161184();
  *v62 = v43;
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A250, &unk_25B164140);
  sub_25B161AC4();
  v59(v49, v58, v64);
  sub_25B161574();
  sub_25B161424();
  v56(v14, 1, 1, v63);
  v69 = 0uLL;
  v70 = 0;
  v34 = v31;
  v35 = v50;
  v36 = v53;
  v53(v34, 1, 1, v50);
  v36(v32, 1, 1, v35);
  v37 = v61;
  (v54)(v33, v51, v61);
  sub_25B1282D4();
  v38 = sub_25B161184();
  v39 = v62;
  v62[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v59(v49, v58, v64);
  sub_25B161574();
  sub_25B161424();
  v56(v30, 1, 1, v63);
  LOBYTE(v69) = 2;
  v40 = sub_25B161CB4();
  (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
  v53(v60, 1, 1, v50);
  (v54)(v33, v51, v37);
  v39[2] = sub_25B1611A4();
  *&v69 = v47;
  *(&v69 + 1) = v46;
  sub_25B161154();
  sub_25B161144();
  v67 = v69;
  v68 = v70;
  sub_25B161154();
  LOBYTE(v69) = 0;
  return sub_25B161154();
}

uint64_t sub_25B128C68(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25B128CD4()
{
  sub_25B1610D4();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_25B128D40()
{
  result = qword_27FA3A260;
  if (!qword_27FA3A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A260);
  }

  return result;
}

unint64_t sub_25B128D98()
{
  result = qword_27FA3A268;
  if (!qword_27FA3A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A268);
  }

  return result;
}

uint64_t sub_25B128E24@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B28 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A230);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25B128F28(uint64_t a1)
{
  v2 = sub_25B1279F0();

  return MEMORY[0x28210B538](a1, v2);
}

double sub_25B128F6C@<D0>(uint64_t a2@<X8>)
{
  sub_25B161144();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void *sub_25B128FB4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25B161144();
  *a2 = v4;
  return result;
}

uint64_t sub_25B12908C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_25B161274();
    sub_25B161274();

    return sub_25B161274();
  }

  return result;
}

uint64_t sub_25B1290DC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25B161164();
  *a2 = result;
  return result;
}

uint64_t Color.init(hex:)(uint64_t a1, unint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if ((sub_25B161BF4() & 1) != 0 && (v4 = sub_25B161BC4(), v5 = sub_25B1292F8(v4, a1, a2), v7 = v6, v9 = v8, v11 = v10, , MEMORY[0x25F8620E0](v5, v7, v9, v11), , sub_25B161BB4() == 8))
  {
    v12 = objc_allocWithZone(MEMORY[0x277CCAC80]);
    v13 = sub_25B161B24();

    v14 = [v12 initWithString_];

    v17[0] = 0;
    if ([v14 scanHexLongLong_])
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:BYTE3(v17[0]) / 255.0 green:BYTE2(v17[0]) / 255.0 blue:BYTE1(v17[0]) / 255.0 alpha:LOBYTE(v17[0]) / 255.0];
      v15 = sub_25B161A64();

      return v15;
    }
  }

  else
  {
  }

  return _sSo11HMActionSetC15NanoHomeIntentsE15backupTintColor7SwiftUI0H0Vvg_0();
}

uint64_t sub_25B1292F8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

Swift::String __swiftcall Color.toHexString()()
{
  sub_25B129504();
  sub_25B161274();
  v0 = sub_25B161DB4();
  v1 = [v0 CGColor];
  v2 = sub_25B161D34();

  if (!v2)
  {
    v13 = 255.0;
    v12 = 255.0;
    v11 = 255.0;
    v10 = 255.0;
    goto LABEL_8;
  }

  v5 = *(v2 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 == 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);

  v10 = v6 * 255.0;
  v11 = v7 * 255.0;
  v12 = v8 * 255.0;
  v13 = v9 * 255.0;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39FE8, &qword_25B163A80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25B164320;
  v15 = lroundf(v10);
  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  *(v14 + 56) = MEMORY[0x277D83B88];
  *(v14 + 64) = v17;
  *(v14 + 32) = v15;
  v18 = lroundf(v11);
  *(v14 + 96) = v16;
  *(v14 + 104) = v17;
  *(v14 + 72) = v18;
  v19 = lroundf(v12);
  *(v14 + 136) = v16;
  *(v14 + 144) = v17;
  *(v14 + 112) = v19;
  v20 = lroundf(v13);
  *(v14 + 176) = v16;
  *(v14 + 184) = v17;
  *(v14 + 152) = v20;
  v21 = sub_25B161B44();
  v23 = v22;

  v3 = v21;
  v4 = v23;
LABEL_13:
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_25B129504()
{
  result = qword_27FA3A280;
  if (!qword_27FA3A280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA3A280);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25B12955C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B1295A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B1295F4()
{
  result = qword_27FA3A288;
  if (!qword_27FA3A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A288);
  }

  return result;
}

uint64_t sub_25B129648()
{
  v1 = *v0;
  sub_25B161264();
  return v1;
}

uint64_t sub_25B129694(uint64_t *a1, uint64_t *a2)
{
  sub_25B11B1C8(*a1, a1[1]);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B129714()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C0, &qword_25B1643F0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *&xmmword_27FA3A290 = sub_25B161304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C8, &qword_25B164498);
  swift_getKeyPath();
  *(&xmmword_27FA3A290 + 1) = sub_25B161324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2D0, &qword_25B1644C8);
  swift_getKeyPath();
  result = sub_25B161324();
  qword_27FA3A2A0 = result;
  return result;
}

uint64_t NHOActionSetQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C0, &qword_25B1643F0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *a1 = sub_25B161304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C8, &qword_25B164498);
  swift_getKeyPath();
  a1[1] = sub_25B161324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2D0, &qword_25B1644C8);
  swift_getKeyPath();
  result = sub_25B161324();
  a1[2] = result;
  return result;
}

uint64_t static NHOActionSetEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FA39B30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA3A290 + 1);
  v3 = qword_27FA3A2A0;
  *a1 = xmmword_27FA3A290;
  a1[1] = v2;
  a1[2] = v3;
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t static NHOActionSetEntity.defaultQuery.setter(uint64_t a1)
{
  v3 = *a1;
  v1 = *(a1 + 16);
  if (qword_27FA39B30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FA3A290 = v3;
  qword_27FA3A2A0 = v1;
}

uint64_t (*static NHOActionSetEntity.defaultQuery.modify(uint64_t a1))(void)
{
  if (qword_27FA39B30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25B129ACC@<X0>(void *a1@<X8>)
{
  if (qword_27FA39B30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA3A290 + 1);
  v3 = qword_27FA3A2A0;
  *a1 = xmmword_27FA3A290;
  a1[1] = v2;
  a1[2] = v3;
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t sub_25B129B6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = qword_27FA39B30;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_27FA3A290 = v1;
  *(&xmmword_27FA3A290 + 1) = v2;
  qword_27FA3A2A0 = v3;
}

uint64_t sub_25B129C30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_25B161584();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25B1613F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B161B14();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_25B161414();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_25B161354();
  __swift_allocate_value_buffer(v10, qword_27FA3A2A8);
  __swift_project_value_buffer(v10, qword_27FA3A2A8);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_27FA3E770);
  (*(v4 + 16))(v6, v11, v3);
  sub_25B161574();
  sub_25B161424();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_25B161344();
}

uint64_t static NHOActionSetEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B38 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A2A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static NHOActionSetEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FA39B38 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A2A8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static NHOActionSetEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FA39B38 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161354();
  __swift_project_value_buffer(v1, qword_27FA3A2A8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B12A1A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B38 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A2A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B12A268(uint64_t a1)
{
  if (qword_27FA39B38 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A2A8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_25B12A364(uint64_t *a1, uint64_t *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOActionSetEntity.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B1610E4();
  return sub_25B10BAFC;
}

uint64_t sub_25B12A4DC(uint64_t *a1, uint64_t *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOActionSetEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t sub_25B12A654(uint64_t *a1, uint64_t *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOActionSetEntity.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t NHOActionSetEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C48, &qword_25B163148);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_25B161414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_25B161B04();
  MEMORY[0x28223BE20](v8 - 8);
  sub_25B161AF4();
  sub_25B161AE4();
  sub_25B1610F4();
  sub_25B161AD4();

  sub_25B161AE4();
  sub_25B161404();
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_25B1610F4();
  sub_25B161214();
  v9 = sub_25B161224();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  return sub_25B161234();
}

uint64_t sub_25B12AA24(uint64_t a1)
{
  v2 = sub_25B1282D4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25B12AA74(uint64_t a1)
{
  v2 = sub_25B130AE0();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t NHOActionSetQuery.defaultResult()(uint64_t a1)
{
  v2[14] = a1;
  sub_25B161414();
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[15] = v3;
  v2[16] = v4;

  return MEMORY[0x2822009F8](sub_25B12AB54, 0, 0);
}

uint64_t sub_25B12AB54(uint64_t a1)
{
  if (!sub_25B1612E4())
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  sub_25B114F98();
  sub_25B1611B4();

  v3 = v1[2];
  v2 = v1[3];
  if (!sub_25B1612E4())
  {
LABEL_7:

LABEL_8:
    v8 = v1[14];
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  sub_25B1611B4();

  v4 = v1[4];
  v5 = v1[5];
  if (!sub_25B1612E4())
  {
LABEL_6:

    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_25B1611B4();

  v6 = v1[6];
  v7 = v1[7];
  if (sub_25B161BF4())
  {

    goto LABEL_6;
  }

  v11 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  sub_25B1613E4();
  v15 = sub_25B161124();
  sub_25B1613E4();
  v12 = v4;
  v13 = sub_25B161124();
  sub_25B1613E4();
  v14 = sub_25B161124();
  v1[8] = v3;
  v1[9] = v2;
  sub_25B161104();
  v1[10] = v12;
  v1[11] = v5;
  sub_25B161104();
  v1[12] = v6;
  v1[13] = v7;
  sub_25B161104();
  *v11 = v15;
  v11[1] = v13;
  v11[2] = v14;
LABEL_9:

  v9 = v1[1];

  return v9();
}

uint64_t NHOActionSetQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 216) = a1;
  sub_25B161414();
  *(v2 + 224) = swift_task_alloc();
  v3 = sub_25B1619A4();
  *(v2 + 232) = v3;
  *(v2 + 240) = *(v3 - 8);
  *(v2 + 248) = swift_task_alloc();
  v4 = sub_25B1619B4();
  *(v2 + 256) = v4;
  *(v2 + 264) = *(v4 - 8);
  *(v2 + 272) = swift_task_alloc();
  v5 = sub_25B161514();
  *(v2 + 280) = v5;
  *(v2 + 288) = *(v5 - 8);
  *(v2 + 296) = swift_task_alloc();
  v6 = sub_25B161864();
  *(v2 + 304) = v6;
  *(v2 + 312) = *(v6 - 8);
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  v7 = sub_25B161944();
  *(v2 + 344) = v7;
  *(v2 + 352) = *(v7 - 8);
  *(v2 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C68, &unk_25B1645B0);
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C70, &qword_25B163250);
  *(v2 + 384) = swift_task_alloc();
  v8 = sub_25B161724();
  *(v2 + 392) = v8;
  *(v2 + 400) = *(v8 - 8);
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = *v1;
  *(v2 + 432) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_25B12B194, 0, 0);
}

uint64_t sub_25B12B194(uint64_t a1)
{
  v33 = v1;
  v32[1] = *MEMORY[0x277D85DE8];
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    sub_25B1610F4();

    v2 = v1[24];
    v3 = v1[25];
    v4 = qword_27FA39B00;
    sub_25B161264();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_25B161A14();
    __swift_project_value_buffer(v5, qword_27FA3A088);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v32);
      *(v8 + 12) = 2080;
      v10 = sub_25B108480(v2, v3, v32);

      *(v8 + 14) = v10;
      v11 = "%s: [NHOActionSetQuery] Using homeID %s from homeActionSetIntent.";
LABEL_16:
      _os_log_impl(&dword_25B105000, v6, v7, v11, v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v9, -1, -1);
      MEMORY[0x25F862BF0](v8, -1, -1);
LABEL_18:

      v1[55] = v2;
      v1[56] = v3;
      v1[57] = sub_25B161624();
      sub_25B1616C4();
      v1[58] = sub_25B1616B4();
      sub_25B130E18(&qword_27FA39CA8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
      v19 = sub_25B161CC4();

      return MEMORY[0x2822009F8](sub_25B12BA5C, v19, v18);
    }

    goto LABEL_17;
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    sub_25B1610F4();

    v2 = v1[20];
    v3 = v1[21];
    v12 = qword_27FA39B00;
    sub_25B161264();
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_25B161A14();
    __swift_project_value_buffer(v13, qword_27FA3A088);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v32);
      *(v8 + 12) = 2080;
      v14 = sub_25B108480(v2, v3, v32);

      *(v8 + 14) = v14;
      v11 = "%s: [NHOActionSetQuery] Using homeID %s from actionSetControlToggleIntent.";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    sub_25B1610F4();

    v2 = v1[8];
    v3 = v1[9];
    v15 = qword_27FA39B00;
    sub_25B161264();
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_25B161A14();
    __swift_project_value_buffer(v16, qword_27FA3A088);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v32);
      *(v8 + 12) = 2080;
      v17 = sub_25B108480(v2, v3, v32);

      *(v8 + 14) = v17;
      v11 = "%s: [NHOActionSetQuery] Using homeID %s from actionSetControlSelectIntent.";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v20 = sub_25B161A14();
  __swift_project_value_buffer(v20, qword_27FA3A088);
  v21 = sub_25B1619F4();
  v22 = sub_25B161D84();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v32);
    _os_log_impl(&dword_25B105000, v21, v22, "%s: [NHOActionSetQuery] We have no intent (from IntentParameterDependency) to retrieve the homeID from.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x25F862BF0](v24, -1, -1);
    MEMORY[0x25F862BF0](v23, -1, -1);
  }

  v25 = sub_25B1619F4();
  v26 = sub_25B161D94();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v32);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_25B108480(7104878, 0xE300000000000000, v32);
    _os_log_impl(&dword_25B105000, v25, v26, "%s: [NHOActionSetQuery] Could not find HMHome for %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v28, -1, -1);
    MEMORY[0x25F862BF0](v27, -1, -1);
  }

  v29 = v1[1];
  v30 = MEMORY[0x277D84F90];

  return v29(v30);
}

uint64_t sub_25B12BA5C()
{

  *(v0 + 472) = sub_25B161614();

  return MEMORY[0x2822009F8](sub_25B12BAF8, 0, 0);
}

uint64_t sub_25B12BAF8()
{
  sub_25B1614E4();
  v0[2] = sub_25B1616D4();
  v0[3] = v1;
  v0[4] = v2;
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CB0, &unk_25B1645F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B162FE0;
  sub_25B161924();
  v0[26] = v4;
  sub_25B130E18(&qword_27FA39CB8, MEMORY[0x277D16690], MEMORY[0x277D16698]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CC0, &qword_25B1632C0);
  sub_25B11AEBC(&qword_27FA39CC8, &qword_27FA39CC0, &qword_25B1632C0, MEMORY[0x277D83970]);
  sub_25B161E34();
  v5 = MEMORY[0x277D159D8];
  v6 = MEMORY[0x277D159D0];
  sub_25B161764();
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[60] = v7;
  *v7 = v0;
  v7[1] = sub_25B12BD48;
  v8 = v0[51];
  v9 = v0[48];

  return MEMORY[0x28216E6A8](v8, v9, v5, v6);
}

uint64_t sub_25B12BD48()
{
  *(*v1 + 488) = v0;

  if (v0)
  {

    v2 = sub_25B12C944;
  }

  else
  {

    v2 = sub_25B12BEC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B12BEC4()
{
  v109 = v0;
  v108[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25B1616F4();
  v2 = sub_25B12F128(v1);
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v107 = v0;
  if ((v4 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {
    sub_25B161264();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_2:
    v101 = &v88;
    v102 = v5;
    v6 = *(v0 + 312);
    MEMORY[0x28223BE20](v2);
    v103 = &v88 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v103, v7);
    v0 = 0;
    v8 = v3;
    v9 = v3 + 56;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v5 = v11 & *(v3 + 56);
    v3 = (v10 + 63) >> 6;
    v106 = v6 + 16;
    v104 = 0;
    v105 = (v6 + 8);
    while (v5)
    {
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_12:
      v15 = v12 | (v0 << 6);
      v16 = v107[42];
      v17 = v107[38];
      (*(v6 + 16))(v16, *(v8 + 48) + *(v6 + 72) * v15, v17);
      v18 = sub_25B161824();
      (*(v6 + 8))(v16, v17);
      if ((v18 & 1) == 0)
      {
        *&v103[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        v19 = __OFADD__(v104, 1);
        v104 = (v104 + 1);
        if (v19)
        {
          __break(1u);
LABEL_16:
          v20 = sub_25B12F62C(v103, v102, v104, v8);
          v0 = v107;
          goto LABEL_17;
        }
      }
    }

    v13 = v0;
    while (1)
    {
      v0 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v0 >= v3)
      {
        goto LABEL_16;
      }

      v14 = *(v9 + 8 * v0);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v5 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  v86 = *(v0 + 488);
  v87 = swift_slowAlloc();
  v20 = sub_25B12F59C(v87, v5, v3, sub_25B130E60);

  result = MEMORY[0x25F862BF0](v87, -1, -1);
  if (!v86)
  {
LABEL_17:

    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v104 = (v0 + 80);
    v21 = sub_25B161A14();
    v22 = __swift_project_value_buffer(v21, qword_27FA3A088);
    sub_25B161274();
    v23 = sub_25B1619F4();
    v24 = sub_25B161D94();
    v25 = os_log_type_enabled(v23, v24);
    v96 = v22;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v108[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v108);
      *(v26 + 12) = 2048;
      *(v26 + 14) = *(v20 + 16);

      _os_log_impl(&dword_25B105000, v23, v24, "%s: [NHOActionSetQuery] Home has %ld actionSets.", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x25F862BF0](v27, -1, -1);
      MEMORY[0x25F862BF0](v26, -1, -1);
    }

    else
    {
    }

    v3 = 0;
    v106 = v20;
    v28 = (v20 + 56);
    v29 = -1;
    v30 = -1 << *(v20 + 32);
    v31 = *(v0 + 312);
    v32 = *(v0 + 288);
    v33 = *(v0 + 264);
    v34 = *(v0 + 240);
    if (-v30 < 64)
    {
      v29 = ~(-1 << -v30);
    }

    v5 = v29 & *(v20 + 56);
    v35 = (63 - v30) >> 6;
    v99 = v31 + 32;
    v100 = v31 + 16;
    v105 = (v32 + 8);
    v102 = v31;
    v98 = (v31 + 8);
    v95 = (v33 + 8);
    v97 = MEMORY[0x277D84F90];
    v94 = (v34 + 8);
    v103 = (v20 + 56);
    v101 = v35;
LABEL_25:
    v36 = v3;
    if (!v5)
    {
      goto LABEL_27;
    }

    do
    {
      v3 = v36;
LABEL_30:
      v38 = *(v0 + 320);
      v37 = *(v0 + 328);
      v39 = *(v0 + 304);
      v40 = v107[37];
      v41 = v107[35];
      v42 = v107[27];
      v43 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v44 = v102;
      (*(v102 + 16))(v37, *(v106 + 48) + *(v102 + 72) * (v43 | (v3 << 6)), v39);
      (*(v44 + 32))(v38, v37, v39);
      sub_25B161834();
      v45 = sub_25B1614F4();
      v47 = v46;
      v48 = *v105;
      v0 = v107;
      (*v105)(v40, v41);
      *(v0 + 80) = v45;
      *(v0 + 88) = v47;
      v49 = swift_task_alloc();
      *(v49 + 16) = v104;
      LOBYTE(v42) = sub_25B12EF38(sub_25B1307D4, v49, v42);

      if (v42)
      {
        v50 = *(v0 + 296);
        v51 = *(v0 + 280);
        sub_25B161834();
        v52 = sub_25B1614F4();
        v92 = v53;
        v93 = v52;
        v48(v50, v51);
        v54 = sub_25B161844();
        v56 = v55;
        LOBYTE(v50) = sub_25B161814();
        v57 = v107;
        sub_25B161854();
        v90 = v56;
        v91 = v54;
        if (v50)
        {
          sub_25B161974();
        }

        else
        {
          sub_25B161984();
        }

        v58 = v57[31];
        v59 = v57[29];
        (*v95)(v57[34], v57[32]);
        v60 = sub_25B161994();
        v89 = v61;
        (*v94)(v58, v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
        sub_25B1613E4();
        v62 = sub_25B161124();
        sub_25B1613E4();
        v63 = sub_25B161124();
        sub_25B1613E4();
        v64 = sub_25B161124();
        v65 = v92;
        v57[12] = v93;
        v57[13] = v65;
        sub_25B161104();
        v66 = v90;
        v57[14] = v91;
        v57[15] = v66;
        sub_25B161104();
        v67 = v89;
        v57[16] = v60;
        v57[17] = v67;
        sub_25B161104();
        v68 = v97;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_25B1154A8(0, *(v68 + 2) + 1, 1, v68);
        }

        v28 = v103;
        v70 = *(v68 + 2);
        v69 = *(v68 + 3);
        if (v70 >= v69 >> 1)
        {
          v97 = sub_25B1154A8((v69 > 1), v70 + 1, 1, v68);
        }

        else
        {
          v97 = v68;
        }

        v0 = v107;
        (*v98)(v107[40], v107[38]);
        v71 = v97;
        *(v97 + 2) = v70 + 1;
        v72 = &v71[24 * v70];
        *(v72 + 4) = v62;
        *(v72 + 5) = v63;
        *(v72 + 6) = v64;
        v35 = v101;
        goto LABEL_25;
      }

      (*v98)(*(v0 + 320), *(v0 + 304));
      v36 = v3;
      v28 = v103;
      v35 = v101;
    }

    while (v5);
LABEL_27:
    while (1)
    {
      v3 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_49;
      }

      if (v3 >= v35)
      {

        v73 = v97;
        sub_25B161264();
        v74 = sub_25B1619F4();
        v75 = sub_25B161D94();
        v76 = os_log_type_enabled(v74, v75);
        v78 = *(v0 + 400);
        v77 = *(v0 + 408);
        v79 = *(v0 + 392);
        if (v76)
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v108[0] = v81;
          *v80 = 136315394;
          *(v80 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v108);
          *(v80 + 12) = 2048;
          *(v80 + 14) = *(v73 + 2);

          _os_log_impl(&dword_25B105000, v74, v75, "%s: [NHOActionSetQuery] Returning %ld matching actionSets.", v80, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x25F862BF0](v81, -1, -1);
          MEMORY[0x25F862BF0](v80, -1, -1);

          (*(v78 + 8))(v77, v79);
        }

        else
        {

          (*(v78 + 8))(v77, v79);
        }

        v106 = v107[28];

        v82 = v107;

        v83 = v82[1];
        v84 = v97;

        return v83(v84);
      }

      v5 = *&v28[8 * v3];
      ++v36;
      if (v5)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t sub_25B12C944()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_25B12CA68@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25B12CAC0(uint64_t *a1, void *a2)
{
  sub_25B11B1C8(*a1, a1[1]);
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOActionSetQuery.suggestedEntities()(uint64_t a1)
{
  *(v2 + 200) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  *(v2 + 208) = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DB8, &qword_25B1637A0);
  *(v2 + 216) = v3;
  *(v2 + 224) = *(v3 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  v4 = sub_25B161414();
  *(v2 + 248) = v4;
  *(v2 + 256) = *(v4 - 8);
  *(v2 + 264) = swift_task_alloc();
  v5 = sub_25B1619A4();
  *(v2 + 272) = v5;
  *(v2 + 280) = *(v5 - 8);
  *(v2 + 288) = swift_task_alloc();
  v6 = sub_25B1619B4();
  *(v2 + 296) = v6;
  *(v2 + 304) = *(v6 - 8);
  *(v2 + 312) = swift_task_alloc();
  v7 = sub_25B161514();
  *(v2 + 320) = v7;
  *(v2 + 328) = *(v7 - 8);
  *(v2 + 336) = swift_task_alloc();
  v8 = sub_25B161864();
  *(v2 + 344) = v8;
  *(v2 + 352) = *(v8 - 8);
  *(v2 + 360) = swift_task_alloc();
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();
  v9 = sub_25B161944();
  *(v2 + 384) = v9;
  *(v2 + 392) = *(v9 - 8);
  *(v2 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C68, &unk_25B1645B0);
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C70, &qword_25B163250);
  *(v2 + 424) = swift_task_alloc();
  v10 = sub_25B161724();
  *(v2 + 432) = v10;
  *(v2 + 440) = *(v10 - 8);
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = *v1;
  *(v2 + 472) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_25B12CF88, 0, 0);
}

uint64_t sub_25B12CF88(uint64_t a1)
{
  v32 = v1;
  v31[1] = *MEMORY[0x277D85DE8];
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    sub_25B1610F4();

    v2 = v1[22];
    v3 = v1[23];
    v4 = qword_27FA39B00;
    sub_25B161264();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_25B161A14();
    __swift_project_value_buffer(v5, qword_27FA3A088);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v31);
      *(v8 + 12) = 2080;
      v10 = sub_25B108480(v2, v3, v31);

      *(v8 + 14) = v10;
      v11 = "%s: [NHOActionSetQuery] Using homeID %s from homeActionSetIntent.";
LABEL_16:
      _os_log_impl(&dword_25B105000, v6, v7, v11, v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v9, -1, -1);
      MEMORY[0x25F862BF0](v8, -1, -1);
LABEL_18:

      v1[60] = v2;
      v1[61] = v3;
      v1[62] = sub_25B161624();
      sub_25B1616C4();
      v1[63] = sub_25B1616B4();
      sub_25B130E18(&qword_27FA39CA8, MEMORY[0x277D15960], MEMORY[0x277D15968]);
      v19 = sub_25B161CC4();

      return MEMORY[0x2822009F8](sub_25B12D8A0, v19, v18);
    }

    goto LABEL_17;
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    sub_25B1610F4();

    v2 = v1[18];
    v3 = v1[19];
    v12 = qword_27FA39B00;
    sub_25B161264();
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_25B161A14();
    __swift_project_value_buffer(v13, qword_27FA3A088);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v31);
      *(v8 + 12) = 2080;
      v14 = sub_25B108480(v2, v3, v31);

      *(v8 + 14) = v14;
      v11 = "%s: [NHOActionSetQuery] Using homeID %s from actionSetControlToggleIntent.";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    sub_25B1610F4();

    v2 = v1[8];
    v3 = v1[9];
    v15 = qword_27FA39B00;
    sub_25B161264();
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_25B161A14();
    __swift_project_value_buffer(v16, qword_27FA3A088);
    sub_25B161264();
    v6 = sub_25B1619F4();
    v7 = sub_25B161D94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v31);
      *(v8 + 12) = 2080;
      v17 = sub_25B108480(v2, v3, v31);

      *(v8 + 14) = v17;
      v11 = "%s: [NHOActionSetQuery] Using homeID %s from actionSetControlSelectIntent.";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v20 = sub_25B161A14();
  __swift_project_value_buffer(v20, qword_27FA3A088);
  v21 = sub_25B1619F4();
  v22 = sub_25B161D84();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v31);
    _os_log_impl(&dword_25B105000, v21, v22, "%s: [NHOActionSetQuery] We have no intent (from IntentParameterDependency) to retrieve the homeID from.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x25F862BF0](v24, -1, -1);
    MEMORY[0x25F862BF0](v23, -1, -1);
  }

  v25 = sub_25B1619F4();
  v26 = sub_25B161D94();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v31);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_25B108480(7104878, 0xE300000000000000, v31);
    _os_log_impl(&dword_25B105000, v25, v26, "%s: [NHOActionSetQuery] Could not find HMHome for %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v28, -1, -1);
    MEMORY[0x25F862BF0](v27, -1, -1);
  }

  (*(v1[32] + 56))(v1[26], 1, 1, v1[31]);
  sub_25B130874();
  sub_25B1611F4();

  v29 = v1[1];

  return v29();
}

uint64_t sub_25B12D8A0()
{

  *(v0 + 512) = sub_25B161614();

  return MEMORY[0x2822009F8](sub_25B12D93C, 0, 0);
}

uint64_t sub_25B12D93C()
{
  sub_25B1614E4();
  v0[2] = sub_25B1616D4();
  v0[3] = v1;
  v0[4] = v2;
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CB0, &unk_25B1645F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B162FE0;
  sub_25B161924();
  v0[24] = v4;
  sub_25B130E18(&qword_27FA39CB8, MEMORY[0x277D16690], MEMORY[0x277D16698]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CC0, &qword_25B1632C0);
  sub_25B11AEBC(&qword_27FA39CC8, &qword_27FA39CC0, &qword_25B1632C0, MEMORY[0x277D83970]);
  sub_25B161E34();
  v5 = MEMORY[0x277D159D8];
  v6 = MEMORY[0x277D159D0];
  sub_25B161764();
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[65] = v7;
  *v7 = v0;
  v7[1] = sub_25B12DB8C;
  v8 = v0[56];
  v9 = v0[53];

  return MEMORY[0x28216E6A8](v8, v9, v5, v6);
}

uint64_t sub_25B12DB8C()
{
  *(*v1 + 528) = v0;

  if (v0)
  {

    v2 = sub_25B12E7E8;
  }

  else
  {

    v2 = sub_25B12DD08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B12DD08()
{
  v106 = v0;
  v105[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25B1616F4();
  v2 = sub_25B12F128(v1);
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {
    sub_25B161264();
    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_2:
      v98 = v89;
      v99 = v5;
      v6 = v0[44];
      MEMORY[0x28223BE20](v2);
      v100 = v89 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v100, v7);
      v5 = 0;
      v104 = v3;
      v9 = *(v3 + 56);
      v3 += 56;
      v8 = v9;
      v10 = 1 << *(v3 - 24);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & v8;
      v13 = (v10 + 63) >> 6;
      v103 = v6 + 16;
      v101 = 0;
      v102 = v6 + 8;
      while (v12)
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v17 = v14 | (v5 << 6);
        v18 = v0[47];
        v19 = v0[43];
        (*(v6 + 16))(v18, *(v104 + 48) + *(v6 + 72) * v17, v19);
        v20 = sub_25B161824();
        (*(v6 + 8))(v18, v19);
        if ((v20 & 1) == 0)
        {
          *&v100[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          if (__OFADD__(v101++, 1))
          {
            __break(1u);
LABEL_16:
            v22 = sub_25B12F62C(v100, v99, v101, v104);
            goto LABEL_17;
          }
        }
      }

      v15 = v5;
      while (1)
      {
        v5 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v5 >= v13)
        {
          goto LABEL_16;
        }

        v16 = *(v3 + 8 * v5);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v12 = (v16 - 1) & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

    v87 = v0[66];
    v88 = swift_slowAlloc();
    v22 = sub_25B12F59C(v88, v5, v3, sub_25B130E60);

    result = MEMORY[0x25F862BF0](v88, -1, -1);
    if (v87)
    {
      return result;
    }

    v89[1] = 0;
LABEL_17:

    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v23 = sub_25B161A14();
    v24 = __swift_project_value_buffer(v23, qword_27FA3A088);
    sub_25B161274();
    v25 = sub_25B1619F4();
    v26 = sub_25B161D94();
    v27 = os_log_type_enabled(v25, v26);
    v89[2] = v24;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v105[0] = v3;
      *v28 = 136315394;
      *(v28 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v105);
      *(v28 + 12) = 2048;
      *(v28 + 14) = *(v22 + 16);

      _os_log_impl(&dword_25B105000, v25, v26, "%s: [NHOActionSetQuery] Home has %ld actionSets.", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v3);
      MEMORY[0x25F862BF0](v3, -1, -1);
      MEMORY[0x25F862BF0](v28, -1, -1);
    }

    else
    {
    }

    v29 = v0[44];
    v30 = v0[41];
    v31 = v0[38];
    v32 = v22 + 56;
    v33 = -1;
    v34 = -1 << *(v22 + 32);
    if (-v34 < 64)
    {
      v33 = ~(-1 << -v34);
    }

    v35 = v33 & *(v22 + 56);
    v36 = v0[35];
    v5 = (63 - v34) >> 6;
    v94 = v29 + 32;
    v95 = v29 + 16;
    v92 = (v31 + 8);
    v93 = (v30 + 8);
    v98 = v29;
    v90 = (v29 + 8);
    v91 = (v36 + 8);
    sub_25B161274();
    v37 = 0;
    v38 = MEMORY[0x277D84F90];
    v99 = v22;
    v96 = v5;
    for (i = v22 + 56; v35; v32 = i)
    {
      v104 = v38;
LABEL_30:
      v40 = v0[45];
      v41 = v0[46];
      v43 = v0[42];
      v42 = v0[43];
      v44 = v0[40];
      v45 = *(v22 + 48);
      v46 = v98;
      (v98[2])(v41, v45 + v98[9] * (__clz(__rbit64(v35)) | (v37 << 6)), v42);
      (v46[4])(v40, v41, v42);
      sub_25B161834();
      v47 = sub_25B1614F4();
      v102 = v48;
      v103 = v47;
      (*v93)(v43, v44);
      v49 = sub_25B161844();
      v100 = v50;
      v101 = v49;
      LOBYTE(v43) = sub_25B161814();
      sub_25B161854();
      if (v43)
      {
        sub_25B161974();
      }

      else
      {
        sub_25B161984();
      }

      v51 = v0[36];
      v52 = v0[34];
      (*v92)(v0[39], v0[37]);
      v53 = sub_25B161994();
      v55 = v54;
      (*v91)(v51, v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
      sub_25B1613E4();
      v56 = sub_25B161124();
      sub_25B1613E4();
      v57 = sub_25B161124();
      sub_25B1613E4();
      v58 = sub_25B161124();
      v59 = v102;
      v0[10] = v103;
      v0[11] = v59;
      sub_25B161104();
      v60 = v100;
      v0[12] = v101;
      v0[13] = v60;
      sub_25B161104();
      v0[14] = v53;
      v0[15] = v55;
      sub_25B161104();
      v38 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_25B1154A8(0, *(v38 + 2) + 1, 1, v38);
      }

      v3 = *(v38 + 2);
      v61 = *(v38 + 3);
      v22 = v99;
      if (v3 >= v61 >> 1)
      {
        v38 = sub_25B1154A8((v61 > 1), v3 + 1, 1, v38);
      }

      v35 &= v35 - 1;
      (*v90)(v0[45], v0[43]);
      *(v38 + 2) = v3 + 1;
      v62 = &v38[24 * v3];
      *(v62 + 4) = v56;
      *(v62 + 5) = v57;
      *(v62 + 6) = v58;
      v5 = v96;
    }

    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v5)
      {

        sub_25B161274();
        v63 = sub_25B1619F4();
        v64 = sub_25B161D94();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v105[0] = v66;
          *v65 = 136315394;
          *(v65 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v105);
          *(v65 + 12) = 2048;
          v67 = v38;
          v68 = *(v22 + 16);

          *(v65 + 14) = v68;
          v38 = v67;

          _os_log_impl(&dword_25B105000, v63, v64, "%s: [NHOActionSetQuery] Home has %ld actionSets.", v65, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v66);
          MEMORY[0x25F862BF0](v66, -1, -1);
          MEMORY[0x25F862BF0](v65, -1, -1);
        }

        else
        {
        }

        if (*(v38 + 2))
        {
          v70 = v0[29];
          v69 = v0[30];
          v71 = v0[27];
          v72 = v0[28];
          _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000019, 0x800000025B166FF0);
          sub_25B1613E4();
          sub_25B130874();
          sub_25B1611E4();
          (*(v72 + 16))(v70, v69, v71);
          v73 = sub_25B1155C8(0, 1, 1, MEMORY[0x277D84F90]);
          v75 = v73[2];
          v74 = v73[3];
          if (v75 >= v74 >> 1)
          {
            v73 = sub_25B1155C8((v74 > 1), v75 + 1, 1, v73);
          }

          v76 = v0[29];
          v77 = v0[27];
          v78 = v0[28];
          (*(v78 + 8))(v0[30], v77);
          v73[2] = v75 + 1;
          (*(v78 + 32))(v73 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v75, v76, v77);
        }

        else
        {
        }

        v80 = v0[55];
        v79 = v0[56];
        v81 = v0[54];
        (*(v0[32] + 56))(v0[26], 1, 1, v0[31]);
        sub_25B130874();
        sub_25B1611F4();
        (*(v80 + 8))(v79, v81);
        v83 = v0[29];
        v82 = v0[30];
        v101 = v0[33];
        v102 = v82;
        v84 = v0[26];
        v103 = v83;
        v104 = v84;

        v85 = v0[1];

        return v85();
      }

      v35 = *(v32 + 8 * v39);
      ++v37;
      if (v35)
      {
        v104 = v38;
        v37 = v39;
        goto LABEL_30;
      }
    }

LABEL_51:
    __break(1u);
  }
}

uint64_t sub_25B12E7E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B12E964@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C0, &qword_25B1643F0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *a1 = sub_25B161304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C8, &qword_25B164498);
  swift_getKeyPath();
  a1[1] = sub_25B161324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2D0, &qword_25B1644C8);
  swift_getKeyPath();
  result = sub_25B161324();
  a1[2] = result;
  return result;
}

uint64_t sub_25B12EA58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B11B408;

  return NHOActionSetQuery.entities(for:)(a1);
}

uint64_t sub_25B12EAEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOActionSetQuery.suggestedEntities()(a1);
}

uint64_t sub_25B12EB84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_25B1309D4();
  *v5 = v2;
  v5[1] = sub_25B11B3EC;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_25B12EC38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOActionSetQuery.defaultResult()(a1);
}

uint64_t sub_25B12ED5C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25B161164();
  *a2 = result;
  return result;
}

uint64_t sub_25B12ED88@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25B161164();
  *a2 = result;
  return result;
}

double sub_25B12EE74@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161144();
  result = *&v4;
  *a2 = v4;
  return result;
}

unint64_t sub_25B12EEB4()
{
  result = qword_27FA39C78;
  if (!qword_27FA39C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA39C80, &qword_25B163280);
    sub_25B115CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39C78);
  }

  return result;
}

uint64_t sub_25B12EF38(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_25B161264();
      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_25B12F000(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x25F862410](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_25B161E54();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_25B12F128(uint64_t a1)
{
  v2 = sub_25B161864();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80], MEMORY[0x277D15D88]);
  result = MEMORY[0x25F862260](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_25B12F954(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25B12F33C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_25B161864();
  result = MEMORY[0x28223BE20](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;
        sub_25B161274();
        return sub_25B12F62C(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_25B12F59C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_25B12F33C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25B12F62C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_25B161864();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A358, &qword_25B164A48);
  result = sub_25B161E94();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80], MEMORY[0x277D15D88]);
    result = sub_25B161A94();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25B12F954(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161864();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80], MEMORY[0x277D15D88]);
  v33 = a2;
  v11 = sub_25B161A94();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_25B130E18(&qword_27FA3A368, MEMORY[0x277D15D80], MEMORY[0x277D15D90]);
      v21 = sub_25B161AA4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_25B12FC34(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25B12FC34(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_25B161864();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_25B130420(v12);
    }

    else
    {
      sub_25B130104(v12);
    }

    v13 = *v3;
    sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80], MEMORY[0x277D15D88]);
    v14 = sub_25B161A94();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_25B130E18(&qword_27FA3A368, MEMORY[0x277D15D80], MEMORY[0x277D15D90]);
        v22 = sub_25B161AA4();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_25B12FECC();
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

void *sub_25B12FECC()
{
  v1 = v0;
  v2 = sub_25B161864();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A358, &qword_25B164A48);
  v6 = *v0;
  v7 = sub_25B161E74();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_25B130104(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25B161864();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A358, &qword_25B164A48);
  v7 = sub_25B161E84();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80], MEMORY[0x277D15D88]);
      result = sub_25B161A94();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25B130420(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25B161864();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A358, &qword_25B164A48);
  result = sub_25B161E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80], MEMORY[0x277D15D88]);
      result = sub_25B161A94();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_25B13077C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25B161FA4() & 1;
  }
}

uint64_t sub_25B1307D4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25B161FA4() & 1;
  }
}

double sub_25B13082C@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161144();
  result = *&v4;
  *a2 = v4;
  return result;
}

unint64_t sub_25B130874()
{
  result = qword_27FA3A2D8;
  if (!qword_27FA3A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A2D8);
  }

  return result;
}

unint64_t sub_25B1308CC()
{
  result = qword_27FA3A2E0;
  if (!qword_27FA3A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A2E0);
  }

  return result;
}

unint64_t sub_25B130924()
{
  result = qword_27FA3A2E8;
  if (!qword_27FA3A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A2E8);
  }

  return result;
}

unint64_t sub_25B13097C()
{
  result = qword_27FA3A2F0;
  if (!qword_27FA3A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A2F0);
  }

  return result;
}

unint64_t sub_25B1309D4()
{
  result = qword_27FA3A2F8;
  if (!qword_27FA3A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A2F8);
  }

  return result;
}

unint64_t sub_25B130A2C()
{
  result = qword_27FA3A300;
  if (!qword_27FA3A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A300);
  }

  return result;
}

unint64_t sub_25B130A84()
{
  result = qword_27FA3A308;
  if (!qword_27FA3A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A308);
  }

  return result;
}

unint64_t sub_25B130AE0()
{
  result = qword_27FA3A310;
  if (!qword_27FA3A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A310);
  }

  return result;
}

unint64_t sub_25B130B7C()
{
  result = qword_27FA3A328;
  if (!qword_27FA3A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A328);
  }

  return result;
}

unint64_t sub_25B130BD4()
{
  result = qword_27FA3A330;
  if (!qword_27FA3A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A330);
  }

  return result;
}

unint64_t sub_25B130C2C()
{
  result = qword_27FA3A338;
  if (!qword_27FA3A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A338);
  }

  return result;
}

unint64_t sub_25B130C88()
{
  result = qword_27FA3A340;
  if (!qword_27FA3A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A340);
  }

  return result;
}

void *sub_25B130D30@<X0>(void *a1@<X8>)
{
  result = sub_25B1610F4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_25B130D70@<X0>(void *a1@<X8>)
{
  result = sub_25B1610F4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_25B130DB0@<X0>(void *a1@<X8>)
{
  result = sub_25B1610F4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25B130E18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25B130EA8()
{
  v0 = type metadata accessor for HomeManagerActor();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  *(v1 + 128) = MEMORY[0x277D84F90];
  sub_25B132284(0, &qword_27FA3A3E8, 0x277CD1C60);
  v2 = [swift_getObjCClassFromMetadata() defaultPrivateConfiguration];
  [v2 setCachePolicy_];
  [v2 setDiscretionary_];
  [v2 setOptions_];
  [v2 setAdaptive_];
  *(v1 + 112) = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  v6.receiver = v1;
  v6.super_class = v0;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3[14];
  v5 = v3;
  [v4 setDelegate_];

  qword_27FA3E788 = v5;
}

void *sub_25B130FE4()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  *(v1 + 128) = MEMORY[0x277D84F90];
  sub_25B132284(0, &qword_27FA3A3E8, 0x277CD1C60);
  v2 = [swift_getObjCClassFromMetadata() defaultPrivateConfiguration];
  [v2 setCachePolicy_];
  [v2 setDiscretionary_];
  [v2 setOptions_];
  [v2 setAdaptive_];
  *(v1 + 112) = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  v7.receiver = v1;
  v7.super_class = v0;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = v3[14];
  v5 = v3;
  [v4 setDelegate_];

  return v5;
}

void *sub_25B131118()
{
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  *(v0 + 128) = MEMORY[0x277D84F90];
  sub_25B132284(0, &qword_27FA3A3E8, 0x277CD1C60);
  v1 = [swift_getObjCClassFromMetadata() defaultPrivateConfiguration];
  [v1 setCachePolicy_];
  [v1 setDiscretionary_];
  [v1 setOptions_];
  [v1 setAdaptive_];
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for HomeManagerActor();
  v2 = objc_msgSendSuper2(&v6, sel_init);
  v3 = v2[14];
  v4 = v2;
  [v3 setDelegate_];

  return v4;
}

uint64_t HomeManagerActor.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HomeManagerActor.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t static HomeManagerActor.homeManager.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = sub_25B132284(0, &qword_27FA3A370, 0x277CD1A90);
  *v1 = v0;
  v1[1] = sub_25B1313DC;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x616E614D656D6F68, 0xEB00000000726567, sub_25B1314F0, 0, v2);
}

uint64_t sub_25B1313DC()
{

  return MEMORY[0x2822009F8](sub_25B1314D8, 0, 0);
}

uint64_t sub_25B1314F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_25B161CF4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  sub_25B131B20(0, 0, v8, &unk_25B164B28, v11);
}

uint64_t sub_25B1316CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B1317AC, 0, 0);
}

uint64_t sub_25B1317AC()
{
  if (qword_27FA39B40 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = qword_27FA3E788;
  v0[12] = qword_27FA3E788;
  v7 = *(v3 + 16);
  v7(v2, v4, v5);
  v7(v1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[13] = v9;
  (*(v3 + 32))(v9 + v8, v2, v5);

  return MEMORY[0x2822009F8](sub_25B1318E0, v6, 0);
}

uint64_t sub_25B1318E0()
{
  v1 = v0[12];
  if (*(v1 + 120) == 1)
  {
    v2 = *(v1 + 112);
    v0[5] = v2;
    v3 = v0[10];
    v4 = v0[7];
    v5 = v0[8];
    v6 = v2;
    sub_25B161CD4();

    (*(v5 + 8))(v3, v4);
  }

  else
  {
    v7 = v0[13];
    v8 = swift_allocObject();
    *(v8 + 16) = sub_25B13299C;
    *(v8 + 24) = v7;
    swift_beginAccess();
    v9 = *(v1 + 128);
    sub_25B161274();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 128) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_25B1155EC(0, v9[2] + 1, 1, v9);
      *(v1 + 128) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_25B1155EC((v11 > 1), v12 + 1, 1, v9);
    }

    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    v9[2] = v12 + 1;
    v16 = &v9[2 * v12];
    v16[4] = sub_25B132A18;
    v16[5] = v8;
    *(v1 + 128) = v9;
    swift_endAccess();

    (*(v15 + 8))(v13, v14);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_25B131AD0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18);
  return sub_25B161CD4();
}

uint64_t sub_25B131B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25B1322CC(a3, v25 - v10);
  v12 = sub_25B161CF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_25B161274();
  if (v14 == 1)
  {
    sub_25B13233C(v11);
  }

  else
  {
    sub_25B161CE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25B161CC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25B161B74() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_25B161274();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_25B13233C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25B13233C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall HomeManagerActor.homeManagerDidUpdateHomes(_:)(HMHomeManager a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_25B161CF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  sub_25B161274();
  sub_25B131B20(0, 0, v4, &unk_25B164A68, v6);
}

uint64_t sub_25B131F08()
{
  sub_25B13205C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B131F6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B11B3EC;

  return sub_25B131EE8(a1, v4, v5, v6);
}

uint64_t sub_25B13205C()
{
  *(v0 + 120) = 1;
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  result = sub_25B161264();
  if (v2)
  {
    v4 = 0;
    v5 = v1 + 40;
    while (v4 < *(v1 + 16))
    {
      ++v4;
      v6 = *(v5 - 8);
      v7 = *(v0 + 112);
      sub_25B161274();
      v6(&v7);

      v5 += 16;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v0 + 128) = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B132284(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25B1322CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B13233C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B1323A4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25B13249C;

  return v6(a1);
}

uint64_t sub_25B13249C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25B132594()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B1325CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B11B3EC;

  return sub_25B1323A4(a1, v4);
}

uint64_t sub_25B132684(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B114758;

  return sub_25B1323A4(a1, v4);
}

uint64_t sub_25B13273C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B13280C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B114758;

  return sub_25B1316CC(a1, v6, v7, v1 + v5);
}

uint64_t sub_25B132908()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B13299C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18);

  return sub_25B131AD0(a1);
}

uint64_t static HMHome.home(homeID:fallbackToCurrentHome:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25B132B10;

  return sub_25B135748(a1, a2, v4);
}

uint64_t sub_25B132B10(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t HMHome.pickableEnergyForecastIntents.getter()
{
  v1[4] = v0;
  v2 = sub_25B161514();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B132CCC, 0, 0);
}

uint64_t sub_25B132CCC()
{
  v1 = type metadata accessor for NHOHomeUserCapabilities(0);
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  if (qword_27FA39AF8 != -1)
  {
    swift_once();
  }

  receiver = v0[2].receiver;
  v5 = sub_25B161A14();
  v6 = __swift_project_value_buffer(v5, qword_27FA3A070);
  (*(*(v5 - 8) + 16))(&v2[v3], v6, v5);
  v2[OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded] = 0;
  v2[OBJC_IVAR___NHOHomeUserCapabilities_hasMockData] = 0;
  *&v2[OBJC_IVAR___NHOHomeUserCapabilities_home] = receiver;
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v7 = receiver;
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, sel_init);
  v8 = swift_task_alloc();
  v0[4].super_class = v8;
  *v8 = v0;
  *(v8 + 1) = sub_25B132E54;

  return sub_25B1498F4();
}

uint64_t sub_25B132E54()
{

  return MEMORY[0x2822009F8](sub_25B132F50, 0, 0);
}

uint64_t sub_25B132F50()
{
  if (sub_25B14B444())
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    type metadata accessor for EnergyForecastIntent();
    v5 = [v4 uniqueIdentifier];
    sub_25B161504();

    v6 = sub_25B1614F4();
    v8 = v7;
    (*(v2 + 8))(v1, v3);
    v9 = [v4 name];
    v10 = sub_25B161B34();
    v12 = v11;

    v13 = EnergyForecastIntent.__allocating_init(homeIdentifier:homeName:)(v6, v8, v10, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25B163810;
    *(v14 + 32) = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t HMHome.pickableElectricityUsageIntents.getter()
{
  v1[4] = v0;
  v2 = sub_25B161514();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B133184, 0, 0);
}

uint64_t sub_25B133184()
{
  v1 = type metadata accessor for NHOHomeUserCapabilities(0);
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  if (qword_27FA39AF8 != -1)
  {
    swift_once();
  }

  receiver = v0[2].receiver;
  v5 = sub_25B161A14();
  v6 = __swift_project_value_buffer(v5, qword_27FA3A070);
  (*(*(v5 - 8) + 16))(&v2[v3], v6, v5);
  v2[OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded] = 0;
  v2[OBJC_IVAR___NHOHomeUserCapabilities_hasMockData] = 0;
  *&v2[OBJC_IVAR___NHOHomeUserCapabilities_home] = receiver;
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v7 = receiver;
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, sel_init);
  v8 = swift_task_alloc();
  v0[4].super_class = v8;
  *v8 = v0;
  *(v8 + 1) = sub_25B13330C;

  return sub_25B1498F4();
}

uint64_t sub_25B13330C()
{

  return MEMORY[0x2822009F8](sub_25B133408, 0, 0);
}

uint64_t sub_25B133408()
{
  v1 = *(v0 + 64);
  if (*(v1 + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) & 1) != 0 || (*(v1 + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData) & 1) != 0 || (sub_25B1494D8())
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    type metadata accessor for ElectricityUsageIntent();
    v6 = [v5 uniqueIdentifier];
    sub_25B161504();

    v7 = sub_25B1614F4();
    v9 = v8;
    (*(v3 + 8))(v2, v4);
    v10 = [v5 name];
    v11 = sub_25B161B34();
    v13 = v12;

    v14 = ElectricityUsageIntent.__allocating_init(homeIdentifier:homeName:)(v7, v9, v11, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25B163810;
    *(v15 + 32) = v14;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t HMHome.pickableElectricityRatesIntents.getter()
{
  v1[4] = v0;
  v2 = sub_25B161514();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B133660, 0, 0);
}

uint64_t sub_25B133660()
{
  v1 = type metadata accessor for NHOHomeUserCapabilities(0);
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  if (qword_27FA39AF8 != -1)
  {
    swift_once();
  }

  receiver = v0[2].receiver;
  v5 = sub_25B161A14();
  v6 = __swift_project_value_buffer(v5, qword_27FA3A070);
  (*(*(v5 - 8) + 16))(&v2[v3], v6, v5);
  v2[OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded] = 0;
  v2[OBJC_IVAR___NHOHomeUserCapabilities_hasMockData] = 0;
  *&v2[OBJC_IVAR___NHOHomeUserCapabilities_home] = receiver;
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v7 = receiver;
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, sel_init);
  v8 = swift_task_alloc();
  v0[4].super_class = v8;
  *v8 = v0;
  *(v8 + 1) = sub_25B1337E8;

  return sub_25B1498F4();
}

uint64_t sub_25B1337E8()
{

  return MEMORY[0x2822009F8](sub_25B1338E4, 0, 0);
}

uint64_t sub_25B1338E4()
{
  v1 = *(v0 + 64);
  if (*(v1 + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) & 1) != 0 || (*(v1 + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData) & 1) != 0 || (sub_25B1494D8())
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    type metadata accessor for ElectricityRatesIntent();
    v6 = [v5 uniqueIdentifier];
    sub_25B161504();

    v7 = sub_25B1614F4();
    v9 = v8;
    (*(v3 + 8))(v2, v4);
    v10 = [v5 name];
    v11 = sub_25B161B34();
    v13 = v12;

    v14 = ElectricityRatesIntent.__allocating_init(homeIdentifier:homeName:)(v7, v9, v11, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25B163810;
    *(v15 + 32) = v14;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t HMHome.actionSetsWithActions()()
{
  v1 = [v0 actionSets];
  sub_25B132284(0, &qword_27FA3A460, 0x277CD1800);
  v2 = sub_25B161C64();

  v13 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F862410](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 actions];
      sub_25B132284(0, &qword_27FA39F60, 0x277CD17F8);
      sub_25B12171C();
      v9 = sub_25B161D04();

      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = sub_25B161E54();
      }

      else
      {
        v10 = *(v9 + 16);
      }

      if (v10 <= 0)
      {
      }

      else
      {
        sub_25B161EE4();
        sub_25B161F04();
        sub_25B161F14();
        sub_25B161EF4();
      }

      ++v4;
      if (v7 == i)
      {
        v11 = v13;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_21:

  return v11;
}

uint64_t HMHome.pickableActionSetIntents.getter()
{
  v1 = sub_25B161414();
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_25B161514();
  v3 = *(v53 - 8);
  v4 = MEMORY[0x28223BE20](v53);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v45 - v6;
  v54 = v0;
  v7 = HMHome.actionSetsWithActions()();
  v8 = v7;
  v73 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v10 = 0;
    v49 = v8 & 0xC000000000000001;
    v48 = v8 & 0xFFFFFFFFFFFFFF8;
    v45 = (v3 + 8);
    v47 = v8;
    v46 = i;
    while (1)
    {
      if (v49)
      {
        v11 = MEMORY[0x25F862410](v10, v8);
      }

      else
      {
        if (v10 >= *(v48 + 16))
        {
          goto LABEL_14;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v65 = v10;
      v67 = v10 + 1;
      v13 = v54;
      v14 = [v54 uniqueIdentifier];
      v15 = v51;
      sub_25B161504();

      v68 = sub_25B1614F4();
      v17 = v16;
      v18 = *v45;
      v19 = v53;
      (*v45)(v15, v53);
      v20 = [v13 name];
      v69 = sub_25B161B34();
      v22 = v21;

      v23 = [v12 uniqueIdentifier];
      v24 = v52;
      sub_25B161504();

      v62 = sub_25B1614F4();
      v59 = v25;
      v18(v24, v19);
      v26 = [v12 name];
      v61 = sub_25B161B34();
      v28 = v27;

      v60 = HMActionSet.iconSymbolName.getter();
      v56 = v29;
      HMActionSet.iconTintColor.getter();
      v30 = Color.toHexString()();
      object = v30._object;
      countAndFlagsBits = v30._countAndFlagsBits;

      v31 = [objc_allocWithZone(type metadata accessor for NHOActionSetIntent()) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
      v66 = v12;
      v32 = v31;
      v57 = v17;
      sub_25B161264();
      v58 = v22;
      sub_25B161264();
      sub_25B1613E4();
      v33 = sub_25B161124();
      sub_25B1613E4();
      v34 = sub_25B161124();
      v70 = v68;
      v71 = v17;
      sub_25B161104();
      v70 = v69;
      v71 = v22;
      sub_25B161104();
      v70 = v33;
      v71 = v34;
      sub_25B161274();
      sub_25B161154();

      v35 = v59;
      sub_25B161264();
      v36 = v28;
      v55 = v28;
      sub_25B161264();
      v37 = v56;
      sub_25B161264();
      sub_25B1613E4();
      v3 = sub_25B161124();
      sub_25B1613E4();
      v38 = sub_25B161124();
      sub_25B1613E4();
      v39 = sub_25B161124();
      v40 = v62;
      v70 = v62;
      v71 = v35;
      sub_25B161104();
      v41 = v61;
      v70 = v61;
      v71 = v36;
      sub_25B161104();
      v42 = v60;
      v70 = v60;
      v71 = v37;
      sub_25B161104();
      v70 = v3;
      v71 = v38;
      v72 = v39;
      sub_25B161274();
      sub_25B161154();

      v70 = v68;
      v71 = v57;
      sub_25B161274();
      sub_25B161154();

      v70 = v69;
      v71 = v58;
      sub_25B161274();
      sub_25B161154();

      v70 = v40;
      v71 = v35;
      sub_25B161274();
      sub_25B161154();

      v70 = v41;
      v71 = v55;
      sub_25B161274();
      sub_25B161154();

      v70 = v42;
      v71 = v37;
      sub_25B161274();
      sub_25B161154();

      v70 = countAndFlagsBits;
      v71 = object;
      sub_25B161274();
      sub_25B161154();

      LOBYTE(v70) = 0;
      sub_25B161274();
      sub_25B161154();

      MEMORY[0x25F862190]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v3 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25B161C84();
      }

      sub_25B161CA4();
      v10 = v65 + 1;
      v8 = v47;
      if (v67 == v46)
      {
        v43 = v73;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_17:

  return v43;
}

uint64_t HMHome.pickableAccessoryIntents(forRoom:)(void *a1)
{
  v55 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  v1 = [a1 accessories];
  sub_25B132284(0, &qword_27FA3A468, 0x277CD1650);
  v2 = sub_25B161C64();

  if (v2 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v4 = 0;
    v44 = v2 & 0xC000000000000001;
    v37 = v2 & 0xFFFFFFFFFFFFFF8;
    v36 = v2 + 32;
    v38 = MEMORY[0x277D84F90];
    v39 = MEMORY[0x277D84F90];
    v40 = i;
    v41 = v2;
    while (1)
    {
      if (v44)
      {
        v5 = MEMORY[0x25F862410](v4, v2);
      }

      else
      {
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_56;
        }

        v5 = *(v36 + 8 * v4);
      }

      v6 = v5;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v8 = [v5 home];
      if (v8)
      {
        v46 = v4;
        v9 = v8;
        v10 = [v8 serviceGroups];

        sub_25B132284(0, &qword_27FA3A470, 0x277CD1D98);
        v11 = sub_25B161C64();

        v12 = [v6 services];
        v52 = sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
        v2 = sub_25B161C64();

        if (v2 >> 62)
        {
          v13 = sub_25B161E54();
          if (v13)
          {
LABEL_14:
            v51 = v11 & 0xFFFFFFFFFFFFFF8;
            if (v11 >> 62)
            {
              v53 = sub_25B161E54();
            }

            else
            {
              v53 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v14 = 0;
            v48 = v6;
            v49 = v2 & 0xC000000000000001;
            v42 = v2 + 32;
            v43 = v2 & 0xFFFFFFFFFFFFFF8;
            v47 = v2;
            v45 = v13;
            while (1)
            {
              if (v49)
              {
                v15 = MEMORY[0x25F862410](v14, v2);
              }

              else
              {
                if (v14 >= *(v43 + 16))
                {
                  goto LABEL_55;
                }

                v15 = *(v42 + 8 * v14);
              }

              v16 = v14;
              v17 = v15;
              v50 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              if (v53)
              {
                break;
              }

LABEL_17:

              v14 = v50;
              v2 = v47;
              v6 = v48;
              if (v50 == v45)
              {
                goto LABEL_44;
              }
            }

            v18 = 0;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x25F862410](v18, v11);
              }

              else
              {
                if (v18 >= *(v51 + 16))
                {
                  goto LABEL_52;
                }

                v19 = *(v11 + 8 * v18 + 32);
              }

              v20 = v19;
              v21 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                __break(1u);
LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

              v22 = [v19 services];
              v23 = sub_25B161C64();

              v54 = v17;
              MEMORY[0x28223BE20](v24);
              v35 = &v54;
              v2 = sub_25B130E80(sub_25B1361EC, v34, v23);

              if (v2)
              {
                break;
              }

              ++v18;
              if (v21 == v53)
              {
                goto LABEL_17;
              }
            }

            v54 = v20;
            MEMORY[0x28223BE20](v25);
            v35 = &v54;
            if (sub_25B130E80(sub_25B136218, v34, v39))
            {

              i = v40;
              v2 = v41;
LABEL_41:
              v4 = v46;
              goto LABEL_5;
            }

            v26 = v20;
            MEMORY[0x25F862190]();
            i = v40;
            v2 = v41;
            v4 = v46;
            v27 = v48;
            if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_25B161C84();
              v4 = v46;
            }

            sub_25B161CA4();
            v39 = v55;
            v28 = sub_25B1349DC(v26, HMServiceGroup.widgetSupportedServiceKind(), HMServiceGroup.primaryService());
            if (v28)
            {
              v29 = v28;
              MEMORY[0x25F862190]();
              if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_25B161C84();
              }

              sub_25B161CA4();

              v38 = v56;
              goto LABEL_41;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v13)
          {
            goto LABEL_14;
          }
        }

LABEL_44:

        i = v40;
        v2 = v41;
        v4 = v46;
      }

      v30 = sub_25B1349DC(v6, HMAccessory.widgetSupportedServiceKind(), HMAccessory.primaryService());
      if (v30)
      {
        v31 = v30;
        MEMORY[0x25F862190]();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25B161C84();
        }

        sub_25B161CA4();

        v38 = v56;
      }

      else
      {
      }

LABEL_5:
      if (v4 == i)
      {

        v32 = v38;
        goto LABEL_59;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_59:

  return v32;
}

char *sub_25B1349DC(void *a1, void (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v77 = a3;
  v5 = sub_25B161414();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_25B161514();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v64 - v13;
  v15 = sub_25B1616A4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v81 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v64 - v20);
  a2(v19);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_25B11D9B8(v14);
    return 0;
  }

  else
  {
    v23 = *(v16 + 32);
    v79 = v15;
    v23(v21, v14, v15);
    v24 = sub_25B161684();
    v80 = v25;
    v26 = v77();
    v77 = v21;
    v78 = v16;
    if (v26)
    {
      v27 = v26;

      v70 = HMService.iconSymbol.getter();
      v80 = v28;
    }

    else
    {
      v70 = v24;
    }

    v29 = v73;
    v30 = [v73 uniqueIdentifier];
    sub_25B161504();

    v76 = sub_25B1614F4();
    v72 = v31;
    v32 = v75;
    v33 = v74[1];
    v33(v11, v75);
    v34 = [v29 name];
    v35 = sub_25B161B34();
    v68 = v35;
    v74 = v36;

    v37 = [a1 uniqueIdentifier];
    sub_25B161504();

    v69 = sub_25B1614F4();
    v73 = v38;
    v33(v9, v32);
    v39 = [a1 name];
    v75 = sub_25B161B34();
    v71 = v40;

    (*(v78 + 16))(v81, v77, v79);
    v41 = [objc_allocWithZone(type metadata accessor for NHOAccessoryIntent()) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
    v42 = v41;
    v43 = v72;
    sub_25B161264();
    v44 = v74;
    sub_25B161264();
    sub_25B1613E4();
    v45 = sub_25B161124();
    sub_25B1613E4();
    v46 = sub_25B161124();
    v82 = v76;
    v83 = v43;
    sub_25B161104();
    v82 = v35;
    v83 = v44;
    sub_25B161104();
    v82 = v45;
    v83 = v46;
    sub_25B161274();
    sub_25B161154();

    v47 = v73;
    sub_25B161264();
    v48 = v71;
    sub_25B161264();
    v49 = v80;
    sub_25B161264();
    v50 = sub_25B161694();
    v66 = v51;
    v67 = v50;
    sub_25B1613E4();
    v65 = sub_25B161124();
    sub_25B1613E4();
    v52 = sub_25B161124();
    sub_25B1613E4();
    v53 = sub_25B161124();
    sub_25B1613E4();
    v54 = sub_25B161124();
    sub_25B1613E4();
    v55 = sub_25B161124();
    v56 = v69;
    v82 = v69;
    v83 = v47;
    v57 = v65;
    sub_25B161104();
    v82 = v75;
    v83 = v48;
    sub_25B161104();
    v58 = v70;
    v82 = v70;
    v83 = v49;
    sub_25B161104();
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_25B161104();
    v82 = v67;
    v83 = v66;
    sub_25B161104();
    v82 = v57;
    v83 = v52;
    v84 = v53;
    v85 = v54;
    v86 = v55;
    sub_25B161274();
    sub_25B161154();

    v82 = v76;
    v83 = v72;
    sub_25B161274();
    sub_25B161154();

    v82 = v68;
    v83 = v74;
    sub_25B161274();
    sub_25B161154();

    v82 = v56;
    v83 = v73;
    sub_25B161274();
    sub_25B161154();

    v82 = v75;
    v83 = v71;
    sub_25B161274();
    sub_25B161154();

    v82 = v58;
    v83 = v49;
    sub_25B161274();
    sub_25B161154();

    v59 = v81;
    v82 = sub_25B161694();
    v83 = v60;
    sub_25B161274();
    sub_25B161154();

    LOBYTE(v82) = 0;
    sub_25B161274();
    sub_25B161154();

    v61 = *(v78 + 8);
    v62 = v59;
    v63 = v79;
    v61(v62, v79);
    v61(v77, v63);
    return v42;
  }
}

Swift::Bool __swiftcall HMHome.isCurrentRestrictedGuestAwayFromHome()()
{
  v1 = [v0 currentUser];
  v2 = [v0 homeAccessControlForUser_];

  v3 = [v2 isRestrictedGuest];
  if (v3)
  {
    v3 = [v0 homeLocationStatus] == 2;
  }

  if (qword_27FA39AE8 != -1)
  {
    swift_once();
  }

  v4 = sub_25B161A14();
  __swift_project_value_buffer(v4, qword_27FA3A040);
  v5 = v0;
  v6 = sub_25B1619F4();
  v7 = sub_25B161D94();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_25B108480(0xD000000000000026, 0x800000025B1670F0, &v21);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v3;
    *(v8 + 18) = 2080;
    v10 = [v5 name];
    v11 = sub_25B161B34();
    v13 = v12;

    v14 = sub_25B108480(v11, v13, &v21);

    *(v8 + 20) = v14;
    *(v8 + 28) = 2080;
    [v5 homeLocationStatus];
    v15 = HMStringFromHomeLocation();
    v16 = sub_25B161B34();
    v18 = v17;

    v19 = sub_25B108480(v16, v18, &v21);

    *(v8 + 30) = v19;
    _os_log_impl(&dword_25B105000, v6, v7, "%s: result = %{BOOL}d, home: %s, location status %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v9, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  return v3;
}

Swift::Bool __swiftcall HMHome.hasEnabledResident()()
{
  v1 = HFForceRemoteAccessStateAvailable();
  v2 = [v0 residentDevices];
  sub_25B132284(0, &qword_27FA3A478, 0x277CD1D68);
  v3 = sub_25B161C64();

  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_25B161E54();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25F862410](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 hf_isEnabled];

    ++v5;
    if (v8)
    {
      v1 = 1;
      break;
    }
  }

  return v1;
}

Swift::Bool __swiftcall HMHome.hasEnabledAndReachableResident()()
{
  LOBYTE(v1) = HFForceRemoteAccessStateAvailable();
  v2 = [v0 residentDevices];
  sub_25B132284(0, &qword_27FA3A478, 0x277CD1D68);
  v3 = sub_25B161C64();

  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v10 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25F862410](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 hf_isEnabled])
      {
        v8 = [v7 status];

        if (v8)
        {
          LOBYTE(v1) = 1;
          goto LABEL_15;
        }
      }

      else
      {
      }

      ++v5;
      if (v1 == i)
      {
        LOBYTE(v1) = v10;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return v1;
}

uint64_t sub_25B135748(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_25B161514();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v3 + 64) = v5;
  v6 = sub_25B132284(0, &qword_27FA3A370, 0x277CD1A90);
  *v5 = v3;
  v5[1] = sub_25B13589C;

  return MEMORY[0x2822007B8](v3 + 16, 0, 0, 0x616E614D656D6F68, 0xEB00000000726567, sub_25B1314F0, 0, v6);
}

uint64_t sub_25B13589C()
{

  return MEMORY[0x2822009F8](sub_25B135998, 0, 0);
}

uint64_t sub_25B135998()
{
  v61 = v0;
  v1 = v0;
  v2 = v0[4];
  v3 = v0[2];
  v52 = v1;
  if (v2)
  {
    v4 = [v3 homes];
    sub_25B132284(0, &qword_27FA3A480, 0x277CD1A60);
    v5 = sub_25B161C64();

    v60 = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
      goto LABEL_30;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v3; v6; i = v3)
    {
      v7 = 0;
      v57 = v5 & 0xFFFFFFFFFFFFFF8;
      v58 = v5 & 0xC000000000000001;
      v53 = v2;
      v54 = (v1[6] + 8);
      v55 = v6;
      v56 = v5;
      while (1)
      {
        if (v58)
        {
          v8 = MEMORY[0x25F862410](v7, v5);
        }

        else
        {
          if (v7 >= *(v57 + 16))
          {
            goto LABEL_29;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = v1[7];
        v2 = v1[4];
        v12 = v1[5];
        v3 = v1;
        v13 = v1[3];
        v14 = [v8 uniqueIdentifier];
        sub_25B161504();

        v15 = sub_25B1614F4();
        v17 = v16;
        (*v54)(v11, v12);
        if (v15 == v13 && v2 == v17)
        {

          v1 = v3;
        }

        else
        {
          v1 = v3;
          v18 = sub_25B161FA4();

          if ((v18 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        sub_25B161EE4();
        sub_25B161F04();
        sub_25B161F14();
        sub_25B161EF4();
LABEL_7:
        v5 = v56;
        ++v7;
        if (v10 == v55)
        {
          v19 = v60;
          v3 = i;
          v2 = v53;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v6 = sub_25B161E54();
    }

    v19 = MEMORY[0x277D84F90];
LABEL_32:

    if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
    {
      if (sub_25B161E54())
      {
        goto LABEL_35;
      }
    }

    else if (*(v19 + 16))
    {
LABEL_35:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x25F862410](0, v19);
        goto LABEL_38;
      }

      if (*(v19 + 16))
      {
        v32 = *(v19 + 32);
LABEL_38:
        v33 = v32;

        if (qword_27FA39AE8 != -1)
        {
          swift_once();
        }

        v34 = sub_25B161A14();
        __swift_project_value_buffer(v34, qword_27FA3A040);
        v25 = v33;
        sub_25B161264();
        v35 = sub_25B1619F4();
        v36 = sub_25B161D94();

        if (os_log_type_enabled(v35, v36))
        {
          v59 = v52[3];
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v60 = v38;
          *v37 = 136315650;
          *(v37 + 4) = sub_25B108480(0xD000000000000023, 0x800000025B167120, &v60);
          *(v37 + 12) = 2080;
          v39 = [v25 name];
          v40 = sub_25B161B34();
          v42 = v41;

          v43 = sub_25B108480(v40, v42, &v60);

          *(v37 + 14) = v43;
          *(v37 + 22) = 2080;
          *(v37 + 24) = sub_25B108480(v59, v2, &v60);
          _os_log_impl(&dword_25B105000, v35, v36, "%s: home %s found for homeID: %s", v37, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v38, -1, -1);
          MEMORY[0x25F862BF0](v37, -1, -1);
        }

        else
        {
        }

        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_54;
    }

    if (qword_27FA39AE8 == -1)
    {
LABEL_45:
      v44 = sub_25B161A14();
      __swift_project_value_buffer(v44, qword_27FA3A040);
      sub_25B161264();
      v27 = sub_25B1619F4();
      v45 = sub_25B161D94();

      if (!os_log_type_enabled(v27, v45))
      {
LABEL_48:

        v25 = 0;
        goto LABEL_49;
      }

      v46 = v1[3];
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v60 = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_25B108480(0xD000000000000023, 0x800000025B167120, &v60);
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_25B108480(v46, v2, &v60);
      _os_log_impl(&dword_25B105000, v27, v45, "%s: home with ID %s not found, returning no home", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v48, -1, -1);
      v31 = v47;
LABEL_47:
      MEMORY[0x25F862BF0](v31, -1, -1);
      goto LABEL_48;
    }

LABEL_54:
    swift_once();
    goto LABEL_45;
  }

  if (*(v1 + 72) != 1)
  {
    if (qword_27FA39AE8 != -1)
    {
      swift_once();
    }

    v26 = sub_25B161A14();
    __swift_project_value_buffer(v26, qword_27FA3A040);
    v27 = sub_25B1619F4();
    v28 = sub_25B161D94();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_48;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v60 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_25B108480(0xD000000000000023, 0x800000025B167120, &v60);
    _os_log_impl(&dword_25B105000, v27, v28, "%s: no homeID, returning no home", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x25F862BF0](v30, -1, -1);
    v31 = v29;
    goto LABEL_47;
  }

  if (qword_27FA39AE8 != -1)
  {
    swift_once();
  }

  v20 = sub_25B161A14();
  __swift_project_value_buffer(v20, qword_27FA3A040);
  v21 = sub_25B1619F4();
  v22 = sub_25B161D94();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v60 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_25B108480(0xD000000000000023, 0x800000025B167120, &v60);
    _os_log_impl(&dword_25B105000, v21, v22, "%s: no homeID, returning manager.currentHome", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x25F862BF0](v24, -1, -1);
    MEMORY[0x25F862BF0](v23, -1, -1);
  }

  v25 = [v3 currentHome];
LABEL_49:

  v49 = v52[1];

  return v49(v25);
}

uint64_t NHOHomeQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C30, &qword_25B162FF0);
  swift_getKeyPath();
  swift_getKeyPath();
  *a1 = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C0, &qword_25B1643F0);
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A4C8, &qword_25B164C00);
  swift_getKeyPath();
  a1[2] = sub_25B161324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A4D0, &qword_25B164C30);
  swift_getKeyPath();
  swift_getKeyPath();
  a1[3] = sub_25B161314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A4D8, &qword_25B164C88);
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_25B161314();
  a1[4] = result;
  return result;
}

uint64_t static NHOHomeEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FA39B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA3A488 + 1);
  v3 = qword_27FA3A498;
  v4 = unk_27FA3A4A0;
  v5 = qword_27FA3A4A8;
  *a1 = xmmword_27FA3A488;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t static NHOHomeEntity.defaultQuery.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v1 = *(a1 + 32);
  if (qword_27FA39B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FA3A488 = v4;
  *&qword_27FA3A498 = v3;
  qword_27FA3A4A8 = v1;
}

uint64_t (*static NHOHomeEntity.defaultQuery.modify(uint64_t a1))(void)
{
  if (qword_27FA39B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25B13669C@<X0>(void *a1@<X8>)
{
  if (qword_27FA39B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA3A488 + 1);
  v3 = qword_27FA3A498;
  v4 = unk_27FA3A4A0;
  v5 = qword_27FA3A4A8;
  *a1 = xmmword_27FA3A488;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t sub_25B13675C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = qword_27FA39B48;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_27FA3A488 = v1;
  *(&xmmword_27FA3A488 + 1) = v2;
  qword_27FA3A498 = v3;
  unk_27FA3A4A0 = v4;
  qword_27FA3A4A8 = v5;
}

uint64_t sub_25B13685C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_25B161584();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25B1613F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B161B14();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_25B161414();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_25B161354();
  __swift_allocate_value_buffer(v10, qword_27FA3A4B0);
  __swift_project_value_buffer(v10, qword_27FA3A4B0);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_27FA3E770);
  (*(v4 + 16))(v6, v11, v3);
  sub_25B161574();
  sub_25B161424();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_25B161344();
}

uint64_t static NHOHomeEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B50 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A4B0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static NHOHomeEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FA39B50 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A4B0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static NHOHomeEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FA39B50 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161354();
  __swift_project_value_buffer(v1, qword_27FA3A4B0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B136DD4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B50 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A4B0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B136E94(uint64_t a1)
{
  if (qword_27FA39B50 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A4B0);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_25B136F5C(uint64_t *a1, uint64_t *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOHomeEntity.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B1610E4();
  return sub_25B10BAFC;
}

uint64_t sub_25B137084(uint64_t *a1, uint64_t *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOHomeEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t NHOHomeEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C48, &qword_25B163148);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_25B161414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_25B161B04();
  MEMORY[0x28223BE20](v8 - 8);
  sub_25B161AF4();
  sub_25B161AE4();
  sub_25B1610F4();
  sub_25B161AD4();

  sub_25B161AE4();
  sub_25B161404();
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_25B161214();
  v9 = sub_25B161224();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  return sub_25B161234();
}

uint64_t sub_25B137440(uint64_t a1)
{
  v2 = sub_25B120304();

  return MEMORY[0x28210B488](a1, v2);
}