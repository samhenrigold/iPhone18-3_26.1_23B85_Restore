unint64_t sub_25BC16D54(unsigned int a1)
{
  v2 = *v1;
  v3 = *v1 & a1;
  if (v3)
  {
    *v1 = v2 & ~a1;
    v4 = v2 & a1;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

uint64_t sub_25BC16D94(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

unint64_t sub_25BC16DAC(unsigned int a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1 | (((v2 & a1) == 0) << 32);
}

double static ComputeDevice.gpu.getter@<D0>(void *a1@<X8>)
{
  if (qword_28154FE18 != -1)
  {
    OUTLINED_FUNCTION_2_56(&qword_28154FE18);
  }

  OUTLINED_FUNCTION_45_12();
  if (v3)
  {
    return OUTLINED_FUNCTION_6_45();
  }

  v4 = MTLCreateSystemDefaultDevice();
  if (!v4)
  {
    return OUTLINED_FUNCTION_6_45();
  }

  v5 = v4;
  if (![v4 supportsFamily_] || !MPSSupportsMTLDevice(v5) || !MPSSupportsMTLDevice(v5))
  {
    swift_unknownObjectRelease();
    return OUTLINED_FUNCTION_6_45();
  }

  if (qword_27FBB3368 != -1)
  {
    OUTLINED_FUNCTION_15_32(&qword_27FBB3368);
  }

  v6 = qword_27FBDB4A8;
  v7 = unk_27FBDB4B0;
  __swift_project_boxed_opaque_existential_1(qword_27FBDB490, qword_27FBDB4A8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_33_21(v9);
  v11(v10);
  sub_25BC16FAC(v5, v1, v6, v7, a1);
  return result;
}

uint64_t sub_25BC16FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = a4;
  *(a5 + 40) = a1;
  *(a5 + 24) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
  v10 = *(a3 - 8);
  (*(v10 + 16))(boxed_opaque_existential_0, a2, a3);
  sub_25BB73038(a1);
  v11 = OUTLINED_FUNCTION_36_15();
  v13 = sub_25BC178C8(v11, v12);
  result = (*(v10 + 8))(a2, a3);
  *(a5 + 48) = v13;
  return result;
}

id sub_25BC17078()
{
  v0 = MTLCreateSystemDefaultDevice();
  v1 = v0;
  if (v0 && ([v0 supportsFamily_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v1;
}

void sub_25BC170C8(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 32))(ObjectType, a2);
  if (sub_25BA9BEA0(v8))
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x25F8779B0](0, v8);

      v10 = *(v75 + 160);
      swift_unknownObjectRelease();
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v9 = *(v8 + 32);

      v10 = *(v9 + 160);
    }

    *&v11 = 0x100000001;
    if (v10 < 0xB)
    {
      *&v11 = vshl_u32(0x3FF000000FFLL, vneg_s32(vdup_n_s32(v10)));
    }
  }

  else
  {

    *&v11 = 0x100000001;
  }

  v76 = v11;
  v12 = sub_25BAA51C8(a3, &v91);
  if (*(&v92 + 1))
  {
    OUTLINED_FUNCTION_26_24(v12, v13, v14, v15, v16, v17, v18, v19, v20, v76, *(&v76 + 1), v83, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90, v91, *(&v91 + 1), v92, v21);
    v22 = *(a2 + 88);
    v31 = OUTLINED_FUNCTION_18_32(v23, v24, v25, v26, v27, v28, v29, v30, v77, v80, v84, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94, v95, v96);
    if (v22(v31))
    {
      goto LABEL_41;
    }

    if (*(&v98 + 1) == 2)
    {
      goto LABEL_26;
    }

    if (*(&v98 + 1) != 1)
    {
      sub_25BAC27B0(&v96, &v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
      if (swift_dynamicCast())
      {
        static ComputeDevice.mpsGPU.getter(&v87);
        if (*(&v88 + 1))
        {
          v91 = v87;
          v92 = v88;
          v93 = v89;
          LODWORD(v94) = v90;
          if ((BYTE4(v76) & 1) != 0 || (v76 & 1) != 0 || *(&v93 + 1) != 2)
          {
            static ComputeDevice.mpsGPU.getter(a4);
            sub_25BABF0A8(&v91);
            sub_25BABF0A8(&v96);
            return;
          }

          sub_25BABF0A8(&v91);
        }

        else
        {
          sub_25BA9C2C8(&v87);
        }
      }

      sub_25BAC27B0(&v96, &v91);
      if (swift_dynamicCast())
      {
        v34 = sub_25BC17078();
        sub_25BABF0A8(&v96);
        if (v34)
        {
          *(a4 + 24) = &unk_286D4F718;
          *(a4 + 32) = &off_286D4F7D8;
          *(a4 + 40) = v34;
          v33 = 2;
          goto LABEL_42;
        }
      }

      else
      {
        sub_25BABF0A8(&v96);
      }

      goto LABEL_32;
    }

    sub_25BAC27B0(&v96, &v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if (swift_dynamicCast())
    {
      *(&v92 + 1) = &unk_286D4F6F8;
      *&v93 = &off_286D4F798;
      *(&v93 + 1) = 1;
      LODWORD(v94) = 0x100000;
    }

    else
    {
      sub_25BAC27B0(&v96, &v91);
      if (!swift_dynamicCast())
      {
LABEL_26:
        sub_25BABF0A8(&v96);
        goto LABEL_32;
      }

      *(&v92 + 1) = &unk_286D4F718;
      *&v93 = &off_286D4F7D8;
      *(&v93 + 1) = 1;
      LODWORD(v94) = 1;
    }

    if ((v22)(&v91, ObjectType, a2))
    {
      sub_25BABF0A8(&v96);
      v32 = v92;
      *a4 = v91;
      *(a4 + 16) = v32;
      *(a4 + 32) = v93;
      v33 = v94;
LABEL_42:
      *(a4 + 48) = v33;
      return;
    }

    sub_25BABF0A8(&v91);
    goto LABEL_26;
  }

  sub_25BA9C2C8(&v91);
LABEL_32:
  v43.n128_f64[0] = static ComputeDevice.mpsGPU.getter(&v91);
  if (*(&v92 + 1))
  {
    OUTLINED_FUNCTION_26_24(v35, v36, v37, v38, v39, v40, v41, v42, v43, v76, *(&v76 + 1), v83, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90, v91, *(&v91 + 1), v92, v44);
    v45 = *(a2 + 88);
    v54 = OUTLINED_FUNCTION_18_32(v46, v47, v48, v49, v50, v51, v52, v53, v78, v81, v85, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94, v95, v96);
    if ((v45(v54) & 1) != 0 && ((BYTE4(v76) & 1) != 0 || (v76 & 1) != 0 || *(&v98 + 1) != 2))
    {
      goto LABEL_41;
    }

    v55 = sub_25BABF0A8(&v96);
  }

  else
  {
    v55 = sub_25BA9C2C8(&v91);
    v45 = *(a2 + 88);
  }

  *(&v97 + 1) = &unk_286D4F718;
  *&v98 = &off_286D4F7D8;
  *(&v98 + 1) = 1;
  v99 = 1;
  v63 = OUTLINED_FUNCTION_18_32(v55, v56, v57, v58, v59, v60, v61, v62, v76, *(&v76 + 1), v83, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94, v95, v96);
  if (v45(v63) & 1) != 0 || (v64 = sub_25BABF0A8(&v96), *(&v97 + 1) = &unk_286D4F6F8, *&v98 = &off_286D4F798, *(&v98 + 1) = 1, v99 = 0x100000, v72 = OUTLINED_FUNCTION_18_32(v64, v65, v66, v67, v68, v69, v70, v71, v79, v82, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94, v95, v96), (v45(v72)))
  {
LABEL_41:
    v73 = v97;
    v74 = v98;
    *a4 = v96;
    *(a4 + 16) = v73;
    *(a4 + 32) = v74;
    v33 = v99;
    goto LABEL_42;
  }

  sub_25BABF0A8(&v96);
  OUTLINED_FUNCTION_6_45();
}

uint64_t ComputeDevice.description.getter()
{
  result = 5591111;
  v2 = *(v0 + 40);
  if (v2)
  {
    if (v2 == 1)
    {
      return 5591107;
    }

    else if (v2 == 2)
    {
      return 0x45206C617275654ELL;
    }

    else
    {
      sub_25BB73038(v2);
      MEMORY[0x25F876C90](10272, 0xE200000000000000);
      v3 = sub_25BC17678();
      MEMORY[0x25F876C90](v3);

      MEMORY[0x25F876C90](41, 0xE100000000000000);
      sub_25BB7304C(v2);
      return 5591111;
    }
  }

  return result;
}

uint64_t sub_25BC17628(uint64_t a1)
{
  v1 = 0x45206C617275654ELL;
  if (a1 != 2)
  {
    v1 = 5591111;
  }

  if (a1 == 1)
  {
    return 5591107;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25BC17678()
{
  v1 = [v0 name];
  v2 = sub_25BCB636C();

  return v2;
}

uint64_t sub_25BC176D0(uint64_t a1)
{
  if ((a1 - 1) < 2)
  {
    sub_25BCB70FC();
    OUTLINED_FUNCTION_42_15();
    OUTLINED_FUNCTION_30_20();
    if (a1 == 1)
    {
      v3 = 5591107;
    }

    else
    {
      v3 = 0x45206C617275654ELL;
    }

    if (a1 == 1)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xED0000656E69676ELL;
    }

    MEMORY[0x25F876C90](v3, v4);

    OUTLINED_FUNCTION_39_18();
    MEMORY[0x25F876C90](0x687061724753504DLL, 0xEE00746567726154);
    OUTLINED_FUNCTION_22_26();
    OUTLINED_FUNCTION_42_15();
    BYTE4(v20) = 9;
    OUTLINED_FUNCTION_31_21("init(kind:backendTargetType:)", v5, v6, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/ComputeDevice.swift", v7, v8, v9, v10, v11, 0, 0xE000000000000000, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, vars0, vars8);
  }

  sub_25BB7304C(a1);
  return 1024;
}

uint64_t sub_25BC177D8(uint64_t a1)
{
  if (a1 != 1)
  {
    v25 = v1;
    sub_25BB73038(a1);
    sub_25BCB70FC();
    OUTLINED_FUNCTION_42_15();
    OUTLINED_FUNCTION_30_20();
    if (a1 == 2)
    {
      v7 = 0x45206C617275654ELL;
    }

    else
    {
      v7 = 5591111;
    }

    if (a1 == 2)
    {
      v8 = 0xED0000656E69676ELL;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    MEMORY[0x25F876C90](v7, v8);

    OUTLINED_FUNCTION_39_18();
    MEMORY[0x25F876C90](0x67726154534E4E42, 0xEA00000000007465);
    OUTLINED_FUNCTION_22_26();
    OUTLINED_FUNCTION_42_15();
    BYTE4(v24) = 9;
    OUTLINED_FUNCTION_31_21("init(kind:backendTargetType:)", v9, v10, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/ComputeDevice.swift", v11, v12, v13, v14, v15, 0, 0xE000000000000000, v16, v17, v18, v19, v20, v21, v22, v23, v24, v2, v25, v3, v4);
  }

  return 0x100000;
}

uint64_t sub_25BC178C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    if (swift_dynamicCastMetatype())
    {
      return 1;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x100000;
    }

    goto LABEL_15;
  }

  if (a1 != 2)
  {
    if (swift_dynamicCastMetatype())
    {
      v3 = 1024;
LABEL_13:
      sub_25BB7304C(a1);
      return v3;
    }

    if (swift_dynamicCastMetatype())
    {
      v3 = 2;
      goto LABEL_13;
    }

LABEL_15:
    sub_25BB73038(a1);
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000022, 0x800000025BCE3320);
    v5 = 0xED0000656E69676ELL;
    v6 = 0x45206C617275654ELL;
    if (a1 != 2)
    {
      v6 = 5591111;
      v5 = 0xE300000000000000;
    }

    if (a1 == 1)
    {
      v7 = 5591107;
    }

    else
    {
      v7 = v6;
    }

    if (a1 == 1)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    MEMORY[0x25F876C90](v7, v8);

    MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE3350);
    v9 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v9);

    MEMORY[0x25F876C90](0x6E69626D6F632060, 0xEE002E6E6F697461);
    BYTE4(v20) = 9;
    sub_25BA97890("init(kind:backendTargetType:)", 29, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/ComputeDevice.swift", 103, 2, 160, v10, v11, 0, 0xE000000000000000, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_15;
  }

  return 4;
}

uint64_t ComputeDevice.isCompatible(with:)()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_25_22();
  return v2(v1) & 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ComputeDevice.purgeCachedResources()()
{
  v2 = v1;
  v3 = v0;
  if (qword_28154F2C8 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    sub_25BAD761C(v3);
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(ObjectType, v5);
    v7 = *(v3 + 40);
    if ((v7 - 1) < 2 || !v7)
    {
      break;
    }

    type metadata accessor for SharedMetalDevice();
    v8 = swift_unknownObjectRetain();
    sub_25BBC97E0(v8);
    if (v2)
    {
      sub_25BB7304C(v7);
      break;
    }

    v46 = v7;
    v9 = sub_25BBC9B60();

    swift_beginAccess();
    v10 = *(v9 + 24);
    v13 = *(v10 + 64);
    v12 = v10 + 64;
    v11 = v13;
    v14 = 1 << *(*(v9 + 24) + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v52 = v15 & v11;
    v49 = (v14 + 63) >> 6;
    v50 = v9;
    v48 = *(v9 + 24);
    swift_bridgeObjectRetain_n();
    v16 = 0;
    v47 = v12;
    while (1)
    {
      v17 = v52;
      if (!v52)
      {
        break;
      }

LABEL_15:
      v51 = v16;
      v52 = (v17 - 1) & v17;
      v19 = *(v48 + 48) + 24 * (__clz(__rbit64(v17)) | (v16 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v3 = *(v19 + 16);
      swift_beginAccess();
      v22 = *(v50 + 24);
      if (*(v22 + 16) && (v23 = sub_25BAFEF78(v20, v21, v3), (v24 & 1) != 0))
      {
        v45 = v2;
        v25 = *(*(v22 + 56) + 24 * v23);
        swift_endAccess();
        v26 = MEMORY[0x277D84F90];
        v60 = MEMORY[0x277D84F90];
        v27 = sub_25BA9BEA0(v25);
        v55 = v3;
        v57 = v25;
        if (v27)
        {
          v28 = v27;
          if (v27 < 1)
          {
            __break(1u);
            return;
          }

          v29 = v25;
          v30 = v25 & 0xC000000000000001;
          swift_retain_n();

          v31 = 0;
          v32 = MEMORY[0x277D84F90];
          do
          {
            if (v30)
            {
              v33 = MEMORY[0x25F8779B0](v31, v29);
            }

            else
            {
              v33 = *(v29 + 8 * v31 + 32);
            }

            if ([*(v33 + 16) usedSize] || !sub_25BCB19DC())
            {

              MEMORY[0x25F876F40](v34);
              if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_25BCB67AC();
              }

              sub_25BCB680C();

              v32 = v60;
            }

            else
            {
            }

            ++v31;
            v29 = v57;
          }

          while (v28 != v31);

          v26 = MEMORY[0x277D84F90];
          v3 = v55;
        }

        else
        {

          v32 = v26;
        }

        v59 = v26;
        v56 = sub_25BA9BEA0(v32);
        v2 = 0;
        v54 = v32 & 0xC000000000000001;
        v53 = v32;
        while (v2 != v56)
        {
          sub_25BAA0930(v2, v54 == 0, v32);
          if (v54)
          {
            v44 = OUTLINED_FUNCTION_36_15();
            MEMORY[0x25F8779B0](v44);
          }

          else
          {
          }

          if (__OFADD__(v2++, 1))
          {
            goto LABEL_62;
          }

          sub_25BCB723C();
          v3 = *(v59 + 16);
          sub_25BCB728C();
          sub_25BCB729C();
          sub_25BCB725C();
          v36 = v59;
          v37 = *(v59 + 16);
          v38 = v37 - 1;
          sub_25BC16CFC(v37 - 1, v59);
          v40 = v39;
          v41 = v37 - 2;
          while (v38 >= 1)
          {
            if (v41 < -1)
            {
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            v3 = v41 / 2;
            if (v41 / 2 >= *(v36 + 16))
            {
              goto LABEL_58;
            }

            v42 = sub_25BCB198C();
            if (sub_25BCB198C() >= v42)
            {
              break;
            }

            if (v3 >= *(v36 + 16))
            {
              goto LABEL_59;
            }

            v43 = *(v36 + 32 + 8 * v3);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = sub_25BAE16C4();
              v59 = v36;
            }

            if (v38 >= *(v36 + 16))
            {
              goto LABEL_60;
            }

            *(v36 + 8 * v38 + 32) = v43;

            sub_25BCB725C();
            v41 = v3 - 1;
            v36 = v59;
            v38 = v3;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_25BAE16C4();
            v59 = v36;
          }

          v3 = v55;
          if (v38 < 0)
          {
            goto LABEL_63;
          }

          if (v38 >= *(v36 + 16))
          {
            goto LABEL_64;
          }

          *(v36 + 8 * v38 + 32) = v40;

          sub_25BCB725C();

          v32 = v53;
        }

        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v58 = *(v50 + 24);
        sub_25BC19ED8();
        *(v50 + 24) = v58;
        swift_endAccess();

        v2 = v45;
      }

      else
      {
        swift_endAccess();
      }

      v12 = v47;
      v16 = v51;
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v49)
      {
        sub_25BB7304C(v46);

        goto LABEL_6;
      }

      v17 = *(v12 + 8 * v18);
      ++v16;
      if (v17)
      {
        v16 = v18;
        goto LABEL_15;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

LABEL_6:
  swift_unknownObjectRelease();
}

void sub_25BC181B0()
{
  if (qword_28154FE18 != -1)
  {
    OUTLINED_FUNCTION_2_56(&qword_28154FE18);
  }

  OUTLINED_FUNCTION_45_12();
  if (v0)
  {
    v1 = 1048583;
  }

  else
  {
    v1 = 1049607;
  }

  dword_281557408 = v1;
}

uint64_t sub_25BC1821C@<X0>(_DWORD *a1@<X8>)
{
  result = OUTLINED_FUNCTION_6_8();
  *a1 = result;
  return result;
}

uint64_t sub_25BC18250@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_25BC68870(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BC18280@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_25BAFC7DC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BC182B0@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_25BC16D28(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_25BC182E8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25BC16D54(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_25BC1831C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25BC16DAC(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_25BC18368@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_25BC16E00(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BC183C0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_25BC16A94(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BC183E8(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
LABEL_6:

      return sub_25BCB625C();
    case 2:
      OUTLINED_FUNCTION_20_25();
      goto LABEL_6;
    case 1:
      goto LABEL_6;
  }

  v4 = [swift_unknownObjectRetain() registryID];
  MEMORY[0x25F878240](v4);

  return sub_25BB7304C(a2);
}

uint64_t sub_25BC18498(uint64_t a1)
{
  sub_25BCB79CC();
  if (a1)
  {
    if (a1 == 2)
    {
      OUTLINED_FUNCTION_20_25();
    }

    else if (a1 != 1)
    {
      v2 = [swift_unknownObjectRetain() registryID];
      MEMORY[0x25F878240](v2);
      sub_25BB7304C(a1);
      return sub_25BCB7A3C();
    }
  }

  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC1855C(uint64_t a1)
{
  v2 = *v1;
  sub_25BCB79CC();
  sub_25BC183E8(v4, v2);
  return sub_25BCB7A3C();
}

double static ComputeDevice.gpu(using:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_28154FE18 != -1)
  {
    OUTLINED_FUNCTION_2_56(&qword_28154FE18);
  }

  OUTLINED_FUNCTION_45_12();
  if ((v5 & 1) != 0 || !MPSSupportsMTLDevice(a1))
  {
    return OUTLINED_FUNCTION_6_45();
  }

  if (qword_27FBB3368 != -1)
  {
    OUTLINED_FUNCTION_15_32(&qword_27FBB3368);
  }

  v6 = qword_27FBDB4A8;
  v7 = unk_27FBDB4B0;
  __swift_project_boxed_opaque_existential_1(qword_27FBDB490, qword_27FBDB4A8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_33_21(v9);
  v11(v10);
  v12 = swift_unknownObjectRetain();
  sub_25BC16FAC(v12, v2, v6, v7, a2);
  return result;
}

void static ComputeDevice.neuralEngine.getter()
{
  OUTLINED_FUNCTION_9_18();
  v26 = v0;
  v1 = sub_25BCB5F8C();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = MEMORY[0x25F8767A0](v9);
  v13 = 0;
  v14 = *(v12 + 16);
  v27 = v3 + 16;
  v28 = v14;
  v15 = *MEMORY[0x277CBFD60];
  while (1)
  {
    if (v28 == v13)
    {

      goto LABEL_9;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    (*(v3 + 16))(v11, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v1);
    (*(v3 + 32))(v7, v11, v1);
    v16 = OUTLINED_FUNCTION_36_15();
    if (v17(v16) == v15)
    {

      v20 = OUTLINED_FUNCTION_36_15();
      v21(v20);
      if (qword_28154FE18 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    ++v13;
    v18 = OUTLINED_FUNCTION_36_15();
    v19(v18);
  }

  __break(1u);
LABEL_13:
  OUTLINED_FUNCTION_2_56(&qword_28154FE18);
LABEL_8:
  OUTLINED_FUNCTION_45_12();
  if (v22)
  {
LABEL_9:
    v23 = v26;
    *(v26 + 48) = 0;
    v23[1] = 0u;
    v23[2] = 0u;
    *v23 = 0u;
    goto LABEL_11;
  }

  v24 = v26;
  *(v26 + 24) = &unk_286D4F718;
  *(v24 + 32) = &off_286D4F7D8;
  *(v24 + 40) = 2;
  *(v24 + 48) = 4;
LABEL_11:
  OUTLINED_FUNCTION_10_16();
}

double static ComputeDevice.mpsGPU.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_28154FE18 != -1)
  {
    OUTLINED_FUNCTION_2_56(&qword_28154FE18);
  }

  OUTLINED_FUNCTION_45_12();
  if ((v2 & 1) == 0)
  {
    v3 = MTLCreateSystemDefaultDevice();
    if (v3)
    {
      v4 = v3;
      if ([v3 supportsFamily_])
      {
        v5 = swift_unknownObjectRetain();
        if (MPSSupportsMTLDevice(v5))
        {
          *(a1 + 24) = &unk_286D4F738;
          *(a1 + 32) = &off_286D4F7B8;
          *(a1 + 40) = v4;
          *(a1 + 48) = sub_25BC176D0(v4);
          return result;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  return OUTLINED_FUNCTION_6_45();
}

double static ComputeDevice.classicEspressoGPU.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_28154FE18 != -1)
  {
    OUTLINED_FUNCTION_2_56(&qword_28154FE18);
  }

  OUTLINED_FUNCTION_45_12();
  if ((v2 & 1) == 0)
  {
    v3 = MTLCreateSystemDefaultDevice();
    if (v3)
    {
      v4 = v3;
      if ([v3 supportsFamily_])
      {
        v5 = swift_unknownObjectRetain();
        if (MPSSupportsMTLDevice(v5))
        {
          *(a1 + 24) = &unk_286D4F718;
          *(a1 + 32) = &off_286D4F7D8;
          swift_unknownObjectRelease();
          *(a1 + 40) = v4;
          *(a1 + 48) = 2;
          return result;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  return OUTLINED_FUNCTION_6_45();
}

void static ComputeDevice.classicEspressoCPU.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_286D4F718;
  *(a1 + 32) = &off_286D4F7D8;
  *(a1 + 40) = 1;
  *(a1 + 48) = 1;
}

void static ComputeDevice.bnnsCPU.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_286D4F6F8;
  *(a1 + 32) = &off_286D4F798;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0x100000;
}

uint64_t sub_25BC18AE4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  if ((*(v2 + 16))(v1, v2) == 1397640770 && v3 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_25BCB789C();

    return v5 & 1;
  }
}

uint64_t sub_25BC18B8C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  if ((*(v2 + 16))(v1, v2) == 0x687061724753504DLL && v3 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_25BCB789C();

    return v5 & 1;
  }
}

void Array<A>.place(on:)()
{
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  v4 = v3;
  v6 = *(v5 + 16);
  v7 = sub_25BCB681C();
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    if (v7)
    {
      v9 = 0;
      v10 = *(v2 + 8);
      do
      {
        sub_25BCB67BC();
        sub_25BC19AE4(v9, *v0, v6);
        _swift_isClassOrObjCExistentialType();
        v10(v4, v6, v2);
        ++v9;
      }

      while (v8 != v9);
    }

    OUTLINED_FUNCTION_15_2();
  }
}

uint64_t Array<A>.placed(on:)()
{
  OUTLINED_FUNCTION_35_18();
  sub_25BCB68CC();
  sub_25BCB617C();
  OUTLINED_FUNCTION_12_34();
  Array<A>.place(on:)();
  return v1;
}

uint64_t sub_25BC18DCC@<X0>(uint64_t *a1@<X8>)
{
  result = Array<A>.placed(on:)();
  *a1 = result;
  return result;
}

void Dictionary<>.place(on:)()
{
  OUTLINED_FUNCTION_9_18();
  v78 = v1;
  v3 = v2;
  v69 = v4;
  v84 = *(v2 + 24);
  v68 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_9();
  v85 = v5;
  MEMORY[0x28223BE20](v6);
  v67 = v59 - v7;
  OUTLINED_FUNCTION_9();
  v61 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v66 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v59 - v13;
  v70 = v3;
  v15 = *(v3 + 16);
  OUTLINED_FUNCTION_9();
  v60 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v77 = v19 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_9();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_0();
  v75 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  v80 = v59 - v27;
  v71 = v0;
  v28 = *v0;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = sub_25BCB748C();
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = v29 | 0x8000000000000000;
  }

  else
  {
    v34 = -1 << *(v28 + 32);
    v31 = ~v34;
    v30 = v28 + 64;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v32 = v36 & *(v28 + 64);
    v33 = v28;
  }

  v83 = (v60 + 32);
  v37 = (v61 + 32);
  v59[0] = v31;
  v38 = (v31 + 64) >> 6;
  v59[2] = v60 + 16;
  v59[1] = v61 + 16;
  v73 = (v22 + 32);
  v65 = v78 + 16;
  v64 = (v85 + 8);
  v63 = (v61 + 8);
  v62 = (v60 + 8);
  sub_25BCB617C();
  v39 = 0;
  v40 = v77;
  v81 = TupleTypeMetadata2;
  v74 = v30;
  for (i = v33; ; v33 = i)
  {
    v72 = v32;
    v82 = v39;
    if ((v33 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_25BCB74BC())
    {
      v50 = 1;
      v58 = v32;
      TupleTypeMetadata2 = v81;
      v43 = v82;
      v85 = v58;
      v49 = v75;
      goto LABEL_18;
    }

    sub_25BCB787C();
    swift_unknownObjectRelease();
    v46 = v84;
    sub_25BCB787C();
    swift_unknownObjectRelease();
    TupleTypeMetadata2 = v81;
    v42 = v82;
    v85 = v32;
LABEL_17:
    v48 = *(TupleTypeMetadata2 + 48);
    v49 = v75;
    (*v83)(v75, v40, v15);
    (*v37)(v49 + v48, v14, v46);
    v50 = 0;
    v43 = v42;
LABEL_18:
    v44 = v80;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v49, v50, 1, TupleTypeMetadata2);
    (*v73)(v44, v49, v76);
    if (__swift_getEnumTagSinglePayload(v44, 1, TupleTypeMetadata2) == 1)
    {
      sub_25BAB3820(i);
      OUTLINED_FUNCTION_10_16();
      return;
    }

    v51 = *(TupleTypeMetadata2 + 48);
    (*v83)(v40, v44, v15);
    v52 = (v44 + v51);
    v53 = v84;
    (*v37)(v14, v52, v84);
    (*(v78 + 16))(v69, v53);
    v54 = v15;
    v55 = v14;
    v56 = v67;
    v40 = v77;
    sub_25BCB612C();
    v57 = v56;
    v14 = v55;
    v15 = v54;
    TupleTypeMetadata2 = v81;
    (*v64)(v57, v68);
    (*v63)(v14, v53);
    (*v62)(v40, v15);
    v39 = v43;
    v32 = v85;
    v30 = v74;
  }

  v41 = v32;
  v42 = v39;
  if (v32)
  {
LABEL_14:
    v85 = (v41 - 1) & v41;
    OUTLINED_FUNCTION_41_17();
    v45(v40);
    OUTLINED_FUNCTION_41_17();
    v46 = v84;
    v47(v14);
    goto LABEL_17;
  }

  v43 = v39;
  v44 = v80;
  while (1)
  {
    v42 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v42 >= v38)
    {
      v85 = 0;
      v50 = 1;
      v49 = v75;
      goto LABEL_19;
    }

    v41 = *(v30 + 8 * v42);
    ++v43;
    if (v41)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t Dictionary<>.placed(on:)()
{
  OUTLINED_FUNCTION_35_18();
  sub_25BCB61AC();
  sub_25BCB617C();
  OUTLINED_FUNCTION_12_34();
  Dictionary<>.place(on:)();
  return v1;
}

uint64_t sub_25BC194C0@<X0>(uint64_t *a1@<X8>)
{
  result = Dictionary<>.placed(on:)();
  *a1 = result;
  return result;
}

uint64_t sub_25BC19AE4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_25BC19B38()
{
  OUTLINED_FUNCTION_40_17();
  v4 = OUTLINED_FUNCTION_0_66(v2, v3);
  sub_25BA9266C(v4, v5);
  OUTLINED_FUNCTION_1_56();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_37();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5E30, &unk_25BCCBEA0);
  v8 = OUTLINED_FUNCTION_10_33(v7);
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v12, v13);
    OUTLINED_FUNCTION_4_50();
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_13_35(v8, v9, v10, v11, *v0);
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_5_46();
    sub_25BAC4690(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_37_17();

    sub_25BCB617C();
  }
}

void sub_25BC19C08()
{
  OUTLINED_FUNCTION_40_17();
  v4 = OUTLINED_FUNCTION_0_66(v2, v3);
  sub_25BA9266C(v4, v5);
  OUTLINED_FUNCTION_1_56();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_37();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66F0, &unk_25BCCBEE0);
  v8 = OUTLINED_FUNCTION_10_33(v7);
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v12, v13);
    OUTLINED_FUNCTION_4_50();
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_13_35(v8, v9, v10, v11, *v0);
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_5_46();
    sub_25BAC4690(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_37_17();

    sub_25BCB617C();
  }
}

void sub_25BC19CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_40_17();
  v12 = v11;
  v14 = v13;
  sub_25BAFEEB0(v11);
  OUTLINED_FUNCTION_1_56();
  if (v17)
  {
    __break(1u);
LABEL_12:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66E0, &qword_25BCCBED0);
  OUTLINED_FUNCTION_29_22();
  if (sub_25BCB745C())
  {
    sub_25BAFEEB0(v12);
    OUTLINED_FUNCTION_4_50();
    if (!v21)
    {
      goto LABEL_12;
    }

    v18 = v20;
  }

  if (v19)
  {
    *(*(*v10 + 56) + v18) = v14 & 1;
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    OUTLINED_FUNCTION_37_17();

    sub_25BC1AC18(v22, v23, v24, v25);
  }
}

unint64_t sub_25BC19DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_9_18();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = OUTLINED_FUNCTION_7_39(v19, v17);
  sub_25BAFEEEC(v21, v22, v23);
  OUTLINED_FUNCTION_1_56();
  if (v26)
  {
    __break(1u);
    goto LABEL_13;
  }

  v27 = v24;
  v28 = v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66E8, &qword_25BCCBED8);
  if ((OUTLINED_FUNCTION_44_13(v29) & 1) == 0)
  {
    goto LABEL_5;
  }

  v30 = sub_25BAFEEEC(v18, v16, v14 & 1);
  if ((v28 & 1) != (v31 & 1))
  {
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  v27 = v30;
LABEL_5:
  if (v28)
  {
    *(*(*v12 + 56) + 8 * v27) = v20;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    OUTLINED_FUNCTION_10_16();

    return sub_25BC1AC5C(v34, v35, v36, v37, v38, v39);
  }
}

uint64_t sub_25BC19ED8()
{
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v31 = v7;
  v9 = v8;
  v11 = v10;
  sub_25BAFEF78(v5, v3, v1);
  OUTLINED_FUNCTION_1_56();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4810, &qword_25BCCBF00);
  if ((sub_25BCB745C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_25BAFEF78(v6, v4 & 1, v2);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  if (v16)
  {
    v19 = (*(*v0 + 56) + 24 * v15);
    *v19 = v11;
    v19[1] = v9;
    v19[2] = v31;

    OUTLINED_FUNCTION_15_2();
  }

  else
  {
    OUTLINED_FUNCTION_15_2();

    return sub_25BC1ADB8(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_25BC1A070(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC1A0D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_25BC1A128(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

unint64_t sub_25BC1A184()
{
  result = qword_27FBB6670;
  if (!qword_27FBB6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6670);
  }

  return result;
}

unint64_t sub_25BC1A1DC()
{
  result = qword_27FBB6678;
  if (!qword_27FBB6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6678);
  }

  return result;
}

unint64_t sub_25BC1A234()
{
  result = qword_27FBB6680;
  if (!qword_27FBB6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6680);
  }

  return result;
}

unint64_t sub_25BC1A28C()
{
  result = qword_27FBB6688;
  if (!qword_27FBB6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6688);
  }

  return result;
}

unint64_t sub_25BC1A2E4()
{
  result = qword_27FBB6690;
  if (!qword_27FBB6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6690);
  }

  return result;
}

void sub_25BC1A34C()
{
  OUTLINED_FUNCTION_40_17();
  OUTLINED_FUNCTION_3_45();
  v4 = v3;
  v6 = OUTLINED_FUNCTION_7_39(v3, v5);
  sub_25BA9266C(v6, v7);
  OUTLINED_FUNCTION_1_56();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_37();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66A8, &unk_25BCCBE90);
  if (OUTLINED_FUNCTION_10_33(v9))
  {
    v10 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v10, v11);
    OUTLINED_FUNCTION_4_50();
    if (!v13)
    {
      goto LABEL_12;
    }

    v2 = v12;
  }

  if (v1)
  {
    *(*(*v0 + 56) + v2) = v4;
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    OUTLINED_FUNCTION_12_34();
    sub_25BC1AE14(v14, v15, v16, v4, v17);
    OUTLINED_FUNCTION_37_17();

    sub_25BCB617C();
  }
}

void sub_25BC1A434()
{
  OUTLINED_FUNCTION_9_18();
  v3 = v2;
  v5 = v4;
  v8 = OUTLINED_FUNCTION_0_66(v6, v7);
  sub_25BA9266C(v8, v9);
  OUTLINED_FUNCTION_1_56();
  if (v10)
  {
    __break(1u);
LABEL_13:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_37();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v12 = OUTLINED_FUNCTION_10_33(v11);
  if (v12)
  {
    v16 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v16, v17);
    OUTLINED_FUNCTION_4_50();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_13_35(v12, v13, v14, v15, *v0);
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_5_46();
    sub_25BAC4690(v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_10_16();

    sub_25BCB617C();
  }
}

void sub_25BC1A504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_9_18();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_25BAFF060(v17, v15, v13);
  OUTLINED_FUNCTION_1_56();
  if (v25)
  {
    __break(1u);
    goto LABEL_13;
  }

  v26 = v23;
  v27 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A8, &qword_25BCC88E8);
  if ((OUTLINED_FUNCTION_23_26(v28) & 1) == 0)
  {
    goto LABEL_5;
  }

  v29 = sub_25BAFF060(v18, v16, v14);
  if ((v27 & 1) != (v30 & 1))
  {
LABEL_13:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  v26 = v29;
LABEL_5:
  v31 = *v12;
  if (v27)
  {
    v32 = (*(v31 + 56) + 16 * v26);
    *v32 = v22;
    v32[1] = v20;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    sub_25BC1AE5C(v26, v18, v16, v14, v22, v20, v31);
    OUTLINED_FUNCTION_10_16();

    sub_25BC1B0AC(v34, v35);
  }
}

unint64_t sub_25BC1A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_40_17();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_25BAFEEB0(v13);
  OUTLINED_FUNCTION_1_56();
  if (v19)
  {
    __break(1u);
LABEL_14:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_37();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB66C0, &unk_25BCCBEB0);
  if (OUTLINED_FUNCTION_10_33(v20))
  {
    sub_25BAFEEB0(v14);
    OUTLINED_FUNCTION_4_50();
    if (!v22)
    {
      goto LABEL_14;
    }

    v12 = v21;
  }

  if (v11)
  {
    v23 = (*(*v10 + 56) + 16 * v12);
    *v23 = v18;
    v23[1] = v16;
    OUTLINED_FUNCTION_37_17();

    return swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_37_17();

    return sub_25BC1AEB0(v26, v27, v28, v29, v30);
  }
}

void *sub_25BC1A738(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_34_17(a1, a2);
  sub_25BAD885C(v5);
  OUTLINED_FUNCTION_1_56();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB66B0, &unk_25BCC80A0);
  OUTLINED_FUNCTION_29_22();
  if (sub_25BCB745C())
  {
    sub_25BAD885C(v4);
    OUTLINED_FUNCTION_4_50();
    if (!v12)
    {
      goto LABEL_12;
    }

    v9 = v11;
  }

  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = v2;
  }

  else
  {
    sub_25BAD6F54(v4, v15);
    return sub_25BC1AEF8(v9, v15, v2, v13);
  }
}

unint64_t sub_25BC1A840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_40_17();
  v15 = OUTLINED_FUNCTION_34_17(v13, v14);
  sub_25BAFEEB0(v15);
  OUTLINED_FUNCTION_1_56();
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6718, &qword_25BCCBF08);
  OUTLINED_FUNCTION_29_22();
  if ((sub_25BCB745C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = sub_25BAFEEB0(v12);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  v19 = v21;
LABEL_5:
  if (v20)
  {
    *(*(*v11 + 56) + 8 * v19) = v10;
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    OUTLINED_FUNCTION_37_17();

    return sub_25BC1AF74(v25, v26, v27, v28);
  }
}

void sub_25BC1A934()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_25BA9266C(v3, v1);
  OUTLINED_FUNCTION_1_56();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4850, &qword_25BCCBF10);
  if ((OUTLINED_FUNCTION_23_26(v16) & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_25BA9266C(v4, v2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v0;
  if (v15)
  {
    v20 = (*(v19 + 56) + 24 * v14);
    *v20 = v10;
    v20[1] = v8;
    v20[2] = v6;

    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    sub_25BC1AFB8(v14, v4, v2, v10, v8, v6, v19);
    OUTLINED_FUNCTION_10_16();

    sub_25BCB617C();
  }
}

void sub_25BC1AA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_40_17();
  v13 = OUTLINED_FUNCTION_0_66(v11, v12);
  sub_25BA9266C(v13, v14);
  OUTLINED_FUNCTION_1_56();
  if (v15)
  {
    __break(1u);
LABEL_13:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_37();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6708, &qword_25BCCBEF8);
  if (OUTLINED_FUNCTION_10_33(v16))
  {
    v17 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v17, v18);
    OUTLINED_FUNCTION_4_50();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v10)
  {
    OUTLINED_FUNCTION_37_17();

    sub_25BC1B0DC(v20, v21);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_5_46();
    sub_25BC1B00C(v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_37_17();

    sub_25BCB617C();
  }
}

void sub_25BC1AB44()
{
  OUTLINED_FUNCTION_40_17();
  OUTLINED_FUNCTION_3_45();
  v4 = v3;
  v6 = OUTLINED_FUNCTION_7_39(v3, v5);
  sub_25BA9266C(v6, v7);
  OUTLINED_FUNCTION_1_56();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_37();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6698, &qword_25BCCBE80);
  if (OUTLINED_FUNCTION_10_33(v9))
  {
    v10 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v10, v11);
    OUTLINED_FUNCTION_4_50();
    if (!v13)
    {
      goto LABEL_12;
    }

    v2 = v12;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 4 * v2) = v4;
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    OUTLINED_FUNCTION_12_34();
    sub_25BC1B064(v14, v15, v16, v4, v17);
    OUTLINED_FUNCTION_37_17();

    sub_25BCB617C();
  }
}

unint64_t sub_25BC1AC18(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_25BC1AC5C(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_25BC1ACAC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_21_27(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_25BC1AD28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_36(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v11 = v10(0);
  result = (*(*(v11 - 8) + 32))(v9 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

uint64_t sub_25BC1ADB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_21_27(a1, a8 + 8 * (a1 >> 6));
  v10 = v9[6] + 24 * result;
  *v10 = v11;
  *(v10 + 8) = v12;
  *(v10 + 16) = v13;
  v14 = (v9[7] + 24 * result);
  *v14 = v15;
  v14[1] = v16;
  v14[2] = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

unint64_t sub_25BC1AE14(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_25BC1AE5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_21_27(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 24 * result);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v13 = (v8[7] + 16 * result);
  *v13 = v14;
  v13[1] = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

unint64_t sub_25BC1AEB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_25BC1AEF8(unint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  result = memcpy((a4[6] + 88 * a1), a2, 0x58uLL);
  *(a4[7] + 8 * a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_25BC1AF74(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_25BC1AFB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_21_27(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = (v8[7] + 24 * result);
  *v12 = v13;
  v12[1] = v14;
  v12[2] = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

unint64_t sub_25BC1B00C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_25BC1B064(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 4 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

double sub_25BC1B0AC(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
    case 2uLL:
      swift_unknownObjectRetain();
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

void sub_25BC1B14C()
{
  v1 = v0;
  v79 = swift_allocObject();
  *(v79 + 16) = MEMORY[0x277D84F90];
  v2 = (v79 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F98];
  v74 = v3 + 16;
  v4 = v0[11];
  v5 = sub_25BA9BEA0(v4);
  v75 = v79 + 16;
  if (v5)
  {
    v6 = v5;
    if (v5 >= 1)
    {
      v7 = 0;
      v8 = v4 & 0xC000000000000001;
      v77 = v5;
      v78 = v4;
      v76 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v8)
        {
          v9 = MEMORY[0x25F8779B0](v7, v4);
        }

        else
        {
          v9 = *(v4 + 8 * v7 + 32);
        }

        v10 = sub_25BAB3058();
        if (!v10)
        {
          break;
        }

        sub_25BC1BA90(v10, v11, 0, 1, v1, v79, v3);
        swift_unknownObjectRelease();

LABEL_43:
        if (v6 == ++v7)
        {
          goto LABEL_44;
        }
      }

      v12 = v1[13];
      v13 = v1[14];
      v14 = sub_25BAC44E4();
      if (*(v13 + 16))
      {
        v16 = sub_25BA9266C(v14, v15);
        v18 = v17;

        if (v18)
        {
          v19 = *(*(v13 + 56) + 8 * v16);
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          if (v19 >= *(v12 + 16))
          {
            goto LABEL_72;
          }

LABEL_19:
          v26 = v12 + 16 * v19;
          v27 = *(v26 + 32);
          v28 = *(v26 + 40);
          sub_25BCB617C();
LABEL_22:
          v30 = *(v9 + 152);
          if (sub_25BC5F0F4() < 3)
          {
            v33 = &protocol witness table for Int8;
            v34 = MEMORY[0x277D84900];
            switch(*(v9 + 160))
            {
              case 1:
                v34 = MEMORY[0x277D84958];
                v33 = &protocol witness table for Int16;
                break;
              case 2:
                v34 = MEMORY[0x277D849A8];
                v33 = &protocol witness table for Int32;
                break;
              case 3:
                v34 = MEMORY[0x277D83B88];
                v33 = &protocol witness table for Int;
                break;
              case 4:
                v34 = MEMORY[0x277D84B78];
                v33 = &protocol witness table for UInt8;
                break;
              case 5:
                v34 = MEMORY[0x277D84C58];
                v33 = &protocol witness table for UInt16;
                break;
              case 6:
                v34 = MEMORY[0x277D84CC0];
                v33 = &protocol witness table for UInt32;
                break;
              case 7:
                v34 = MEMORY[0x277D84D38];
                v33 = &protocol witness table for UInt64;
                break;
              case 8:
                v34 = MEMORY[0x277D84DC8];
                v33 = &protocol witness table for Float16;
                break;
              case 9:
                v33 = sub_25BB18AFC();
                v34 = &type metadata for BFloat16;
                break;
              case 0xA:
                v34 = MEMORY[0x277D83A90];
                v33 = &protocol witness table for Float;
                break;
              case 0xB:
                v34 = MEMORY[0x277D839F8];
                v33 = &protocol witness table for Double;
                break;
              case 0xC:
                v34 = MEMORY[0x277D839B0];
                v33 = &protocol witness table for Bool;
                break;
              default:
                break;
            }

            sub_25BCB617C();
            sub_25BCB617C();
            v35 = sub_25BC1C8BC(v34, v9, v34, v33);
            v37 = v36;
            __src[0] = 0;
            __src[1] = 0xE000000000000000;
            sub_25BCB70FC();

            __src[0] = 0xD000000000000015;
            __src[1] = 0x800000025BCE3400;
            MEMORY[0x25F876C90](v35, v37);

            MEMORY[0x25F876C90](0x3E544E4F462F3CLL, 0xE700000000000000);
            v31 = __src[0];
            v32 = __src[1];
            v2 = (v79 + 16);
          }

          else
          {
            sub_25BCB617C();
            sub_25BCB617C();
            v31 = 0;
            v32 = 0;
          }

          __src[0] = v27;
          __src[1] = v28;
          __src[2] = v30;
          __src[3] = v27;
          __src[4] = v28;
          __src[5] = v31;
          __src[6] = v32;
          LOBYTE(__src[7]) = 0;
          *(&__src[7] + 1) = *v82;
          HIDWORD(__src[7]) = *&v82[3];
          LOWORD(__src[8]) = 257;
          BYTE2(__src[8]) = 1;
          *(&__src[8] + 3) = v83;
          HIBYTE(__src[8]) = v84;
          __src[9] = 0x636170736F6E6F6DLL;
          __src[10] = 0xE900000000000065;
          __src[11] = 10;
          LOBYTE(__src[12]) = 3;
          swift_beginAccess();
          v38 = *v2;
          sub_25BC1D49C(__src, __dst);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25BAFE7D0();
            v38 = v40;
          }

          v6 = v77;
          v4 = v78;
          v39 = *(v38 + 16);
          if (v39 >= *(v38 + 24) >> 1)
          {
            sub_25BAFE7D0();
            v38 = v41;
          }

          *(v38 + 16) = v39 + 1;
          memcpy((v38 + 104 * v39 + 32), __src, 0x61uLL);
          *v2 = v38;
          swift_endAccess();

          sub_25BC1D4D4(__src);
          v8 = v76;
          goto LABEL_43;
        }
      }

      else
      {
      }

      v12 = v1[17];
      v20 = v1[18];
      v21 = sub_25BAC44E4();
      if (*(v20 + 16))
      {
        v23 = sub_25BA9266C(v21, v22);
        v25 = v24;

        if (v25)
        {
          v19 = *(*(v20 + 56) + 8 * v23);
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_73;
          }

          if (v19 >= *(v12 + 16))
          {
            goto LABEL_74;
          }

          goto LABEL_19;
        }
      }

      else
      {
      }

      v27 = sub_25BAC44E4();
      v28 = v29;
      goto LABEL_22;
    }
  }

  else
  {
LABEL_44:
    v42 = 0;
    v43 = v1[15];
    v44 = *(v43 + 16);
    v45 = (v43 + 40);
    while (v44 != v42)
    {
      if (v42 >= *(v43 + 16))
      {
        goto LABEL_70;
      }

      v46 = *v45;
      v47 = swift_unknownObjectRetain();
      sub_25BC1BA90(v47, v46, v42, 0, v1, v79, v3);
      swift_unknownObjectRelease();
      v45 += 2;
      ++v42;
    }

    v48 = v1[19];
    v49 = sub_25BA9BEA0(v48);
    if (v49)
    {
      v50 = v49;
      if (v49 < 1)
      {
        goto LABEL_76;
      }

      for (i = 0; i != v50; ++i)
      {
        if ((v48 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x25F8779B0](i, v48);
        }

        else
        {
          v52 = *(v48 + 8 * i + 32);
        }

        sub_25BC1C274(v52, v53, v1, v79, v3);
      }
    }

    swift_beginAccess();
    v54 = *(*v75 + 16);
    if (v54)
    {
      v55 = (*v75 + 32);
      do
      {
        memcpy(__src, v55, 0x61uLL);
        sub_25BC1D49C(__src, __dst);
        MEMORY[0x25F876C90](10, 0xE100000000000000);
        v80 = __src[0];
        v81 = __src[1];
        sub_25BCB617C();
        MEMORY[0x25F876C90](23328, 0xE200000000000000);
        memcpy(__dst, __src, 0x61uLL);
        v56 = sub_25BC1CA08();
        MEMORY[0x25F876C90](v56);

        MEMORY[0x25F876C90](0x3D6C6562616C20, 0xE700000000000000);

        __dst[0] = 32;
        __dst[1] = 0xE100000000000000;
        v87 = __src[8];
        v88 = BYTE2(__src[8]);
        v89 = *&__src[9];
        v90 = __src[11];
        v91 = __src[12];
        v57 = sub_25BC1CD8C();
        MEMORY[0x25F876C90](v57);

        MEMORY[0x25F876C90](__dst[0], __dst[1]);

        MEMORY[0x25F876C90](93, 0xE100000000000000);
        MEMORY[0x25F876C90](v80, v81);

        sub_25BC1D4D4(__src);
        v55 += 104;
        --v54;
      }

      while (v54);
    }

    MEMORY[0x25F876C90](125, 0xE100000000000000);
    swift_beginAccess();
    v58 = *v74;
    v59 = *v74 + 64;
    v60 = 1 << *(*v74 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(*v74 + 64);
    v63 = (v60 + 63) >> 6;
    sub_25BCB617C();
    v64 = 0;
    while (v62)
    {
      v65 = v64;
LABEL_66:
      v66 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v67 = (*(v58 + 56) + 24 * (v66 | (v65 << 6)));
      v68 = *v67;
      v69 = v67[1];
      v70 = v67[2];
      sub_25BCB617C();
      sub_25BCB617C();
      MEMORY[0x25F876C90](10, 0xE100000000000000);
      v71 = sub_25BC1C730(v68, v69, v70);
      v73 = v72;

      __dst[0] = v71;
      __dst[1] = v73;
      MEMORY[0x25F876C90](32, 0xE100000000000000);
      MEMORY[0x25F876C90](__dst[0], __dst[1]);
    }

    while (1)
    {
      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v65 >= v63)
      {

        MEMORY[0x25F876C90](125, 0xE100000000000000);

        return;
      }

      v62 = *(v59 + 8 * v65);
      ++v64;
      if (v62)
      {
        v64 = v65;
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  __break(1u);
LABEL_76:
  __break(1u);
}

uint64_t sub_25BC1BA90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v14 = sub_25BC60380(ObjectType, a2);
  v16 = v15;
  v73 = v14;
  __src[0] = v14;
  __src[1] = v15;
  __src[2] = a1;
  __src[3] = a2;
  __src[4] = a3;
  __src[5] = a4 & 1;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  LOWORD(__src[8]) = 257;
  BYTE2(__src[8]) = 0;
  __src[9] = 0x636170736F6E6F6DLL;
  __src[10] = 0xE900000000000065;
  __src[11] = 10;
  LOBYTE(__src[12]) = 3;
  swift_beginAccess();
  sub_25BCB617C();
  swift_unknownObjectRetain();
  sub_25BC1D49C(__src, v81);
  sub_25BAFD100();
  v17 = *(*(a6 + 16) + 16);
  sub_25BAFD240(v17);
  v18 = *(a6 + 16);
  *(v18 + 16) = v17 + 1;
  memcpy((v18 + 104 * v17 + 32), __src, 0x61uLL);
  *(a6 + 16) = v18;
  swift_endAccess();
  v76 = (*(a2 + 32))(ObjectType, a2);
  v75 = sub_25BA9BEA0(v76);
  if (!v75)
  {
LABEL_54:

    sub_25BC1D4D4(__src);
  }

  v19 = 0;
  v72 = v16;
  while (1)
  {
    if ((v76 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x25F8779B0](v19, v76);
    }

    else
    {
      if (v19 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v20 = *(v76 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      break;
    }

    v77 = v19 + 1;
    v78 = v20;
    if (sub_25BAB3058())
    {
      v22 = v21;
      v23 = swift_getObjectType();
      v24 = sub_25BC60380(v23, v22);
      v26 = v25;
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    v28 = a5[13];
    v27 = a5[14];
    v29 = sub_25BAC44E4();
    if (*(v27 + 16))
    {
      v31 = sub_25BA9266C(v29, v30);
      v33 = v32;

      if (v33)
      {
        v34 = *(*(v27 + 56) + 8 * v31);
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v34 >= *(v28 + 16))
        {
          goto LABEL_60;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v28 = a5[17];
    v35 = a5[18];
    v36 = sub_25BAC44E4();
    if (*(v35 + 16))
    {
      v38 = sub_25BA9266C(v36, v37);
      v40 = v39;

      if (v40)
      {
        v34 = *(*(v35 + 56) + 8 * v38);
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        if (v34 >= *(v28 + 16))
        {
          goto LABEL_62;
        }

LABEL_20:
        v41 = v28 + 16 * v34;
        v24 = *(v41 + 32);
        v26 = *(v41 + 40);
        sub_25BCB617C();
        v20 = v78;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v20 = v78;
    v24 = sub_25BAC44E4();
    v26 = v42;
LABEL_23:
    sub_25BCB617C();
    swift_beginAccess();
    if (*(*(a7 + 16) + 16))
    {
      sub_25BA9266C(v24, v26);
      v44 = v43;

      if (v44)
      {
        swift_endAccess();
        goto LABEL_36;
      }
    }

    else
    {
    }

    swift_endAccess();
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v82 = *(a7 + 16);
    v45 = v82;
    *(a7 + 16) = 0x8000000000000000;
    v46 = sub_25BA9266C(v24, v26);
    if (__OFADD__(v45[2], (v47 & 1) == 0))
    {
      goto LABEL_56;
    }

    v48 = v46;
    v49 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4850, &qword_25BCCBF10);
    if (sub_25BCB745C())
    {
      v50 = sub_25BA9266C(v24, v26);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_64;
      }

      v48 = v50;
    }

    v52 = v82;
    if (v49)
    {
      v53 = (v82[7] + 24 * v48);
      *v53 = v24;
      v53[1] = v26;
      v53[2] = MEMORY[0x277D84F90];
    }

    else
    {
      v82[(v48 >> 6) + 8] |= 1 << v48;
      v54 = (v52[6] + 16 * v48);
      *v54 = v24;
      v54[1] = v26;
      v55 = (v52[7] + 24 * v48);
      *v55 = v24;
      v55[1] = v26;
      v55[2] = MEMORY[0x277D84F90];
      v56 = v52[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_58;
      }

      v52[2] = v58;
    }

    *(a7 + 16) = v52;
    swift_endAccess();
    v20 = v78;
LABEL_36:
    swift_beginAccess();
    v60 = sub_25BB3A5A4();
    if (*(v59 + 8))
    {
      v61 = v59;
      v62 = 909209702;
      v63 = 0xE400000000000000;
      switch(*(v20 + 160))
      {
        case 0:
          v62 = 947154537;
          break;
        case 1:
          v63 = 0xE500000000000000;
          v62 = 0x3631746E69;
          break;
        case 2:
          v63 = 0xE500000000000000;
          v62 = 0x3233746E69;
          break;
        case 3:
          v63 = 0xE500000000000000;
          v62 = 0x3436746E69;
          break;
        case 4:
          v63 = 0xE500000000000000;
          v62 = 0x38746E6975;
          break;
        case 5:
          v63 = 0xE600000000000000;
          v62 = 0x3631746E6975;
          break;
        case 8:
          break;
        case 9:
          v62 = 909207138;
          break;
        case 0xA:
          v62 = 842231910;
          break;
        case 0xC:
          v62 = 1819242338;
          break;
        default:
          goto LABEL_63;
      }

      v79 = v62;
      v80 = v63;
      v64 = MEMORY[0x25F876F80](*(v20 + 152), MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v64);

      v65 = *(v61 + 16);
      sub_25BCB617C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v61 + 16) = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BAFE71C();
        v65 = v69;
        *(v61 + 16) = v69;
      }

      v67 = *(v65 + 16);
      if (v67 >= *(v65 + 24) >> 1)
      {
        sub_25BAFE71C();
        v65 = v70;
        *(v61 + 16) = v70;
      }

      *(v65 + 16) = v67 + 1;
      v68 = (v65 + 32 * v67);
      v68[4] = v73;
      v68[5] = v72;
      v68[6] = v79;
      v68[7] = v80;
      (v60)(v81, 0);
      swift_endAccess();
    }

    else
    {
      (v60)(v81, 0);
      swift_endAccess();
    }

    ++v19;
    if (v77 == v75)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000017, 0x800000025BCDE320, "NeuralNetworks/FrontendMILExtensions.swift", 42, 2, 109);
  __break(1u);
LABEL_64:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BC1C210(uint64_t a1)
{
  v4 = sub_25BB9FC3C();
  v2 = MEMORY[0x25F876F80](*(a1 + 152), MEMORY[0x277D83B88]);
  MEMORY[0x25F876C90](v2);

  return v4;
}

uint64_t sub_25BC1C274(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_25BC458D0();
  v10 = v9;
  v11 = *(a1 + 152);
  __src[0] = v8;
  __src[1] = v9;
  __src[2] = v11;
  __src[3] = v8;
  __src[5] = 0;
  __src[6] = 0;
  __src[4] = v9;
  LOBYTE(__src[7]) = 2;
  LOWORD(__src[8]) = 257;
  BYTE2(__src[8]) = 1;
  __src[9] = 0x636170736F6E6F6DLL;
  __src[10] = 0xE900000000000065;
  __src[11] = 10;
  LOBYTE(__src[12]) = 3;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  sub_25BCB617C();
  sub_25BC1D49C(__src, v35);
  sub_25BAFD100();
  v12 = *(*(a4 + 16) + 16);
  sub_25BAFD240(v12);
  v13 = *(a4 + 16);
  *(v13 + 16) = v12 + 1;
  memcpy((v13 + 104 * v12 + 32), __src, 0x61uLL);
  *(a4 + 16) = v13;
  swift_endAccess();
  if (!sub_25BAB3058())
  {
    sub_25BC1D4D4(__src);
  }

  v15 = v14;
  ObjectType = swift_getObjectType();
  v17 = sub_25BC60380(ObjectType, v15);
  v19 = v18;
  if (v17 != v8 || v18 != v10)
  {
    v21 = v17;
    if ((sub_25BCB789C() & 1) == 0)
    {
      swift_beginAccess();
      v34 = sub_25BB3F070(v21, v19, *(a5 + 16));
      v23 = v22;
      swift_endAccess();
      if (v23)
      {
        sub_25BB3D6B4(v34, v23);
      }

      else
      {
        swift_beginAccess();
        sub_25BCB617C();
        swift_isUniquelyReferenced_nonNull_native();
        v36 = *(a5 + 16);
        sub_25BC1A934();
        *(a5 + 16) = v36;
        swift_endAccess();
      }

      swift_beginAccess();
      v25 = sub_25BB3A5A4();
      if (*(v24 + 8))
      {
        v26 = v24;
        v27 = sub_25BC1C210(a1);
        v29 = v28;
        sub_25BAFD0E8();
        v30 = *(*(v26 + 16) + 16);
        sub_25BAFD228(v30);
        v31 = *(v26 + 16);
        *(v31 + 16) = v30 + 1;
        v32 = (v31 + 32 * v30);
        v32[4] = v8;
        v32[5] = v10;
        v32[6] = v27;
        v32[7] = v29;
        (v25)(v35, 0);
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_25BC1D4D4(__src);
      }

      (v25)(v35, 0);
      swift_endAccess();
    }
  }

  sub_25BC1D4D4(__src);

  return swift_unknownObjectRelease();
}

uint64_t sub_25BC1C5BC()
{
  v4 = *v0;
  sub_25BCB617C();
  MEMORY[0x25F876C90](23328, 0xE200000000000000);
  v1 = sub_25BC1CA08();
  MEMORY[0x25F876C90](v1);

  MEMORY[0x25F876C90](0x3D6C6562616C20, 0xE700000000000000);

  v2 = sub_25BC1CD8C();
  MEMORY[0x25F876C90](v2);

  MEMORY[0x25F876C90](32, 0xE100000000000000);

  MEMORY[0x25F876C90](93, 0xE100000000000000);
  return v4;
}

uint64_t sub_25BC1C730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(a3 + 16);
  v6 = (a3 + 56);
  while (v5 != v4)
  {
    v8 = *(v6 - 3);
    v7 = *(v6 - 2);
    v10 = *(v6 - 1);
    v9 = *v6;
    sub_25BCB617C();
    sub_25BCB617C();
    if (v4)
    {
      MEMORY[0x25F876C90](10, 0xE100000000000000);
    }

    sub_25BCB617C();
    MEMORY[0x25F876C90](540945696, 0xE400000000000000);
    MEMORY[0x25F876C90](v8, v7);
    MEMORY[0x25F876C90](a1, a2);

    if (v9)
    {
      MEMORY[0x25F876C90](v10, v9);

      MEMORY[0x25F876C90](23842, 0xE200000000000000);
      MEMORY[0x25F876C90](0x3D206C6562616C5BLL, 0xEA00000000002220);
    }

    MEMORY[0x25F876C90](0xD000000000000010, 0x800000025BCE3470);
    MEMORY[0x25F876C90](32, 0xE100000000000000);
    v6 += 4;
    ++v4;
  }

  return 0;
}

uint64_t sub_25BC1C8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  v8 = sub_25BC5F0F4();
  type metadata accessor for TensorHandle();
  *(swift_allocObject() + 16) = a2;

  sub_25BAA6EB0();
  if (v8 == 1)
  {
    Tensor.scalar<A>(as:)(a1, a3, a4);

    return sub_25BCB63AC();
  }

  else
  {
    v10 = Tensor.scalars<A>(as:)(a1, a3, a4);

    v11 = MEMORY[0x25F876F80](v10, a3);

    return v11;
  }
}

uint64_t sub_25BC1CA08()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  if (!*(v0 + 56))
  {
    if (v1)
    {
      v8 = *(v0 + 32);
    }

    else
    {
      v2 = 0x7475706E49;
      v8 = 0xE500000000000000;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (v3)
    {
      MEMORY[0x25F876C90](v2, v8);

      MEMORY[0x25F876C90](32, 0xE100000000000000);
      MEMORY[0x25F876C90](v4, v3);
LABEL_18:

      MEMORY[0x25F876C90](62, 0xE100000000000000);
      return 60;
    }

    v13 = v2;
LABEL_17:
    MEMORY[0x25F876C90](v13, v8);
    goto LABEL_18;
  }

  v5 = *(v0 + 16);
  if (*(v0 + 56) != 1)
  {
    if (v1)
    {
      v9 = *(v0 + 24);
    }

    else
    {
      v9 = 0x74757074754FLL;
    }

    if (v1)
    {
      v10 = *(v0 + 32);
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    v11 = sub_25BC1D504(v5, v2, v1, v4, v3, 2);
    MEMORY[0x25F876C90](v9, v10, v11);

    MEMORY[0x25F876C90](32, 0xE100000000000000);
    sub_25BCB70FC();

    v12 = MEMORY[0x25F876F80](v5, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v12);

    MEMORY[0x25F876C90](0x3E544E4F462F3CLL, 0xE700000000000000);

    v13 = 0xD000000000000015;
    v8 = 0x800000025BCE3490;
    goto LABEL_17;
  }

  v6 = swift_unknownObjectRetain();
  v7 = sub_25BC1CC78(v6, v2, v1, v4 & 1);
  sub_25BC1D5A0(v5, v2, v1, v4, v3, 1);
  return v7;
}

uint64_t sub_25BC1CC78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 24))(ObjectType, a2);
  MEMORY[0x25F876C90](v7);

  MEMORY[0x25F876C90](32, 0xE100000000000000);
  if ((a4 & 1) == 0)
  {
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);

    MEMORY[0x25F876C90](41, 0xE100000000000000);
    MEMORY[0x25F876C90](40, 0xE100000000000000);
  }

  MEMORY[0x25F876C90](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_25BC1CD8C()
{
  v8 = 0x223D657061687320;
  v9 = 0xE800000000000000;
  v1 = sub_25BC1CF34(*v0);
  MEMORY[0x25F876C90](v1);

  MEMORY[0x25F876C90](34, 0xE100000000000000);
  strcpy(v7, " style=");
  BYTE1(v7[1]) = 0;
  WORD1(v7[1]) = 0;
  HIDWORD(v7[1]) = -402653184;
  if (*(v0 + 1))
  {
    v2 = 0x64656C6C6966;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 1))
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x25F876C90](v2, v3);

  MEMORY[0x25F876C90](34, 0xE100000000000000);
  MEMORY[0x25F876C90](v7[0], v7[1]);

  strcpy(v7, " fillcolor=");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v4 = sub_25BC1D018(*(v0 + 2));
  MEMORY[0x25F876C90](v4);

  MEMORY[0x25F876C90](34, 0xE100000000000000);
  MEMORY[0x25F876C90](v7[0], v7[1]);

  v7[0] = 32;
  v7[1] = 0xE100000000000000;
  v5 = sub_25BC1D360(*(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));
  MEMORY[0x25F876C90](v5);

  MEMORY[0x25F876C90](32, 0xE100000000000000);

  return v8;
}

uint64_t sub_25BC1CF34(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 1818326639;
      break;
    case 2:
      result = 0x657261757173;
      break;
    case 3:
      result = 7892834;
      break;
    case 4:
      result = 0x656C63726963;
      break;
    case 5:
      result = 0x6E6F67796C6F70;
      break;
    case 6:
      result = 0x657370696C6C65;
      break;
    case 7:
      result = 0x656C676E61697274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BC1CFF4(char a1)
{
  if (a1)
  {
    return 0x64656C6C6966;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC1D018(char a1)
{
  result = 0x617267746867696CLL;
  switch(a1)
  {
    case 1:
      result = 0x756C62746867696CLL;
      break;
    case 2:
      result = 0x657267746867696CLL;
      break;
    case 3:
      result = 0x6B63616C62;
      break;
    case 4:
      result = 0x6574696877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BC1D0B8()
{
  v0 = sub_25BCB761C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25BC1D10C()
{
  v0 = sub_25BCB761C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BC1D158()
{
  v0 = sub_25BCB761C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BC1D204@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC1D0B8();
  *a1 = result;
  return result;
}

uint64_t sub_25BC1D234@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC1CFF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25BC1D284@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC1D10C();
  *a1 = result;
  return result;
}

uint64_t sub_25BC1D2B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC1CF34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25BC1D304@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC1D158();
  *a1 = result;
  return result;
}

uint64_t sub_25BC1D334@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC1D018(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC1D360(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_25BCB70FC();

  strcpy(v10, " fontcolor=");
  v7 = sub_25BC1D018(a4);
  MEMORY[0x25F876C90](v7);

  MEMORY[0x25F876C90](0x6973746E6F662022, 0xEC000000223D657ALL);
  v8 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v8);

  MEMORY[0x25F876C90](0x616E746E6F662022, 0xEC000000223D656DLL);
  MEMORY[0x25F876C90](a1, a2);
  MEMORY[0x25F876C90](34, 0xE100000000000000);
  return v10[0];
}

double sub_25BC1D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {
    sub_25BCB617C();
LABEL_9:

    sub_25BCB617C();
    return result;
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return result;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_25BC1D5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {

LABEL_9:
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return result;
    }

    goto LABEL_9;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_25BC1D654(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC1D694(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC1D700(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC1D740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BC1D7A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC1D7E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BC1D850(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC1D890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DotColor(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DotNodeStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DotNodeShape(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BC1DB7C()
{
  result = qword_27FBB6738;
  if (!qword_27FBB6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6738);
  }

  return result;
}

unint64_t sub_25BC1DBD4()
{
  result = qword_27FBB6740;
  if (!qword_27FBB6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6740);
  }

  return result;
}

unint64_t sub_25BC1DC2C()
{
  result = qword_27FBB6748;
  if (!qword_27FBB6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6748);
  }

  return result;
}

double Reshape.shape.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;
  sub_25BCB617C();
  return result;
}

uint64_t sub_25BC1DC98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6570616873 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_25BCB789C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC1DD0C()
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](0);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC1DD68(uint64_t a1)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](0);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC1DDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC1DC98(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25BC1DDD8(uint64_t a1)
{
  v2 = sub_25BC1DFA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC1DE14(uint64_t a1)
{
  v2 = sub_25BC1DFA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Reshape.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6750, &qword_25BCCC3E0);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC1DFA4();
  sub_25BCB617C();
  sub_25BCB7B6C();
  v11[1] = v9;
  sub_25BB417AC();
  sub_25BCB779C();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_25BC1DFA4()
{
  result = qword_28154C050;
  if (!qword_28154C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C050);
  }

  return result;
}

uint64_t Reshape.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6758, &qword_25BCCC3E8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC1DFA4();
  sub_25BCB7B2C();
  if (!v2)
  {
    sub_25BB41870();
    sub_25BCB76AC();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for Reshape.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_25BC1E248()
{
  result = qword_27FBB6760;
  if (!qword_27FBB6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6760);
  }

  return result;
}

unint64_t sub_25BC1E2A0()
{
  result = qword_28154C040;
  if (!qword_28154C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C040);
  }

  return result;
}

unint64_t sub_25BC1E2F8()
{
  result = qword_28154C048;
  if (!qword_28154C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C048);
  }

  return result;
}

uint64_t sub_25BC1E34C(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = v6;
  sub_25BAF99E8(v2[6]);
  sub_25BB50DF0();
  v8 = sub_25BCB672C();

  sub_25BAF99E8(v2[7]);
  v9 = sub_25BCB672C();

  sub_25BAF99E8(v2[8]);
  v10 = sub_25BCB672C();

  v12 = v2[3];
  v11 = v2[4];
  sub_25BCB617C();
  v13 = sub_25BC1E8A0(v7, v8, v9, v10, v12, v11, a1);

  *(v5 + 32) = v13;
  return v5;
}

uint64_t sub_25BC1E4CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(v2[5] + 152);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v30 = MEMORY[0x277D84F90];
    sub_25BCB617C();
    sub_25BB005F0(0, v7, 0);
    v8 = v30;
    v9 = v30[2];
    v10 = 32;
    do
    {
      v11 = *(v6 + v10);
      v12 = v30[3];
      if (v9 >= v12 >> 1)
      {
        sub_25BB005F0(v12 > 1, v9 + 1, 1);
      }

      v30[2] = v9 + 1;
      *(v30 + v9 + 8) = v11;
      v10 += 8;
      ++v9;
      --v7;
    }

    while (v7);

    v5 = a1;
  }

  v13 = v8[2];
  if (v13 >> 61)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = MEMORY[0x25F876250](v8 + 4, 4 * v13);
  v16 = v15;

  v17 = sub_25BCB59FC();
  sub_25BB0D160(v14, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25BCBB6D0;
  *(v18 + 32) = sub_25BCB6A6C();
  sub_25BB50DF0();
  v19 = sub_25BCB672C();

  v8 = [v5 constantWithData:v17 shape:v19 dataType:536870944];

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v20 = MEMORY[0x25F8779B0](0, a2);
    goto LABEL_10;
  }

  v20 = *(a2 + 32);
LABEL_10:
  v21 = v20;
  sub_25BAF99E8(v3[6]);
  v22 = sub_25BCB672C();

  sub_25BAF99E8(v3[7]);
  v23 = sub_25BCB672C();

  sub_25BAF99E8(v3[8]);
  v24 = sub_25BCB672C();

  v25 = v3[3];
  v26 = v3[4];
  sub_25BCB617C();
  v27 = sub_25BC1E93C(v21, v8, v22, v23, v24, v25, v26, v5);

  *(v6 + 32) = v27;
  return v6;
}

uint64_t sub_25BC1E7C4(uint64_t a1)
{
  result = sub_25BC1E84C(&qword_27FBB6168, type metadata accessor for SliceGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC1E808(uint64_t a1)
{
  result = sub_25BC1E84C(&qword_27FBB6170, type metadata accessor for SliceOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC1E84C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BC1E8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_25BCB633C();

  v13 = [a7 sliceTensor:a1 starts:a2 ends:a3 strides:a4 name:v12];

  return v13;
}

id sub_25BC1E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a8 sliceGradientTensor:a1 fwdInShapeTensor:a2 starts:a3 ends:a4 strides:a5 name:v14];

  return v15;
}

unint64_t sub_25BC1E9E0(unint64_t result, void x1_0, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (result)
    {

      return sub_25BCB647C();
    }

    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return sub_25BCB647C();
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_25BCB647C();
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t Collection.contiguousMap<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a5;
  v46 = a1;
  v47 = a2;
  OUTLINED_FUNCTION_9();
  i = v8;
  MEMORY[0x28223BE20](v9);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v43 = *(v14 + 8);
  v16 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v41 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  sub_25BCB6E8C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v22);
  v51 = &v39 - v23;
  OUTLINED_FUNCTION_9();
  AssociatedConformanceWitness = v24;
  MEMORY[0x28223BE20](v25);
  v40 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v16;
  v53 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v42 = v27;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v28);
  v30 = &v39 - v29;
  v55 = sub_25BCB731C();
  v31 = v52;
  sub_25BCB6ABC();
  v49 = a4;
  v48 = sub_25BCB732C();
  sub_25BCB726C();
  (*(AssociatedConformanceWitness + 16))(v40, v31, v39);
  v52 = v30;
  sub_25BCB655C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = (v41 + 32);
  v43 = (i + 2);
  v33 = i + 1;
  for (i = (v41 + 8); ; (*i)(v35, AssociatedTypeWitness))
  {
    v34 = v51;
    sub_25BCB6EDC();
    if (__swift_getEnumTagSinglePayload(v34, 1, AssociatedTypeWitness) == 1)
    {
      (*(v42 + 8))(v52, v53);
      v54 = v55;
      swift_getWitnessTable();
      return sub_25BCB68DC();
    }

    (*v32)(v21, v34, AssociatedTypeWitness);
    v46(v21);
    if (v6)
    {
      break;
    }

    v35 = v21;
    v36 = v49;
    (*v43)(v44, v13, v49);
    v6 = 0;
    sub_25BCB72FC();
    v37 = v36;
    v21 = v35;
    (*v33)(v13, v37);
  }

  (*i)(v21, AssociatedTypeWitness);
  (*(v42 + 8))(v52, v53);
}

uint64_t sub_25BC1EFDC()
{
  OUTLINED_FUNCTION_2_57();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_25BCB6AAC();
  sub_25BCB6ACC();
  return (*(v2 + 8))(v5, AssociatedTypeWitness);
}

uint64_t Comparable.clamped(to:)()
{
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BCB62FC();
  sub_25BCB792C();
  sub_25BCB791C();
  return (*(v2 + 8))(v5, v0);
}

void sub_25BC1F1CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v38 = MEMORY[0x277D84F90];
  sub_25BB00D58(0, v6, 0);
  v7 = v38;
  v29 = v5;
  v30 = v4;
  v28 = a2;
  v31 = v6;
  if (v6)
  {
    sub_25BCB617C();
    sub_25BCB617C();
    v8 = a1 + 48;
    v9 = (a2 + 48);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_24;
      }

      v33 = *(v8 - 8);
      v34 = *(v8 - 16);
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = v7;
      v13 = *v9;
      sub_25BCB617C();

      v36 = v11;
      v35 = v13;
      v14 = v13;
      v7 = v12;
      sub_25BB06178(v10, v11, v14);

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25BB00D58(v15 > 1, v16 + 1, 1);
        v7 = v12;
      }

      *(v7 + 16) = v16 + 1;
      v17 = (v7 + 40 * v16);
      v17[4] = v34;
      v17[5] = v33;
      --v5;
      v17[6] = v10;
      v17[7] = v36;
      v17[8] = v35;
      --v4;
      v8 += 24;
      v9 += 3;
      if (!--v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    sub_25BCB617C();
    sub_25BCB617C();
LABEL_13:
    v37 = v28 + 32;
    v18 = v31;
    for (i = 24 * v31; v30 != v18; i += 24)
    {
      if (v18 >= v30)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (v29 == v18)
      {
        break;
      }

      if (v18 >= v29)
      {
        goto LABEL_27;
      }

      v32 = v18;
      v20 = *(a1 + i + 32);
      v21 = *(a1 + i + 40);
      v22 = *(v37 + i);
      v23 = *(v37 + i + 8);
      v24 = *(v37 + i + 16);
      sub_25BCB617C();

      sub_25BB06178(v22, v23, v24);

      v26 = *(v7 + 16);
      v25 = *(v7 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_25BB00D58(v25 > 1, v26 + 1, 1);
      }

      *(v7 + 16) = v26 + 1;
      v27 = (v7 + 40 * v26);
      v27[4] = v20;
      v27[5] = v21;
      v27[6] = v22;
      v27[7] = v23;
      v27[8] = v24;
      v18 = v32 + 1;
    }
  }
}

void sub_25BC1F464(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v28 = MEMORY[0x277D84F90];
  sub_25BB00DC4(0, v6, 0);
  v24 = v5;
  v25 = v4;
  v22 = a1;
  v23 = v6;
  v21 = a2;
  if (v6)
  {
    v7 = (a2 + 32);
    v8 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v9 = *v8;
      v27 = *(v8 - 1);
      v26 = *v7;
      v11 = *(v28 + 16);
      v10 = *(v28 + 24);
      sub_25BCB617C();
      if (v11 >= v10 >> 1)
      {
        sub_25BB00DC4(v10 > 1, v11 + 1, 1);
      }

      *(v28 + 16) = v11 + 1;
      v12 = v28 + 24 * v11;
      --v5;
      *(v12 + 32) = v27;
      *(v12 + 40) = v9;
      *(v12 + 48) = v26;
      --v4;
      ++v7;
      v8 += 3;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v13 = v23;
    v14 = (v22 + 24 * v23 + 40);
    while (v25 != v13)
    {
      if (v13 >= v25)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }

      if (v24 == v13)
      {
        return;
      }

      if (v13 >= v24)
      {
        goto LABEL_25;
      }

      v16 = *(v14 - 1);
      v15 = *v14;
      v17 = *(v21 + 32 + 2 * v13);
      v19 = *(v28 + 16);
      v18 = *(v28 + 24);
      sub_25BCB617C();
      if (v19 >= v18 >> 1)
      {
        sub_25BB00DC4(v18 > 1, v19 + 1, 1);
      }

      *(v28 + 16) = v19 + 1;
      v20 = v28 + 24 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v15;
      *(v20 + 48) = v17;
      ++v13;
      v14 += 3;
    }
  }
}

uint64_t sub_25BC1F650(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v54 = MEMORY[0x277D84F90];
    sub_25BAC5590();
    v2 = v54;
    v4 = (a1 + 48);
    while (1)
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      if ((*v4 & 0x2000000000000000) != 0)
      {
        break;
      }

      if (!(v7 >> 62))
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        sub_25BAA51C8(&v49, &v41);
        if (*(&v42 + 1))
        {
          v45 = v41;
          v46 = v42;
          v47 = v43;
          v48 = v44;
          sub_25BB06178(v6, v5, v7);
          sub_25BB06184(v6, v5, v7);
        }

        else
        {
          type metadata accessor for ContextManager();
          sub_25BB06178(v6, v5, v7);
          sub_25BB06184(v6, v5, v7);
          sub_25BAA49B8();
          sub_25BAA4A5C(v40);

          sub_25BAA51C8(v40, &v45);
          sub_25BAA4AF4(v40);
          if (*(&v42 + 1))
          {
            sub_25BAA6F5C(&v41, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        v39 = v2;
        if (qword_28154F2C8 != -1)
        {
          swift_once();
        }

        v40[0] = v6;
        LOBYTE(v41) = v5;
        sub_25BC72C64(v40, &v41, &v45, qword_281557400, v25);
        v27 = v33;
        sub_25BB0D1B8(v6, v5, v7);
        v34 = type metadata accessor for TensorRepresentation();
        sub_25BAA51C8(&v45, v40);
        ObjectType = swift_getObjectType();
        v30 = swift_unknownObjectRetain();
        LOBYTE(v41) = 1;
        v31 = v34;
        v32 = ObjectType;
LABEL_35:
        v36 = sub_25BC5FAD0(v30, v40, 0x100000000uLL, v31, v32, v27);
        type metadata accessor for TensorHandle();
        v24 = swift_allocObject();
        *(v24 + 16) = v36;

        sub_25BAA6EB0();
        swift_unknownObjectRelease();

        sub_25BAA6F5C(&v49, &qword_27FBB6730, &qword_25BCBC4B0);
        sub_25BAA6F5C(&v45, &qword_27FBB6730, &qword_25BCBC4B0);
        sub_25BB0D1B8(v6, v5, v7);
LABEL_36:
        v2 = v39;
        goto LABEL_37;
      }

      if (v7 >> 62 == 1)
      {
        v39 = v2;
        v8 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        sub_25BB06184(v6, v5, v7);
        v9 = sub_25BB06184(v6, v5, v7);
        v8(&v53, v5, v7 & 0x1FFFFFFFFFFFFFFFLL, v9);
        v10 = v53;
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        sub_25BAA51C8(&v49, &v41);
        if (*(&v42 + 1))
        {
          v45 = v41;
          v46 = v42;
          v47 = v43;
          v48 = v44;
        }

        else
        {
          type metadata accessor for ContextManager();
          sub_25BAA49B8();
          sub_25BAA4A5C(v40);

          sub_25BAA51C8(v40, &v45);
          sub_25BAA4AF4(v40);
          if (*(&v42 + 1))
          {
            sub_25BAA6F5C(&v41, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        if (qword_28154F2C8 != -1)
        {
          swift_once();
        }

        v40[0] = v6;
        LOBYTE(v41) = v10;
        sub_25BC72C64(v40, &v41, &v45, qword_281557400, v11);
        v27 = v26;
        sub_25BB0D1B8(v6, v5, v7);
        v28 = type metadata accessor for TensorRepresentation();
        sub_25BAA51C8(&v45, v40);
        v29 = swift_getObjectType();
        v30 = swift_unknownObjectRetain();
        LOBYTE(v41) = 1;
        v31 = v28;
        v32 = v29;
        goto LABEL_35;
      }

      sub_25BB06184(*(v4 - 2), *(v4 - 1), *v4);
      v24 = v6;
LABEL_37:
      v54 = v2;
      v37 = *(v2 + 16);
      if (v37 >= *(v2 + 24) >> 1)
      {
        sub_25BAC5590();
        v2 = v54;
      }

      v4 += 3;
      *(v2 + 16) = v37 + 1;
      *(v2 + 8 * v37 + 32) = v24;
      if (!--v1)
      {
        return v2;
      }
    }

    v39 = v2;
    v12 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v13 = swift_allocObject();
    v14 = v13;
    *(v13 + 16) = xmmword_25BCBDF80;
    *(v13 + 32) = 1;
    if ((v7 & 0x100) != 0)
    {
      v16 = 3;
      if (v12 >= 2)
      {
        v16 = 1;
      }

      *(v13 + 40) = v16;
      *(v13 + 48) = v6;
      *(v13 + 56) = v5;
    }

    else
    {
      *(v13 + 40) = v6;
      *(v13 + 48) = v5;
      v15 = 3;
      if (v12 >= 2)
      {
        v15 = 1;
      }

      *(v13 + 56) = v15;
    }

    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    sub_25BAA51C8(&v49, &v41);
    if (*(&v42 + 1))
    {
      v45 = v41;
      v46 = v42;
      v47 = v43;
      v48 = v44;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v40);

      sub_25BAA51C8(v40, &v45);
      sub_25BAA4AF4(v40);
      if (*(&v42 + 1))
      {
        sub_25BAA6F5C(&v41, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    v40[0] = v14;
    LOBYTE(v41) = 10;
    sub_25BC72C64(v40, &v41, &v45, qword_281557400, v17);
    v19 = v18;

    v20 = type metadata accessor for TensorRepresentation();
    sub_25BAA51C8(&v45, v40);
    v21 = swift_getObjectType();
    v22 = swift_unknownObjectRetain();
    LOBYTE(v41) = 1;
    v23 = sub_25BC5FAD0(v22, v40, 0x100000000uLL, v20, v21, v19);
    type metadata accessor for TensorHandle();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BAA6F5C(&v49, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA6F5C(&v45, &qword_27FBB6730, &qword_25BCBC4B0);
    goto LABEL_36;
  }

  return v2;
}

void sub_25BC1FD58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E60, &qword_25BCC7190);
  v2 = sub_25BCB758C();
  v3 = v2;
  v4 = 0;
  v5 = 0;
  v69 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v68 = v2 + 64;
  v67 = v2;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v14 = (v11 - 1) & v11;
LABEL_10:
      v17 = v13 | (v4 << 6);
      v18 = (*(v69 + 48) + 16 * v17);
      v19 = *v18;
      v73 = v18[1];
      v20 = (*(v69 + 56) + 24 * v17);
      v21 = v20[1];
      v71 = v19;
      v72 = *v20;
      v22 = v20[2];
      v70 = v14;
      if ((v22 & 0x2000000000000000) != 0)
      {
        v27 = v5;
        v28 = v20[1];
        v29 = v20[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
        v30 = swift_allocObject();
        v31 = v30;
        *(v30 + 16) = xmmword_25BCBDF80;
        *(v30 + 32) = 1;
        if ((v22 & 0x100) != 0)
        {
          if (v29 >= 2)
          {
            v33 = 1;
          }

          else
          {
            v33 = 3;
          }

          *(v30 + 40) = v33;
          *(v30 + 48) = v72;
          *(v30 + 56) = v28;
        }

        else
        {
          *(v30 + 40) = v72;
          *(v30 + 48) = v28;
          v32 = 3;
          if (v29 >= 2)
          {
            v32 = 1;
          }

          *(v30 + 56) = v32;
        }

        v86 = 0;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        sub_25BAA51C8(&v83, &v75);
        v34 = v73;
        if (*(&v76 + 1))
        {
          v79 = v75;
          v80 = v76;
          v81 = v77;
          v82 = v78;
          sub_25BCB617C();
        }

        else
        {
          type metadata accessor for ContextManager();
          sub_25BCB617C();
          sub_25BAA49B8();
          sub_25BAA4A5C(v74);

          sub_25BAA51C8(v74, &v79);
          sub_25BAA4AF4(v74);
          if (*(&v76 + 1))
          {
            sub_25BAA6F5C(&v75, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        if (qword_28154F2C8 != -1)
        {
          swift_once();
        }

        v74[0] = v31;
        LOBYTE(v75) = 10;
        v5 = v27;
        sub_25BC72C64(v74, &v75, &v79, qword_281557400, v35);
        v37 = v36;

        v38 = type metadata accessor for TensorRepresentation();
        sub_25BAA51C8(&v79, v74);
        ObjectType = swift_getObjectType();
        v40 = swift_unknownObjectRetain();
        LOBYTE(v75) = 1;
        v41 = sub_25BC5FAD0(v40, v74, 0x100000000uLL, v38, ObjectType, v37);
        type metadata accessor for TensorHandle();
        v42 = swift_allocObject();
        *(v42 + 16) = v41;

        sub_25BAA6EB0();
        swift_unknownObjectRelease();

        sub_25BAA6F5C(&v79, &qword_27FBB6730, &qword_25BCBC4B0);
        sub_25BAA6F5C(&v83, &qword_27FBB6730, &qword_25BCBC4B0);
        v3 = v67;
        goto LABEL_44;
      }

      if (!(v22 >> 62))
      {
        break;
      }

      v65 = v20[1];
      if (v22 >> 62 == 1)
      {
        v62 = v5;
        v23 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        sub_25BCB617C();
        v24 = sub_25BB06178(v72, v21, v22);
        v23(&v87, v21, v22 & 0x1FFFFFFFFFFFFFFFLL, v24);
        v25 = v87;
        v86 = 0;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        sub_25BAA51C8(&v83, &v75);
        if (*(&v76 + 1))
        {
          v79 = v75;
          v80 = v76;
          v81 = v77;
          v82 = v78;
          v5 = v62;
        }

        else
        {
          type metadata accessor for ContextManager();
          sub_25BAA49B8();
          sub_25BAA4A5C(v74);

          sub_25BAA51C8(v74, &v79);
          sub_25BAA4AF4(v74);
          v5 = v62;
          if (*(&v76 + 1))
          {
            sub_25BAA6F5C(&v75, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        if (qword_28154F2C8 != -1)
        {
          swift_once();
        }

        v74[0] = v72;
        LOBYTE(v75) = v25;
        sub_25BC72C64(v74, &v75, &v79, qword_281557400, v26);
        v63 = v45;
        v46 = type metadata accessor for TensorRepresentation();
        sub_25BAA51C8(&v79, v74);
        v47 = swift_getObjectType();
        v48 = swift_unknownObjectRetain();
        LOBYTE(v75) = 1;
        v49 = sub_25BC5FAD0(v48, v74, 0x100000000uLL, v46, v47, v63);
        type metadata accessor for TensorHandle();
        v42 = swift_allocObject();
        *(v42 + 16) = v49;

        sub_25BAA6EB0();

        v50 = v72;
        v51 = v65;
LABEL_43:
        sub_25BB0D1B8(v50, v51, v22);
        swift_unknownObjectRelease();
        sub_25BAA6F5C(&v79, &qword_27FBB6730, &qword_25BCBC4B0);
        sub_25BAA6F5C(&v83, &qword_27FBB6730, &qword_25BCBC4B0);
        v3 = v67;
        v34 = v73;
        goto LABEL_44;
      }

      sub_25BCB617C();
      v44 = v22;
      v34 = v73;
      sub_25BB06178(v72, v21, v44);
      v42 = v72;
LABEL_44:
      *(v68 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v58 = (v3[6] + 16 * v17);
      *v58 = v71;
      v58[1] = v34;
      *(v3[7] + 8 * v17) = v42;
      v59 = v3[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_49;
      }

      v3[2] = v61;
      v11 = v70;
      if (!v70)
      {
        goto LABEL_5;
      }
    }

    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    sub_25BAA51C8(&v83, &v75);
    if (*(&v76 + 1))
    {
      v79 = v75;
      v80 = v76;
      v81 = v77;
      v82 = v78;
      sub_25BCB617C();
      sub_25BB06178(v72, v21, v22);
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BCB617C();
      sub_25BB06178(v72, v21, v22);
      sub_25BAA49B8();
      sub_25BAA4A5C(v74);

      sub_25BAA51C8(v74, &v79);
      sub_25BAA4AF4(v74);
      if (*(&v76 + 1))
      {
        sub_25BAA6F5C(&v75, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    v74[0] = v72;
    LOBYTE(v75) = v21;
    sub_25BC72C64(v74, &v75, &v79, qword_281557400, v43);
    v66 = v52;
    v64 = v5;
    v53 = v21;
    v54 = type metadata accessor for TensorRepresentation();
    sub_25BAA51C8(&v79, v74);
    v55 = swift_getObjectType();
    v56 = swift_unknownObjectRetain();
    LOBYTE(v75) = 1;
    v57 = sub_25BC5FAD0(v56, v74, 0x100000000uLL, v54, v55, v66);
    type metadata accessor for TensorHandle();
    v42 = swift_allocObject();
    *(v42 + 16) = v57;

    sub_25BAA6EB0();

    v50 = v72;
    v51 = v53;
    v5 = v64;
    goto LABEL_43;
  }

LABEL_5:
  v15 = v4;
  while (1)
  {
    v4 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v4 >= v12)
    {
      return;
    }

    v16 = *(v7 + 8 * v4);
    ++v15;
    if (v16)
    {
      v13 = __clz(__rbit64(v16));
      v14 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_25BC20588(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25BB00D78(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 32);
    v5 = *(v11 + 16);
    v6 = 24 * v5;
    do
    {
      v7 = *v4;
      v8 = *(v11 + 24);

      if (v5 >= v8 >> 1)
      {
        sub_25BB00D78(v8 > 1, v5 + 1, 1);
      }

      *(v11 + 16) = v5 + 1;
      v9 = v11 + v6;
      *(v9 + 32) = v7;
      *(v9 + 40) = xmmword_25BCC4310;
      v6 += 24;
      ++v4;
      ++v5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_25BC20680(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6790, &qword_25BCCC708);
  v2 = sub_25BCB758C();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(a1 + 56) + 8 * v13);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = (v3[6] + 16 * v13);
      *v18 = v16;
      v18[1] = v15;
      v19 = v3[7] + 24 * v13;
      *v19 = v17;
      *(v19 + 8) = xmmword_25BCC4310;
      v20 = v3[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v3[2] = v22;
      sub_25BCB617C();

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t MLPackageWritingOptions.ParameterStorageMode.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t *a1, __int16 *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v11 = *a4;
  v16 = *a1;
  v9 = v16;
  v17 = xmmword_25BCC4310;
  v15 = v10;
  v14 = v11;

  Layer<>.writeMLPackage(withInput:output:to:options:)(&v16, &v15, a3, &v14, a5, a6, v12);
  return OUTLINED_FUNCTION_65_5(v9);
}

void *sub_25BC20C38(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  v9 = *((a4)() + 16);

  if (v9 != 1)
  {
    OUTLINED_FUNCTION_0_16();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_59_9();
    OUTLINED_FUNCTION_3_3();
    v13 = MEMORY[0x25F876C90](0xD00000000000001ALL);
    a4(v13);

    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_67_6();

    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_28_0();

    OUTLINED_FUNCTION_40_18();
    v14 = sub_25BB0A3A4();
    v15 = OUTLINED_FUNCTION_14_0(&type metadata for ModelWritingError, v14);
    OUTLINED_FUNCTION_30_21(v15, v16);
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E78, &qword_25BCCC700);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25BCBAE50;
  result = (a4)();
  if (result[2])
  {
    v12 = result[4];
    v11 = result[5];
    sub_25BCB617C();

    *(v4 + 32) = v12;
    *(v4 + 40) = v11;
    *(v4 + 48) = a1;
    *(v4 + 56) = a2;
    *(v4 + 64) = a3;
    sub_25BB06178(a1, a2, a3);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_25BC20DF8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = sub_25BC4F5E4()[2];

  if (v5 != 1)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000001ALL, 0x800000025BCE3520);
    sub_25BC4F5E4();

    v9 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v9);

    MEMORY[0x25F876C90](0xD00000000000001CLL, 0x800000025BCE3540);
    v10 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v10);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    sub_25BB0A3A4();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    swift_willThrow();
    return v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E78, &qword_25BCCC700);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  result = sub_25BC4F5E4();
  if (result[2])
  {
    v8 = result[4];
    v7 = result[5];
    sub_25BCB617C();

    *(v1 + 32) = v8;
    *(v1 + 40) = v7;
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    *(v1 + 64) = v4;
    sub_25BB06178(v2, v3, v4);
    return v1;
  }

  __break(1u);
  return result;
}

void *sub_25BC20FF0(__int16 a1, uint64_t (*a2)(void), uint64_t a3)
{
  if ((a1 & 0xFF00) == 0x300)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA0, &qword_25BCBBDF8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25BCBAE50;
    result = a2();
    if (result[2])
    {
      v7 = result[4];
      v6 = result[5];
      sub_25BCB617C();

      *(v4 + 32) = v7;
      *(v4 + 40) = v6;
      *(v4 + 48) = 512;
      return v4;
    }

    __break(1u);
  }

  else
  {
    v4 = a3;
    v9 = *(a2() + 16);

    if (v9 != 1)
    {
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_59_9();
      OUTLINED_FUNCTION_3_3();
      v12 = MEMORY[0x25F876C90](0xD00000000000001BLL);
      (v4)(v12);

      OUTLINED_FUNCTION_23_0();
      sub_25BCB77FC();
      OUTLINED_FUNCTION_67_6();

      OUTLINED_FUNCTION_3_3();
      MEMORY[0x25F876C90]();
      OUTLINED_FUNCTION_23_0();
      sub_25BCB77FC();
      OUTLINED_FUNCTION_28_0();

      OUTLINED_FUNCTION_40_18();
      v13 = sub_25BB0A3A4();
      v14 = OUTLINED_FUNCTION_14_0(&type metadata for ModelWritingError, v13);
      OUTLINED_FUNCTION_30_21(v14, v15);
      return v4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA0, &qword_25BCBBDF8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25BCBAE50;
    result = a2();
    if (result[2])
    {
      v11 = result[4];
      v10 = result[5];
      sub_25BCB617C();

      *(v4 + 32) = v11;
      *(v4 + 40) = v10;
      *(v4 + 48) = a1;
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_25BC21214(__int16 *a1)
{
  v1 = *a1;
  if ((*a1 & 0xFF00) == 0x300)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA0, &qword_25BCBBDF8);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25BCBAE50;
    result = sub_25BC4F508();
    if (result[2])
    {
      v5 = result[4];
      v4 = result[5];
      sub_25BCB617C();

      *(v2 + 32) = v5;
      *(v2 + 40) = v4;
      *(v2 + 48) = 512;
      return v2;
    }

    __break(1u);
  }

  else
  {
    v6 = sub_25BC4F508()[2];

    if (v6 != 1)
    {
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE3560);
      sub_25BC4F5E4();

      v9 = sub_25BCB77FC();
      v2 = v10;
      MEMORY[0x25F876C90](v9);

      MEMORY[0x25F876C90](0xD00000000000001CLL, 0x800000025BCE3580);
      v11 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v11);

      MEMORY[0x25F876C90](11872, 0xE200000000000000);
      sub_25BB0A3A4();
      swift_allocError();
      *v12 = 0;
      v12[1] = 0xE000000000000000;
      swift_willThrow();
      return v2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA0, &qword_25BCBBDF8);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25BCBAE50;
    result = sub_25BC4F508();
    if (result[2])
    {
      v8 = result[4];
      v7 = result[5];
      sub_25BCB617C();

      *(v2 + 32) = v8;
      *(v2 + 40) = v7;
      *(v2 + 48) = v1;
      return v2;
    }
  }

  __break(1u);
  return result;
}

void sub_25BC21468()
{
  OUTLINED_FUNCTION_17_1();
  v1 = v0;
  v13 = v2;
  sub_25BCB590C();
  v3 = sub_25BCB63BC();
  v5 = v4;

  if (v3 == 0x67616B6361706C6DLL && v5 == 0xE900000000000065)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_13_36(v3, v5, 0x67616B6361706C6DLL);
  OUTLINED_FUNCTION_63_7();
  if (v3)
  {
LABEL_8:
    v12 = sub_25BC25D54(v13, v1);
    MEMORY[0x28223BE20](v12);
    sub_25BC7501C();

    goto LABEL_9;
  }

  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000002BLL, 0x800000025BCE34B0);
  v7 = sub_25BCB595C();
  MEMORY[0x25F876C90](v7);

  v8 = OUTLINED_FUNCTION_5_47();
  MEMORY[0x25F876C90](v8);
  v9 = sub_25BB0A3A4();
  v10 = OUTLINED_FUNCTION_14_0(&type metadata for ModelWritingError, v9);
  OUTLINED_FUNCTION_30_21(v10, v11);
LABEL_9:
  OUTLINED_FUNCTION_16();
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_25BC225EC(a1, a2, a3, a4, a5, a6, sub_25BC20588, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  return sub_25BC225EC(a1, a2, a3, a4, a5, a6, sub_25BC20680, Layer<>.writeMLPackage(withInput:output:to:options:));
}

uint64_t sub_25BC21988(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *((a2)() + 16);

  if (v4 == *(a1 + 16))
  {
    a2(v5);
    sub_25BCB617C();
    v6 = OUTLINED_FUNCTION_58();
    sub_25BC1F1CC(v6, v7);
    v9 = v8;

    return v9;
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_59_9();
    OUTLINED_FUNCTION_3_3();
    v11 = MEMORY[0x25F876C90](0xD00000000000001ALL);
    a2(v11);

    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_67_6();

    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_28_0();

    OUTLINED_FUNCTION_40_18();
    v12 = sub_25BB0A3A4();
    v13 = OUTLINED_FUNCTION_14_0(&type metadata for ModelWritingError, v12);
    return OUTLINED_FUNCTION_30_21(v13, v14);
  }
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  return sub_25BC2332C(a1, a2, a3, a4, a5, a6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  return sub_25BC2332C(a1, a2, a3, a4, a5, a6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

uint64_t sub_25BC21D90(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    v4 = *((a2)() + 16);

    if (v4 == *(a1 + 16))
    {
      v6 = a2(v5);
      sub_25BCB617C();
      sub_25BC1F464(v6, a1);
      v8 = v7;

      return v8;
    }

    OUTLINED_FUNCTION_0_16();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_59_9();
    OUTLINED_FUNCTION_3_3();
    v19 = MEMORY[0x25F876C90](0xD00000000000001BLL);
    a2(v19);

    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_67_6();

    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_28_0();

    OUTLINED_FUNCTION_40_18();
    v12 = v24;
    v20 = sub_25BB0A3A4();
    v21 = OUTLINED_FUNCTION_14_0(&type metadata for ModelWritingError, v20);
    OUTLINED_FUNCTION_42_16(v21, v22);
  }

  else
  {
    v10 = (a2)();
    v11 = *(v10 + 16);
    if (v11)
    {
      v23 = MEMORY[0x277D84F90];
      sub_25BB00DC4(0, v11, 0);
      v12 = v23;
      v13 = (v10 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v16 = *(v23 + 16);
        v17 = *(v23 + 24);
        sub_25BCB617C();
        if (v16 >= v17 >> 1)
        {
          sub_25BB00DC4(v17 > 1, v16 + 1, 1);
        }

        *(v23 + 16) = v16 + 1;
        v18 = v23 + 24 * v16;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        *(v18 + 48) = 512;
        v13 += 3;
        --v11;
      }

      while (v11);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v12;
}

unint64_t sub_25BC21FFC(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_25BC4F508()[2];

    if (v2 == *(a1 + 16))
    {
      v3 = sub_25BC4F508();
      sub_25BCB617C();
      sub_25BC1F464(v3, a1);
      v5 = v4;

      return v5;
    }

    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE3560);
    sub_25BC4F508();

    v16 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v16);

    MEMORY[0x25F876C90](0xD00000000000001DLL, 0x800000025BCE35A0);
    v17 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v17);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    v9 = 0xE000000000000000;
    sub_25BB0A3A4();
    swift_allocError();
    *v18 = 0;
    v18[1] = 0xE000000000000000;
    swift_willThrow();
  }

  else
  {
    v7 = sub_25BC4F508();
    v8 = v7[2];
    if (v8)
    {
      v19 = MEMORY[0x277D84F90];
      sub_25BB00DC4(0, v8, 0);
      v9 = v19;
      v10 = v7 + 5;
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        v13 = *(v19 + 16);
        v14 = *(v19 + 24);
        sub_25BCB617C();
        if (v13 >= v14 >> 1)
        {
          sub_25BB00DC4(v14 > 1, v13 + 1, 1);
        }

        *(v19 + 16) = v13 + 1;
        v15 = v19 + 24 * v13;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        *(v15 + 48) = 512;
        v10 += 3;
        --v8;
      }

      while (v8);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v9;
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)()
{
  OUTLINED_FUNCTION_18_33();
  return sub_25BC240D4(v0, v1, v2, v3, v4, v5, v6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  OUTLINED_FUNCTION_17_34();
  return sub_25BC240D4(v0, v1, v2, v3, v4, v5, v6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  OUTLINED_FUNCTION_18_33();
  return sub_25BC240D4(v0, v1, v2, v3, v4, v5, v6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  OUTLINED_FUNCTION_17_34();
  return sub_25BC240D4(v0, v1, v2, v3, v4, v5, v6, Layer<>.writeMLPackage(withInput:output:to:options:));
}

{
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_39_19();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_25BBAA234(AssociatedTypeWitness, v0);
  OUTLINED_FUNCTION_41_18();
  Layer<>.writeMLPackage(withInput:output:to:options:)();
}

{
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_39_19();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_25BBAA234(AssociatedTypeWitness, v0);
  OUTLINED_FUNCTION_41_18();
  Layer<>.writeMLPackage(withInput:output:to:options:)();
}

uint64_t sub_25BC225EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  OUTLINED_FUNCTION_48_15();
  v9();
  OUTLINED_FUNCTION_46_16();
  a8();
}

uint64_t sub_25BC2332C(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v13 = *a4;
  v16 = *a1;
  v12 = v16;
  v17 = xmmword_25BCC4310;
  v15 = v13;

  a7(&v16, a2, a3, &v15, a5, a6);
  return OUTLINED_FUNCTION_65_5(v12);
}

void sub_25BC2362C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = (a2)();
    v4 = 0;
    v37 = *(v3 + 16);
    v5 = v3 + 48;
    v36 = MEMORY[0x277D84F90];
LABEL_3:
    v6 = v5 + 24 * v4;
    while (v37 != v4)
    {
      if (v4 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      if (*(a1 + 16))
      {
        v7 = *(v6 - 8);
        v8 = *(v6 - 16);
        swift_bridgeObjectRetain_n();

        v9 = sub_25BA9266C(v8, v7);
        v11 = v10;

        if (v11)
        {
          v12 = *(*(a1 + 56) + 2 * v9);

          v13 = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25BAFEB34();
            v13 = v16;
          }

          v14 = *(v13 + 16);
          if (v14 >= *(v13 + 24) >> 1)
          {
            sub_25BAFEB34();
            v13 = v17;
          }

          ++v4;
          *(v13 + 16) = v14 + 1;
          v36 = v13;
          v15 = v13 + 24 * v14;
          *(v15 + 32) = v8;
          *(v15 + 40) = v7;
          *(v15 + 48) = v12;
          v5 = v3 + 48;
          goto LABEL_3;
        }
      }

      v6 += 24;
      ++v4;
    }

    v19 = *(v36 + 16);
    v20 = *(a2(v18) + 16);

    if (v19 == v20)
    {
      sub_25BAFA3E8(v36);
    }

    else
    {

      sub_25BCB70FC();
      v29 = MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE3560);
      a2(v29);

      OUTLINED_FUNCTION_23_0();
      v30 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v30);

      MEMORY[0x25F876C90](0xD00000000000001CLL, 0x800000025BCE3580);
      OUTLINED_FUNCTION_23_0();
      v31 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v31);

      MEMORY[0x25F876C90](11872, 0xE200000000000000);
      v32 = sub_25BB0A3A4();
      v33 = OUTLINED_FUNCTION_14_0(&type metadata for ModelWritingError, v32);
      OUTLINED_FUNCTION_42_16(v33, v34);
    }
  }

  else
  {
    v21 = (a2)();
    v22 = *(v21 + 16);
    if (v22)
    {
      v38 = MEMORY[0x277D84F90];
      sub_25BB00DC4(0, v22, 0);
      v23 = (v21 + 40);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        v27 = *(v38 + 16);
        v26 = *(v38 + 24);
        sub_25BCB617C();
        if (v27 >= v26 >> 1)
        {
          sub_25BB00DC4(v26 > 1, v27 + 1, 1);
        }

        *(v38 + 16) = v27 + 1;
        v28 = v38 + 24 * v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        *(v28 + 48) = 512;
        v23 += 3;
        --v22;
      }

      while (v22);
    }
  }
}

void sub_25BC239F8(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_25BC4F508();
    v3 = 0;
    v31 = v2[2];
    v4 = v2 + 6;
    v30 = MEMORY[0x277D84F90];
LABEL_3:
    v5 = &v4[3 * v3];
    while (v31 != v3)
    {
      if (v3 >= v2[2])
      {
        __break(1u);
        return;
      }

      if (*(a1 + 16))
      {
        v6 = *(v5 - 1);
        v7 = *(v5 - 2);
        swift_bridgeObjectRetain_n();

        v8 = sub_25BA9266C(v7, v6);
        v10 = v9;

        if (v10)
        {
          v11 = *(*(a1 + 56) + 2 * v8);

          v12 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25BAFEB34();
            v12 = v15;
          }

          v13 = *(v12 + 16);
          v30 = v12;
          if (v13 >= *(v12 + 24) >> 1)
          {
            sub_25BAFEB34();
            v30 = v16;
          }

          ++v3;
          *(v30 + 16) = v13 + 1;
          v14 = v30 + 24 * v13;
          *(v14 + 32) = v7;
          *(v14 + 40) = v6;
          *(v14 + 48) = v11;
          v4 = v2 + 6;
          goto LABEL_3;
        }
      }

      v5 += 3;
      ++v3;
    }

    v17 = *(v30 + 16);
    v18 = sub_25BC4F508()[2];

    if (v17 == v18)
    {
      sub_25BAFA3E8(v30);
    }

    else
    {

      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE3560);
      sub_25BC4F508();

      v27 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v27);

      MEMORY[0x25F876C90](0xD00000000000001CLL, 0x800000025BCE3580);
      v28 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v28);

      MEMORY[0x25F876C90](11872, 0xE200000000000000);
      sub_25BB0A3A4();
      swift_allocError();
      *v29 = 0;
      v29[1] = 0xE000000000000000;
      swift_willThrow();
    }
  }

  else
  {
    v19 = sub_25BC4F508();
    v20 = v19[2];
    if (v20)
    {
      v32 = MEMORY[0x277D84F90];
      sub_25BB00DC4(0, v20, 0);
      v21 = v19 + 5;
      do
      {
        v23 = *(v21 - 1);
        v22 = *v21;
        v25 = *(v32 + 16);
        v24 = *(v32 + 24);
        sub_25BCB617C();
        if (v25 >= v24 >> 1)
        {
          sub_25BB00DC4(v24 > 1, v25 + 1, 1);
        }

        *(v32 + 16) = v25 + 1;
        v26 = v32 + 24 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v22;
        *(v26 + 48) = 512;
        v21 += 3;
        --v20;
      }

      while (v20);
    }
  }
}

uint64_t sub_25BC240D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  OUTLINED_FUNCTION_48_15();
  v9();
  OUTLINED_FUNCTION_46_16();
  a8();
  OUTLINED_FUNCTION_57_8();
}

void Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_15_33();
  OUTLINED_FUNCTION_8_40();
  sub_25BC1FD58(v38);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67(&qword_27FBB33B8);
  }

  OUTLINED_FUNCTION_3_46();
  Layer<>.compiled(forInput:options:)();
  if (!v36)
  {

    v39 = OUTLINED_FUNCTION_29_23();
    sub_25BC229F0(v39);
    v40 = OUTLINED_FUNCTION_50_13();
    sub_25BC2362C(v40, v41);
    OUTLINED_FUNCTION_24_19();
    sub_25BCB590C();
    v43 = v42;
    sub_25BCB63BC();
    OUTLINED_FUNCTION_36_16();

    if (a24 == a22 && v37 == 0xE900000000000065)
    {
    }

    else
    {
      v45 = OUTLINED_FUNCTION_35_19();
      OUTLINED_FUNCTION_13_36(v45, v46, a22);
      OUTLINED_FUNCTION_66_9();
      if ((v43 & 1) == 0)
      {

        OUTLINED_FUNCTION_7_40();
        OUTLINED_FUNCTION_22_27();
        OUTLINED_FUNCTION_6_46();
        sub_25BCB595C();
        OUTLINED_FUNCTION_47_16();

        OUTLINED_FUNCTION_21_28();
        OUTLINED_FUNCTION_11_37();
        MEMORY[0x25F876C90]();
        v47 = sub_25BB0A3A4();
        v48 = OUTLINED_FUNCTION_14_0(&type metadata for ModelWritingError, v47);
        OUTLINED_FUNCTION_33_22(v48, v49);

        goto LABEL_6;
      }
    }

    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_45_13();
    sub_25BC25B04(v50);
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_9_39();
    sub_25BB0A4A8(v51, v52, v53, v54);
    goto LABEL_6;
  }

LABEL_6:
  OUTLINED_FUNCTION_16_38();
}

void Layer<>.writeMLPackage(withInput:output:to:options:)()
{
  OUTLINED_FUNCTION_17_1();
  v32 = v0;
  v33 = v1;
  v31 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v29[1] = v10;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_39_19();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_53();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v29 - v18;
  v30 = *v12;
  v20 = sub_25BCB617C();
  sub_25BBA9F24(v20, v2, v5);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67(&qword_27FBB33B8);
  }

  v21 = OUTLINED_FUNCTION_4_51(&byte_27FBB7DF8);
  OUTLINED_FUNCTION_52_12(v21, v22);
  v23 = v33;
  v24 = Layer<>.compiled(forInput:options:)(v35, v19, v34, v9, v7, v5);
  if (v23)
  {

    (*(v16 + 8))(v19, v2);
  }

  else
  {
    v29[0] = v25;
    v33 = v24;

    (*(v16 + 8))(v19, v2);
    v32 = v35[1];
    v26 = OUTLINED_FUNCTION_62_7();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_25BC247F0(v14, v26, &type metadata for FeatureInputType, v31, AssociatedConformanceWitness);
    sub_25BC22D04();

    v34[0] = v30;
    sub_25BC21214(v34);
    type metadata accessor for Function(0, v2, &type metadata for Tensor, v28);
    sub_25BC21468();
    OUTLINED_FUNCTION_57_8();
  }

  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_17_1();
  v32 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v28[3] = v12;
  v29 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_39_19();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_53();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v28 - v18;
  v30 = *v10;
  v20 = sub_25BCB617C();
  v31 = v4;
  sub_25BBA9F24(v20, v1, v4);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67(&qword_27FBB33B8);
  }

  v21 = OUTLINED_FUNCTION_4_51(&byte_27FBB7DF8);
  OUTLINED_FUNCTION_52_12(v21, v22);
  Layer.compiled(forInput:options:)(v34, v19, &v33, v8, v6);
  if (v0)
  {

    (*(v16 + 8))(v19, v1);
  }

  else
  {
    v28[1] = v23;

    (*(v16 + 8))(v19, v1);
    v28[2] = v34[1];
    v33 = v30;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_25BC247F0(v14, AssociatedTypeWitness, &type metadata for FeatureInputType, v32, AssociatedConformanceWitness);
    sub_25BC22D04();

    sub_25BC21FFC(v29);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB49F0, &unk_25BCC0140);
    type metadata accessor for Function(0, v1, v26, v27);
    sub_25BC21468();
    OUTLINED_FUNCTION_57_8();
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC247F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1;
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v5 = sub_25BCB61AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_25BAB2B20(sub_25BC28DE8, v10, v5, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
  sub_25BCB68CC();
  swift_getWitnessTable();
  return sub_25BCB615C();
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_48_15();

  OUTLINED_FUNCTION_46_16();
  Layer<>.writeMLPackage(withInput:output:to:options:)(v10, v11, v12, v13, v14, v15, a7, a8);
  v16 = OUTLINED_FUNCTION_57_8();
  return OUTLINED_FUNCTION_65_5(v16);
}

{
  sub_25BC1F650(a1);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67(&qword_27FBB33B8);
  }

  v12 = OUTLINED_FUNCTION_4_51(&byte_27FBB7DF8);
  LOBYTE(v48) = v13;
  v49 = v14;
  v50 = v12;
  LOBYTE(v51) = v15;
  v16 = sub_25BCB617C();
  v24 = OUTLINED_FUNCTION_56_10(v16, v17, v18, v19, v20, v21, v22, v23, v37, v38, v39, v40, v41, v43, v44, v45, a3, a7, v48, v49, v50, v51, v52);
  Layer.compiled(forInput:options:)(v24, v25, v26, v27, a6);
  if (v8)
  {
  }

  else
  {
    v42 = a8;

    v29 = OUTLINED_FUNCTION_29_23();
    sub_25BC21988(v29, v30);
    v31 = a2;
    if (a2)
    {
      swift_getAssociatedTypeWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v31 = sub_25BC247F0(a2, AssociatedTypeWitness, &type metadata for FeatureOutputType, v42, AssociatedConformanceWitness);
    }

    sub_25BC239F8(v31);

    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB49F0, &unk_25BCC0140);
    v35 = swift_getAssociatedTypeWitness();
    type metadata accessor for Function(0, v34, v35, v36);
    sub_25BC21468();
  }
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  LODWORD(v41) = *a4;
  v43 = *a1;
  v44 = v9;
  v45 = v11;
  sub_25BBA9DB8(&v48);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67(&qword_27FBB33B8);
  }

  v12 = OUTLINED_FUNCTION_4_51(&byte_27FBB7DF8);
  LOBYTE(v43) = v13;
  v44 = v14;
  v45 = v12;
  LOBYTE(v46) = v15;
  v16 = sub_25BCB617C();
  OUTLINED_FUNCTION_56_10(v16, v17, v18, v19, v20, v21, v22, v23, v30, v31, v32, v33, v34, v35, a3, a8, a2, v41, v43, v44, v45, v46, v47);
  Layer<>.compiled(forInput:options:)();
  if (v8)
  {
  }

  else
  {

    LOBYTE(v48) = v42;
    v43 = v10;
    v44 = v9;
    v45 = v11;
    sub_25BC20DF8(&v43);
    if (v40)
    {
      swift_getAssociatedTypeWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v27 = sub_25BC247F0(v40, AssociatedTypeWitness, &type metadata for FeatureOutputType, v38, AssociatedConformanceWitness);
    }

    else
    {
      v27 = 0;
    }

    sub_25BC239F8(v27);

    v28 = swift_getAssociatedTypeWitness();
    type metadata accessor for Function(0, &type metadata for Tensor, v28, v29);
    sub_25BC21468();
  }
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a4;
  v15 = sub_25BC20588(a1);
  v17 = v14;
  Layer<>.writeMLPackage(withInput:output:to:options:)(v15, a2, a3, &v17, a5, a6, a7, a8);
}

uint64_t Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *a4;
  OUTLINED_FUNCTION_39_19();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_25BBAA234(AssociatedTypeWitness, a7);
  HIBYTE(v23[0]) = v14;
  Layer<>.writeMLPackage(withInput:output:to:options:)(v16, a2, a3, v23 + 7, a5, a6, a7, a8, a9, a10, a3, a8, v20, v21, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6]);
}

void Layer<>.writeMLPackage(withInput:output:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17_1();
  v70 = v22;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v66 = v36;
  v67 = v35;
  v38 = v37;
  OUTLINED_FUNCTION_39_19();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_53();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v59 - v42;
  LODWORD(v68) = *v34;
  v44 = sub_25BCB617C();
  v69 = v38;
  sub_25BBA9F24(v44, v24, v28);
  if (qword_27FBB33B8 != -1)
  {
    OUTLINED_FUNCTION_0_67(&qword_27FBB33B8);
  }

  v45 = OUTLINED_FUNCTION_4_51(&byte_27FBB7DF8);
  OUTLINED_FUNCTION_52_12(v45, v46);
  v47 = Layer<>.compiled(forInput:options:)(v72, v43, &v71, v32, v30);
  if (v23)
  {

    (*(v40 + 8))(v43, v24);
  }

  else
  {
    v62 = v26;
    v63 = v32;
    v64 = v30;
    v65 = v48;
    v70 = v47;

    (*(v40 + 8))(v43, v24);
    v49 = v72[2];
    v50 = v72[3];
    v71 = v68;
    v51 = OUTLINED_FUNCTION_62_7();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_25BC247F0(v69, v51, &type metadata for FeatureInputType, a21, AssociatedConformanceWitness);
    v61 = sub_25BC22D04();
    v68 = v50;
    v69 = v49;

    v53 = v67;
    if (v67)
    {
      v60 = a22;
      swift_getAssociatedTypeWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v55 = swift_getAssociatedConformanceWitness();
      v56 = sub_25BC247F0(v53, AssociatedTypeWitness, &type metadata for FeatureOutputType, v60, v55);
    }

    else
    {
      v56 = 0;
    }

    sub_25BC239F8(v56);

    v57 = swift_getAssociatedTypeWitness();
    type metadata accessor for Function(0, v24, v57, v58);
    sub_25BC21468();
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC25974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a5@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v16 - v11;
  v13 = *(swift_getTupleTypeMetadata2() + 48);
  *a5 = sub_25BCB77FC();
  *(a5 + 1) = v14;
  (*(v10 + 16))(v12, a1, TupleTypeMetadata2);
  (*(*(a3 - 8) + 32))(&a5[v13], &v12[*(TupleTypeMetadata2 + 48)], a3);
  return (*(*(a2 - 8) + 8))(v12, a2);
}

uint64_t sub_25BC25B04(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v11 = a1;
  while (v5)
  {
LABEL_9:
    v5 &= v5 - 1;
    sub_25BCB63BC();
    sub_25BB0CFFC();
    sub_25BCB617C();

    v10 = sub_25BCB6F4C();

    if (v10 & 1) != 0 && ((sub_25BCB64FC() & 1) != 0 || (sub_25BCB64FC()))
    {
      Tensor.split(count:alongAxis:)();
      sub_25BB3C310(2uLL, 3uLL);
      Tensor.init(concatenating:alongAxis:scalarType:)();
      swift_isUniquelyReferenced_nonNull_native();
      sub_25BC19C08();
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v11;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC25D54(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v25 = a1;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = (*(a1 + 48) + 16 * (__clz(__rbit64(v6)) | (v8 << 6)));
    v12 = *v10;
    v11 = v10[1];
    v6 &= v6 - 1;
    sub_25BCB617C();

    if (sub_25BC27B50(v12, v11))
    {
      sub_25BC27C40();
      swift_isUniquelyReferenced_nonNull_native();
      v28 = v25;
      v13 = sub_25BA9266C(v12, v11);
      v14 = *(v25 + 16);
      v26 = v15;
      v24 = v13;
      if (__OFADD__(v14, (v15 & 1) == 0))
      {
        goto LABEL_22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66F0, &unk_25BCCBEE0);
      if (sub_25BCB745C())
      {
        v16 = sub_25BA9266C(v12, v11);
        v18 = v26;
        if ((v26 & 1) != (v17 & 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v16 = v24;
        v18 = v26;
      }

      v25 = v28;
      if (v18)
      {
        *(v28[7] + 8 * v16) = v27;
      }

      else
      {
        v28[(v16 >> 6) + 8] |= 1 << v16;
        v19 = (v28[6] + 16 * v16);
        *v19 = v12;
        v19[1] = v11;
        *(v28[7] + 8 * v16) = v27;
        v20 = v28[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_23;
        }

        v28[2] = v22;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v25;
    }

    v6 = *(v3 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BC25FF4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v59 = a8;
  v58 = a7;
  v57 = a6;
  v56 = a5;
  v54 = a4;
  v52 = a3;
  v51 = a2;
  v48 = a1;
  v55 = a10;
  v53 = a9;
  v50 = a12;
  v49 = a11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  MEMORY[0x28223BE20](v12 - 8);
  v43 = &v43 - v13;
  v47 = sub_25BCB57CC();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_25BCB58FC();
  v15 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_25BCB598C();
  v85 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v44 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  v22 = sub_25BCB5A8C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25BCB614C();
  sub_25BCB5A7C();
  v27 = sub_25BCB5A6C();
  v29 = v28;
  (*(v23 + 8))(v25, v22);
  v80 = 0x302E302E31;
  v81 = 0xE500000000000000;
  v82 = v26;
  v83 = v27;
  v84 = v29;
  v30 = v17;
  v31 = v61;
  v75 = 0xD000000000000015;
  v76 = 0x800000025BCD96E0;
  v32 = *MEMORY[0x277CC91D8];
  v33 = *(v15 + 104);
  v33(v30, *MEMORY[0x277CC91D8], v61);
  sub_25BB0CFFC();
  sub_25BCB597C();
  (*(v15 + 8))(v30, v31);
  v63 = v49;
  v64 = v50;
  v65 = v51 & 1;
  v66 = v52;
  v67 = v54;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v72 = v53;
  v73 = v55;
  v74 = &v80;
  v34 = v60;
  sub_25BC7501C();
  if (v34)
  {
    (*(v85 + 8))(v21, v62);
  }

  else
  {
    LODWORD(v58) = v32;
    v59 = v30;
    v35 = *(v85 + 8);
    v85 += 8;
    v35(v21, v62);
    sub_25BCB580C();
    swift_allocObject();
    v36 = sub_25BCB57FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4048, &qword_25BCBC5C0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_25BCBAE70;
    sub_25BCB57AC();
    sub_25BCB57BC();
    v75 = v37;
    sub_25BB0D050();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4058, &unk_25BCBC5C8);
    sub_25BB30E7C(&qword_27FBB4060, &qword_27FBB4058, &unk_25BCBC5C8, MEMORY[0x277D83970]);
    sub_25BCB702C();
    sub_25BCB57DC();
    v75 = v80;
    v76 = v81;
    v77 = v82;
    v78 = v83;
    v79 = v84;
    sub_25BB0D10C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    v38 = sub_25BCB57EC();
    v60 = v39;
    v40 = v38;
    v56 = v35;
    v57 = v36;

    __swift_storeEnumTagSinglePayload(v43, 1, 1, v62);
    v33(v59, v58, v61);
    v41 = v44;
    sub_25BCB596C();
    sub_25BCB5A5C();
    v56(v41, v62);
    sub_25BB0D160(v40, v60);
  }
}

void sub_25BC26844(uint64_t a1, char a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, void *a11, unint64_t a12, unint64_t a13)
{
  v174 = a8;
  v173 = a7;
  v185 = a5;
  v198 = a4;
  v183 = a3;
  v172 = a13;
  v171 = a12;
  v15 = sub_25BCB5A8C();
  v158 = *(v15 - 8);
  v159 = v15;
  MEMORY[0x28223BE20](v15);
  v157 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_25BCB598C();
  v160 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v177 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_25BCB5B9C();
  v165 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v167 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v168 = &v143 - v20;
  MEMORY[0x28223BE20](v21);
  v170 = &v143 - v22;
  v23 = sub_25BCB5BCC();
  v181 = *(v23 - 8);
  v182 = v23;
  MEMORY[0x28223BE20](v23);
  v166 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v169 = &v143 - v26;
  MEMORY[0x28223BE20](v27);
  v178 = &v143 - v28;
  v29 = sub_25BCB5C8C();
  v163 = *(v29 - 8);
  v164 = v29;
  MEMORY[0x28223BE20](v29);
  v31 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_25BCB58FC();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v143 - v40;
  v179 = v32;
  v180 = v33;
  v161 = v38;
  if (a2)
  {
    v42 = MEMORY[0x277CC91D8];
    v162 = "CoreML Model Weights";
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v184);
    (*(v33 + 104))(v35, *v42, v32);
    sub_25BCB596C();
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  __swift_storeEnumTagSinglePayload(v41, v43, 1, v184);
  v190[0] = v183;
  v190[1] = v198;
  v44 = v185;
  v190[2] = v185;
  v190[3] = a6;
  v46 = type metadata accessor for Function(0, v171, v172, v45);
  v47 = v175;
  sub_25BB09180(v173, v174, v41, v46, v48, v49, v50, v51, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
  if (v47)
  {
    v54 = v41;
LABEL_7:
    sub_25BAA6F5C(v54, &qword_27FBB4030, &qword_25BCBC5B8);
    return;
  }

  v52 = a6;
  v150 = v35;
  sub_25BAD6FB0(v191, v190);
  sub_25BC46E18(v192);
  type metadata accessor for MILProgramBuilder();
  swift_allocObject();
  v53 = sub_25BBA35C4(v190, 1, 1, v192);
  sub_25BBA003C();
  v146 = v41;
  v186 = v183;
  v187 = v198;
  v188 = v44;
  v189 = v52;
  v55 = *(v53 + 316);
  v57 = v56;
  sub_25BC27920(v191, v55);
  sub_25BB319C0(v57, 0x6E69616D, 0xE400000000000000, v31);
  v144 = v57;
  v145 = v53;
  v173 = 0;
  v58 = *(sub_25BCB5C2C() + 16);

  v174 = v31;
  v155 = v58;
  if (v58)
  {
    v59 = 0;
    v153 = (v181 + 8);
    v154 = (v181 + 16);
    v149 = (v165 + 16);
    v60 = *(a9 + 16);
    v148 = (v181 + 40);
    v147 = (v165 + 8);
    v151 = v60 + 1;
    v152 = (a9 + 64);
    v61 = v184;
    while (2)
    {
      v62 = v59;
      v63 = sub_25BCB5C2C();
      if (v62 >= *(v63 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      v175 = v62 + 1;
      v64 = v181;
      v171 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v172 = v62;
      v65 = *(v181 + 16);
      v162 = *(v181 + 72) * v62;
      v66 = v178;
      v67 = v182;
      v65(v178, v63 + v171 + v162, v182);

      v68 = sub_25BCB5BBC();
      v70 = v69;
      (*(v64 + 8))(v66, v67);
      v71 = v151;
      v72 = v152;
      while (--v71)
      {
        v73 = *(v72 - 4);
        v74 = *(v72 - 3);
        v75 = *(v72 - 2);
        v185 = *(v72 - 1);
        v198 = *v72;
        if (v73 != v68 || v74 != v70)
        {
          v72 += 5;
          if ((sub_25BCB789C() & 1) == 0)
          {
            continue;
          }
        }

        sub_25BCB617C();
        sub_25BB06178(v75, v185, v198);
        v77 = sub_25BC4F5E4();
        v78 = v77[2];
        v156 = v77;
        v79 = v77 + 6;
        v80 = v78 + 1;
        do
        {
          if (!--v80)
          {

            sub_25BB0D1B8(v75, v185, v198);

            v31 = v174;
            v61 = v184;
            goto LABEL_32;
          }

          v81 = *v79;
          if (*(v79 - 2) == v68 && *(v79 - 1) == v70)
          {
            break;
          }

          v79 += 3;
        }

        while ((sub_25BCB789C() & 1) == 0);
        sub_25BCB617C();

        v186 = v75;
        v187 = v185;
        v188 = v198;
        v83 = v170;
        v84 = v173;
        sub_25BBAA588(v81, v68, v70, v170);
        if (v84)
        {

          (*(v163 + 8))(v174, v164);
          sub_25BA9AC78(v191);
          sub_25BAA6F5C(v146, &qword_27FBB4030, &qword_25BCBC5B8);

          sub_25BB0D1B8(v75, v185, v198);
          return;
        }

        v173 = 0;
        (*v149)(v168, v83, v176);
        sub_25BCB5BAC();
        v85 = sub_25BCB5C1C();
        v87 = v86;
        v88 = *v86;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v87 = v88;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BBF1514();
          v88 = v93;
          *v87 = v93;
        }

        v61 = v184;
        v90 = v180;
        if (v172 < *(v88 + 16))
        {
          (*v148)((v88 + v171 + v162), v169, v182);
          v85(&v186, 0);

          sub_25BB0D1B8(v75, v185, v198);
          (*v147)(v170, v176);
          v31 = v174;
          goto LABEL_33;
        }

        goto LABEL_73;
      }

LABEL_32:
      v90 = v180;
LABEL_33:
      v59 = v175;
      v91 = v177;
      v92 = v179;
      if (v175 != v155)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v61 = v184;
    v91 = v177;
    v92 = v179;
    v90 = v180;
  }

  v94 = *(sub_25BCB5C5C() + 16);

  v170 = v94;
  if (v94)
  {
    v95 = 0;
    v169 = (v181 + 16);
    v162 = v181 + 8;
    v155 = (v165 + 16);
    v96 = *(a10 + 16);
    v154 = (v181 + 40);
    v153 = (v165 + 8);
    v165 = a10 + 48;
    v156 = (v96 + 1);
    while (2)
    {
      v97 = v95;
      v98 = sub_25BCB5C5C();
      if (v97 < *(v98 + 16))
      {
        v198 = v97 + 1;
        v100 = v181;
        v99 = v182;
        v175 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v101 = *(v181 + 72);
        v185 = v97;
        v102 = v101 * v97;
        v103 = *(v181 + 16);
        v172 = v102;
        v104 = v178;
        v103(v178, v98 + v175 + v102, v182);

        v105 = sub_25BCB5BBC();
        v107 = v106;
        (*(v100 + 8))(v104, v99);
        v108 = v156;
        v109 = v165;
        while (1)
        {
          v108 = (v108 - 1);
          if (!v108)
          {
            break;
          }

          v110 = *v109;
          if (*(v109 - 2) != v105 || *(v109 - 1) != v107)
          {
            v109 += 12;
            if ((sub_25BCB789C() & 1) == 0)
            {
              continue;
            }
          }

          sub_25BCB617C();
          v112 = sub_25BC4F508();
          v113 = v112[2];
          v171 = v112;
          v114 = v112 + 6;
          v115 = v113 + 1;
          do
          {
            if (!--v115)
            {

              v31 = v174;
              v61 = v184;
              v91 = v177;
              goto LABEL_60;
            }

            v116 = *v114;
            if (*(v114 - 2) == v105 && *(v114 - 1) == v107)
            {
              break;
            }

            v114 += 3;
          }

          while ((sub_25BCB789C() & 1) == 0);
          sub_25BCB617C();

          LOWORD(v186) = v110;
          v118 = v167;
          v119 = v173;
          sub_25BBAB404(v116, v105, v107, v167);
          if (v119)
          {

            (*(v163 + 8))(v174, v164);
            goto LABEL_68;
          }

          v173 = 0;

          (*v155)(v168, v118, v176);
          sub_25BCB5BAC();
          v31 = v174;
          v120 = sub_25BCB5C4C();
          v122 = v121;
          v123 = *v121;
          v124 = swift_isUniquelyReferenced_nonNull_native();
          *v122 = v123;
          if ((v124 & 1) == 0)
          {
            sub_25BBF1514();
            v123 = v125;
            *v122 = v125;
          }

          v61 = v184;
          v91 = v177;
          v92 = v179;
          if (v185 < *(v123 + 16))
          {
            (*v154)(v123 + v175 + v172, v166, v182);
            v120(&v186, 0);

            (*v153)(v167, v176);
            goto LABEL_61;
          }

          goto LABEL_74;
        }

        v31 = v174;
        v61 = v184;
LABEL_60:
        v92 = v179;
LABEL_61:
        v90 = v180;
        v95 = v198;
        if (v198 != v170)
        {
          continue;
        }

        goto LABEL_62;
      }

      break;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

LABEL_62:
  __swift_storeEnumTagSinglePayload(v161, 1, 1, v61);
  (*(v90 + 104))(v150, *MEMORY[0x277CC91D8], v92);
  sub_25BCB596C();
  v126 = v173;
  sub_25BCB5C0C();
  if (v126)
  {

    (*(v160 + 8))(v91, v61);
    (*(v163 + 8))(v31, v164);
LABEL_68:
    sub_25BA9AC78(v191);
    v54 = v146;
    goto LABEL_7;
  }

  v173 = 0;
  (*(v160 + 8))(v91, v61);
  if (__swift_getEnumTagSinglePayload(v146, 1, v61) != 1)
  {
    v127 = v157;
    sub_25BCB5A7C();
    v128 = sub_25BCB5A6C();
    v130 = v129;
    (*(v158 + 8))(v127, v159);
    v197[0] = 0xD000000000000010;
    v197[1] = 0x800000025BCD9740;
    v197[2] = 0xD000000000000014;
    v197[3] = 0x800000025BCD9780;
    v197[4] = 0x73746867696577;
    v197[5] = 0xE700000000000000;
    v197[6] = 0xD000000000000018;
    v197[7] = 0x800000025BCD9760;
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v186 = a11[2];
    sub_25BC1AA6C(v197, v128, v130, v131, v132, v133, v134, v135, v143, v144);
    a11[2] = v186;
  }

  v136 = a11[3];
  v137 = a11[4];
  v193[0] = 0xD000000000000010;
  v193[1] = 0x800000025BCD9740;
  v193[2] = 0xD00000000000001ALL;
  v193[3] = 0x800000025BCD9720;
  strcpy(v194, "model.mlmodel");
  v194[7] = -4864;
  v195 = 0xD00000000000001ELL;
  v196 = 0x800000025BCD9700;
  sub_25BCB617C();
  v138 = swift_isUniquelyReferenced_nonNull_native();
  v186 = a11[2];
  sub_25BC1AA6C(v193, v136, v137, v138, v139, v140, v141, v142, v143, v144);
  a11[2] = v186;

  (*(v163 + 8))(v174, v164);
  sub_25BA9AC78(v191);
  sub_25BAA6F5C(v146, &qword_27FBB4030, &qword_25BCBC5B8);
}

void sub_25BC27920(uint64_t a1, char a2)
{
  sub_25BC46FA0();
  v3 = *(a1 + 88);
  v4 = sub_25BAAF54C(v3);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    OUTLINED_FUNCTION_10_2(v4);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    v7 = 0;
    v5 = v22;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25F8779B0](v7, v3);
      }

      else
      {
      }

      v9 = *(v8 + 160);

      v22 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_25BB00D14(v10 > 1, v11 + 1, 1);
      }

      ++v7;
      *(v5 + 16) = v11 + 1;
      *(v5 + v11 + 32) = v9;
    }

    while (v6 != v7);
  }

  v12 = sub_25BAA80BC(0, v5);

  if (v12)
  {
    return;
  }

  v13 = *(a1 + 152);
  v14 = sub_25BAAF54C(v13);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    goto LABEL_20;
  }

  v16 = v14;
  OUTLINED_FUNCTION_10_2(v14);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v15 = v22;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F8779B0](v17, v13);
      }

      else
      {
      }

      v19 = *(v18 + 160);

      v21 = *(v22 + 16);
      v20 = *(v22 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_25BB00D14(v20 > 1, v21 + 1, 1);
      }

      ++v17;
      *(v22 + 16) = v21 + 1;
      *(v22 + v21 + 32) = v19;
    }

    while (v16 != v17);
LABEL_20:
    sub_25BAA80BC(0, v15);

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_25BC27B50(uint64_t a1, uint64_t a2)
{
  sub_25BCB63BC();
  sub_25BB0CFFC();
  v2 = sub_25BCB6F4C();

  if (v2)
  {
    if (sub_25BCB64FC())
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_25BCB64FC();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_25BC27C40()
{
  Tensor.split(count:alongAxis:)();
  sub_25BB3C310(2uLL, 3uLL);
  Tensor.init(concatenating:alongAxis:scalarType:)();
}

uint64_t sub_25BC27CB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000025BCE35E0 == a2;
  if (v3 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F666E496D657469 && a2 == 0xEF73656972746E45;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x800000025BCE3600 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_25BCB789C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_25BC27DD4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x6F666E496D657469;
  }

  return 0xD000000000000013;
}

uint64_t sub_25BC27E44(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6798, &qword_25BCCC840);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC28F58();
  sub_25BCB7B6C();
  v12 = 0;
  sub_25BCB775C();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB67A8, &qword_25BCCC848);
    sub_25BC29000(&qword_27FBB67B0, sub_25BC28FAC, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_25BCB779C();
    v10[14] = 2;
    sub_25BCB775C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25BC28034@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB67C0, &qword_25BCCC850);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC28F58();
  sub_25BCB7B2C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v21 = 0;
    v9 = sub_25BCB766C();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB67A8, &qword_25BCCC848);
    v20 = 1;
    sub_25BC29000(&qword_27FBB67C8, sub_25BC29084, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_25BCB76AC();
    v18[0] = v9;
    v12 = v18[1];
    v19 = 2;
    v13 = sub_25BCB766C();
    v14 = v8;
    v16 = v15;
    (*(v6 + 8))(v14, v5);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v18[0];
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v13;
    a2[4] = v16;
  }

  return result;
}

uint64_t sub_25BC28300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC27CB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC28328(uint64_t a1)
{
  v2 = sub_25BC28F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC28364(uint64_t a1)
{
  v2 = sub_25BC28F58();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BC283A0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25BC28034(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_25BC28424(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68747561 && a2 == 0xE600000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1752457584 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_25BCB789C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_25BC28584(char a1)
{
  result = 0x726F68747561;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 1752457584;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BC285FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB67E8, &qword_25BCCC860);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC290D8();
  sub_25BCB7B6C();
  v8[15] = 0;
  sub_25BCB775C();
  if (!v1)
  {
    v8[14] = 1;
    sub_25BCB775C();
    v8[13] = 2;
    sub_25BCB775C();
    v8[12] = 3;
    sub_25BCB775C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25BC287B0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB67D8, &qword_25BCCC858);
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v29 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC290D8();
  sub_25BCB7B2C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v8 = v5;
    v31 = a2;
    LOBYTE(v38[0]) = 0;
    v9 = v33;
    v10 = sub_25BCB766C();
    v12 = v11;
    LOBYTE(v38[0]) = 1;
    v30 = sub_25BCB766C();
    v13 = v10;
    v32 = v14;
    LOBYTE(v38[0]) = 2;
    v15 = sub_25BCB766C();
    v17 = v16;
    v29 = v15;
    v39 = 3;
    v18 = sub_25BCB766C();
    v19 = v7;
    v21 = v20;
    (*(v8 + 8))(v19, v9);
    v22 = v13;
    *&v34 = v13;
    *(&v34 + 1) = v12;
    v23 = v30;
    v24 = v32;
    *&v35 = v30;
    *(&v35 + 1) = v32;
    *&v36 = v29;
    *(&v36 + 1) = v17;
    *&v37 = v18;
    *(&v37 + 1) = v21;
    sub_25BC2912C(&v34, v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38[0] = v22;
    v38[1] = v12;
    v38[2] = v23;
    v38[3] = v24;
    v38[4] = v29;
    v38[5] = v17;
    v38[6] = v18;
    v38[7] = v21;
    result = sub_25BC29164(v38);
    v26 = v35;
    v27 = v31;
    *v31 = v34;
    v27[1] = v26;
    v28 = v37;
    v27[2] = v36;
    v27[3] = v28;
  }

  return result;
}

uint64_t sub_25BC28AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_25BCB79CC();
  a4(v8, v6);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC28B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC28424(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC28B4C(uint64_t a1)
{
  v2 = sub_25BC290D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC28B88(uint64_t a1)
{
  v2 = sub_25BC290D8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BC28BC4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25BC287B0(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_25BC28C48()
{
  result = qword_27FBB6788;
  if (!qword_27FBB6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6788);
  }

  return result;
}

_BYTE *sub_25BC28CAC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BC28E20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC28E60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC28EB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC28EF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25BC28F58()
{
  result = qword_27FBB67A0;
  if (!qword_27FBB67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67A0);
  }

  return result;
}

unint64_t sub_25BC28FAC()
{
  result = qword_27FBB67B8;
  if (!qword_27FBB67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67B8);
  }

  return result;
}

uint64_t sub_25BC29000(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB67A8, &qword_25BCCC848);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BC29084()
{
  result = qword_27FBB67D0;
  if (!qword_27FBB67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67D0);
  }

  return result;
}

unint64_t sub_25BC290D8()
{
  result = qword_27FBB67E0;
  if (!qword_27FBB67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MLPackageManifest.InfoEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MLPackageManifest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BC29350()
{
  result = qword_27FBB67F0;
  if (!qword_27FBB67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67F0);
  }

  return result;
}

unint64_t sub_25BC293A8()
{
  result = qword_27FBB67F8;
  if (!qword_27FBB67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB67F8);
  }

  return result;
}

unint64_t sub_25BC29400()
{
  result = qword_27FBB6800;
  if (!qword_27FBB6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6800);
  }

  return result;
}

unint64_t sub_25BC29458()
{
  result = qword_27FBB6808;
  if (!qword_27FBB6808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6808);
  }

  return result;
}

unint64_t sub_25BC294B0()
{
  result = qword_27FBB6810;
  if (!qword_27FBB6810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6810);
  }

  return result;
}

unint64_t sub_25BC29508()
{
  result = qword_27FBB6818;
  if (!qword_27FBB6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6818);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_25BCB590C();
}

uint64_t sub_25BC29598()
{
  OUTLINED_FUNCTION_36_17();
  sub_25BC2B4B4();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_31_23();
  v1(v0);
  return swift_unknownObjectRelease();
}

uint64_t sub_25BC29614(uint64_t a1)
{
  v1 = sub_25BC296A0();
  v4 = v1;
  v5 = v3;
  if (v3 >> 62)
  {
    v6 = v2;
    if (v3 >> 62 == 1)
    {
      sub_25BBB9C64(v1, v2, v3);
      return 0;
    }

    else
    {
      v7 = *(v1 + 24);
      swift_unknownObjectRetain();
      sub_25BBB9C64(v4, v6, v5);
      return v7;
    }
  }

  else
  {
  }

  return v4;
}

uint64_t sub_25BC296A0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_retain_n();
  sub_25BAA3234();
  swift_beginAccess();
  v2 = v1[3];
  sub_25BC2BE34(v2, v1[4], v1[5]);
  sub_25BAA3258();

  return v2;
}

void *sub_25BC29748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v3[2] = sub_25BAA6F2C();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_25BC297AC(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *a2;
  *(v6 + 24) = *a1;
  *(v6 + 32) = v9;
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();

  v10 = swift_unknownObjectRetain();
  *(v6 + 16) = sub_25BC29748(v10, a4, a5);
  swift_endAccess();
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_25BC2986C()
{
  OUTLINED_FUNCTION_9_40();
  OUTLINED_FUNCTION_24_20(v2, v3, v4, v5);
  v6 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_38_19();
  if (v7)
  {
    OUTLINED_FUNCTION_30_22();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v8)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v8)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_3_47("init(unsafeUninitializedShape:scalarType:device:initializingWith:)", v16, v17, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSGraphTensorStorage.swift", v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  }

  v9 = 1;
LABEL_9:
  v10 = OUTLINED_FUNCTION_5_48(v9);
  if (!v8)
  {
    goto LABEL_13;
  }

  v11 = OUTLINED_FUNCTION_41_19(v10);
  if (!v11)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_29_24(v11);

  [v0 contents];
  [v0 length];
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_22_28(v12);
  objc_autoreleasePoolPop(v1);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  v13 = OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_39_20(v13, v14);

  return OUTLINED_FUNCTION_37_19();
}

uint64_t sub_25BC299C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_16_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_41();
  v9 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_32_21();
  if (v10)
  {
    OUTLINED_FUNCTION_26_26();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v11)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_28_22(v24);
    OUTLINED_FUNCTION_4_52("init(unsafeUninitializedShape:scalarType:device:initializingWith:)", v25, v26, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSGraphTensorStorage.swift", v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  }

  v12 = 1;
LABEL_9:
  v13 = OUTLINED_FUNCTION_5_48(v12);
  if (!v11)
  {
    goto LABEL_13;
  }

  v14 = OUTLINED_FUNCTION_12_35(v13);
  if (!v14)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_29_24(v14);

  [v6 contents];
  [OUTLINED_FUNCTION_42_17() length];
  OUTLINED_FUNCTION_34_19();
  v15 = OUTLINED_FUNCTION_25_24();
  v16(v15);
  OUTLINED_FUNCTION_17_35();
  sub_25BAC0838();
  v17 = OUTLINED_FUNCTION_35_20();
  v18(v17);
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_20_27(v19);
  objc_autoreleasePoolPop(v31);
  OUTLINED_FUNCTION_23_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  OUTLINED_FUNCTION_15_34();
  *(v7 + 16) = sub_25BC29748(v20, v21, v22);
  swift_endAccess();

  return OUTLINED_FUNCTION_33_23();
}

uint64_t sub_25BC29BC0()
{
  OUTLINED_FUNCTION_9_40();
  OUTLINED_FUNCTION_24_20(v3, v4, v5, v6);
  v7 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_38_19();
  if (v8)
  {
    OUTLINED_FUNCTION_30_22();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v9)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_3_47("init(unsafeUninitializedShape:scalarType:device:initializingWith:)", v18, v19, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSGraphTensorStorage.swift", v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  }

  v10 = 1;
LABEL_9:
  v11 = OUTLINED_FUNCTION_5_48(v10);
  if (!v9)
  {
    goto LABEL_15;
  }

  v12 = OUTLINED_FUNCTION_41_19(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_29_24(v12);

  [v0 contents];
  v13 = [OUTLINED_FUNCTION_43_13() length];
  if (v13)
  {
    bzero(v2, v13);
  }

  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_22_28(v14);
  objc_autoreleasePoolPop(v1);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_39_20(v15, v16);

  return OUTLINED_FUNCTION_37_19();
}

uint64_t sub_25BC29D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_16_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_41();
  v9 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_32_21();
  if (v10)
  {
    OUTLINED_FUNCTION_26_26();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v11)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_28_22(v24);
    OUTLINED_FUNCTION_4_52("init(unsafeUninitializedShape:scalarType:device:initializingWith:)", v25, v26, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSGraphTensorStorage.swift", v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  }

  v12 = 1;
LABEL_9:
  v13 = OUTLINED_FUNCTION_5_48(v12);
  if (!v11)
  {
    goto LABEL_13;
  }

  v14 = OUTLINED_FUNCTION_12_35(v13);
  if (!v14)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_29_24(v14);

  [v6 contents];
  [OUTLINED_FUNCTION_42_17() length];
  OUTLINED_FUNCTION_34_19();
  v15 = OUTLINED_FUNCTION_25_24();
  v16(v15);
  OUTLINED_FUNCTION_17_35();
  sub_25BAC5EF8();
  v17 = OUTLINED_FUNCTION_35_20();
  v18(v17);
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_20_27(v19);
  objc_autoreleasePoolPop(v31);
  OUTLINED_FUNCTION_23_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  OUTLINED_FUNCTION_15_34();
  *(v7 + 16) = sub_25BC29748(v20, v21, v22);
  swift_endAccess();

  return OUTLINED_FUNCTION_33_23();
}

uint64_t sub_25BC2A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_16_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_41();
  v9 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_32_21();
  if (v10)
  {
    OUTLINED_FUNCTION_26_26();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v11)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_28_22(v24);
    OUTLINED_FUNCTION_4_52("init(unsafeUninitializedShape:scalarType:device:initializingWith:)", v25, v26, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSGraphTensorStorage.swift", v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  }

  v12 = 1;
LABEL_9:
  v13 = OUTLINED_FUNCTION_5_48(v12);
  if (!v11)
  {
    goto LABEL_13;
  }

  v14 = OUTLINED_FUNCTION_12_35(v13);
  if (!v14)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_29_24(v14);

  [v6 contents];
  [OUTLINED_FUNCTION_42_17() length];
  OUTLINED_FUNCTION_34_19();
  v15 = OUTLINED_FUNCTION_25_24();
  v16(v15);
  OUTLINED_FUNCTION_17_35();
  sub_25BB581C4();
  v17 = OUTLINED_FUNCTION_35_20();
  v18(v17);
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_20_27(v19);
  objc_autoreleasePoolPop(v31);
  OUTLINED_FUNCTION_23_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  OUTLINED_FUNCTION_15_34();
  *(v7 + 16) = sub_25BC29748(v20, v21, v22);
  swift_endAccess();

  return OUTLINED_FUNCTION_33_23();
}

uint64_t sub_25BC2AA5C(float a1)
{
  OUTLINED_FUNCTION_9_40();
  OUTLINED_FUNCTION_24_20(v5, v6, v7, v8);
  v9 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_38_19();
  if (v10)
  {
    OUTLINED_FUNCTION_30_22();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v11)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_3_47("init(unsafeUninitializedShape:scalarType:device:initializingWith:)", v25, v26, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSGraphTensorStorage.swift", v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  }

  v12 = 1;
LABEL_9:
  v13 = OUTLINED_FUNCTION_5_48(v12);
  if (!v11)
  {
    goto LABEL_22;
  }

  v14 = OUTLINED_FUNCTION_41_19(v13);
  if (!v14)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_29_24(v14);

  [v1 contents];
  v15 = [OUTLINED_FUNCTION_43_13() length];
  if (v15 >= 4)
  {
    v16 = 0;
    v17 = vdupq_n_s64((v15 >> 2) - 1);
    v18 = (v3 + 8);
    do
    {
      v19 = vdupq_n_s64(v16);
      v20 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_25BCCB570)));
      if (vuzp1_s16(v20, *v17.i8).u8[0])
      {
        *(v18 - 2) = a1;
      }

      if (vuzp1_s16(v20, *&v17).i8[2])
      {
        *(v18 - 1) = a1;
      }

      if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_25BCCB560)))).i32[1])
      {
        *v18 = a1;
        v18[1] = a1;
      }

      v16 += 4;
      v18 += 4;
    }

    while ((((v15 >> 2) + 3) & 0x3FFFFFFFFFFFFFFCLL) != v16);
  }

  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_22_28(v21);
  objc_autoreleasePoolPop(v2);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_39_20(v22, v23);

  return OUTLINED_FUNCTION_37_19();
}