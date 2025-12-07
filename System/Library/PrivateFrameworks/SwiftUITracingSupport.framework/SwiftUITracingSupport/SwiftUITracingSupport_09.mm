uint64_t closure #1 in findOrAdd #1 (proposed:) in PType.Parser.parseNamedType(within:)(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if (v4 == *(result + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v4);
  }

  if (*v3)
  {
    v5 = *(v3 + 12);
    v6 = *v3 + 120 * v5;
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[3];
    *(v6 + 32) = a2[2];
    *(v6 + 48) = v9;
    *v6 = v7;
    *(v6 + 16) = v8;
    v10 = a2[4];
    v11 = a2[5];
    v12 = a2[6];
    *(v6 + 110) = *(a2 + 110);
    *(v6 + 80) = v11;
    *(v6 + 96) = v12;
    *(v6 + 64) = v10;
    if (v5 != -1)
    {
      *(v3 + 12) = v5 + 1;
      v13 = v5;
      outlined init with copy of PType(a2, v14);
      return v13;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *one-time initialization function for external()
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  static PType.Pattern.external = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  dword_280481CF0 = 0;
  result = PType.Pattern.IsA.init(_:genericParams:)(&outlined read-only object #0 of one-time initialization function for external, 0, &v1);
  qword_280481CE8 = v1;
  return result;
}

void *PType.Pattern.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  *a3 = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  result = PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v8);
  *(a3 + 8) = v8;
  return result;
}

uint64_t static PType.Pattern.external.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for external != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_280481CE8;
  v3 = dword_280481CF0;
  *a1 = static PType.Pattern.external;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t *PType.Pattern.init(_:flags:)@<X0>(uint64_t *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (one-time initialization token for currentIdx != -1)
  {
    v5 = a3;
    result = swift_once();
    a3 = v5;
  }

  *a3 = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

uint64_t static PType.Pattern.viewValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for viewValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_280481D00;
  v3 = dword_280481D08;
  *a1 = static PType.Pattern.viewValue;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t one-time initialization function for viewValue(uint64_t a1, _DWORD *a2, void *a3, int a4, _DWORD *a5)
{
  if (one-time initialization token for currentIdx != -1)
  {
    v5 = a2;
    v6 = a5;
    v7 = a4;
    v8 = a3;
    result = swift_once();
    a2 = v5;
    a3 = v8;
    a4 = v7;
    a5 = v6;
  }

  *a2 = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  *a3 = 0x8000000000000000;
  *a5 = a4;
  return result;
}

uint64_t static PType.Pattern.any.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for any != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_280481D18;
  v3 = dword_280481D20;
  *a1 = static PType.Pattern.any;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

void *PType.Pattern.IsA.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  result = PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v8);
  *a3 = v8;
  return result;
}

uint64_t PType.Pattern.IsA.init(_:genericParams:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v6;
    v9 = v7 - 1;
    v10 = a1 + 16 * (v7 - 1);
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    objc_allocWithZone(MEMORY[0x277CCAC68]);

    v8[2] = @nonobjc NSRegularExpression.init(pattern:options:)(v11, v12, 0);
    v8[3] = a2;
    v13 = *(a1 + 16);
    if (v13 <= 1)
    {

      v14 = 0;
LABEL_12:
      v8[4] = v14;
      *a3 = v8;
      return result;
    }

    if (v13 >= v9)
    {
      if (v9)
      {
        v23 = v8;
        v24 = a3;
        v26 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
        v14 = v26;
        v15 = (a1 + 40);
        do
        {
          v16 = *(v15 - 1);
          v17 = *v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26C328DC0;
          *(inited + 32) = v16;
          *(inited + 40) = v17;

          PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v25);
          v19 = v25;
          v26 = v14;
          v21 = *(v14 + 16);
          v20 = *(v14 + 24);
          if (v21 >= v20 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
            v14 = v26;
          }

          *(v14 + 16) = v21 + 1;
          *(v14 + 8 * v21 + 32) = v19;
          v15 += 2;
          --v9;
        }

        while (v9);

        v8 = v23;
        a3 = v24;
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  swift_deallocUninitializedObject();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t PType.Pattern.IsA.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = PType.Pattern.IsA.init(_:genericParams:)(a1, 0, &v4);
  *a2 = v4;
  return result;
}

void PType.Pattern.IsA.match(index:within:id:)(unsigned int a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v144 = *(a2 + 3);
  v145 = v7;
  v8 = *(a2 + 6);
  v146 = *(a2 + 5);
  v147 = v8;
  v9 = *(a2 + 2);
  v142 = *(a2 + 1);
  v143 = v9;
  if (v6 <= a1)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
  }

  else if (v4)
  {
    v11 = *v3;
    v12 = v4 + 120 * a1;
    v14 = *(v12 + 32);
    v13 = *(v12 + 48);
    v15 = *(v12 + 16);
    v135 = *v12;
    v136 = v15;
    v137 = v14;
    v138 = v13;
    v16 = *(v12 + 64);
    v17 = *(v12 + 80);
    v18 = *(v12 + 96);
    *(v141 + 14) = *(v12 + 110);
    v140 = v17;
    v141[0] = v18;
    v139 = v16;
    v20 = *(&v135 + 1);
    v19 = v135;
    v22 = *(&v136 + 1);
    v21 = v136;
    v23 = v137;
    v24 = v11 >> 61;
    if ((v11 >> 61) > 1)
    {
      if (v24 == 2)
      {
        if (v137 == 3)
        {
          v50 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v51 = *(v50 + 16);
          if (v51 == *(v135 + 16))
          {
            v100 = *(&v135 + 1);
            v110 = v5;
            v114 = a3;
            v52 = v136;
            v53 = 0;
            v107 = v135;
            v54 = v135 + 32;
            do
            {
              if (v51 == v53)
              {
                break;
              }

              if (v53 >= *(v50 + 16))
              {
                goto LABEL_75;
              }

              v55 = *(v107 + 16);
              if (v53 == v55)
              {
                break;
              }

              if (v53 >= v55)
              {
                goto LABEL_77;
              }

              v56 = *(v54 + 4 * v53);
              v116 = *(v50 + 32 + 8 * v53);
              v126 = v4;
              v127 = v110;
              v128 = v6;
              v57 = *(a2 + 4);
              v131 = *(a2 + 3);
              v132 = v57;
              v58 = *(a2 + 6);
              v133 = *(a2 + 5);
              v134 = v58;
              v59 = *(a2 + 2);
              v129 = *(a2 + 1);
              v130 = v59;
              PType.Pattern.IsA.match(index:within:id:)(v56, &v126, v114);
              ++v53;
            }

            while ((v60 & 1) != 0);

            outlined init with copy of PType(&v135, &v126);

            v61 = v107;
            v62 = v100;
            v64 = *(&v52 + 1);
            v63 = v52;
            v65 = 3;
          }

          else
          {

            outlined init with copy of PType(&v135, &v126);

            v61 = v19;
            v62 = v20;
            v63 = v21;
            v64 = v22;
            v65 = 3;
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v24 != 3)
        {
          outlined init with copy of PType(&v135, &v126);

          v61 = v19;
          v62 = v20;
          v63 = v21;
          v64 = v22;
          v65 = v23;
LABEL_31:
          outlined consume of PType.IsA(v61, v62, v63, v64, v65);
          return;
        }

        if (v137 == 4)
        {
          v112 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v116 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v126 = v4;
          v127 = v5;
          v128 = v6;
          v25 = *(a2 + 4);
          v131 = *(a2 + 3);
          v132 = v25;
          v26 = *(a2 + 6);
          v133 = *(a2 + 5);
          v134 = v26;
          v27 = *(a2 + 2);
          v129 = *(a2 + 1);
          v130 = v27;
          v105 = v135;
          v28 = v6;
          v30 = v5;
          PType.Pattern.IsA.match(index:within:id:)(v135, &v126, a3);
          if (v31)
          {
            v125 = v112;
            v116 = v4;
            v117 = v30;
            v118 = v28;
            v32 = *(a2 + 4);
            v121 = *(a2 + 3);
            v122 = v32;
            v33 = *(a2 + 6);
            v123 = *(a2 + 5);
            v124 = v33;
            v34 = *(a2 + 2);
            v119 = *(a2 + 1);
            v120 = v34;
            PType.Pattern.IsA.match(index:within:id:)(HIDWORD(v105), &v116, a3);

            outlined init with copy of PType(&v135, &v126);

            outlined consume of PType.IsA(v105, v20, v21, v22, 4u);
            return;
          }

          outlined init with copy of PType(&v135, &v126);

          v61 = v105;
          v62 = v20;
          v63 = v21;
          v64 = v22;
          v65 = 4;
          goto LABEL_31;
        }
      }

      goto LABEL_39;
    }

    if (v24)
    {
      v66 = v11 & 0x1FFFFFFFFFFFFFFFLL;
      if (v137 == 2)
      {
        v111 = v5;
        v115 = a3;
        v67 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v68 = *(v135 + 16);
        v104 = *(v66 + 16);
        v108 = v135;
        if (v68)
        {
          v101 = *(&v135 + 1);
          v69 = v136;

          outlined init with copy of PType(&v135, &v126);
          v126 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68, 0);
          v70 = v126;
          v71 = *(v126 + 16);
          v72 = (v19 + 52);
          do
          {
            v74 = *v72;
            v72 += 6;
            v73 = v74;
            v126 = v70;
            v75 = *(v70 + 24);
            v76 = v71 + 1;
            if (v71 >= v75 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v71 + 1, 1);
              v70 = v126;
            }

            *(v70 + 16) = v76;
            *(v70 + 4 * v71++ + 32) = v73;
            --v68;
          }

          while (v68);
          v22 = *(&v69 + 1);
          v20 = v101;
          v21 = v69;
          v67 = v104;
          v19 = v108;
        }

        else
        {

          outlined init with copy of PType(&v135, &v126);
          v70 = MEMORY[0x277D84F90];
          v76 = *(MEMORY[0x277D84F90] + 16);
        }

        if (*(v67 + 16) == v76)
        {
          v97 = v22;
          v88 = 0;
          v89 = v67 + 32;
          do
          {
            if (v76 == v88)
            {
              break;
            }

            if (v88 >= *(v67 + 16))
            {
              goto LABEL_76;
            }

            v90 = *(v70 + 16);
            if (v88 == v90)
            {
              break;
            }

            if (v88 >= v90)
            {
              goto LABEL_78;
            }

            v91 = *(v70 + 4 * v88 + 32);
            v116 = *(v89 + 8 * v88);
            v126 = v4;
            v127 = v111;
            v128 = v6;
            v131 = v144;
            v132 = v145;
            v133 = v146;
            v134 = v147;
            v129 = v142;
            v130 = v143;
            PType.Pattern.IsA.match(index:within:id:)(v91, &v126, v115);
            v67 = v104;
            ++v88;
          }

          while ((v92 & 1) != 0);

          v61 = v108;
          v62 = v20;
          v63 = v21;
          v64 = v97;
          v65 = 2;
        }

        else
        {

          v61 = v19;
          v62 = v20;
          v63 = v21;
          v64 = v22;
          v65 = 2;
        }

        goto LABEL_31;
      }

      goto LABEL_39;
    }

    if (v137 != 1)
    {
LABEL_39:

      outlined init with copy of PType(&v135, &v126);

      v61 = v19;
      v62 = v20;
      v63 = v21;
      v64 = v22;
      v65 = v23;
      goto LABEL_31;
    }

    v109 = v5;
    v113 = a3;
    v103 = v6;
    v35 = *(v11 + 24);
    v98 = *(v11 + 32);
    v36 = *(v11 + 16);

    outlined init with copy of PType(&v135, &v126);
    v37 = MEMORY[0x26D69CC20](v19, v20);
    v99 = v20;
    v38 = [v36 numberOfMatchesInString:v37 options:0 range:{0, String.count.getter()}];

    v39 = v38 > 0;
    v106 = v19;
    if (v35)
    {
      if (v38 >= 1)
      {
        v40 = *(v35 + 16);
        if (v40 == *(v21 + 16))
        {
          v96 = v22;
          v41 = v21;
          v42 = 0;
          v102 = v41;
          v43 = v41 + 32;
          while (v40 != v42)
          {
            if (v42 >= *(v35 + 16))
            {
              goto LABEL_79;
            }

            v44 = *(v102 + 16);
            if (v42 == v44)
            {
              break;
            }

            if (v42 >= v44)
            {
              goto LABEL_80;
            }

            v45 = *(v43 + 4 * v42);
            v116 = *(v35 + 32 + 8 * v42);
            v126 = v4;
            v127 = v109;
            v128 = v103;
            v46 = *(a2 + 4);
            v131 = *(a2 + 3);
            v132 = v46;
            v47 = *(a2 + 6);
            v133 = *(a2 + 5);
            v134 = v47;
            v48 = *(a2 + 2);
            v129 = *(a2 + 1);
            v130 = v48;
            PType.Pattern.IsA.match(index:within:id:)(v45, &v126, v113);
            ++v42;
            if ((v49 & 1) == 0)
            {
              v39 = 0;
              goto LABEL_70;
            }
          }

          v39 = 1;
LABEL_70:
          v22 = v96;
          v21 = v102;
          v77 = v98;
          v78 = v99;
          if (!v98)
          {
            goto LABEL_71;
          }

          goto LABEL_44;
        }
      }

      v39 = 0;
    }

    v77 = v98;
    v78 = v99;
    if (!v98)
    {
LABEL_71:

      v93 = v106;
      v94 = v78;
      v95 = v21;
LABEL_73:
      outlined consume of PType.IsA(v93, v94, v95, v22, 1u);
      return;
    }

LABEL_44:
    if (v39)
    {
      v79 = *(v77 + 16);
      if (v79 == *(v22 + 16))
      {
        v80 = 0;
        v81 = v77 + 32;
        while (v79 != v80)
        {
          if (v80 >= *(v77 + 16))
          {
            goto LABEL_81;
          }

          v82 = *(v22 + 16);
          if (v80 == v82)
          {
            break;
          }

          if (v80 >= v82)
          {
            goto LABEL_82;
          }

          v83 = *(v22 + 32 + 4 * v80);
          v116 = *(v81 + 8 * v80);
          v126 = v4;
          v127 = v109;
          v128 = v103;
          v84 = *(a2 + 4);
          v131 = *(a2 + 3);
          v132 = v84;
          v85 = *(a2 + 6);
          v133 = *(a2 + 5);
          v134 = v85;
          v86 = *(a2 + 2);
          v129 = *(a2 + 1);
          v130 = v86;
          PType.Pattern.IsA.match(index:within:id:)(v83, &v126, v113);
          ++v80;
          v77 = v98;
          if ((v87 & 1) == 0)
          {

            v61 = v106;
            v62 = v99;
            v63 = v21;
            goto LABEL_68;
          }
        }

        v93 = v106;
        v94 = v99;
        v95 = v21;
        goto LABEL_73;
      }

      v61 = v106;
      v62 = v99;
    }

    else
    {

      v61 = v106;
      v62 = v78;
    }

    v63 = v21;
LABEL_68:
    v64 = v22;
    v65 = 1;
    goto LABEL_31;
  }

  __break(1u);
}

uint64_t static PType.Pattern.IsA.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 61 != 1)
      {
        goto LABEL_29;
      }

LABEL_20:
      v16 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v16) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ21SwiftUITracingSupport5PTypeV7PatternV3IsAO_Tt1g5(v16, v17);

      return v16 & 1;
    }

    if (v3 >> 61)
    {
      goto LABEL_29;
    }

    v11 = *(v2 + 24);
    v10 = *(v2 + 32);
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);

    if (static NSObject.== infix(_:_:)())
    {
      if (v11)
      {
        if (!v12)
        {
          goto LABEL_27;
        }

        IsAO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ21SwiftUITracingSupport5PTypeV7PatternV3IsAO_Tt1g5(v14, v12);

        if ((IsAO_Tt1g5 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (v12)
      {
        goto LABEL_27;
      }

      if (!v10)
      {

        if (v13)
        {
          goto LABEL_29;
        }

        goto LABEL_18;
      }

      if (v13)
      {

        v20 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ21SwiftUITracingSupport5PTypeV7PatternV3IsAO_Tt1g5(v19, v13);

        if ((v20 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_18;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  if (v4 == 2)
  {
    if (v3 >> 61 != 2)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (v4 != 3)
  {
    if (v3 != 0x8000000000000000)
    {
      goto LABEL_29;
    }

LABEL_18:
    v9 = 1;
    return v9 & 1;
  }

  if (v3 >> 61 != 3)
  {
LABEL_29:
    v9 = 0;
    return v9 & 1;
  }

  v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v21 = v7;
  v22 = v5;

  if ((static PType.Pattern.IsA.== infix(_:_:)(&v22, &v21) & 1) == 0)
  {

LABEL_28:

    goto LABEL_29;
  }

  v21 = v8;
  v22 = v6;
  v9 = static PType.Pattern.IsA.== infix(_:_:)(&v22, &v21);

  return v9 & 1;
}

void PType.Pattern.IsA.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v11 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x26D69DBC0](2);
      MEMORY[0x26D69DBC0](*(v11 + 16));
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = v11 + 32;
        do
        {
          v13 += 8;

          PType.Pattern.IsA.hash(into:)(a1);

          --v12;
        }

        while (v12);
      }
    }

    else if (v4 == 3)
    {
      MEMORY[0x26D69DBC0](3);
      PType.Pattern.IsA.hash(into:)(a1);
      PType.Pattern.IsA.hash(into:)(a1);
    }

    else
    {
      MEMORY[0x26D69DBC0](4);
    }

    return;
  }

  if (!v4)
  {
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    MEMORY[0x26D69DBC0](0);
    NSObject.hash(into:)();
    if (v5)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x26D69DBC0](*(v5 + 16));
      v7 = *(v5 + 16);
      if (v7)
      {
        v8 = v5 + 32;
        do
        {
          v8 += 8;

          PType.Pattern.IsA.hash(into:)(a1);

          --v7;
        }

        while (v7);
      }

      if (v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v6)
      {
LABEL_11:
        Hasher._combine(_:)(1u);
        MEMORY[0x26D69DBC0](*(v6 + 16));
        v9 = *(v6 + 16);
        if (v9)
        {
          v10 = v6 + 32;
          do
          {
            v10 += 8;

            PType.Pattern.IsA.hash(into:)(a1);

            --v9;
          }

          while (v9);
        }

        return;
      }
    }

    Hasher._combine(_:)(0);
    return;
  }

  v14 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  MEMORY[0x26D69DBC0](1);
  MEMORY[0x26D69DBC0](*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + 32;
    do
    {
      v16 += 8;

      PType.Pattern.IsA.hash(into:)(a1);

      --v15;
    }

    while (v15);
  }
}

Swift::Int PType.Pattern.IsA.hashValue.getter()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  PType.Pattern.IsA.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.Pattern.IsA()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  PType.Pattern.IsA.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.Pattern.IsA(uint64_t a1)
{
  v3[9] = *v1;
  Hasher.init(_seed:)();
  PType.Pattern.IsA.hash(into:)(v3);
  return Hasher._finalize()();
}

_DWORD *one-time initialization function for currentIdx()
{
  result = swift_slowAlloc();
  *result = 1;
  static PType.Pattern.currentIdx = result;
  return result;
}

uint64_t PType.Pattern.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  *a2 = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  *(a2 + 16) = 0;
  result = PType.Pattern.IsA.init(_:genericParams:)(a1, 0, &v5);
  *(a2 + 8) = v5;
  return result;
}

void PType.Pattern.match(type:within:)(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v22 = *(a2 + 8);
  v23 = *(a2 + 12);
  v6 = *(a2 + 32);
  v7 = *(a2 + 104);
  v8 = *v2;
  v9 = *(v2 + 1);
  v21 = v2[4];
  os_unfair_lock_lock_with_options();
  v10 = specialized Atomic.subscript.read(&v24, 0, v7);
  if (*(*v11 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v8 | (a1 << 32));
    if (v12)
    {
      (v10)(&v24, 0);
LABEL_20:
      os_unfair_lock_unlock(v7);
      return;
    }
  }

  (v10)(&v24, 0);
  if (!a1 || a1 == -1)
  {
    v24 = v9;
    v34 = 0x8000000000000000;

    static PType.Pattern.IsA.== infix(_:_:)(&v24, &v34);

    goto LABEL_20;
  }

  v34 = v9;
  if (*(v6 + 16) <= a1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = *(v6 + 32 + 4 * a1);
  v24 = v5;
  v25 = v22;
  v26 = v23;
  v27 = *(a2 + 16);
  v28 = v6;
  v14 = *(a2 + 56);
  v29 = *(a2 + 40);
  v30 = v14;
  v15 = *(a2 + 88);
  v31 = *(a2 + 72);
  v32 = v15;
  v33 = v7;
  PType.Pattern.IsA.match(index:within:id:)(v13, &v24, v8);
  if ((v16 & 1) == 0)
  {
    v19 = 0;
LABEL_19:
    os_unfair_lock_assert_owner(v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v7 + 8);
    *(v7 + 8) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v8 | (a1 << 32), isUniquelyReferenced_nonNull_native);
    *(v7 + 8) = v24;

    goto LABEL_20;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_22;
  }

  v17 = *(v6 + 32 + 4 * a1);
  if (v17 >= v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5)
  {
    v19 = (v21 & ~*(v5 + 120 * v17 + 96)) == 0 || v21 == 0;
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
}

uint64_t PType.localType(within:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v150 = *v1;
  v151 = v7;
  v152 = v1[2];
  v9 = *(v1 + 12);
  v8 = *(v1 + 13);
  v10 = *(v1 + 56);
  v11 = v1 + 57;
  v148 = *(v1 + 57);
  v149 = *(v1 + 59);
  v12 = *(v1 + 15);
  if (!v9 && v12 == -1)
  {
    goto LABEL_56;
  }

  v109 = v1 + 57;
  v112 = v10;
  v113 = v8;
  v13 = (a1 + 40);
  v14 = *(a1 + 56);
  v146[0] = *(a1 + 40);
  v146[1] = v14;
  *v147 = *(a1 + 72);
  v15 = (a1 + 72);
  v16 = (a1 + 84);
  v17 = a1;
  v18 = (a1 + 88);
  v19 = 8 * v9;
  v110 = v6;
  v111 = v17;
  *&v147[9] = *(v17 + 81);
  v20 = v13;
  v21 = v15;
  v22 = v16;
  v23 = v18;
  v114 = v12;
  while (1)
  {
    v24 = *v23;
    if (v9 < *v22)
    {
      v25 = (*v21 + v19);
      if ((v25[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v24)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v146);
    }

    v21 = (v24 + 32);
    v22 = (v24 + 44);
    v23 = (v24 + 48);
    v20 = v24;
  }

  v26 = *v20;
  if (!v26)
  {
    goto LABEL_73;
  }

  v27 = (v26 + 24 * *v25);
  v28 = *v27;
  v29 = *(*v27 + 196);
  v30 = 0uLL;
  if (!v29)
  {
    v36 = 0;
    v37 = 0;
    a1 = v111;
    v38 = v113;
    v39 = v112;
    goto LABEL_42;
  }

  v31 = *(v28 + 184);
  if (!v31)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v32 = v29 - 1;
  if (*(v31 + 32 * (v29 - 1)) >= v12)
  {
    v40 = v29 >> 1;
    v41 = *(v31 + 32 * (v29 >> 1));
    if (v29 != 1 && v41 != v12)
    {
      v43 = *(v28 + 192) | (v29 << 32);
      v108 = *(v28 + 184);
      if (v12 >= v41)
      {
        v45 = v40 + 1;
        v44 = v12;
        v40 = v29;
      }

      else
      {
        v44 = v12;
        v45 = 0;
      }

      v49 = specialized Collection<>.binarySearch(for:)(v44, v45, v40, v31, v43, 0);
      if (v50)
      {
        v40 = v29 - 1;
      }

      else
      {
        v40 = v49;
      }

      v12 = v114;
      v30 = 0uLL;
      v31 = v108;
    }

    v51 = (v31 + 32 * v40);
    v32 = v40;
    while (v40 < v29)
    {
      if (v12 >= *v51)
      {
        goto LABEL_13;
      }

      if (!v32)
      {
        goto LABEL_41;
      }

      --v32;
      v51 -= 8;
      if (v32 > v29)
      {
        __break(1u);
LABEL_41:
        v36 = 0;
        v37 = 0;
        a1 = v111;
        v38 = v113;
        v39 = v112;
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_13:
  v33 = v13[1];
  v144[0] = *v13;
  v144[1] = v33;
  v145[0] = v13[2];
  *(v145 + 9) = *(v13 + 41);
  while (1)
  {
    v34 = *v18;
    if (v9 < *v16)
    {
      v35 = (*v15 + v19);
      if ((v35[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v34)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v144);
    }

    v15 = (v34 + 32);
    v16 = (v34 + 44);
    v18 = (v34 + 48);
    v13 = v34;
  }

  if (!*v13)
  {
    goto LABEL_75;
  }

  v46 = *v13 + 24 * *v35;
  a1 = v111;
  v38 = v113;
  v39 = v112;
  if (v32 >= *(*v46 + 196))
  {
    goto LABEL_67;
  }

  v47 = *(*v46 + 184);
  if (!v47)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v48 = (v47 + 32 * v32);
  v36 = *v48;
  v37 = *(v48 + 1);
  v30 = *(v48 + 1);
LABEL_42:
  LOBYTE(v125[0]) = v39 & 1;
  *&v126 = v9 | (v38 << 32);
  *(&v126 + 1) = v39 & 1 | (v12 << 32);
  *&v127 = v36;
  *(&v127 + 1) = v37;
  v128 = v30;
  LOBYTE(v129) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(a1, &v126, 0, 0, &v133);
  if (Interpreter.Iterator.read()())
  {
    v142[0] = *v138;
    v142[1] = *&v138[2];
    v143[0] = *&v138[4];
    *(v143 + 9) = *(&v138[5] + 1);
    v52 = v138[0];
    v53 = v138[4];
    v54 = v138[6];
    if (HIDWORD(v138[7]) >= HIDWORD(v138[5]))
    {
      goto LABEL_45;
    }

    while (1)
    {
      v55 = (v53 + 8 * HIDWORD(v138[7]));
      if ((v55[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_45:
        if (!v54)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(HIDWORD(v138[7]), 0, v142);
        }

        v52 = *v54;
        v53 = v54[4];
        v56 = *(v54 + 11);
        v54 = v54[6];
      }

      while (HIDWORD(v138[7]) >= v56);
    }

    if (!v52)
    {
      goto LABEL_74;
    }

    v57 = (v52 + 24 * *v55);
    v58 = *v57;
    v59 = *(*v57 + 96);
    if (v59 != 2)
    {
      v60 = *(v58 + 104);
      v61 = *(v58 + 88);
      *&v138[19] = *(v58 + 72);
      v138[21] = v61;
      v139 = v59 & 0x101;
      v140 = HIDWORD(v59);
      v141 = v60 & 1;
      v62 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
      if ((v64 & 1) == 0)
      {
        v65 = v63 - v62;
        if (!v62)
        {
          v65 = 0;
        }

        *&v126 = v62;
        *(&v126 + 1) = v65;
        static String.Encoding.utf8.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR, MEMORY[0x277D836F8]);
        String.init<A>(bytes:encoding:)();
        if (v66)
        {
          specialized EvolutionTable.deallocate()();
          v67 = _typeByName(_:)();

          LODWORD(v8) = v113;
          LODWORD(v12) = v114;
          LOBYTE(v10) = v112;
          v11 = v109;
          if (v67)
          {
            return v67;
          }

LABEL_56:
          v68 = v2[1];
          v133 = *v2;
          v134 = v68;
          v135 = v2[2];
          v136 = v9;
          v137 = v8;
          LOBYTE(v138[0]) = v10;
          *(v138 + 1) = *v11;
          BYTE3(v138[0]) = *(v11 + 2);
          HIDWORD(v138[0]) = v12;
          v69 = v2[4];
          v70 = v2[5];
          v71 = v2[6];
          *(&v138[6] + 6) = *(v2 + 110);
          *&v138[3] = v70;
          *&v138[5] = v71;
          *&v138[1] = v69;
          v72 = *(a1 + 136);
          v74 = v72[1];
          v73 = v72[2];
          v123[0] = *v72;
          v123[1] = v74;
          v123[2] = v73;
          v75 = v72[6];
          v77 = v72[3];
          v76 = v72[4];
          v123[5] = v72[5];
          v123[6] = v75;
          v123[3] = v77;
          v123[4] = v76;
          v78 = v72[5];
          v120 = v72[4];
          v121 = v78;
          v122 = v72[6];
          v79 = v72[1];
          v116 = *v72;
          v117 = v79;
          v80 = v72[3];
          v118 = v72[2];
          v119 = v80;
          v81 = v12;
          outlined init with copy of Interpreter.Storage.Types(v123, v115);
          v82 = PType.limitedName(within:limit:module:)(&v116, 1, 1);
          v114 = v83;
          v124[4] = v120;
          v124[5] = v121;
          v124[6] = v122;
          v124[0] = v116;
          v124[1] = v117;
          v124[2] = v118;
          v124[3] = v119;
          outlined destroy of Interpreter.Storage.Types(v124);
          v133 = v150;
          v134 = v151;
          v135 = v152;
          v136 = v9;
          v137 = v8;
          LOBYTE(v138[0]) = v10;
          *(v138 + 1) = v148;
          BYTE3(v138[0]) = v149;
          HIDWORD(v138[0]) = v81;
          v84 = v2[4];
          v85 = v2[5];
          v86 = v2[6];
          *(&v138[6] + 6) = *(v2 + 110);
          *&v138[3] = v85;
          *&v138[5] = v86;
          *&v138[1] = v84;
          v87 = *(a1 + 136);
          v89 = v87[1];
          v88 = v87[2];
          v125[0] = *v87;
          v125[1] = v89;
          v125[2] = v88;
          v90 = v87[6];
          v92 = v87[3];
          v91 = v87[4];
          v125[5] = v87[5];
          v125[6] = v90;
          v125[3] = v92;
          v125[4] = v91;
          v93 = v87[5];
          v120 = v87[4];
          v121 = v93;
          v122 = v87[6];
          v94 = v87[1];
          v116 = *v87;
          v117 = v94;
          v95 = v87[3];
          v118 = v87[2];
          v119 = v95;
          outlined init with copy of Interpreter.Storage.Types(v125, v115);
          v96 = PType.limitedName(within:limit:module:)(&v116, 1, 0);
          v98 = v97;
          v130 = v120;
          v131 = v121;
          v132 = v122;
          v126 = v116;
          v127 = v117;
          v128 = v118;
          v129 = v119;
          outlined destroy of Interpreter.Storage.Types(&v126);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v99 = swift_allocObject();
          v99[4] = v82;
          v99[5] = v114;
          v99[6] = v96;
          v99[7] = v98;
          *&v133 = 0x2E7466697753;
          *(&v133 + 1) = 0xE600000000000000;

          MEMORY[0x26D69CDB0](v96, v98);
          v100 = *(&v133 + 1);
          v99[8] = v133;
          v99[9] = v100;
          strcpy(&v133, "SwiftUI.");
          BYTE9(v133) = 0;
          WORD5(v133) = 0;
          HIDWORD(v133) = -402653184;
          MEMORY[0x26D69CDB0](v96, v98);
          v101 = *(&v133 + 1);
          v99[10] = v133;
          v99[11] = v101;
          strcpy(&v133, "SwiftUICore.");
          BYTE13(v133) = 0;
          HIWORD(v133) = -5120;
          MEMORY[0x26D69CDB0](v96, v98);
          v102 = *(&v133 + 1);
          v99[12] = v133;
          v99[13] = v102;
          strcpy(&v133, "CoreGraphics.");
          HIWORD(v133) = -4864;
          MEMORY[0x26D69CDB0](v96, v98);
          v103 = *(&v133 + 1);
          v99[14] = v133;
          v99[15] = v103;
          *&v133 = 776167263;
          *(&v133 + 1) = 0xE400000000000000;
          MEMORY[0x26D69CDB0](v96, v98);
          v104 = *(&v133 + 1);
          v99[16] = v133;
          v99[17] = v104;
          strcpy(&v133, "Builtin.");
          BYTE9(v133) = 0;
          WORD5(v133) = 0;
          HIDWORD(v133) = -402653184;
          MEMORY[0x26D69CDB0](v96, v98);

          v105 = *(&v133 + 1);
          v99[18] = v133;
          v99[19] = v105;

          v67 = _typeByName(_:)();

          if (!v67)
          {

            v67 = _typeByName(_:)();

            if (!v67)
            {

              v67 = _typeByName(_:)();

              if (!v67)
              {

                v67 = _typeByName(_:)();

                if (!v67)
                {

                  v67 = _typeByName(_:)();

                  if (!v67)
                  {

                    v67 = _typeByName(_:)();

                    if (!v67)
                    {

                      v67 = _typeByName(_:)();

                      if (!v67)
                      {

                        v67 = _typeByName(_:)();
                      }
                    }
                  }
                }
              }
            }
          }

          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          return v67;
        }

        goto LABEL_70;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_76:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int PType.hashValue.getter()
{
  Hasher.init(_seed:)();
  PType.IsA.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PType(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v9;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v10;
  outlined copy of PType.IsA(v17, v2, v3, v4, v9);
  outlined copy of PType.IsA(v5, v6, v7, v8, v10);
  LOBYTE(v5) = specialized static PType.IsA.== infix(_:_:)(&v17, &v12);
  outlined consume of PType.IsA(v12, v13, v14, v15, v16);
  outlined consume of PType.IsA(v17, v18, v19, v20, v21);
  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType()
{
  Hasher.init(_seed:)();
  PType.IsA.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType(uint64_t a1)
{
  Hasher.init(_seed:)();
  PType.IsA.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance PType()
{
  result = *(v0 + 72);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 72) = 0;
  }

  return result;
}

uint64_t Snapshot.describe(state:)(uint64_t *a1, __int128 **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[3];
  v5 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  *&v46 = 0;
  *(&v46 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v61 = 0x6F687370616E5328;
  v62 = 0xEA00000000002074;
  v106 = v4;
  v107 = v3;
  v44 = v6;
  v45 = v4;
  v9 = v3;
  v41 = v5;
  v42 = v3;
  v108 = 0;
  v109 = v6;
  v110 = v5;
  v111 = v7;
  v43 = v7;
  v112 = v8;
  v10 = a2[1];
  v11 = *(v10 + 32);
  v12 = v10[1];
  v104[0] = *v10;
  v104[1] = v12;
  v105 = v11;
  outlined init with copy of Snapshot.Kind(v104, &v46);
  v13 = specialized InspectionState.describe<A>(_:_:)(1684957547, 0xE400000000000000, v104);
  v15 = v14;
  outlined destroy of Snapshot.Kind(v104);
  MEMORY[0x26D69CDB0](v13, v15);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v96 = v4;
  v97 = v9;
  v98 = 0;
  *v99 = *v63;
  *&v99[3] = *&v63[3];
  v100 = v6;
  v101 = v5;
  v102 = v7;
  v103 = v8;
  v16 = a2[1];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  v20 = *(v16 + 3);
  v21 = *(v16 + 32);
  if (v21)
  {
    v22 = *v16;
  }

  else
  {
    v22 = *(v16 + 1);
  }

  outlined copy of Snapshot.Kind(*v16, *(v16 + 1), *(v16 + 2), *(v16 + 3), *(v16 + 32));
  v23 = specialized InspectionState.describe<A>(_:_:)(0x6C61767265746E69, 0xE800000000000000, v22);
  v25 = v24;
  outlined consume of Snapshot.Kind(v17, v18, v19, v20, v21);
  MEMORY[0x26D69CDB0](v23, v25);

  MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
  v88 = v45;
  v89 = v42;
  v90 = 0;
  *v91 = *v63;
  *&v91[3] = *&v63[3];
  v92 = v44;
  v93 = v41;
  v94 = v43;
  v95 = v8;
  v26 = specialized InspectionState.describe<A>(_:_:)(0x7365646F6ELL, 0xE500000000000000, a2[9], a2[10]);
  MEMORY[0x26D69CDB0](v26);

  MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
  v80 = v45;
  v81 = v42;
  v82 = 0;
  *v83 = *v63;
  *&v83[3] = *&v63[3];
  v84 = v44;
  v85 = v41;
  v86 = v43;
  v87 = v8;
  v27 = specialized InspectionState.describe<A>(_:_:)(0x7365676465, 0xE500000000000000, a2[12], a2[13]);
  MEMORY[0x26D69CDB0](v27);

  MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
  v72 = v45;
  v73 = v42;
  v74 = 0;
  *v75 = *v63;
  *&v75[3] = *&v63[3];
  v76 = v44;
  v77 = v41;
  v78 = v43;
  v79 = v8;
  v28 = specialized InspectionState.describe<A>(_:_:)(0x6870617267627573, 0xE900000000000073, a2[14], a2[15]);
  MEMORY[0x26D69CDB0](v28);

  MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
  v64 = v45;
  v65 = v42;
  v66 = 0;
  *v67 = *v63;
  *&v67[3] = *&v63[3];
  v68 = v44;
  v69 = v41;
  v70 = v43;
  v71 = v8;
  v29 = specialized InspectionState.describe<A>(_:_:)(0x736870617267, 0xE600000000000000, a2[17], a2[18]);
  MEMORY[0x26D69CDB0](v29);

  MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
  v30 = a2[27];
  if (v30)
  {
    outlined init with copy of Aggregate_AccessorProtocol(v30, &v58);
    outlined init with take of Inspectable(&v58, &v46);
    v31 = *(&v47 + 1);
    v32 = v48;
    v33 = __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    v59 = v31;
    v60 = *(v32 + 8);
    v34 = v60;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v58);
    (*(*(v31 - 8) + 16))(boxed_opaque_existential_1Tm, v33, v31);
    __swift_destroy_boxed_opaque_existential_1(&v46);
    *&v46 = v45;
    *(&v46 + 1) = v42;
    LOBYTE(v47) = 0;
    *(&v47 + 1) = v44;
    *&v48 = v41;
    BYTE8(v48) = v43;
    BYTE9(v48) = v8;
    v36 = InspectionState.describe<A>(_:_:)(0x7461676572676761, 0xE900000000000065, boxed_opaque_existential_1Tm, v31, *(v34 + 24));
    MEMORY[0x26D69CDB0](v36);

    __swift_destroy_boxed_opaque_existential_1(&v58);
    MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
    *&v46 = v45;
    *(&v46 + 1) = v42;
    LOBYTE(v47) = 0;
    *(&v47 + 1) = *v63;
    DWORD1(v47) = *&v63[3];
    *(&v47 + 1) = v44;
    *&v48 = v41;
    BYTE8(v48) = v43;
    BYTE9(v48) = v8;
    v37 = specialized InspectionState.describe<A>(_:_:)(0x73657461647075, 0xE700000000000000, a2[4], a2[5]);
    MEMORY[0x26D69CDB0](v37);

    MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
    return v61;
  }

  else
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    strcpy(&v58, "Interpreter:(");
    HIWORD(v58) = -4864;
    v39 = *a2;
    v54 = (*a2)[8];
    v55 = v39[9];
    v56 = v39[10];
    v57 = v39[11];
    v50 = v39[4];
    v51 = v39[5];
    v52 = v39[6];
    v53 = v39[7];
    v46 = *v39;
    v47 = v39[1];
    v48 = v39[2];
    v49 = v39[3];
    v40 = Interpreter.Storage.debugName.getter();
    MEMORY[0x26D69CDB0](v40);

    MEMORY[0x26D69CDB0](0xD00000000000001BLL, 0x800000026C33B990);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*Snapshot.kind.read(uint64_t *a1))()
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
  *(v2 + 32) = specialized Strong.subscript.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t Snapshot.aggregate.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 216))
  {
    outlined init with copy of Aggregate_AccessorProtocol(*(a1 + 216), v12);
    outlined init with take of Inspectable(v12, &v9);
    v3 = v10;
    v4 = v11;
    v5 = __swift_project_boxed_opaque_existential_1(&v9, v10);
    a2[3] = v3;
    a2[4] = *(v4 + 8);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
    (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v3);
    return __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  else
  {
    _StringGuts.grow(_:)(42);

    strcpy(v12, "Interpreter:(");
    v8 = Interpreter.Storage.debugName.getter();
    MEMORY[0x26D69CDB0](v8);

    MEMORY[0x26D69CDB0](0xD00000000000001BLL, 0x800000026C33B990);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Snapshot.Kind.describe(state:)()
{
  if (*(v0 + 32) == 1)
  {
    return specialized InspectionState.describe<A>(_:_:)(0x6C61767265746E69, 0xE800000000000000, *v0);
  }

  v2 = *(v0 + 8);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v4 = specialized InspectionState.describe<A>(_:_:)(0x49656C69666F7270, 0xEF6C61767265746ELL, v2);
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0x20656D697428;
}

void Snapshot.Kind.config.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
    v3 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v2;
}

uint64_t Snapshot.ReferenceMap.init()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v5 = Dictionary.init()();
  v2 = type metadata accessor for Dictionary();
  v3 = specialized Strong.init(_:)(&v5, v2);

  return v3;
}

void Snapshot.ReferenceMap.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();

  JUMPOUT(0x26D69CA60);
}

void key path getter for Snapshot.ReferenceMap.subscript(_:) : <A>Snapshot.ReferenceMap<A>A(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  JUMPOUT(0x26D69CA60);
}

uint64_t key path setter for Snapshot.ReferenceMap.subscript(_:) : <A>Snapshot.ReferenceMap<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Dictionary();
  v5 = Dictionary.subscript.modify();
  v7 = v6;
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 24))(v7, a1, v8);
  return v5(&v10, 0);
}

void (*Snapshot.ReferenceMap.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(a3 + 16);
  *(v6 + 64) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v6 + 72) = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v7[10] = v11;
  (*(v10 + 16))();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Dictionary();
  v7[11] = Strong.subscript.modify();
  v7[12] = Dictionary.subscript.modify();
  return Snapshot.ReferenceMap.subscript.modify;
}

void Snapshot.ReferenceMap.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t Snapshot.ReferenceMap.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Dictionary._Variant();
  v6 = Dictionary._Variant.subscript.modify();
  v8 = v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  (*(v10 + 24))(v8, a1, v9);
  v6(&v12, 0);
  (*(*(v5 - 8) + 8))(a2, v5);
  return (*(v10 + 8))(a1, v9);
}

uint64_t Snapshot.ReferenceMap.deallocate()(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Dictionary();
  v5 = type metadata accessor for Strong(0, v2, v3, v4);

  return a2(v5);
}

__n128 Snapshot.interpreter.getter@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 144);
  *(a2 + 128) = *(*a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v4;
  v5 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v5;
  v6 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v6;
  v7 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v7;
  result = *(v2 + 32);
  v9 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

__n128 Snapshot.interpreter.setter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

uint64_t (*Snapshot.relativeRet.read(uint64_t *a1))()
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
  *(v2 + 32) = specialized Strong.subscript.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t (*Snapshot.relativeRet.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.Storage.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snapshot.Storage.events.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Snapshot.Storage.eventIndex.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Snapshot.Storage.nodes.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2;
  return result;
}

uint64_t Snapshot.Storage.edges.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2;
  return result;
}

uint64_t Snapshot.Storage.subgraphs.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2;
  return result;
}

uint64_t Snapshot.Storage.graphs.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2;
  return result;
}

uint64_t Snapshot.Storage.reuseEvents.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2;
  return result;
}

uint64_t Snapshot.Storage.reuseUpdates.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2;
  return result;
}

uint64_t Snapshot.Storage.abstractions.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2;
  return result;
}

void (*Snapshot.storage.read(void *a1, _OWORD *a2))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xE0uLL);
  }

  *a1 = v4;
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[5];
  v4[4] = a2[4];
  v4[5] = v8;
  v4[2] = v6;
  v4[3] = v7;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[9];
  v4[8] = a2[8];
  v4[9] = v11;
  v4[6] = v9;
  v4[7] = v10;
  v12 = a2[10];
  v13 = a2[11];
  v14 = a2[13];
  v4[12] = a2[12];
  v4[13] = v14;
  v4[10] = v12;
  v4[11] = v13;
  return Snapshot.subscript.read;
}

uint64_t (*Snapshot._kind.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t (*Snapshot.storage.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.interval.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  return result;
}

uint64_t (*Snapshot.events.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.events.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = result;
  *(v3 + 40) = a2;
  return result;
}

uint64_t (*Snapshot.eventIndex.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.eventIndex.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  return result;
}

uint64_t (*Snapshot.sorted.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t (*Snapshot.nodes.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.nodes.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  return result;
}

uint64_t (*Snapshot.edges.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.edges.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 96) = result;
  *(v3 + 104) = a2;
  return result;
}

uint64_t Snapshot.subgraphs.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 112) = result;
  *(v3 + 120) = a2;
  return result;
}

uint64_t Snapshot.graphs.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 136) = result;
  *(v3 + 144) = a2;
  return result;
}

uint64_t (*Snapshot.reuseEvents.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.reuseEvents.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 160) = result;
  *(v3 + 168) = a2;
  return result;
}

uint64_t (*Snapshot.reuseUpdates.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.reuseUpdates.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 176) = result;
  *(v3 + 184) = a2;
  return result;
}

uint64_t Snapshot.totalProfile.getter(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1[32])
  {
    v1 += 8;
  }

  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  for (i = (v2 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i >= v6;
    v8 = *i - v6;
    if (!v7)
    {
      break;
    }

    v7 = __CFADD__(result, v8);
    result += v8;
    if (v7)
    {
      goto LABEL_11;
    }

    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t (*Snapshot.abstractMap.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t (*Snapshot.abstractions.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.abstractions.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 200) = result;
  *(v3 + 208) = a2;
  return result;
}

uint64_t (*Snapshot.__aggregate.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

__n128 Snapshot.storage.getter@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

__n128 Snapshot.storage.setter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 176);
  v2[10] = *(a1 + 160);
  v2[11] = v3;
  v4 = *(a1 + 208);
  v2[12] = *(a1 + 192);
  v2[13] = v4;
  v5 = *(a1 + 112);
  v2[6] = *(a1 + 96);
  v2[7] = v5;
  v6 = *(a1 + 144);
  v2[8] = *(a1 + 128);
  v2[9] = v6;
  v7 = *(a1 + 48);
  v2[2] = *(a1 + 32);
  v2[3] = v7;
  v8 = *(a1 + 80);
  v2[4] = *(a1 + 64);
  v2[5] = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v10;
  return result;
}

void Snapshot.AbstractionKey.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  MEMORY[0x26D69DBC0](*v0);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      v7 = 3;
      goto LABEL_8;
    }

    MEMORY[0x26D69DBC0](2);
    Hasher._combine(_:)(v1);
  }

  else
  {
    if (!v3)
    {
      v7 = 0;
LABEL_8:
      MEMORY[0x26D69DBC0](v7);
      MEMORY[0x26D69DBC0](v1);
      goto LABEL_9;
    }

    MEMORY[0x26D69DBC0](1);
    Hasher._combine(_:)(v1);
    Hasher._combine(_:)(HIDWORD(v1));
    Hasher._combine(_:)(v2);
  }

LABEL_9:
  Hasher.init()();
  MEMORY[0x26D69DBC0](v4);
  MEMORY[0x26D69DBC0](v5);
  v8 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v8);
  Hasher._combine(_:)(v6);
}

Swift::Int Snapshot.AbstractionKey.stableIdentity(within:)(uint64_t a1)
{
  v2 = *v1;
  Hasher.init()();
  MEMORY[0x26D69DBC0](v2);
  return Hasher.finalize()();
}

Swift::Int Snapshot.AbstractionKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  Snapshot.AbstractionKey.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Snapshot.AbstractionKey()
{
  Hasher.init(_seed:)();
  Snapshot.AbstractionKey.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Snapshot.AbstractionKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  Snapshot.AbstractionKey.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Snapshot.Abstraction.displayName(within:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v5 = *(v1 + 16);
  v6 = v3;
  return (*(v2 + 8))(&v5, a1);
}

uint64_t (*Snapshot._aggregate.modify(void *a1))()
{
  v2 = *v1;
  a1[1] = *v1;
  *a1 = *(v2 + 216);
  return Snapshot._aggregate.modify;
}

uint64_t Snapshot.kind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return outlined copy of Snapshot.Kind(v3, v4, v5, v6, v7);
}

uint64_t key path setter for Snapshot.kind : Snapshot(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(*a2 + 8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v12 = *(v7 + 32);
  *v7 = *a1;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  outlined copy of Snapshot.Kind(v2, v3, v4, v5, v6);

  return outlined consume of Snapshot.Kind(v8, v9, v10, v11, v12);
}

__n128 Snapshot.kind.setter(uint64_t a1)
{
  v3 = *(*v1 + 8);
  v4 = *(a1 + 32);
  outlined consume of Snapshot.Kind(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32));
  result = *a1;
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v6;
  *(v3 + 32) = v4;
  return result;
}

Swift::Void __swiftcall Attribute.deallocate()()
{
  if (*v0)
  {
    MEMORY[0x26D69EAB0](*v0, -1, -1);
    *v0 = 0;
  }

  v1 = v0[2];
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    v0[2] = 0;
  }

  v2 = v0[25];
  if (v2)
  {
    MEMORY[0x26D69EAB0](v2, -1, -1);
    v0[25] = 0;
  }
}

Swift::Void __swiftcall Subgraph.deallocate()()
{
  v1 = v0[3];
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    v0[3] = 0;
  }

  v2 = v0[5];
  if (v2)
  {
    MEMORY[0x26D69EAB0](v2, -1, -1);
    v0[5] = 0;
  }

  v3 = *v0;
  v4 = *(*v0 + 2);
  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    v5 = 0;
    v6 = (v3 + 128);
    do
    {
      if (v5 >= *(v3 + 2))
      {
        __break(1u);
        goto LABEL_21;
      }

      v8 = v6[3];
      if (v8)
      {
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v8, -1, -1);
        v6[3] = 0;
      }

      v9 = v6[11];
      if (v9)
      {
        MEMORY[0x26D69EAB0](v9, -1, -1);
        v6[11] = 0;
      }

      v10 = *(v6 - 4);
      if (v10)
      {
        MEMORY[0x26D69EAB0](v10, -1, -1);
        *(v6 - 4) = 0;
      }

      v11 = v6[13];
      if (v11)
      {
        MEMORY[0x26D69EAB0](v11, -1, -1);
      }

      ++v5;
      v7 = *v6;
      v6 += 26;
      MEMORY[0x26D69EAB0](v7, -1, -1);
    }

    while (v4 != v5);
    *v0 = v3;
  }
}

Swift::Void __swiftcall Event.deallocate()()
{
  HeterogeneousBuffer.deallocate()();
  v1 = *(v0 + 112);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 112) = 0;
  }
}

Swift::Void __swiftcall Snapshot.copy()()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 208);
  v51[11] = *(*v0 + 176);
  v51[12] = v3;
  v51[13] = v4;
  v5 = v1[6];
  v6 = v1[8];
  v7 = v1[9];
  v51[7] = v1[7];
  v51[8] = v6;
  v51[9] = v7;
  v51[10] = v2;
  v8 = v1[2];
  v9 = v1[4];
  v10 = v1[5];
  v51[3] = v1[3];
  v51[4] = v9;
  v51[5] = v10;
  v51[6] = v5;
  v11 = v1[1];
  v51[0] = *v1;
  v51[1] = v11;
  v51[2] = v8;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA8SnapshotV7StorageV_Tt0g5(v51);
  *v0 = v12;
  v13 = *(v12 + 8);
  if (v13)
  {
    v14 = v12;
    v15 = *v13;
    v16 = v13[1];
    v50 = *(v13 + 32);
    v49[0] = v15;
    v49[1] = v16;
    outlined init with copy of Snapshot.Kind(v49, v46);
    _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA8SnapshotV4KindO_Tt0B5(v49);
    *(v14 + 8) = v17;
    specialized UnsafeArray<A>.copy()();

    *(v14 + 88) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v18);
    v19 = *(v14 + 96);
    if (v19)
    {
      v20 = *(v14 + 108);
      v21 = swift_slowAlloc();
      *(v14 + 96) = v21;
      memcpy(v21, v19, 24 * v20);
    }

    specialized UnsafeArray<A>.copy()();

    *(v14 + 128) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v22);
    if (*(v14 + 136))
    {
      *(v14 + 136) = swift_slowAlloc();
      swift_arrayInitWithCopy();
    }

    *(v14 + 152) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v23);
    v24 = *(v14 + 160);
    if (v24)
    {
      v25 = *(v14 + 172);
      v26 = swift_slowAlloc();
      *(v14 + 160) = v26;
      memcpy(v26, v24, 24 * v25);
    }

    if (*(v14 + 176))
    {
      *(v14 + 176) = swift_slowAlloc();
      swift_arrayInitWithCopy();
    }

    v27 = *(v14 + 216);
    if (v27)
    {
      v29 = *(v27 + 24);
      v28 = *(v27 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v27, v29);
      (*(*(*(v28 + 8) + 8) + 8))(v29);
      v30 = *(v14 + 216);
      if (v30)
      {
        outlined init with copy of Aggregate_AccessorProtocol(v30, v46);
        v31 = v47;
        v32 = v48;
        v33 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
        MEMORY[0x28223BE20](v33);
        v35 = &v46[-1] - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v36 + 16))(v35);
        v37 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA14EventAggregate_p_Tt0g5Tf4e_n(v35, v31, v32);
        __swift_destroy_boxed_opaque_existential_1(v46);
        *(v14 + 216) = v37;
      }
    }

    specialized UnsafeArray<A>.copy()();
    v38 = *(v14 + 48);
    if (v38)
    {
      v39 = *(v14 + 60);
      v40 = swift_slowAlloc();
      *(v14 + 48) = v40;
      memcpy(v40, v38, 8 * v39);
    }

    *(v14 + 192) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v41);
    v42 = *(v14 + 200);
    if (v42)
    {
      v43 = *(v14 + 212);
      v44 = swift_slowAlloc();
      *(v14 + 200) = v44;
      memcpy(v44, v42, 120 * v43);
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized UnsafeArray<A>.copy()()
{
  if (*v0)
  {
    v1 = *(v0 + 12);
    v2 = swift_slowAlloc();
    *v0 = v2;
    swift_arrayInitWithCopy();
    if (v1)
    {
      do
      {
        v3 = *v2;
        if (*v2)
        {
          v4 = *(v2 + 12);
          v5 = swift_slowAlloc();
          *v2 = v5;
          memcpy(v5, v3, 8 * v4);
        }

        v6 = *(v2 + 16);
        if (v6)
        {
          v7 = *(v2 + 28);
          v8 = swift_slowAlloc();
          *(v2 + 16) = v8;
          memcpy(v8, v6, 8 * v7);
        }

        v9 = *(v2 + 200);
        if (v9)
        {
          v10 = *(v2 + 212);
          v11 = swift_slowAlloc();
          *(v2 + 200) = v11;
          memcpy(v11, v9, 40 * v10);
        }

        v2 += 312;
        --v1;
      }

      while (v1);
    }
  }
}

{
  if (*v0)
  {
    v1 = *(v0 + 12);
    v2 = swift_slowAlloc();
    v3 = v0;
    v4 = v2;
    *v3 = v2;
    swift_arrayInitWithCopy();
    if (v1)
    {
      do
      {
        Subgraph.copy()();
        v4 += 168;
        --v1;
      }

      while (v1);
    }
  }
}

{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 12);
    v3 = swift_slowAlloc();
    *v0 = v3;
    memcpy(v3, v1, v2 << 7);
    if (v2)
    {
      v4 = v3 + 112;
      do
      {
        HeterogeneousBuffer.copy()();
        v5 = *v4;
        if (*v4)
        {
          v6 = *(v4 + 3);
          v7 = swift_slowAlloc();
          *v4 = v7;
          memcpy(v7, v5, 8 * v6);
        }

        v4 += 128;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t (*Snapshot.subscript.modify(uint64_t *a1, int a2, unsigned int a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  v9 = v7;
  *a1 = v7;
  v10 = a2;
  *(v7 + 68) = a2;
  *(v7 + 72) = a3;
  v11 = *v3;
  *(v7 + 32) = *v3;
  if (*(v11 + 84) <= a3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = *(v11 + 72);
  if (!v12)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v53 = a3;
  v8 = a3;
  v13 = v12 + 312 * a3;
  v14 = *(v13 + 12);
  if (!v14)
  {
LABEL_31:
    LODWORD(v17) = 312;
    v4 = v8;
    v36 = v10;
    _StringGuts.grow(_:)(42);
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    v3 = v9;
    MEMORY[0x26D69CDB0](0xD000000000000018, 0x800000026C33B9B0);
    *(v9 + 64) = v36;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](0x742065766168202ELL, 0xEE00203A65736568);
    if (*(v11 + 84) <= v53)
    {
      goto LABEL_48;
    }

    v20 = *(v11 + 72);
    if (!v20)
    {
      __break(1u);
LABEL_34:
      __break(1u);
    }

    v37 = v20 + v4 * v17;
    v23 = *(v37 + 12);
    v3 = MEMORY[0x277D84F90];
    if (!v23)
    {
      goto LABEL_50;
    }

    v17 = *v37;
    v56 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    if (!v17)
    {
      __break(1u);
LABEL_38:
      __break(1u);
    }

    v3 = v56;
    while (1)
    {
      v40 = *v17++;
      v39 = v40;
      if (v40 >= *(v11 + 108))
      {
        break;
      }

      v41 = *(v11 + 96);
      if (!v41)
      {
        goto LABEL_49;
      }

      v42 = (v41 + 24 * v39);
      v43 = *v42;
      v44 = v42[1];
      v45 = *(v42 + 4);
      v47 = v56[2];
      v46 = v56[3];
      if (v47 >= v46 >> 1)
      {
        v55 = v43;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
        v43 = v55;
      }

      v56[2] = v47 + 1;
      v38 = &v56[3 * v47];
      v38[4] = v43;
      v38[5] = v44;
      *(v38 + 12) = v45;
      if (!--v23)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  v15 = *v13;
  if (*v13)
  {
    v16 = 0x280480000uLL;
    v17 = &static Edge.invalid;
    while (1)
    {
      v19 = *v15++;
      v18 = v19;
      *(v9 + 40) = v19;
      if (v19 >= *(v11 + 108))
      {
        break;
      }

      v20 = *(v11 + 96);
      if (!v20)
      {
        goto LABEL_34;
      }

      v21 = 24 * v18;
      v22 = (v20 + 24 * v18);
      v4 = *v22;
      v23 = v22[1];
      v24 = *(v22 + 1);
      v25 = v22[4];
      if (*(v16 + 1008) != -1)
      {
        v51 = v8;
        v52 = v18;
        swift_once();
        v16 = 0x280480000;
        v8 = v51;
        v18 = v52;
        v10 = a2;
      }

      v26 = static Edge.invalid;
      v27 = HIDWORD(static Edge.invalid);
      *(v9 + 76) = static Edge.invalid;
      *(v9 + 80) = v27;
      v28 = qword_280481D78;
      *(v9 + 48) = qword_280481D78;
      v29 = dword_280481D80;
      *(v9 + 84) = dword_280481D80;
      if (v4 != v26 || v23 != v27 || v24 != v28 || v25 != v29)
      {
        v33 = *(v11 + 108);
        if (v18 >= v33)
        {
          goto LABEL_29;
        }

        v34 = *(v11 + 96);
        if (!v34)
        {
          goto LABEL_38;
        }

        if (*(v34 + v21) == v10)
        {
          *(v9 + 56) = specialized UnsafeArray.subscript.modify(v9, v18, v34, *(v11 + 104) | (v33 << 32));
          return Snapshot.subscript.modify;
        }
      }

      if (!--v14)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v48 = MEMORY[0x26D69CFC0](v3, &type metadata for Edge);
  v50 = v49;

  MEMORY[0x26D69CDB0](v48, v50);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void Snapshot.subscript.modify(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    if (v5 >= *(v4 + 108))
    {
LABEL_63:
      __break(1u);
    }

    else
    {
      v6 = *(v4 + 96);
      if (!v6)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v7 = (v6 + 24 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = *(v7 + 1);
      v11 = v7[4];
      if (v8 != *(v3 + 76) || v9 != *(v3 + 80) || v10 != *(v3 + 48) || v11 != *(v3 + 84))
      {
        goto LABEL_58;
      }

      v15 = *(v3 + 72);
      if (*(v4 + 84) > v15)
      {
        v16 = *(v4 + 72);
        if (!v16)
        {
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v17 = (v16 + 312 * v15);
        v18 = *(v17 + 3);
        if (v18)
        {
          v19 = 0;
          v20 = 0;
          v21 = 8;
          while (1)
          {
            v23 = *v17;
            if (!*v17)
            {
              goto LABEL_70;
            }

            v24 = *(v23 + 8 * v19);
            if (v24 != *(v3 + 40))
            {
              v25 = (v23 + 8 * v20);
              if (v20 < v19 || v25 >= v23 + v21)
              {
                *v25 = v24;
              }

              v22 = __OFADD__(v20++, 1);
              if (v22)
              {
                __break(1u);
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }
            }

            ++v19;
            v21 += 8;
            if (v18 == v19)
            {
              if (v20 <= v18)
              {
                goto LABEL_30;
              }

              __break(1u);
              break;
            }
          }
        }

        v20 = 0;
LABEL_30:
        v26 = v18 - v20 + 1;
        while (--v26)
        {
          if (!*v17)
          {
            __break(1u);
            break;
          }
        }

        if ((v20 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v20))
          {
            v27 = *(v3 + 32);
            v28 = *(v3 + 68);
            *(v17 + 3) = v20;
            if (*(v27 + 84) > v28)
            {
              v29 = *(v27 + 72);
              if (!v29)
              {
LABEL_74:
                __break(1u);
                return;
              }

              v30 = v29 + 312 * v28;
              v31 = *(v30 + 28);
              if (v31)
              {
                v32 = 0;
                v33 = 0;
                v34 = 8;
                while (1)
                {
                  v35 = *(v30 + 16);
                  if (!v35)
                  {
                    goto LABEL_71;
                  }

                  v36 = *(v35 + 8 * v32);
                  if (v36 != *(v3 + 40))
                  {
                    v37 = (v35 + 8 * v33);
                    if (v33 < v32 || v37 >= v35 + v34)
                    {
                      *v37 = v36;
                    }

                    v22 = __OFADD__(v33++, 1);
                    if (v22)
                    {
                      goto LABEL_62;
                    }
                  }

                  ++v32;
                  v34 += 8;
                  if (v31 == v32)
                  {
                    if (v33 <= v31)
                    {
                      goto LABEL_51;
                    }

                    __break(1u);
                    break;
                  }
                }
              }

              v33 = 0;
LABEL_51:
              v38 = v31 - v33 + 1;
              while (--v38)
              {
                if (!*(v30 + 16))
                {
                  __break(1u);
                  break;
                }
              }

              if ((v33 & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(v33))
                {
                  *(v30 + 28) = v33;
                  goto LABEL_58;
                }

LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
                goto LABEL_72;
              }

LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_58:

  free(v3);
}

BOOL Edge.valid.getter(unint64_t a1, uint64_t a2, int a3)
{
  v3 = HIDWORD(a1);
  if (one-time initialization token for invalid != -1)
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    swift_once();
    LODWORD(a1) = v7;
    a2 = v8;
    a3 = v9;
  }

  return static Edge.invalid != a1 || HIDWORD(static Edge.invalid) != v3 || qword_280481D78 != a2 || dword_280481D80 != a3;
}

uint64_t static Edge.invalid.getter()
{
  if (one-time initialization token for invalid != -1)
  {
    swift_once();
  }

  return static Edge.invalid;
}

void (*Snapshot.subscript.read(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5))()
{
  if (*(a5 + 84) <= a3)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = *(a5 + 72);
  if (!v5)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v6 = v5 + 312 * a3;
  v7 = *(v6 + 12);
  if (v7)
  {
    v8 = *v6;
    if (!*v6)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (v10 >= *(a5 + 108))
      {
        break;
      }

      v11 = *(a5 + 96);
      if (!v11)
      {
        goto LABEL_28;
      }

      v12 = (v11 + 24 * v9);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(v12 + 1);
      v16 = v12[4];
      if (one-time initialization token for invalid != -1)
      {
        v24 = a1;
        v23 = a2;
        v22 = a5;
        swift_once();
        a5 = v22;
        a2 = v23;
        a1 = v24;
      }

      if (v13 != static Edge.invalid || v14 != HIDWORD(static Edge.invalid) || v15 != qword_280481D78 || v16 != dword_280481D80)
      {
        if (v9 >= *(a5 + 108))
        {
          goto LABEL_26;
        }

        v20 = *(a5 + 96);
        if (!v20)
        {
          goto LABEL_29;
        }

        if (*(v20 + 24 * v9) == a2)
        {
          return EventTreeStats.count.modify;
        }
      }

      if (!--v7)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t Snapshot.subscript.setter(unint64_t result, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v9 = *v7;
  if (*(*v7 + 84) <= a5)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v10 = *(v9 + 72);
  if (!v10)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v6 = 312 * a5;
  v11 = v10 + v6;
  v12 = *(v11 + 12);
  if (!v12)
  {
    goto LABEL_85;
  }

  v13 = HIDWORD(result);
  v14 = *v11;
  v15 = 0x280480000uLL;
  v16 = *v11;
  while (1)
  {
    if (!v14)
    {
      goto LABEL_88;
    }

    v17 = *v16;
    if (*v16 >= *(v9 + 108))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v11 = *(v9 + 96);
    if (!v11)
    {
      goto LABEL_89;
    }

    v18 = (v11 + 24 * v17);
    v19 = *v18;
    v8 = v18[1];
    v20 = *(v18 + 1);
    v21 = v18[4];
    if (*(v15 + 1008) != -1)
    {
      v68 = v6;
      v69 = v9;
      v73 = a2;
      v74 = result;
      v71 = a3;
      v72 = a4;
      v70 = a5;
      v67 = v13;
      swift_once();
      v15 = 0x280480000;
      v13 = v67;
      v6 = v68;
      v9 = v69;
      a2 = v73;
      result = v74;
      a5 = v70;
      a3 = v71;
      a4 = v72;
    }

    v23 = static Edge.invalid;
    v22 = HIDWORD(static Edge.invalid);
    v5 = qword_280481D78;
    v11 = dword_280481D80;
    v24 = v19 == static Edge.invalid && v8 == HIDWORD(static Edge.invalid);
    v25 = v24 && v20 == qword_280481D78;
    if (!v25 || v21 != dword_280481D80)
    {
      if (v17 >= *(v9 + 108))
      {
        goto LABEL_74;
      }

      v27 = *(v9 + 96);
      if (!v27)
      {
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      if (*(v27 + 24 * v17) == a4)
      {
        break;
      }
    }

    ++v16;
    if (!--v12)
    {
      goto LABEL_85;
    }
  }

  v28 = v27 + 24 * v17;
  *v28 = result;
  *(v28 + 4) = v13;
  *(v28 + 8) = a2;
  *(v28 + 16) = a3;
  if (v17 >= *(v9 + 108))
  {
    goto LABEL_78;
  }

  if (v23 != result || v22 != v13 || v5 != a2 || v11 != a3)
  {
    return result;
  }

  if (*(v9 + 84) <= a5)
  {
    goto LABEL_79;
  }

  v29 = *(v9 + 72);
  if (!v29)
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v30 = v29 + v6;
  v31 = *(v30 + 12);
  if (v31)
  {
    v32 = 0;
    v5 = 0;
    v33 = 8;
    while (1)
    {
      v6 = *v30;
      if (!*v30)
      {
        break;
      }

      v35 = v6 + v33;
      v36 = *(v6 + v33 - 8);
      if (v36 != v17)
      {
        v6 += 8 * v5;
        if (v5 < v32 || v6 >= v35)
        {
          *v6 = v36;
        }

        v34 = __OFADD__(v5++, 1);
        if (v34)
        {
          goto LABEL_75;
        }
      }

      ++v32;
      v33 += 8;
      if (v31 == v32)
      {
        if (v5 <= v31)
        {
          goto LABEL_44;
        }

        __break(1u);
        goto LABEL_43;
      }
    }

LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_43:
  v5 = 0;
LABEL_44:
  v37 = v31 - v5 + 1;
  while (--v37)
  {
    if (!*v30)
    {
      __break(1u);
      break;
    }
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v5))
    {
      goto LABEL_81;
    }

    *(v30 + 12) = v5;
    if (*(v9 + 84) <= a4)
    {
      goto LABEL_82;
    }

    v38 = *(v9 + 72);
    if (!v38)
    {
      goto LABEL_104;
    }

    v39 = v38 + 312 * a4;
    v40 = *(v39 + 28);
    if (v40)
    {
      v41 = 0;
      v5 = 0;
      v42 = 8;
      while (1)
      {
        v6 = *(v39 + 16);
        if (!v6)
        {
          goto LABEL_101;
        }

        v43 = v6 + v42;
        v44 = *(v6 + v42 - 8);
        if (v44 != v17)
        {
          v6 += 8 * v5;
          if (v5 < v41 || v6 >= v43)
          {
            *v6 = v44;
          }

          v34 = __OFADD__(v5++, 1);
          if (v34)
          {
            goto LABEL_76;
          }
        }

        ++v41;
        v42 += 8;
        if (v40 == v41)
        {
          if (v5 <= v40)
          {
            goto LABEL_65;
          }

          __break(1u);
          break;
        }
      }
    }

    v5 = 0;
LABEL_65:
    v45 = v40 - v5 + 1;
    while (--v45)
    {
      if (!*(v39 + 16))
      {
        __break(1u);
        break;
      }
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v5))
      {
        goto LABEL_84;
      }

      *(v39 + 28) = v5;
      return result;
    }

    goto LABEL_83;
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  v8 = v6;
  v46 = a5;
  v47 = v9;
  _StringGuts.grow(_:)(42);
  MEMORY[0x26D69CDB0](0xD000000000000018, 0x800000026C33B9B0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](0x742065766168202ELL, 0xEE00203A65736568);
  if (*(v47 + 84) > v46)
  {
    v16 = v47;
    v11 = *(v47 + 72);
    if (!v11)
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
    }

    v48 = *(v11 + v8 + 12);
    v49 = MEMORY[0x277D84F90];
    if (!v48)
    {
      goto LABEL_109;
    }

    v50 = *(v11 + v8);
    v76 = MEMORY[0x277D84F90];
    v51 = *(v11 + v8 + 12);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
    v52 = v51;
    v5 = v76;
    v53 = v50;
    v54 = v16;
    while (v50)
    {
      if (*v53 >= *(v54 + 27))
      {
        goto LABEL_99;
      }

      v56 = v54[12];
      if (!v56)
      {
        goto LABEL_106;
      }

      v57 = (v56 + 24 * *v53);
      v58 = *v57;
      v59 = v57[1];
      v60 = *(v57 + 4);
      v77 = v5;
      v62 = *(v5 + 16);
      v61 = *(v5 + 24);
      if (v62 >= v61 >> 1)
      {
        v63 = v52;
        v75 = v58;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
        v54 = v16;
        v58 = v75;
        v52 = v63;
        v5 = v77;
      }

      *(v5 + 16) = v62 + 1;
      v55 = v5 + 24 * v62;
      *(v55 + 32) = v58;
      *(v55 + 40) = v59;
      *(v55 + 48) = v60;
      ++v53;
      if (!--v52)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_105;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  v49 = v5;
LABEL_109:
  v64 = MEMORY[0x26D69CFC0](v49, &type metadata for Edge);
  v66 = v65;

  MEMORY[0x26D69CDB0](v64, v66);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Snapshot.subscript.setter(uint64_t result, unsigned int a2)
{
  if (*(*v2 + 84) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*v2 + 72);
    if (v3)
    {
      return outlined assign with take of Attribute(result, v3 + 312 * a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t Snapshot.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  v8 = result;
  *a1 = result;
  v9 = *v3;
  v10 = **(*v3 + 88);
  if (*(v10 + 16))
  {
    v11 = *(v9 + 72);
    v12 = *(v9 + 80);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v13)
    {
      *(v8 + 32) = specialized UnsafeArray.subscript.modify(v8, *(*(v10 + 56) + 4 * result), v11, v12);
      return UnsafeTree.storage.modify;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Snapshot.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x131uLL);
  }

  v9 = result;
  *a1 = result;
  v10 = **(a4 + 88);
  if (!*(v10 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = *(a4 + 72);
  v12 = *(a4 + 84);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v13 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = *(*(v10 + 56) + 4 * result);
  if (v14 >= v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11)
  {
    memcpy(v9, (v11 + 312 * v14), 0x131uLL);
    return Snapshot.subscript.read;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t Snapshot.subscript.setter(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = **(*v3 + 88);
  if (!*(v5 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = *(v4 + 72);
  v8 = *(v4 + 84);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v9 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(*(v5 + 56) + 4 * result);
  if (v10 >= v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return outlined assign with take of Attribute(v6, v7 + 312 * v10);
}

_OWORD *Snapshot.subscript.setter(_OWORD *result, unsigned int a2)
{
  if (*(*v2 + 148) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*v2 + 136);
    if (v3)
    {
      v4 = result;
      v5 = (v3 + 80 * a2);
      v11[0] = *v5;
      v6 = v5[1];
      v7 = v5[2];
      v8 = v5[4];
      v11[3] = v5[3];
      v11[4] = v8;
      v11[1] = v6;
      v11[2] = v7;
      result = outlined destroy of GraphContext(v11);
      v9 = v4[3];
      v5[2] = v4[2];
      v5[3] = v9;
      v5[4] = v4[4];
      v10 = v4[1];
      *v5 = *v4;
      v5[1] = v10;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*Snapshot.subscript.modify(uint64_t *a1, unsigned int a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = specialized UnsafeArray.subscript.modify(v6, a2, *(a3 + 112), *(a3 + 120));
  return UnsafeTree.storage.modify;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = specialized UnsafeArray.subscript.modify(v6, a2, *(a3 + 32), *(a3 + 40));
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.subscript.setter(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 124) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a3 + 112);
    if (v3)
    {
      return outlined assign with take of Subgraph(result, v3 + 168 * a2);
    }
  }

  __break(1u);
  return result;
}

char *Snapshot.subscript.setter(char *result, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2) >= *(a3 + 124))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *(a3 + 112);
  if (v7)
  {
    v4 = a2;
    v3 = result;
    v6 = (v7 + 168 * HIDWORD(a2));
    v5 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v5;
    if (result)
    {
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_8:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v6 = result;
    if ((v4 & 0x80000000) == 0)
    {
LABEL_5:
      if (v4 < *(v5 + 2))
      {
        v8 = *(v3 + 11);
        v9 = &v5[208 * v4];
        *(v9 + 12) = *(v3 + 10);
        *(v9 + 13) = v8;
        *(v9 + 14) = *(v3 + 12);
        v10 = *(v3 + 7);
        *(v9 + 8) = *(v3 + 6);
        *(v9 + 9) = v10;
        v11 = *(v3 + 9);
        *(v9 + 10) = *(v3 + 8);
        *(v9 + 11) = v11;
        v12 = *(v3 + 3);
        *(v9 + 4) = *(v3 + 2);
        *(v9 + 5) = v12;
        v13 = *(v3 + 5);
        *(v9 + 6) = *(v3 + 4);
        *(v9 + 7) = v13;
        v14 = *(v3 + 1);
        *(v9 + 2) = *v3;
        *(v9 + 3) = v14;
        return result;
      }

      goto LABEL_10;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *Snapshot.subscript.setter(_OWORD *result, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 44) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v4 = result[5];
      v5 = (v3 + (a2 << 7));
      v5[4] = result[4];
      v5[5] = v4;
      v6 = result[7];
      v5[6] = result[6];
      v5[7] = v6;
      v7 = result[1];
      *v5 = *result;
      v5[1] = v7;
      v8 = result[3];
      v5[2] = result[2];
      v5[3] = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 Snapshot.subscript.getter@<Q0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 200) + 120 * a1;
  v4 = *(v3 + 80);
  *(a3 + 64) = *(v3 + 64);
  *(a3 + 80) = v4;
  *(a3 + 96) = *(v3 + 96);
  *(a3 + 112) = *(v3 + 112);
  v5 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v5;
  result = *(v3 + 32);
  v7 = *(v3 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v7;
  return result;
}

void (*Snapshot.subscript.read(void *a1, unsigned int a2, uint64_t a3))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x78uLL);
  }

  *a1 = v6;
  memmove(v6, (*(a3 + 200) + 120 * a2), 0x78uLL);
  return Snapshot.subscript.read;
}

uint64_t (*Snapshot.subscript.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized UnsafeArray.subscript.modify();
  return UnsafeTree.storage.modify;
}

__n128 Snapshot.subscript.setter(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 200) + 120 * a2;
  v4 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v4;
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = *(a1 + 112);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v7;
  return result;
}

ValueMetadata *Event.hasValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, *(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  if (result)
  {
    v5 = *result;
    v6 = result[1];
    v7 = result[2];
    v8 = LODWORD(result[3].Kind) | (BYTE4(result[3].Kind) << 32);
  }

  else
  {
    v8 = 0;
    v5 = xmmword_26C32F290;
    v6 = 0;
    v7 = 0;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 52) = BYTE4(v8);
  return result;
}

unsigned int *Snapshot.subscript.read(unsigned int **a1, unsigned int a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x160uLL);
  }

  v7 = result;
  *a1 = result;
  if (*(a3 + 44) <= a2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(a3 + 32);
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8 + (a2 << 7);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = *(v9 + 25);
  v16 = v9 + 28;
  v14 = *(v9 + 28);
  v15 = *(v16 + 4);
  v17 = v13 == 0;
  v18 = 256;
  if (v17)
  {
    v18 = 0;
  }

  v19 = v18 | (v14 << 32);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v10, v11, v19 | v12, v15);
  if (result || (result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v10, v11, v19 | v12, v15, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm)) != 0)
  {
    *(v7 + 43) = Snapshot.subscript.read(v7 + 39, *result, a3);
    memmove(v7, v20, 0x131uLL);
    return Snapshot.subscript.read;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t Attribute.Pattern.match(_:within:)(uint64_t result, uint64_t a2)
{
  if (*(a2 + 84) <= result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = result;
  v6 = result;
  v7 = (v4 + 312 * result);
  if (((v7[89] | *(v2 + 68)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = v2[4];
  v11 = v2[6];
  v12 = *(v2 + 4);
  v53 = v2[10];
  v52 = *(v2 + 7);
  v50 = v2[16];
  v51 = v2[12];
  memcpy(__dst, v7, sizeof(__dst));
  result = Attribute.indirectSource(within:)(a2);
  v13 = *(a2 + 84);
  if (result >= v13)
  {
    goto LABEL_19;
  }

  v14 = *(a2 + 72);
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v14 + 312 * result;
  if (*(v15 + 101))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v13 <= v5)
  {
    goto LABEL_20;
  }

  v16 = v14 + 312 * v6;
  if (*(v16 + 136))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = *(v16 + 128);
  if (HIDWORD(v17) >= *(a2 + 124))
  {
    goto LABEL_21;
  }

  v18 = *(a2 + 112);
  if (v18)
  {
    if ((v17 & 0x80000000) == 0)
    {
      v19 = *(v18 + 168 * HIDWORD(v17));
      if (v17 < *(v19 + 16))
      {
        v21 = *(v15 + 92);
        v20 = *(v15 + 96);
        v22 = *(v19 + 208 * v17 + 120);
        LODWORD(v72) = v8;
        *(&v72 + 1) = v9;
        LODWORD(v73) = v10;
        v23 = *(*a2 + 136);
        v25 = v23[1];
        v24 = v23[2];
        v86[0] = *v23;
        v86[1] = v25;
        v86[2] = v24;
        v26 = v23[6];
        v28 = v23[3];
        v27 = v23[4];
        v86[5] = v23[5];
        v86[6] = v26;
        v86[3] = v28;
        v86[4] = v27;
        v82 = v23[3];
        v83 = v23[4];
        v84 = v23[5];
        v85 = v23[6];
        v79 = *v23;
        v80 = v23[1];
        v81 = v23[2];

        outlined init with copy of Interpreter.Storage.Types(v86, v87);
        PType.Pattern.match(type:within:)(v21, &v79);
        v30 = v29;
        v87[4] = v83;
        v87[5] = v84;
        v87[6] = v85;
        v87[0] = v79;
        v87[1] = v80;
        v87[2] = v81;
        v87[3] = v82;
        outlined destroy of Interpreter.Storage.Types(v87);

        if (v30)
        {
          LODWORD(v54) = v11;
          *(&v54 + 1) = v12;
          LODWORD(v55) = v53;
          v31 = *(*a2 + 136);
          v33 = v31[1];
          v32 = v31[2];
          v72 = *v31;
          v73 = v33;
          v74 = v32;
          v34 = v31[6];
          v36 = v31[3];
          v35 = v31[4];
          v77 = v31[5];
          v78 = v34;
          v75 = v36;
          v76 = v35;
          v68 = v31[3];
          v69 = v31[4];
          v70 = v31[5];
          v71 = v31[6];
          v65 = *v31;
          v66 = v31[1];
          v67 = v31[2];

          outlined init with copy of Interpreter.Storage.Types(&v72, v64);
          PType.Pattern.match(type:within:)(v20, &v65);
          v38 = v37;
          v83 = v69;
          v84 = v70;
          v85 = v71;
          v79 = v65;
          v80 = v66;
          v81 = v67;
          v82 = v68;
          outlined destroy of Interpreter.Storage.Types(&v79);

          if (v38)
          {
            v61 = v51;
            v62 = v52;
            v63 = v50;
            v39 = *(*a2 + 136);
            v41 = v39[1];
            v40 = v39[2];
            v64[0] = *v39;
            v64[1] = v41;
            v64[2] = v40;
            v42 = v39[6];
            v44 = v39[3];
            v43 = v39[4];
            v64[5] = v39[5];
            v64[6] = v42;
            v64[3] = v44;
            v64[4] = v43;
            v45 = v39[5];
            v58 = v39[4];
            v59 = v45;
            v60 = v39[6];
            v46 = v39[1];
            v54 = *v39;
            v55 = v46;
            v47 = v39[3];
            v56 = v39[2];
            v57 = v47;

            outlined init with copy of Interpreter.Storage.Types(v64, &v65);
            PType.Pattern.match(type:within:)(v22, &v54);
            v49 = v48;
            v69 = v58;
            v70 = v59;
            v71 = v60;
            v65 = v54;
            v66 = v55;
            v67 = v56;
            v68 = v57;
            outlined destroy of Interpreter.Storage.Types(&v65);

            return v49 & 1;
          }
        }

LABEL_16:
        v49 = 0;
        return v49 & 1;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

unsigned int *Snapshot.subscript.modify(unsigned int **a1, unsigned int a2)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  v6 = result;
  *a1 = result;
  if (*(*v2 + 44) <= a2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(*v2 + 32);
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7 + (a2 << 7);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = *(v8 + 25);
  v15 = v8 + 28;
  v13 = *(v8 + 28);
  v14 = *(v15 + 4);
  v16 = v12 == 0;
  v17 = 256;
  if (v16)
  {
    v17 = 0;
  }

  v18 = v17 | (v13 << 32);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v9, v10, v18 | v11, v14);
  if (result || (result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v9, v10, v18 | v11, v14, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm)) != 0)
  {
    v6[4] = Snapshot.subscript.modify(v6, *result);
    return UnsafeTree.storage.modify;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t Event.hasAttributeRef.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v10 = *(v0 + 24);
  v4 = 256;
  if (!*(v0 + 25))
  {
    v4 = 0;
  }

  v5 = v4 | (*(v0 + 28) << 32);
  v6 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v1, v2, v5 | v10, v3);
  if (v6 || (v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v5 | v10, v3, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm)) != 0)
  {
    v7 = 0;
    v8 = *v6;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  return v8 | (v7 << 32);
}

_DWORD *Snapshot.subscript.setter(_DWORD *result, unsigned int a2)
{
  v3 = *v2;
  if (*(*v2 + 44) <= a2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(v3 + 32);
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  v6 = v4 + (a2 << 7);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 25);
  v13 = v6 + 28;
  v11 = *(v6 + 28);
  v12 = *(v13 + 4);
  v14 = v10 == 0;
  v15 = 256;
  if (v14)
  {
    v15 = 0;
  }

  v16 = v15 | (v11 << 32);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v7, v8, v16 | v9, v12);
  if (!result)
  {
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v7, v8, v16 | v9, v12, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    if (!result)
    {
      goto LABEL_17;
    }
  }

  v17 = *result;
  if (*result >= *(v3 + 84))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = *(v3 + 72);
  if (!v18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  return outlined assign with take of Attribute(v5, v18 + 312 * v17);
}

uint64_t (*Snapshot.subscript.modify(uint64_t (**a1)(), unsigned int a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xA8uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *v2;
  if (*(*v2 + 44) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = (v8 + (a2 << 7));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  *(result + 2) = v9[2];
  *(result + 3) = v12;
  *result = v10;
  *(result + 1) = v11;
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[7];
  *(result + 6) = v9[6];
  *(result + 7) = v15;
  *(result + 4) = v13;
  *(result + 5) = v14;
  result = Event.hasTree(within:)(v7);
  if ((v16 & 1) == 0)
  {
    *(v6 + 20) = Snapshot.subscript.modify(v6 + 16, result, v7);
    return Snapshot.subscript.modify;
  }

LABEL_10:
  __break(1u);
  return result;
}

void Snapshot.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 160))();

  free(v1);
}

unint64_t Snapshot.subscript.setter(unint64_t result, unsigned int a2)
{
  v5 = *v3;
  if (*(*v3 + 44) <= a2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!*(v5 + 32))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = result;
  result = Event.hasTree(within:)(v5);
  if (v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  LODWORD(v3) = result;
  if (HIDWORD(result) >= *(v5 + 124))
  {
    goto LABEL_11;
  }

  v7 = *(v5 + 112);
  if (v7)
  {
    v4 = (v7 + 168 * HIDWORD(result));
    v5 = *v4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if (result)
    {
      if ((v3 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v4 = result;
    if ((v3 & 0x80000000) == 0)
    {
LABEL_8:
      if (v3 < *(v5 + 16))
      {
        v8 = v2[11];
        v9 = (v5 + 208 * v3);
        v9[12] = v2[10];
        v9[13] = v8;
        v9[14] = v2[12];
        v10 = v2[7];
        v9[8] = v2[6];
        v9[9] = v10;
        v11 = v2[9];
        v9[10] = v2[8];
        v9[11] = v11;
        v12 = v2[3];
        v9[4] = v2[2];
        v9[5] = v12;
        v13 = v2[5];
        v9[6] = v2[4];
        v9[7] = v13;
        v14 = v2[1];
        v9[2] = *v2;
        v9[3] = v14;
        return result;
      }

      goto LABEL_14;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Snapshot.reset()()
{
  v1 = *v0;
  v2 = *(*v0 + 84);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 312 * v2;
    while (v4 < *(v1 + 84))
    {
      v6 = *(v1 + 72);
      if (!v6)
      {
        goto LABEL_76;
      }

      v7 = v6 + v3;
      *(v7 + 36) = 0;
      *(v7 + 240) = 0;
      *(v7 + 248) = 0;
      *(v7 + 232) = 0;
      *(v7 + 40) = 1;
      *(v7 + 288) = 0;
      *(v7 + 296) = 0;
      *(v7 + 304) = 1;
      if (*(v6 + v3 + 12) && !*v7)
      {
        goto LABEL_79;
      }

      *(v7 + 12) = 0;
      if (*(v7 + 28) && !*(v6 + v3 + 16))
      {
        goto LABEL_78;
      }

      *(v7 + 28) = 0;
      v8 = v6 + v3;
      v9 = v6 + v3 + 200;
      if (*v9)
      {
        MEMORY[0x26D69EAB0](*v9, -1, -1);
      }

      *(v8 + 184) = -1;
      *(v8 + 192) = 0;
      *(v8 + 196) = 1;
      ++v4;
      *v9 = 0;
      *(v9 + 8) = 0;
      v3 += 312;
      *(v9 + 16) = 0;
      if (v5 == v3)
      {
        goto LABEL_12;
      }
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_12:
  v43 = *(v1 + 124);
  if (v43)
  {
    v10 = 0;
    while (v10 < *(v1 + 124))
    {
      v11 = *(v1 + 112);
      if (!v11)
      {
        goto LABEL_77;
      }

      v12 = v11 + 168 * v10;
      *(v12 + 124) = 0;
      *(v12 + 128) = 1;
      *(v12 + 132) = 0;
      *(v12 + 136) = 1;
      v13 = *v12;
      v14 = *(*v12 + 16);
      if (v14)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v12 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        }

        *v12 = v13;
        if (!*(v13 + 2))
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v16 = 0;
        v17 = v14 - 1;
        v18 = 232;
        while (1)
        {
          v19 = *&v13[v18];
          if (!v19)
          {
            v45 = 0;
            v46 = 1;
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v50 = 0;
            v51 = 513;
            _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA4TreeV5CacheV_Tt0B5(&v45);
            *&v13[v18] = v19;
          }

          *v19 = 0;
          *(v19 + 4) = 1;
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *(v19 + 18) = 1;
          *(v19 + 33) = 2;
          if (v17 == v16)
          {
            break;
          }

          v13 = *v12;
          v18 += 208;
          if (++v16 >= *(*v12 + 16))
          {
            goto LABEL_66;
          }
        }
      }

      if (++v10 == v43)
      {
        goto LABEL_27;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

LABEL_27:
  v20 = *(v1 + 44);
  if (v20)
  {
    v21 = 0;
    v44 = *(v1 + 44);
    while (v21 < *(v1 + 44))
    {
      v22 = *(v1 + 32);
      if (!v22)
      {
        goto LABEL_80;
      }

      v23 = v22 + (v21 << 7);
      if ((*(v23 + 24) & 1) == 0)
      {
        v24 = *(v23 + 8);
        if ((*(v23 + 25) & 1) == 0)
        {
          v26 = 0;
          v27 = 0;
          v28 = *(v23 + 32);
          v29 = *(v23 + 16) - v24;
          while (1)
          {
            v30 = v27;
            if (v27 >= v28)
            {
              break;
            }

            if (!v24)
            {
              goto LABEL_75;
            }

            if (v29 < v26)
            {
              goto LABEL_68;
            }

            projectDeinit #1 <A>(_:) in HeterogeneousBuffer.deallocate()(*(v24 + v26), v23 + 8, *(v24 + v26));
            v31 = specialized HeterogeneousBuffer.stride<A>(of:)(*(v24 + v26));
            v32 = __OFADD__(v31, v26);
            v26 += v31;
            if (v32)
            {
              goto LABEL_69;
            }

            if (v26 > 0xFFFFFFFFLL)
            {
              goto LABEL_70;
            }

            v27 = v30 + 1;
            if (v26 < 0)
            {
              __break(1u);
              goto LABEL_46;
            }
          }
        }

        v20 = v44;
        if (v24)
        {
          MEMORY[0x26D69EAB0](v24, -1, -1);
        }
      }

      v25 = *(v23 + 112);
      if (v25)
      {
        MEMORY[0x26D69EAB0](v25, -1, -1);
        *(v23 + 112) = 0;
      }

      if (++v21 == v20)
      {
LABEL_46:
        if (*(v1 + 44) && !*(v1 + 32))
        {
          goto LABEL_84;
        }

        goto LABEL_48;
      }
    }

    goto LABEL_73;
  }

LABEL_48:
  *(v1 + 44) = 0;
  if (*(v1 + 188))
  {
    if (!*(v1 + 176))
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    swift_arrayDestroy();
  }

  *(v1 + 188) = 0;
  if (!*(v1 + 108) || *(v1 + 96))
  {
    *(v1 + 108) = 0;
    v33 = *(v1 + 124);
    if (!v33)
    {
      return;
    }

    v34 = 0;
    while (v34 < *(v1 + 124))
    {
      v35 = *(v1 + 112);
      if (!v35)
      {
        goto LABEL_81;
      }

      v36 = (v35 + 168 * v34);
      v37 = *v36;
      v38 = *(*v36 + 2);
      if (v38)
      {
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *v36 = v37;
        if ((v39 & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
        }

        v40 = 0;
        v41 = 0;
        *v36 = v37;
        do
        {
          *v36 = v37;
          if (v41 >= *(v37 + 2))
          {
            goto LABEL_67;
          }

          ++v41;
          v42 = &v37[v40];
          *(v42 + 8) = 0;
          *(v42 + 5) = 0;
          *(v42 + 6) = 0;
          *(v42 + 4) = 0;
          v37 = *v36;
          v40 += 208;
        }

        while (v38 != v41);
      }

      if (++v34 == v33)
      {
        return;
      }
    }

    goto LABEL_74;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

Swift::Void __swiftcall Attribute.Value.deallocate()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 16) = 0;
  }
}

void *Attribute.Value.init(setAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9AttributeV5ValueV5FieldV_SayALGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = 1;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 28) = v6;
  return result;
}

void Tree.Cache.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 513;
}

uint64_t Snapshot.subscript.getter(uint64_t result, uint64_t a2)
{
  if (*(a2 + 84) <= result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 72);
    if (v3)
    {
      memcpy(__dst, (v3 + 312 * result), 0x131uLL);
      outlined init with copy of Attribute(__dst, &v5);
      v4 = Attribute.displayName(within:context:)(a2);
      outlined destroy of Attribute(__dst);
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t Attribute.displayName(within:context:)(uint64_t a1)
{
  result = Attribute.indirectSource(within:)(a1);
  if (result >= *(a1 + 84))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3 + 312 * result;
  if ((*(v4 + 101) & 1) == 0)
  {
    v5 = *(v4 + 96);
    v7 = Interpreter.Storage.Types.subscript.getter(*(v4 + 92));
    MEMORY[0x26D69CDB0](2109216, 0xE300000000000000);
    v6 = Interpreter.Storage.Types.subscript.getter(v5);
    MEMORY[0x26D69CDB0](v6);

    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Tree.describe(state:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v65 = *(a1 + 16);
  v5 = a1[3];
  v4 = a1[4];
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = *v1;
  v9 = v1[2];
  v150 = v1[1];
  v151 = v9;
  v149 = v8;
  v10 = *(v1 + 6);
  v148 = *(v1 + 56);
  v11 = *(v1 + 57);
  *(v147 + 15) = *(v1 + 72);
  v147[0] = v11;
  v71 = *(v1 + 22);
  v68 = v7;
  v69 = *(v1 + 92);
  v12 = *(v1 + 93);
  *(v146 + 7) = *(v1 + 25);
  v146[0] = v12;
  v13 = *(v1 + 13);
  v74 = v10;
  v75 = *(v1 + 28);
  v14 = *(v1 + 116);
  v15 = *(v1 + 117);
  *(v145 + 15) = *(v1 + 33);
  v145[0] = v15;
  v76 = *(v1 + 17);
  v144 = *(v1 + 144);
  LODWORD(v12) = *(v1 + 145);
  *(v143 + 3) = *(v1 + 37);
  v143[0] = v12;
  v72 = *(v1 + 19);
  v73 = *(v1 + 20);
  v70 = *(v1 + 21);
  v142 = *(v1 + 176);
  v16 = *(v1 + 177);
  *(v141 + 15) = v1[12];
  v141[0] = v16;
  v17 = v13;
  v18 = v13 == 0;
  *&v80 = 0;
  *(&v80 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v90 = 0x206565725428;
  v91 = 0xE600000000000000;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v64 = v14 | v18;
  v60 = v3 - 1;
  v134 = v3 - 1;
  v135 = v2;
  v136 = 2;
  v137 = v5;
  v138 = v4;
  v139 = v6;
  v140 = v68;
  v20 = specialized InspectionState.wrapDescription<A>(_:)(v17);
  MEMORY[0x26D69CDB0](v20);

  MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
  v127 = v3;
  v128 = v2;
  v129 = 2;
  v130 = v5;
  v131 = v4;
  v132 = v6;
  v133 = v68;
  v21 = specialized InspectionState.describe<A>(_:_:)(0x746E65726170, 0xE600000000000000, v74, v148);
  MEMORY[0x26D69CDB0](v21);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v120 = v3;
  v121 = v2;
  v122 = 2;
  v67 = v3;
  v123 = v5;
  v124 = v4;
  v125 = v6;
  v126 = v68;
  v77 = Inspectable_Context.snapshot.getter();
  v80 = v149;
  v81 = v150;
  v82 = v151;
  *v83 = v74;
  v83[8] = v148;
  *&v83[9] = v147[0];
  *&v83[24] = *(v147 + 15);
  *&v83[40] = v71;
  v83[44] = v69;
  *&v83[45] = v146[0];
  *&v83[52] = *(v146 + 7);
  *&v83[56] = v17;
  *v84 = v75;
  v66 = v14;
  v84[4] = v14;
  *&v84[20] = *(v145 + 15);
  *&v84[5] = v145[0];
  *&v84[24] = v76;
  LOBYTE(v85) = v144;
  DWORD1(v85) = *(v143 + 3);
  *(&v85 + 1) = v143[0];
  *(&v85 + 1) = v72;
  v86 = v73;
  v87 = v70;
  v88 = v142;
  *&v89[15] = *(v141 + 15);
  *v89 = v141[0];
  v22 = specialized Tree.parent(_:within:unabstracting:)(16, &v77);
  v24 = specialized InspectionState.describe<A>(_:_:)(0x746E65726170, 0xE600000000000000, v22, v23 & 1);
  MEMORY[0x26D69CDB0](v24);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v25 = v72;
  if (v72)
  {
    *&v80 = v72;
    swift_getMetatypeMetadata();
    v25 = String.init<A>(describing:)();
    v27 = v26;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v25, v27);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v113 = v67;
  v114 = v2;
  v115 = 2;
  v116 = v5;
  v117 = v4;
  v118 = v6;
  v119 = v68;
  v28 = specialized InspectionState.describe<A>(_:_:)(0x7463617274736261, 0xE800000000000000, v76, v144);
  MEMORY[0x26D69CDB0](v28);

  v106 = v67;
  v107 = v2;
  v108 = 2;
  v109 = v5;
  v110 = v4;
  v111 = v6;
  v112 = v68;
  v29 = specialized InspectionState.describe<A>(_:_:)(0x656372756F73, 0xE600000000000000, v70, v142);
  MEMORY[0x26D69CDB0](v29);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v80 = v149;
  v81 = v150;
  v82 = v151;
  *v83 = v74;
  v63 = v148;
  v83[8] = v148;
  *&v83[9] = v147[0];
  *&v83[24] = *(v147 + 15);
  *&v83[40] = v71;
  v83[44] = v69;
  *&v83[45] = v146[0];
  *&v83[52] = *(v146 + 7);
  *&v83[56] = v17;
  *v84 = v75;
  v84[4] = v14;
  *&v84[5] = v145[0];
  *&v84[20] = *(v145 + 15);
  *&v84[24] = v76;
  v62 = v144;
  LOBYTE(v85) = v144;
  *(&v85 + 1) = v143[0];
  DWORD1(v85) = *(v143 + 3);
  *(&v85 + 1) = v72;
  v86 = v73;
  v87 = v70;
  v61 = v142;
  v88 = v142;
  *&v89[15] = *(v141 + 15);
  *v89 = v141[0];
  v77 = v4;
  v78 = v6;
  v79 = v68;
  v30 = Inspectable_Context.snapshot.getter();
  v31 = Tree.hasOwnAttributes(within:)(v30);
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = 0x7974706D65;
  }

  if (v32)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v33, v34);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (v64)
  {
    v35 = 0;
  }

  else
  {
    v35 = 1717658988;
  }

  if (v64)
  {
    v36 = 0xE000000000000000;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  MEMORY[0x26D69CDB0](v35, v36);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (v69)
  {
    v37 = 0x6465686361747461;
  }

  else
  {
    v37 = 0;
  }

  if (v69)
  {
    v38 = 0xE800000000000000;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v37, v38);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v99 = v67;
  v100 = 0x7FFFFFFFFFFFFFFFLL;
  v101 = v65;
  v102 = v5;
  v103 = v4;
  v104 = v6;
  v105 = v68;
  *&v80 = v4;
  BYTE8(v80) = v6;
  BYTE9(v80) = v68;
  v77 = Inspectable_Context.snapshot.getter();
  v80 = v149;
  v81 = v150;
  v82 = v151;
  *v83 = v74;
  v83[8] = v63;
  *&v83[9] = v147[0];
  *&v83[24] = *(v147 + 15);
  *&v83[40] = v71;
  v83[44] = v69;
  *&v83[45] = v146[0];
  *&v83[52] = *(v146 + 7);
  *&v83[56] = v17;
  *v84 = v75;
  v84[4] = v14;
  *&v84[20] = *(v145 + 15);
  *&v84[5] = v145[0];
  *&v84[24] = v76;
  LOBYTE(v85) = v62;
  DWORD1(v85) = *(v143 + 3);
  *(&v85 + 1) = v143[0];
  *(&v85 + 1) = v72;
  v86 = v73;
  v87 = v70;
  v88 = v61;
  *&v89[15] = *(v141 + 15);
  *v89 = v141[0];
  v41 = Tree._childNodes(_:within:during:unabstracting:)(4u, &v77, v39, v40, MEMORY[0x277D84FA0]);
  v42 = specialized InspectionState.describe<A>(_:_:)(0x6E6572646C696863, 0xE800000000000000, v41);
  v44 = v43;

  MEMORY[0x26D69CDB0](v42, v44);

  MEMORY[0x26D69CDB0](10, 0xE100000000000000);
  if (v71 != -1)
  {
    *&v80 = v60;
    *(&v80 + 1) = v2;
    LOBYTE(v81) = v65;
    *(&v81 + 1) = v5;
    *&v82 = v4;
    BYTE8(v82) = v6;
    BYTE9(v82) = v68;
    v45 = specialized InspectionState.wrapDescription<A>(_:)(v71);
    v47 = v46;
LABEL_29:
    MEMORY[0x26D69CDB0](v45, v47);

    MEMORY[0x26D69CDB0](2695209, 0xE300000000000000);
    return v90;
  }

  *&v80 = v4;
  BYTE8(v80) = v6;
  BYTE9(v80) = v68;
  result = Inspectable_Context.snapshot.getter();
  if (v66)
  {
    goto LABEL_32;
  }

  if (v75 >= *(result + 124))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v48 = *(result + 112);
  if (v48)
  {
    v49 = (v48 + 168 * v75);
    v50 = *v49;
    v51 = v49[2];
    v81 = v49[1];
    v82 = v51;
    v80 = v50;
    v52 = v49[3];
    v53 = v49[4];
    v54 = v49[6];
    *&v83[32] = v49[5];
    *&v83[48] = v54;
    *v83 = v52;
    *&v83[16] = v53;
    v55 = v49[7];
    v56 = v49[8];
    v57 = v49[9];
    v86 = *(v49 + 20);
    *&v84[16] = v56;
    v85 = v57;
    *v84 = v55;
    v92 = v60;
    v93 = v2;
    v94 = v65;
    v95 = v5;
    v96 = v4;
    v97 = v6;
    v98 = v68;
    outlined init with copy of Subgraph(&v80, &v77);
    v58 = specialized InspectionState.wrapDescription<A>(_:)();
    v47 = v59;
    outlined destroy of Subgraph(&v80);
    v45 = v58;
    goto LABEL_29;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t Tree.parent.setter(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) != 0 || (a2 & 1) != 0 || *(v2 + 48) == result)
  {
    *(v2 + 48) = result;
    *(v2 + 56) = a2 & 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26C328DC0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
    _print_unlocked<A, B>(_:_:)();
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;

    print(_:separator:terminator:)();

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Tree.parent.willset(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0 && (a2 & 1) == 0 && *(v2 + 48) != result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26C328DC0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
    _print_unlocked<A, B>(_:_:)();
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;

    print(_:separator:terminator:)();

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void (*Tree.parent.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  v4 = *(v1 + 48);
  *(v3 + 56) = v4;
  v5 = *(v1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 25) = v5;
  *(v3 + 24) = v5;
  return Tree.parent.modify;
}

void Tree.parent.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = v2[6];
    Tree.parent.willset(*(*a1 + 16), v4);
  }

  else
  {
    if (((*(v2 + 25) | v4) & 1) == 0)
    {
      v6 = v2[7];
      if (v6 != v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_26C328DC0;
        *v2 = 0;
        v2[1] = 0xE000000000000000;
        v2[4] = v6;
        *(v2 + 40) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
        v2[4] = v3;
        *(v2 + 40) = 0;
        _print_unlocked<A, B>(_:_:)();
        v9 = *v2;
        v8 = v2[1];
        *(v7 + 56) = MEMORY[0x277D837D0];
        *(v7 + 32) = v9;
        *(v7 + 40) = v8;

        print(_:separator:terminator:)();

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }
    }

    v5 = v2[6];
  }

  *(v5 + 48) = v3;
  *(v5 + 56) = v4;

  free(v2);
}

uint64_t Tree.children.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Tree.bodyAttribute.setter(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 84) = BYTE4(result) & 1;
  return result;
}

uint64_t Tree.subgraph.setter(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 116) = BYTE4(result) & 1;
  return result;
}

uint64_t Tree.values.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2;
  return result;
}

void Tree.viewValue.getter(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 132) + 1;
  v4 = v2 - 40;
  do
  {
    if (!--v3)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[3] = 0;
      a1[4] = 0;
      a1[2] = 1;
      return;
    }

    if (!v2)
    {
      __break(1u);
      return;
    }

    v5 = (v4 + 40);
    v6 = *(v4 + 76);
    v4 += 40;
  }

  while ((v6 & 0x20) == 0);
  v7 = *v5;
  v9 = *(v5 + 1);
  v8 = *(v5 + 2);
  v10 = v5[6];
  v11 = *(v5 + 28);
  v12 = v5[8];
  v13 = v11 == 0;
  v14 = 0x100000000;
  if (v13)
  {
    v14 = 0;
  }

  *a1 = v7;
  a1[1] = v9;
  a1[2] = v8;
  a1[3] = v14 | v10;
  a1[4] = v12 | (v6 << 32);
}

uint64_t Tree.abstract.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t Tree.abstraction.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2;
  return result;
}

uint64_t Tree.source.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t Tree.hidden.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2;
  return result;
}

uint64_t key path getter for Tree.cache : Tree@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 200);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 4);
    v13 = *(v2 + 5);
    v14 = *(v2 + 7);
    v5 = *(v2 + 1);
    v6 = *(v2 + 8);
    v7 = *(v2 + 18);
    v11 = *(v2 + 19);
    v12 = *(v2 + 23);
    v8 = *(v2 + 3);
    v9 = *(v2 + 32);
    v10 = *(v2 + 33);
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v8 = 0;
    v4 = 1;
    v10 = 2;
    v7 = 1;
    v9 = 1;
  }

  *a2 = v3;
  *(a2 + 4) = v4;
  *(a2 + 5) = v13;
  *(a2 + 7) = v14;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 18) = v7;
  *(a2 + 19) = v11;
  *(a2 + 23) = v12;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 33) = v10;
  return result;
}

void (*Tree.cache.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 200);
  *(v3 + 40) = v4;
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    *(v3 + 32) = *(v4 + 16);
    *v3 = v5;
    *(v3 + 16) = v6;
    return Tree.cache.modify;
  }

  else
  {
    *v3 = 0;
    *(v3 + 4) = 1;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 18) = 1;
    *(v3 + 24) = 0;
    *(v3 + 32) = 513;
    return Snapshot.subscript.read;
  }
}

__n128 Tree.cache.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[5];
  v3 = *(v1 + 16);
  v4 = *(v1 + 1);
  *v2 = *v1;
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  free(v1);
  return result;
}

uint64_t static Tree.Pattern.type(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  v6 = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  result = PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v10);
  v9 = v10;
  *a3 = v6;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Tree.CacheKey()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Tree.CacheKey()
{
  if (*(v0 + 4))
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    v1 = *v0;
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Tree.CacheKey(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Tree.CacheKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  result = *(a2 + 4);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t one-time initialization function for swiftUIPatterns()
{
  result = closure #1 in variable initialization expression of static Tree.Position.swiftUIPatterns();
  static Tree.Position.swiftUIPatterns = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static Tree.Position.swiftUIPatterns()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19NSRegularExpressionC_21SwiftUITracingSupport4TreeV8PositionOtGMd, &_ss23_ContiguousArrayStorageCySo19NSRegularExpressionC_21SwiftUITracingSupport4TreeV8PositionOtGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C32E0A0;
  v1 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 32) = @nonobjc NSRegularExpression.init(pattern:options:)(0x6C616E6F6974704FLL, 0xE800000000000000, 0);
  *(v0 + 40) = 2;
  v2 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 48) = @nonobjc NSRegularExpression.init(pattern:options:)(0x7265696669646F4DLL, 0xE800000000000000, 0);
  *(v0 + 56) = 0;
  v3 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 64) = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000013, 0x800000026C33C390, 0);
  *(v0 + 72) = 2;
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 80) = @nonobjc NSRegularExpression.init(pattern:options:)(0x696461697261565FLL, 0xED00007765695663, 0);
  *(v0 + 88) = 4;
  v5 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 96) = @nonobjc NSRegularExpression.init(pattern:options:)(0x656956656C707554, 0xE900000000000077, 0);
  *(v0 + 104) = 4;
  v6 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 112) = @nonobjc NSRegularExpression.init(pattern:options:)(0x73694C776569565FLL, 0xEE00776569565F74, 0);
  *(v0 + 120) = 4;
  v7 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 128) = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000012, 0x800000026C33C3B0, 0);
  *(v0 + 136) = 4;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 144) = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000013, 0x800000026C33C390, 0);
  *(v0 + 152) = 2;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 160) = @nonobjc NSRegularExpression.init(pattern:options:)(0x72657265646E6552, 0xEE00746365666645, 0);
  *(v0 + 168) = 0;
  v10 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 176) = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000010, 0x800000026C33C3D0, 0);
  *(v0 + 184) = 0;
  v11 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 192) = @nonobjc NSRegularExpression.init(pattern:options:)(0x74756F79614CLL, 0xE600000000000000, 0);
  *(v0 + 200) = 0;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 208) = @nonobjc NSRegularExpression.init(pattern:options:)(0x776569564449, 0xE600000000000000, 0);
  *(v0 + 216) = 0;
  v13 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 224) = @nonobjc NSRegularExpression.init(pattern:options:)(0x5A2D417A2D615B5FLL, 0xE90000000000005DLL, 0);
  *(v0 + 232) = 1;
  return v0;
}

void Tree.Position.init(matching:within:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v5 = *(a1 + 88);
  if (*(a1 + 116) == 1 && *(a1 + 104) != 0 && v5 != -1)
  {
    v9 = a2[4];
    if (*(v9 + 16) <= v5)
    {
LABEL_54:
      __break(1u);
    }

    else
    {
      v10 = *(a2 + 3);
      v11 = v9 + 32;
      v12 = *(v9 + 32 + 4 * v5);
      if (v12 < v10)
      {
        v13 = *a2;
        if (*a2)
        {
          v14 = (v13 + 120 * v12);
          if (*(v14 + 32) != 1)
          {
            i = 5;
            goto LABEL_45;
          }

          v40 = *a2;
          v41 = a2[4];
          v37 = a3;
          v38 = v9 + 32;
          v39 = *(a2 + 3);
          v4 = *v14;
          v3 = v14[1];
          v15 = v14[8];
          v16 = *(a2 + 10);
          v17 = a2[8];

          v18 = v17(v16, v15);
          v20 = v19;

          v21 = v18 == 0x49557466697753 && v20 == 0xE700000000000000;
          if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v18 == 0xD000000000000012 ? (v22 = 0x800000026C33B970 == v20) : (v22 = 0), v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v18 == 0x7475626972747441 ? (v23 = v20 == 0xEE00687061724765) : (v23 = 0), v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v18 == 0x4349557466697753 ? (v24 = v20 == 0xEB0000000065726FLL) : (v24 = 0), v24))))
          {
          }

          else
          {
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v25 & 1) == 0)
            {
              for (i = 5; ; i = 1)
              {

                a3 = v37;
                v11 = v38;
                v13 = v40;
                v9 = v41;
                v10 = v39;
LABEL_45:
                if (*(v9 + 16) <= v5)
                {
LABEL_56:
                  __break(1u);
                }

                else
                {
                  v33 = *(v11 + 4 * v5);
                  if (v33 < v10)
                  {
                    v34 = v13 + 120 * v33;
                    if (*(v34 + 117) == 6)
                    {
                      *(v34 + 117) = 7;
                    }

                    goto LABEL_52;
                  }
                }

                __break(1u);
LABEL_58:
                swift_once();
LABEL_38:
                v26 = static Tree.Position.swiftUIPatterns;
                v27 = *(static Tree.Position.swiftUIPatterns + 16);
                if (v27)
                {
                  break;
                }

LABEL_43:
                v5 = v36;
              }

              v28 = 0;
              v29 = (static Tree.Position.swiftUIPatterns + 40);
              while (1)
              {
                if (v28 >= *(v26 + 16))
                {
                  __break(1u);
                  goto LABEL_54;
                }

                i = *v29;
                v30 = *(v29 - 1);
                v31 = MEMORY[0x26D69CC20](v4, v3);
                v32 = [v30 firstMatchInString:v31 options:0 range:{0, String.count.getter()}];

                if (v32)
                {
                  break;
                }

                ++v28;
                v29 += 16;
                if (v27 == v28)
                {
                  goto LABEL_43;
                }
              }

              if (*(v41 + 16) <= v36)
              {
                __break(1u);
              }

              else
              {
                v35 = *(v38 + 4 * v36);
                if (v35 < v39)
                {
                  *(v40 + 120 * v35 + 117) = i;

                  a3 = v37;
                  goto LABEL_52;
                }
              }

              __break(1u);
              goto LABEL_61;
            }
          }

          v36 = v5;
          if (one-time initialization token for swiftUIPatterns != -1)
          {
            goto LABEL_58;
          }

          goto LABEL_38;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  i = 3;
LABEL_52:
  *a3 = i;
}

unint64_t Tree.bodyAttribute(within:)(unint64_t result)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 184);
  if (!*(v1 + 196))
  {
LABEL_4:
    if (HIDWORD(v2) < *(result + 124))
    {
      v4 = *(result + 112);
      if (!v4)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if ((v2 & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      v5 = *(v4 + 168 * HIDWORD(v2));
      if (v2 >= *(v5 + 16))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v6 = v5 + 208 * v2;
      v7 = *(v6 + 152);
      v8 = *(v6 + 164);
      if (!v8)
      {
LABEL_23:
        v9 = 0;
        v15 = 1;
        return v9 | (v15 << 32);
      }

      if (!v7)
      {
        goto LABEL_32;
      }

      if ((v7[9] & 1) == 0)
      {
LABEL_14:
        v11 = v7 + 19;
        for (i = 1; v8 != i; ++i)
        {
          if (i >= v8)
          {
            __break(1u);
            goto LABEL_27;
          }

          if (*v11)
          {
            v13 = *(v11 - 9);
            if (v13 >= *(result + 84))
            {
              goto LABEL_27;
            }

            v14 = *(result + 72);
            if (!v14)
            {
              goto LABEL_31;
            }

            if ((*(v14 + 312 * v13 + 220) & 2) != 0)
            {
              v15 = 0;
              v9 = *(v11 - 9);
              return v9 | (v15 << 32);
            }
          }

          v11 += 40;
        }

        goto LABEL_23;
      }

      v9 = *v7;
      if (*v7 < *(result + 84))
      {
        v10 = *(result + 72);
        if (v10)
        {
          if ((*(v10 + 312 * v9 + 220) & 2) != 0)
          {
            v15 = 0;
            return v9 | (v15 << 32);
          }

          goto LABEL_14;
        }

        goto LABEL_31;
      }

LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v3)
  {
    v2 = *v3;
    goto LABEL_4;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t Tree.summarizedSelfWeight(within:)(uint64_t a1)
{
  v3 = 0;
  result = 0;
  v5 = *v1;
  v6 = v1[8];
  v7 = *(v1 + 19);
  while (v7 != v3)
  {
    if (v3 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (!v6)
    {
      goto LABEL_20;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 8 * v3);
    if (HIDWORD(v9) >= *(a1 + 124))
    {
      goto LABEL_16;
    }

    v10 = *(a1 + 112);
    if (!v10)
    {
      goto LABEL_21;
    }

    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v11 = *(v10 + 168 * HIDWORD(v9));
    if (v9 >= *(v11 + 16))
    {
      goto LABEL_18;
    }

    ++v3;
    if (*(v11 + 32 + 208 * v9 + 117) != 5)
    {
      result = Tree.summarizedSelfWeight(within:)(a1);
      v3 = v8;
    }
  }

  v12 = __OFADD__(result, v5);
  result += v5;
  if (!v12)
  {
    return result;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t Tree.viewBody(within:)()
{
  if (!*(v0 + 76))
  {
    return 0;
  }

  v1 = *(v0 + 64);
  if (v1)
  {
    return *v1;
  }

  __break(1u);
  return result;
}

void *Tree.ValueIterator.next()@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(result + 10);
  if (*(v4 + 24))
  {
    v5 = result[2];
    v6 = result[3];
    v7 = dispatch thunk of IteratorProtocol.next()();
    MEMORY[0x28223BE20](v7);
    v19[2] = v5;
    v19[3] = v6;
    v19[4] = v2;
    result = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF21SwiftUITracingSupport7TreeRefV_s5NeverOs16IndexingIteratorVyAD11UnsafeArrayVyAD0F5ValueVGGTg5(partial apply for closure #1 in Tree.ValueIterator.next(), v19, v8, v9);
    *v4 = result;
    *(v4 + 8) = v10;
    *(v4 + 16) = v11;
    *(v4 + 24) = v12 & 1;
    if (v12)
    {
LABEL_6:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 1;
      return result;
    }

    v13 = HIDWORD(v10);
  }

  else
  {
    LODWORD(v13) = *(v4 + 12);
    v11 = *(v4 + 16);
  }

  if (v11 == v13)
  {
    goto LABEL_6;
  }

  if (v11 >= v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!*v4)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = *v4 + 40 * v11;
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  v17 = *(v14 + 24);
  v18 = *(v14 + 28);
  *a2 = *v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 28) = v18;
  *(a2 + 32) = *(v14 + 32);
  *(v4 + 16) = v11 + 1;
}

uint64_t closure #1 in Tree.ValueIterator.next()@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  result = type metadata accessor for Tree.ValueIterator(0, a3, a4, a4);
  v9 = *(a2 + *(result + 36));
  if (HIDWORD(v7) >= *(v9 + 124))
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(v9 + 112);
  if (v10)
  {
    if ((v7 & 0x80000000) == 0)
    {
      v11 = *(v10 + 168 * HIDWORD(v7));
      if (v7 < *(v11 + 16))
      {
        v12 = v11 + 208 * v7;
        *a5 = *(v12 + 152);
        a5[1] = *(v12 + 160);
        a5[2] = 0;
        return result;
      }

      goto LABEL_8;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Tree.AttributeIterator.next()@<X0>(void *a2@<X8>)
{
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    result = v6;
    v4 = v8;
    v5 = v9;
    if (v8 == 1)
    {
      v4 = 1;
      goto LABEL_6;
    }

    if ((v10 & 0x100000000) != 0)
    {
      break;
    }

    outlined consume of TreeValue?(v6, v7, v8);
  }

  result = v6;
  v5 = v9 & 0x1FFFFFFFFLL;
LABEL_6:
  *a2 = result;
  a2[1] = v7;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v10;
  return result;
}

uint64_t Tree.attributes(within:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 104);
  v4 = *(v2 + 184);
  v5 = *(v2 + 192);
  v6 = *(v2 + 196);
  if (v6)
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v6 != 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 28) = v6;
  *(a2 + 32) = 0;
  *(a2 + 40) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 72) = 1;
  return result;
}

BOOL _s21SwiftUITracingSupport5PTypeV6ParserV5FlagsVs10SetAlgebraAAsAHP6insertySb8inserted_7ElementQz17memberAfterInserttAMnFTW_0(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *_s21SwiftUITracingSupport5PTypeV6ParserV5FlagsVs10SetAlgebraAAsAHP6removey7ElementQzSgALFTW_0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *_s21SwiftUITracingSupport5PTypeV6ParserV5FlagsVs10SetAlgebraAAsAHP6update4with7ElementQzSgAMn_tFTW_0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

void *Tree._childNodes(_:within:during:unabstracting:)(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = *(v5 + 64);
  v9 = *(v5 + 76);
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v9 == v7)
    {
      if ((a1 & 4) != 0)
      {
        return v11;
      }

      v86 = v10;
      v19 = v11[2];
      if (v19)
      {
        v20 = 0;
        v8 = v11 + 4;
        while (v20 < v11[2])
        {
          v22 = v8[v20];
          v23 = *a2;
          if (HIDWORD(v22) >= *(*a2 + 124))
          {
            goto LABEL_64;
          }

          v24 = *(v23 + 112);
          if (!v24)
          {
            goto LABEL_77;
          }

          if ((v22 & 0x80000000) != 0)
          {
            goto LABEL_65;
          }

          v25 = *(v24 + 168 * HIDWORD(v22));
          if (v22 >= *(v25 + 16))
          {
            goto LABEL_66;
          }

          v26 = (v25 + 208 * v22);
          v27 = v26[13];
          v83 = v26[12];
          v84 = v27;
          v85 = v26[14];
          v28 = v26[9];
          v79 = v26[8];
          v80 = v28;
          v29 = v26[11];
          v81 = v26[10];
          v82 = v29;
          v30 = v26[5];
          v75 = v26[4];
          v76 = v30;
          v31 = v26[7];
          v77 = v26[6];
          v78 = v31;
          v32 = v26[3];
          v73 = v26[2];
          v74 = v32;
          if (Tree.hasOwnAttributes(within:)(v23))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMR);
            v21 = swift_allocObject();
            *(v21 + 16) = xmmword_26C328DC0;
            *(v21 + 32) = v22;
          }

          else
          {
            if (HIDWORD(v22) >= *(v23 + 124))
            {
              goto LABEL_67;
            }

            v35 = *(v23 + 112);
            if (!v35)
            {
              goto LABEL_78;
            }

            v36 = *(v35 + 168 * HIDWORD(v22));
            if (v22 >= *(v36 + 16))
            {
              goto LABEL_68;
            }

            v37 = (v36 + 208 * v22);
            v38 = v37[13];
            v83 = v37[12];
            v84 = v38;
            v85 = v37[14];
            v39 = v37[9];
            v79 = v37[8];
            v80 = v39;
            v40 = v37[11];
            v81 = v37[10];
            v82 = v40;
            v41 = v37[5];
            v75 = v37[4];
            v76 = v41;
            v42 = v37[7];
            v77 = v37[6];
            v78 = v42;
            v43 = v37[3];
            v73 = v37[2];
            v74 = v43;
            v72 = v23;
            v21 = Tree._childNodes(_:within:during:unabstracting:)(a1, &v72, v33, v34, a5);
          }

          ++v20;
          specialized Array.append<A>(contentsOf:)(v21);
          if (v19 == v20)
          {
            v10 = v86;
            goto LABEL_32;
          }
        }

        goto LABEL_63;
      }

LABEL_32:

      if ((a1 & 0x10) != 0)
      {
        v44 = *(v10 + 2);
        if (v44)
        {
          v45 = 0;
          v46 = a5 + 56;
          while (v45 < *(v10 + 2))
          {
            v47 = v10 + 32;
            v8 = a5;
            if (*(a5 + 16) && (v48 = *&v47[8 * v45], Hasher.init(_seed:)(), MEMORY[0x26D69DC00](v48), v49 = Hasher._finalize()(), v50 = -1 << *(a5 + 32), v51 = v49 & ~v50, ((*(v46 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0))
            {
              v52 = ~v50;
              while (*(*(a5 + 48) + 8 * v51) != v48)
              {
                v51 = (v51 + 1) & v52;
                if (((*(v46 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
                {
                  goto LABEL_43;
                }
              }
            }

            else
            {
LABEL_43:
              if (v45 >= *(v10 + 2))
              {
                goto LABEL_70;
              }

              v53 = *&v47[8 * v45];
              if (HIDWORD(v53) >= *(*a2 + 124))
              {
                goto LABEL_71;
              }

              v54 = *(*a2 + 112);
              if (!v54)
              {
                goto LABEL_79;
              }

              if ((v53 & 0x80000000) != 0)
              {
                goto LABEL_72;
              }

              v55 = *(v54 + 168 * HIDWORD(v53));
              if (v53 >= *(v55 + 16))
              {
                goto LABEL_73;
              }

              v56 = (v55 + 208 * v53);
              v57 = v56[13];
              v83 = v56[12];
              v84 = v57;
              v85 = v56[14];
              v58 = v56[9];
              v79 = v56[8];
              v80 = v58;
              v59 = v56[11];
              v81 = v56[10];
              v82 = v59;
              v60 = v56[5];
              v75 = v56[4];
              v76 = v60;
              v61 = v56[7];
              v77 = v56[6];
              v78 = v61;
              v62 = v56[3];
              v73 = v56[2];
              v74 = v62;
              v63 = Tree.resolvedSelf(within:)(a2);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
              }

              if (v45 >= *(v10 + 2))
              {
                goto LABEL_74;
              }

              *&v10[8 * v45 + 32] = v63;
            }

            if (++v45 == v44)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_69;
        }
      }

LABEL_52:

      v65 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SwiftUITracingSupport7TreeRefV_SayAFGTt0g5Tf4g_n(v64);

      v66 = *(v65 + 16);
      if (v66)
      {
        v67 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport7TreeRefV_Tt1g5(*(v65 + 16), 0);
        v68 = specialized Sequence._copySequenceContents(initializing:)(&v73, v67 + 4, v66, v65);
        outlined consume of Set<AGSubgraphRef>.Iterator._Variant(v73);
        if (v68 == v66)
        {
LABEL_56:
          *&v73 = v67;

          specialized MutableCollection<>.sort(by:)(&v73);

          return v73;
        }

        __break(1u);
      }

      v67 = MEMORY[0x277D84F90];
      goto LABEL_56;
    }

    if (v7 >= v9)
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_75;
    }

    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_59;
    }

    v13 = v8[v7];
    if (HIDWORD(v13) >= *(*a2 + 124))
    {
      goto LABEL_60;
    }

    v14 = *(*a2 + 112);
    if (!v14)
    {
      goto LABEL_76;
    }

    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    v15 = *(v14 + 168 * HIDWORD(v13));
    if (v13 >= *(v15 + 16))
    {
      goto LABEL_62;
    }

    ++v7;
    if (*(v15 + 208 * v13 + 208) == 1)
    {
      *&v73 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1);
        v11 = v73;
      }

      v17 = v11[2];
      v16 = v11[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v18 = v17 + 1;
        v11 = v73;
      }

      v11[2] = v18;
      v11[v17 + 4] = v13;
      v7 = v12;
    }
  }

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
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
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
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t Tree.resolvedSelf(within:)(uint64_t result)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 136);
  v4 = *(v1 + 200);
  if (v4 && *(v4 + 32) != 1)
  {
    return *(v4 + 24);
  }

  if (*(v1 + 144))
  {
LABEL_9:
    if (v4)
    {
      *(v4 + 24) = v2;
      *(v4 + 32) = 0;
    }

    return v2;
  }

  if (HIDWORD(v3) >= *(*result + 124))
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *(*result + 112);
  if (v5)
  {
    if ((v3 & 0x80000000) == 0)
    {
      if (v3 < *(*(v5 + 168 * HIDWORD(v3)) + 16))
      {
        v2 = Tree.resolvedSelf(within:)(result);
        goto LABEL_9;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

void Tree.semanticValues.getter()
{
  v1 = 0;
  v2 = *(v0 + 120);
  v3 = *(v0 + 132);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v2 - 40 + 40 * v1;
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (!v2)
    {
      goto LABEL_16;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v5 + 76);
    ++v1;
    v5 += 40;
    if ((v7 & 0x3E) != 0)
    {
      v8 = *v5;
      v9 = *(v5 + 16);
      v16 = *(v5 + 8);
      v14 = *(v5 + 28);
      v15 = *(v5 + 24);
      v13 = *(v5 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 40 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v16;
      *(v12 + 48) = v9;
      *(v12 + 56) = v15;
      *(v12 + 60) = v14;
      *(v12 + 64) = v13;
      *(v12 + 68) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }
}

void Tree.otherAttributes.getter()
{
  v1 = 0;
  v2 = *(v0 + 120);
  v3 = *(v0 + 132);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v2 - 40 + 40 * v1;
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (!v2)
    {
      goto LABEL_16;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v5 + 76);
    ++v1;
    v5 += 40;
    if ((v7 & 0x3F) == 1)
    {
      v8 = *v5;
      v9 = *(v5 + 16);
      v16 = *(v5 + 8);
      v14 = *(v5 + 28);
      v15 = *(v5 + 24);
      v13 = *(v5 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 40 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v16;
      *(v12 + 48) = v9;
      *(v12 + 56) = v15;
      *(v12 + 60) = v14;
      *(v12 + 64) = v13;
      *(v12 + 68) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }
}

uint64_t Tree.isLeafView(within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 12);
  v6 = *v5;
  if (v6 != 2)
  {
    return v6 & 1;
  }

  v8 = *(v4 + 117);
  v10 = *(v4 + 22);
  v9 = *(v4 + 23);
  *&v62[0] = a1;
  v11 = v4[3];
  v68 = v4[2];
  v69 = v11;
  v70 = v4[4];
  *&v71 = *(v4 + 10);
  v12 = v4[1];
  v66 = *v4;
  v67 = v12;
  *(&v71 + 1) = __PAIR64__(v9, v10);
  v13 = *(v4 + 13);
  *v72 = v5;
  *&v72[8] = v13;
  *&v72[13] = *(v4 + 109);
  v72[21] = v8;
  *&v72[38] = *(v4 + 134);
  *&v72[22] = *(v4 + 118);
  *&v72[96] = v4[12];
  *&v72[86] = *(v4 + 182);
  *&v72[70] = *(v4 + 166);
  *&v72[54] = *(v4 + 150);
  v17 = Tree._childNodes(_:within:during:unabstracting:)(0x10u, v62, a3, a4, MEMORY[0x277D84FA0]);
  v18 = v17[2];
  if (!v18)
  {

    if (v8 != 5)
    {
      goto LABEL_18;
    }

LABEL_15:
    LOBYTE(v6) = 0;
    goto LABEL_24;
  }

  v19 = 0;
  v20 = v18 - 1;
  result = 1;
  while (1)
  {
    if ((result & 1) == 0)
    {
      if (v20 == v19)
      {

        LOBYTE(v6) = 0;
        goto LABEL_24;
      }

      result = 0;
      goto LABEL_4;
    }

    v22 = v17[v19 + 4];
    if (HIDWORD(v22) >= *(a1 + 124))
    {
      goto LABEL_27;
    }

    v23 = *(a1 + 112);
    if (!v23)
    {
      goto LABEL_32;
    }

    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_28;
    }

    v24 = *(v23 + 168 * HIDWORD(v22));
    if (v22 >= *(v24 + 16))
    {
      goto LABEL_29;
    }

    v25 = (v24 + 208 * v22);
    *&v72[48] = v25[11];
    *&v72[64] = v25[12];
    *&v72[80] = v25[13];
    *&v72[96] = v25[14];
    v71 = v25[7];
    *v72 = v25[8];
    *&v72[16] = v25[9];
    *&v72[32] = v25[10];
    v67 = v25[3];
    v68 = v25[4];
    v69 = v25[5];
    v70 = v25[6];
    v66 = v25[2];
    result = Tree.isLeafView(within:)(a1, v14, v15, v16);
    if (v20 == v19)
    {
      break;
    }

    v18 = v17[2];
LABEL_4:
    if (++v19 >= v18)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  v26 = result;

  if ((v26 & (v8 != 5)) != 1)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (v10 == -1)
  {
    LOBYTE(v6) = 1;
LABEL_24:
    *v5 = v6 & 1;
    return v6 & 1;
  }

  v27 = *(*a1 + 136);
  v28 = *(v27 + 4);
  if (*(v28 + 16) <= v10)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v29 = *(v28 + 4 * v10 + 32);
  if (v29 >= *(v27 + 3))
  {
    goto LABEL_31;
  }

  if (*v27)
  {
    v30 = *v27 + 120 * v29;
    v31 = *v30;
    v32 = *(v30 + 16);
    v33 = *(v30 + 48);
    v62[2] = *(v30 + 32);
    v62[3] = v33;
    v62[0] = v31;
    v62[1] = v32;
    v34 = *(v30 + 64);
    v35 = *(v30 + 80);
    v36 = *(v30 + 96);
    *(v63 + 14) = *(v30 + 110);
    v62[5] = v35;
    v63[0] = v36;
    v62[4] = v34;
    v37 = *(v30 + 80);
    v59 = *(v30 + 64);
    v60 = v37;
    v61[0] = *(v30 + 96);
    *(v61 + 14) = *(v30 + 110);
    v38 = *(v30 + 16);
    v55 = *v30;
    v56 = v38;
    v39 = *(v30 + 48);
    v57 = *(v30 + 32);
    v58 = v39;
    v40 = v27[2];
    v41 = *v27;
    v64[1] = v27[1];
    v64[2] = v40;
    v42 = v27[6];
    v44 = v27[3];
    v43 = v27[4];
    v64[5] = v27[5];
    v64[6] = v42;
    v64[3] = v44;
    v64[4] = v43;
    v64[0] = v41;
    v45 = v27[5];
    v52 = v27[4];
    v53 = v45;
    v54 = v27[6];
    v46 = v27[1];
    v48 = *v27;
    v49 = v46;
    v47 = v27[3];
    v50 = v27[2];
    v51 = v47;
    outlined init with copy of PType(v62, &v66);
    outlined init with copy of Interpreter.Storage.Types(v64, &v66);
    LOBYTE(v6) = PType.isFirstParty(within:)(&v48);
    v65[4] = v52;
    v65[5] = v53;
    v65[6] = v54;
    v65[0] = v48;
    v65[1] = v49;
    v65[2] = v50;
    v65[3] = v51;
    outlined destroy of Interpreter.Storage.Types(v65);
    v70 = v59;
    v71 = v60;
    *v72 = v61[0];
    *&v72[14] = *(v61 + 14);
    v66 = v55;
    v67 = v56;
    v68 = v57;
    v69 = v58;
    outlined destroy of PType(&v66);
    goto LABEL_24;
  }

LABEL_33:
  __break(1u);
  return result;
}

unint64_t Tree.owner(within:)(uint64_t a1)
{
  if (*(v1 + 144))
  {
    return 0;
  }

  result = *(v1 + 136);
  if (HIDWORD(result) >= *(a1 + 124))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(a1 + 112);
  if (!v4)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 168 * HIDWORD(result));
  if (result >= *(v5 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5 + 208 * result;
  if ((*(v6 + 208) & 1) != 0 || *(v6 + 200) != *(v1 + 104))
  {
    return 0;
  }

  return result;
}

uint64_t Tree.hide(within:_:)(uint64_t result, unint64_t a2)
{
  v7 = v2;
  v9 = result;
  if (*(v2 + 196) == *(v2 + 192))
  {
    v2 += 184;
    result = specialized UnsafeArray.growToCapacity(_:)();
  }

  v10 = *(v7 + 184);
  if (!v10)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v11 = *(v7 + 196);
  *(v10 + 8 * v11) = a2;
  if (v11 == -1)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(v7 + 196) = v11 + 1;
  if (v9[48])
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v4 = *(v9 + 22);
  v12 = *v9;
  if (v12 >= *(v4 + 116))
  {
    goto LABEL_66;
  }

  v13 = *(v4 + 104);
  if (!v13)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v14 = *(*(v13 + 8 * v12) + 8);
  v3 = HIDWORD(a2);
  if (HIDWORD(a2) >= *(v14 + 124))
  {
    goto LABEL_67;
  }

  v15 = *(v14 + 112);
  if (!v15)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v5 = *(v7 + 104);
  v6 = (v15 + 168 * HIDWORD(a2));
  v2 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v2;
  if (result)
  {
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_68:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v2 = result;
  *v6 = result;
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_69;
  }

LABEL_12:
  if (a2 >= *(v2 + 16))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v18 = v2 + 208 * a2;
  *(v18 + 168) = v5;
  *(v18 + 176) = 0;
  if (v9[48])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v19 = *v9;
  if (v19 >= *(v4 + 116))
  {
    goto LABEL_71;
  }

  v20 = *(v4 + 104);
  if (!v20)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v21 = *(*(v20 + 8 * v19) + 8);
  if (v3 >= *(v21 + 124))
  {
    goto LABEL_72;
  }

  v22 = *(v21 + 112);
  if (v22)
  {
    if (a2 < *(*(v22 + 168 * v3) + 16))
    {
      v41 = v21;
      result = Tree._childNodes(_:within:during:unabstracting:)(0x10u, &v41, v16, v17, MEMORY[0x277D84FA0]);
      v2 = *(result + 16);
      v23 = *(v7 + 76);
      v24 = __OFADD__(v23, v2);
      v25 = v23 + v2;
      if (!v24)
      {
        v9 = result;
        v26 = *(v7 + 72);
        if (v25 >= v26)
        {
          if (__OFADD__(v26, v2))
          {
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          if (v26 + v2 + 0x4000000000000000 < 0)
          {
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          specialized UnsafeArray.growToCapacity(_:)();
          v2 = *(v9 + 2);
        }

        if (v2)
        {
          v4 = 0;
          v5 = *(v7 + 76);
          v3 = (v5 + v2);
          v6 = ~v5;
          v27 = 2 * v5;
          do
          {
            if (v4 >= *(v9 + 2))
            {
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v28 = *&v9[8 * v4 + 32];
            v29 = *(v7 + 72);
            if (v5 == v29)
            {
              if (v29)
              {
                v30 = v27;
              }

              else
              {
                v30 = 1;
              }

              if (HIDWORD(v30))
              {
                goto LABEL_64;
              }

              v31 = *(v7 + 64);
              *(v7 + 72) = v30;
              if (v31)
              {
                result = realloc(v31, 8 * v30);
                if (!result)
                {
                  goto LABEL_81;
                }

                *(v7 + 64) = result;
              }

              else
              {
                result = swift_slowAlloc();
                *(v7 + 64) = result;
                if (!result)
                {
                  goto LABEL_80;
                }
              }
            }

            else
            {
              result = *(v7 + 64);
              if (!result)
              {
                goto LABEL_80;
              }
            }

            *(result + 8 * v5) = v28;
            if (v6 == v4)
            {
              goto LABEL_62;
            }

            ++v4;
            ++v5;
            v27 += 2;
          }

          while (v2 != v4);

          *(v7 + 76) = v3;
          v32 = v3;
          if (!v3)
          {
            goto LABEL_53;
          }

          goto LABEL_41;
        }

LABEL_52:

        v3 = *(v7 + 76);
        v32 = v3;
        if (v3)
        {
LABEL_41:
          v33 = 0;
          v34 = 0;
          v35 = 8;
          while (1)
          {
            v36 = *(v7 + 64);
            if (!v36)
            {
              break;
            }

            v37 = v36 + v35;
            v38 = *(v36 + v35 - 8);
            if (v38 != a2)
            {
              v39 = (v36 + 8 * v34);
              if (v34 < v33 || v39 >= v37)
              {
                *v39 = v38;
              }

              v24 = __OFADD__(v34++, 1);
              if (v24)
              {
                goto LABEL_63;
              }
            }

            ++v33;
            v35 += 8;
            if (v32 == v33)
            {
              if (v34 <= v32)
              {
                goto LABEL_54;
              }

              __break(1u);
              goto LABEL_52;
            }
          }

LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

LABEL_53:
        v34 = 0;
LABEL_54:
        v40 = v32 - v34 + 1;
        while (--v40)
        {
          if (!*(v7 + 64))
          {
            __break(1u);
            break;
          }
        }

        if ((v34 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v34))
          {
            *(v7 + 76) = v34;
            return result;
          }

          goto LABEL_76;
        }

LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t Subgraph.displayName(within:_:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(v2 + 113))
  {
    if (*(v2 + 20))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v4 = *(v2 + 16);
    if (v4 < *(result + 148))
    {
      v5 = *(result + 136);
      if (v5)
      {
        v6 = (v5 + 80 * v4);
        v48 = *v6;
        v7 = v6[1];
        v8 = v6[2];
        v9 = v6[4];
        v51 = v6[3];
        v52 = v9;
        v49 = v7;
        v50 = v8;
        v42 = v6[2];
        v44 = v6[3];
        v46 = v6[4];
        v38 = *v6;
        v40 = v6[1];
        outlined init with copy of GraphContext(&v48, &v55);
        v10 = GraphContext.displayName(within:)();
        v57 = v42;
        v58 = v44;
        v59 = v46;
        v55 = v38;
        v56 = v40;
        outlined destroy of GraphContext(&v55);
        return v10;
      }

      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (*(v2 + 114))
  {
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v53 = 0xD000000000000015;
    v54 = 0x800000026C33BA40;
    if (*(v2 + 20))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v11 = *(v2 + 16);
    if (v11 < *(v3 + 148))
    {
      v12 = *(v3 + 136);
      if (v12)
      {
        v13 = (v12 + 80 * v11);
        v48 = *v13;
        v14 = v13[1];
        v15 = v13[2];
        v16 = v13[4];
        v51 = v13[3];
        v52 = v16;
        v49 = v14;
        v50 = v15;
        v43 = v13[2];
        v45 = v13[3];
        v47 = v13[4];
        v39 = *v13;
        v41 = v13[1];
        outlined init with copy of GraphContext(&v48, &v55);
        v17 = GraphContext.displayName(within:)();
        v19 = v18;
        v57 = v43;
        v58 = v45;
        v59 = v47;
        v55 = v39;
        v56 = v41;
        outlined destroy of GraphContext(&v55);
        MEMORY[0x26D69CDB0](v17, v19);

        return v53;
      }

      goto LABEL_54;
    }

    goto LABEL_40;
  }

  v20 = *(v2 + 64);
  v21 = *(result + 124);
  if (v20 >= v21)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v22 = *(result + 112);
  if (!v22)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v23 = *(v22 + 168 * v20);
  if (!*(v23 + 16))
  {
    goto LABEL_41;
  }

  if ((*(v23 + 88) & 1) == 0 && a2 >= 1)
  {
    v24 = *(v23 + 80);
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    *&v48 = 0xD000000000000010;
    *(&v48 + 1) = 0x800000026C33BA20;
    if (HIDWORD(v24) >= *(v3 + 124))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v25 = *(v3 + 112);
    if (!v25)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_43;
    }

    v26 = *(v25 + 168 * HIDWORD(v24));
    if (v24 >= *(v26 + 16))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v27 = (v26 + 208 * v24);
LABEL_21:
    v64 = v27[11];
    v65 = v27[12];
    v66 = v27[13];
    v67 = v27[14];
    v60 = v27[7];
    v61 = v27[8];
    v62 = v27[9];
    v63 = v27[10];
    v56 = v27[3];
    v57 = v27[4];
    v58 = v27[5];
    v59 = v27[6];
    v55 = v27[2];
    v28 = specialized Tree.displayName(within:_:)(v3);
    MEMORY[0x26D69CDB0](v28);

    return v48;
  }

  if (*(v23 + 108) == 1)
  {
    v29 = *(v23 + 96);
    if (!v29)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v30 = *v29;
    v31 = HIDWORD(v30);
    if (HIDWORD(v30) >= v21)
    {
      goto LABEL_45;
    }

    v32 = v30;
    if ((v30 & 0x8000000000000000) != 0)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v33 = *(v22 + 168 * HIDWORD(v30));
    if (v30 >= *(v33 + 16))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v34 = v33 + 208 * v30;
    if (*(v34 + 148) == 1 && *(v34 + 136) != 0)
    {
      *&v55 = 0;
      *(&v55 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      *&v48 = 0xD000000000000015;
      *(&v48 + 1) = 0x800000026C33BA00;
      if (v31 >= *(v3 + 124))
      {
        goto LABEL_48;
      }

      v36 = *(v3 + 112);
      if (!v36)
      {
LABEL_57:
        __break(1u);
        return result;
      }

      v37 = *(v36 + 168 * v31);
      if (v32 >= *(v37 + 16))
      {
        goto LABEL_49;
      }

      v27 = (v37 + 208 * v32);
      goto LABEL_21;
    }
  }

  return 0xD000000000000022;
}

uint64_t Tree.treeLocationDescription(within:ctxt:)(uint64_t *a1, uint64_t *a2)
{
  v126 = *MEMORY[0x277D85DE8];
  v94 = *a2;
  v92 = *(a2 + 9);
  v93 = *(a2 + 8);
  v4 = *(v2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26C328DC0;
  v6 = (v5 + 16);
  *(v5 + 32) = v4;
  v7 = MEMORY[0x277D84FA0];
  v105 = MEMORY[0x277D84FA0];
  v8 = 1;
  while (1)
  {
    v9 = (v5 + 24);
    v10 = *(v5 + 24 + 8 * v8);
    if (HIDWORD(v10) >= *(a1 + 31))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
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
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
    }

    v11 = a1[14];
    if (!v11)
    {
      goto LABEL_87;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v12 = *(v11 + 168 * HIDWORD(v10));
    if (v10 >= *(v12 + 16))
    {
      goto LABEL_69;
    }

    v13 = (v12 + 208 * v10);
    v120 = v13[11];
    v121 = v13[12];
    v122 = v13[13];
    v123 = v13[14];
    v116 = v13[7];
    v117 = v13[8];
    v118 = v13[9];
    v119 = v13[10];
    v112 = v13[3];
    v113 = v13[4];
    v114 = v13[5];
    v115 = v13[6];
    v111 = v13[2];
    *&v124[0] = a1;
    v14 = specialized Tree.parent(_:within:unabstracting:)(16, v124);
    if (v15)
    {
      break;
    }

    v16 = v14;
    v17 = *v6;
    v18 = *v6 + 1;
    if (*v6 >= *v9 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((*v9 > 1uLL), *v6 + 1, 1, v5);
    }

    *(v5 + 16) = v18;
    v6 = (v5 + 16);
    *(v5 + 8 * v17 + 32) = v16;
    if (specialized Set.contains(_:)(v16, v105))
    {
      break;
    }

    specialized Set._Variant.insert(_:)(&v111, v16);
    v8 = *v6;
    if (!*v6)
    {
      goto LABEL_70;
    }
  }

  v103 = 0;
  v104 = 0xE000000000000000;
  v105 = v7;
  v19 = *(v5 + 16);
  if (v19)
  {
    v20 = 0;
    v97 = v5 + 32;
    v95 = v5 + 24;
    v96 = v5;
    do
    {
      v21 = v19 - 1;
      v22 = *(v97 + 8 * v21);
      *(v5 + 16) = v21;
      v25 = specialized Set.contains(_:)(v22, v105);
      v102 = a1;
      v26 = *(v5 + 16);
      if (v26)
      {
        v27 = HIDWORD(v22);
        if (HIDWORD(v22) >= *(a1 + 31))
        {
          goto LABEL_81;
        }

        v28 = a1[14];
        if (!v28)
        {
          goto LABEL_92;
        }

        if ((v22 & 0x80000000) != 0)
        {
          goto LABEL_82;
        }

        v29 = *(v28 + 168 * HIDWORD(v22));
        if (v22 >= *(v29 + 16))
        {
          goto LABEL_83;
        }

        v30 = *(v95 + 8 * v26);
        v31 = (v29 + 208 * v22);
        v120 = v31[11];
        v121 = v31[12];
        v122 = v31[13];
        v123 = v31[14];
        v116 = v31[7];
        v117 = v31[8];
        v118 = v31[9];
        v119 = v31[10];
        v112 = v31[3];
        v113 = v31[4];
        v114 = v31[5];
        v115 = v31[6];
        v111 = v31[2];
        *&v106 = a1;
        v32 = Tree._childNodes(_:within:during:unabstracting:)(0x10u, &v106, v23, v24, MEMORY[0x277D84FA0]);
        v33 = v32[2];
        v34 = 4;
        while (v33)
        {
          v35 = v32[v34++];
          --v33;
          if (v35 == v30)
          {

            v36 = 1;
            goto LABEL_25;
          }
        }

        v36 = 0;
      }

      else
      {
        v36 = 0;
        v27 = HIDWORD(v22);
      }

LABEL_25:
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(21);
      v101 = v111;
      v37._countAndFlagsBits = 32;
      v37._object = 0xE100000000000000;
      countAndFlagsBits = String.init(repeating:count:)(v37, v20)._countAndFlagsBits;
      MEMORY[0x26D69CDB0](countAndFlagsBits);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (v27 >= *(a1 + 31))
      {
        goto LABEL_71;
      }

      v39 = a1[14];
      if (!v39)
      {
        goto LABEL_88;
      }

      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_72;
      }

      if (v22 >= *(*(v39 + 168 * v27) + 16))
      {
        goto LABEL_73;
      }

      v40 = TreeRef.debugDescription.getter();
      MEMORY[0x26D69CDB0](v40);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (v27 >= *(a1 + 31))
      {
        goto LABEL_74;
      }

      v41 = a1[14];
      if (!v41)
      {
        goto LABEL_89;
      }

      v42 = *(v41 + 168 * v27);
      if (v22 >= *(v42 + 16))
      {
        goto LABEL_75;
      }

      v43 = (v42 + 208 * v22);
      v120 = v43[11];
      v121 = v43[12];
      v122 = v43[13];
      v123 = v43[14];
      v116 = v43[7];
      v117 = v43[8];
      v118 = v43[9];
      v119 = v43[10];
      v112 = v43[3];
      v113 = v43[4];
      v114 = v43[5];
      v115 = v43[6];
      v111 = v43[2];
      v44 = specialized Tree.displayName(within:_:)(a1);
      MEMORY[0x26D69CDB0](v44);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (v27 >= *(a1 + 31))
      {
        goto LABEL_76;
      }

      v45 = a1[14];
      if (!v45)
      {
        goto LABEL_90;
      }

      v46 = *(v45 + 168 * v27);
      if (v22 >= *(v46 + 16))
      {
        goto LABEL_77;
      }

      v98 = v25;
      v99 = v22;
      v100 = v22;
      if (*(v46 + 208 * v22 + 124))
      {
        v47 = 1702195828;
      }

      else
      {
        v47 = 0x65736C6166;
      }

      if (*(v46 + 208 * v22 + 124))
      {
        v48 = 0xE400000000000000;
      }

      else
      {
        v48 = 0xE500000000000000;
      }

      MEMORY[0x26D69CDB0](v47, v48);

      MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
      if (v36)
      {
        v49 = 1702195828;
      }

      else
      {
        v49 = 0x65736C6166;
      }

      if (v36)
      {
        v50 = 0xE400000000000000;
      }

      else
      {
        v50 = 0xE500000000000000;
      }

      MEMORY[0x26D69CDB0](v49, v50);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (v27 >= *(a1 + 31))
      {
        goto LABEL_78;
      }

      v51 = a1[14];
      if (!v51)
      {
        goto LABEL_91;
      }

      v52 = *(v51 + 168 * v27);
      v53 = v22;
      v54 = v25;
      if (v100 >= *(v52 + 16))
      {
        goto LABEL_79;
      }

      v55 = (v52 + 208 * v100);
      v120 = v55[11];
      v121 = v55[12];
      v122 = v55[13];
      v123 = v55[14];
      v116 = v55[7];
      v117 = v55[8];
      v118 = v55[9];
      v119 = v55[10];
      v112 = v55[3];
      v113 = v55[4];
      v114 = v55[5];
      v115 = v55[6];
      v111 = v55[2];
      *&v111 = specialized Tree.parent(_:within:unabstracting:)(16, &v102);
      BYTE8(v111) = v56 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (v25)
      {
        v57 = 0x21454C4359435B20;
      }

      else
      {
        v57 = 0;
      }

      if (v25)
      {
        v58 = 0xE90000000000005DLL;
      }

      else
      {
        v58 = 0xE000000000000000;
      }

      MEMORY[0x26D69CDB0](v57, v58);

      MEMORY[0x26D69CDB0](v101, *(&v101 + 1));

      if (!v99)
      {
        v59 = v102;
        if (v27 >= *(v102 + 31))
        {
          goto LABEL_84;
        }

        v60 = v102[14];
        if (!v60)
        {
          goto LABEL_93;
        }

        v61 = v60 + 168 * v27;
        v62 = *v61;
        v63 = *(v61 + 32);
        v124[1] = *(v61 + 16);
        v124[2] = v63;
        v124[0] = v62;
        v64 = *(v61 + 48);
        v65 = *(v61 + 64);
        v66 = *(v61 + 96);
        v124[5] = *(v61 + 80);
        v124[6] = v66;
        v124[3] = v64;
        v124[4] = v65;
        v67 = *(v61 + 112);
        v68 = *(v61 + 128);
        v69 = *(v61 + 144);
        v125 = *(v61 + 160);
        v124[8] = v68;
        v124[9] = v69;
        v124[7] = v67;
        v106 = xmmword_26C32DAD0;
        v107 = 1;
        v108 = 0;
        v109 = v94;
        LOBYTE(v110) = v93;
        HIBYTE(v110) = v92;
        outlined init with copy of Subgraph(v124, &v111);
        v70 = Subgraph.describe(state:)(&v106);
        v72 = v71;
        outlined destroy of Subgraph(v124);
        *&v111 = v70;
        *(&v111 + 1) = v72;
        *&v106 = 10;
        *(&v106 + 1) = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v73 = StringProtocol.components<A>(separatedBy:)();

        *&v106 = v73;
        *&v111 = 10;
        *(&v111 + 1) = 0xE100000000000000;
        v74._countAndFlagsBits = 32;
        v74._object = 0xE100000000000000;
        v75 = String.init(repeating:count:)(v74, v20)._countAndFlagsBits;
        MEMORY[0x26D69CDB0](v75);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v76 = BidirectionalCollection<>.joined(separator:)();
        v78 = v77;

        MEMORY[0x26D69CDB0](v76, v78);

        if (v27 >= *(v59 + 124))
        {
          goto LABEL_85;
        }

        v79 = *(v59 + 112);
        if (!v79)
        {
          goto LABEL_94;
        }

        v80 = *(v79 + 168 * v27);
        if (v100 >= *(v80 + 16))
        {
          goto LABEL_86;
        }

        v81 = (v80 + 208 * v100);
        v120 = v81[11];
        v121 = v81[12];
        v122 = v81[13];
        v123 = v81[14];
        v116 = v81[7];
        v117 = v81[8];
        v118 = v81[9];
        v119 = v81[10];
        v112 = v81[3];
        v113 = v81[4];
        v114 = v81[5];
        v115 = v81[6];
        v111 = v81[2];
        v82 = *v59;
        v106 = xmmword_26C32DAD0;
        v107 = 1;
        v108 = 0;
        v109 = v82;
        v110 = 256;
        *&v111 = Tree.describe(state:)(&v106);
        *(&v111 + 1) = v83;
        *&v106 = 10;
        *(&v106 + 1) = 0xE100000000000000;
        v84 = StringProtocol.components<A>(separatedBy:)();

        *&v106 = v84;
        *&v111 = 10;
        *(&v111 + 1) = 0xE100000000000000;
        v85._countAndFlagsBits = 32;
        v85._object = 0xE100000000000000;
        v86 = String.init(repeating:count:)(v85, v20)._countAndFlagsBits;
        MEMORY[0x26D69CDB0](v86);

        v87 = BidirectionalCollection<>.joined(separator:)();
        v89 = v88;

        MEMORY[0x26D69CDB0](v87, v89);

        v53 = v99;
        v54 = v98;
      }

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      if (v54)
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v111, v53);
      v90 = __OFADD__(v20++, 1);
      v5 = v96;
      if (v90)
      {
        goto LABEL_80;
      }

      v19 = *(v96 + 16);
    }

    while (v19);
  }

  return v103;
}

uint64_t Tree.treeLocationRoot(within:ith:)(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  v7 = (inited + 16);
  *(inited + 32) = v5;
  v8 = HIDWORD(v5);
  if (HIDWORD(v5) >= *(a1 + 124))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = inited;
  while (1)
  {
    v10 = *(a1 + 112);
    if (!v10)
    {
      goto LABEL_20;
    }

    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    v11 = *(v10 + 168 * v8);
    if (v5 >= *(v11 + 16))
    {
      goto LABEL_17;
    }

    v12 = (v11 + 208 * v5);
    v13 = v12[13];
    v39 = v12[12];
    v40 = v13;
    v41 = v12[14];
    v14 = v12[9];
    v35 = v12[8];
    v36 = v14;
    v15 = v12[11];
    v37 = v12[10];
    v38 = v15;
    v16 = v12[5];
    v31 = v12[4];
    v32 = v16;
    v17 = v12[7];
    v33 = v12[6];
    v34 = v17;
    v18 = v12[3];
    v29 = v12[2];
    v30 = v18;
    v28 = a1;
    v19 = specialized Tree.parent(_:within:unabstracting:)(16, &v28);
    v20 = *v7;
    if (v21)
    {
      break;
    }

    v22 = *(v9 + 3);
    v23 = v20 + 1;
    if (v20 >= v22 >> 1)
    {
      v24 = v19;
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v20 + 1, 1, v9);
      v19 = v24;
    }

    *(v9 + 2) = v23;
    v7 = (v9 + 16);
    *&v9[8 * v20 + 32] = v19;
    v5 = *&v9[8 * v23 + 24];
    v8 = HIDWORD(v5);
    if (HIDWORD(v5) >= *(a1 + 124))
    {
      goto LABEL_15;
    }
  }

  if (v20)
  {
    v25 = v20 - 1 - a2;
    if (!__OFSUB__(v20 - 1, a2))
    {
      if (v25 < v20)
      {
        v26 = *&v9[8 * v25 + 32];

        return v26;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *Tree.init(abstraction:_:id:within:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, _OWORD *a6@<X8>)
{
  *(&v39 + 1) = 0;
  v12 = MEMORY[0x277D84F90];
  *&v41 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n();
  *(&v41 + 1) = v13;
  LODWORD(v42) = 0;
  BYTE4(v42) = 1;
  WORD6(v42) = 0;
  v14 = swift_slowAlloc();
  *v14 = 2;
  *&v43 = v14;
  BYTE5(v44) = 5;
  *(&v44 + 1) = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9TreeValueV_SayAHGTt0g5Tf4g_n(v12);
  v45 = v15;
  LOBYTE(v46) = 1;
  *(&v48 + 1) = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n();
  v49 = v16;
  getter of source #1 in Tree.init(abstraction:_:id:within:)(a5, a1, v33);
  DWORD2(v42) = v34;
  *(&v46 + 1) = a2;
  *&v47 = a3;
  result = getter of source #1 in Tree.init(abstraction:_:id:within:)(a5, a1, v33);
  if (a5[48])
  {
    goto LABEL_17;
  }

  v18 = *(a5 + 22);
  v19 = *a5;
  if (v19 >= *(v18 + 116))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = *(v18 + 104);
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *&v40 = specialized Tree.parent(_:within:unabstracting:)(4, (*(v20 + 8 * v19) + 8));
  BYTE8(v40) = v21 & 1;
  result = getter of source #1 in Tree.init(abstraction:_:id:within:)(a5, a1, v33);
  LODWORD(v44) = v35;
  BYTE4(v44) = v36;
  *(&v47 + 1) = a1;
  LOBYTE(v48) = 0;
  *(&v43 + 1) = a4;
  *&v39 = 0;
  *&v38 = 0;
  v37 = 0uLL;
  if (a5[48])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = *a5;
  if (v22 >= *(v18 + 116))
  {
    goto LABEL_13;
  }

  v23 = *(v18 + 104);
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = *(*(v23 + 8 * v22) + 8);
  if (HIDWORD(a1) >= *(v24 + 124))
  {
    goto LABEL_14;
  }

  v25 = *(v24 + 112);
  if (v25)
  {
    if ((a1 & 0x80000000) == 0)
    {
      v26 = *(v25 + 168 * HIDWORD(a1));
      if (a1 < *(v26 + 16))
      {
        *(&v38 + 1) = *(v26 + 208 * a1 + 56);
        Tree.Position.init(matching:within:)(&v37, *(v18 + 136), v33);
        BYTE5(v44) = v33[0];
        result = Tree.hide(within:_:)(a5, a1);
        v27 = v48;
        a6[10] = v47;
        a6[11] = v27;
        a6[12] = v49;
        v28 = v44;
        a6[6] = v43;
        a6[7] = v28;
        v29 = v46;
        a6[8] = v45;
        a6[9] = v29;
        v30 = v40;
        a6[2] = v39;
        a6[3] = v30;
        v31 = v42;
        a6[4] = v41;
        a6[5] = v31;
        v32 = v38;
        *a6 = v37;
        a6[1] = v32;
        return result;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

unsigned __int8 *getter of source #1 in Tree.init(abstraction:_:id:within:)@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (result[48])
  {
    goto LABEL_13;
  }

  v3 = *(result + 22);
  v4 = *result;
  if (v4 >= *(v3 + 116))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = *(*(v5 + 8 * v4) + 8);
  if (HIDWORD(a2) >= *(v6 + 124))
  {
    goto LABEL_10;
  }

  v7 = *(v6 + 112);
  if (v7)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v8 = *(v7 + 168 * HIDWORD(a2));
      if (a2 < *(v8 + 16))
      {
        v9 = (v8 + 208 * a2);
        v10 = v9[13];
        a3[10] = v9[12];
        a3[11] = v10;
        a3[12] = v9[14];
        v11 = v9[9];
        a3[6] = v9[8];
        a3[7] = v11;
        v12 = v9[11];
        a3[8] = v9[10];
        a3[9] = v12;
        v13 = v9[5];
        a3[2] = v9[4];
        a3[3] = v13;
        v14 = v9[7];
        a3[4] = v9[6];
        a3[5] = v14;
        v15 = v9[3];
        *a3 = v9[2];
        a3[1] = v15;
        return result;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void Tree.init(_:id:within:)(unsigned int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v66 = 1;
  v10 = MEMORY[0x277D84F90];
  v33 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n();
  v12 = v11;
  v65 = 1;
  v13 = swift_slowAlloc();
  *v13 = 2;
  v64 = 1;
  v35 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9TreeValueV_SayAHGTt0g5Tf4g_n(v10);
  v36 = v14;
  v63 = 1;
  v62 = 1;
  v15 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n();
  v17 = v16;
  if (a1 + 1 >= 2)
  {
    v20 = *(*(a4 + 176) + 136);
    v21 = v20[4];
    if (a1 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = *(v21 + 4 * a1 + 32);
      if (v22 < *(v20 + 3))
      {
        v23 = *v20;
        if (v23)
        {
          v19 = a4;
          v18 = *(v23 + 120 * v22 + 40);
          goto LABEL_7;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v18 = 0;
  a1 = -1;
  v19 = a4;
LABEL_7:
  v32 = v15;
  v24 = v33;
  if (a2)
  {
    v25 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, v19);
    v19 = a4;
    v26 = v25;
    v64 = 0;
  }

  else
  {
    v26 = 0;
  }

  v34 = v66;
  v30 = v64;
  v31 = v65;
  v28 = v63;
  v29 = v62;
  memset(v37, 0, 24);
  v37[3] = v18;
  memset(&v37[4], 0, 24);
  v38 = v66;
  v39 = v24;
  v40 = v12;
  v41 = 0;
  v42 = v65;
  v43 = a1;
  v44 = 0;
  v45 = v13;
  v46 = a3;
  v47 = v26;
  v48 = v64;
  v49 = 5;
  v50 = v35;
  v51 = v36;
  v52 = 0;
  v53 = v63;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = v62;
  v58 = v32;
  v59 = v17;
  v60 = 0;
  Tree.Position.init(matching:within:)(v37, *(*(v19 + 176) + 136), &v61);
  v27 = v61;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = v18;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = 0;
  *(a5 + 56) = v34;
  *(a5 + 64) = v24;
  *(a5 + 72) = v12;
  *(a5 + 76) = HIDWORD(v12);
  *(a5 + 84) = v31;
  *(a5 + 88) = a1;
  *(a5 + 92) = 0;
  *(a5 + 96) = v13;
  *(a5 + 104) = a3;
  *(a5 + 112) = v26;
  *(a5 + 116) = v30;
  *(a5 + 117) = v27;
  *(a5 + 120) = v35;
  *(a5 + 128) = v36;
  *(a5 + 136) = 0;
  *(a5 + 144) = v28;
  *(a5 + 152) = 0;
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;
  *(a5 + 176) = v29;
  *(a5 + 184) = v32;
  *(a5 + 192) = v17;
  *(a5 + 200) = 0;
}

Swift::Void __swiftcall Tree.copy()()
{
  v1 = **(v0 + 96);
  if (*(v0 + 120))
  {
    *(v0 + 120) = swift_slowAlloc();
    swift_arrayInitWithCopy();
  }

  v2 = *(v0 + 184);
  if (v2)
  {
    v3 = *(v0 + 196);
    v4 = swift_slowAlloc();
    *(v0 + 184) = v4;
    memcpy(v4, v2, 8 * v3);
  }

  v5 = *(v0 + 64);
  if (v5)
  {
    v6 = *(v0 + 76);
    v7 = swift_slowAlloc();
    *(v0 + 64) = v7;
    memcpy(v7, v5, 8 * v6);
  }

  v10 = 0;
  v11 = 1;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v15 = 0;
  v16 = 513;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA4TreeV5CacheV_Tt0B5(&v10);
  *(v0 + 200) = v8;
  v9 = swift_slowAlloc();
  *v9 = v1;
  *(v0 + 96) = v9;
}

Swift::Void __swiftcall Tree.deallocate()()
{
  v1 = v0[15];
  if (v1)
  {
    swift_arrayDestroy();
    MEMORY[0x26D69EAB0](v1, -1, -1);
    v0[15] = 0;
  }

  v2 = v0[23];
  if (v2)
  {
    MEMORY[0x26D69EAB0](v2, -1, -1);
    v0[23] = 0;
  }

  v3 = v0[8];
  if (v3)
  {
    MEMORY[0x26D69EAB0](v3, -1, -1);
    v0[8] = 0;
  }

  v4 = v0[25];
  if (v4)
  {
    MEMORY[0x26D69EAB0](v4, -1, -1);
  }

  JUMPOUT(0x26D69EAB0);
}

uint64_t TreeValue.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TreeValue.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t TreeValue.type.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t TreeValue.init(node:within:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = HIDWORD(a1);
  v9 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v6, a3);
  if (v8)
  {
    v71 = v11;
    v68 = a2;
    v69 = a4;
    v15 = *(a3 + 116);
    v16 = *(a3 + 176);
    v17 = (v16 + 40);
    v18 = *(v16 + 56);
    v90[0] = *(v16 + 40);
    v90[1] = v18;
    v91[0] = *(v16 + 72);
    v19 = (v16 + 72);
    v20 = (v16 + 84);
    v21 = (v16 + 88);
    v22 = 8 * v15;
    v70 = v16;
    *(v91 + 9) = *(v16 + 81);
    v23 = (v16 + 40);
    v24 = (v16 + 72);
    v25 = v20;
    v26 = v21;
    v67 = result;
    while (1)
    {
      v27 = *v26;
      if (v15 < *v25)
      {
        v28 = (*v24 + v22);
        if ((v28[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v27)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 0, v90);
      }

      v24 = (v27 + 32);
      v25 = (v27 + 44);
      v26 = (v27 + 48);
      v23 = v27;
    }

    v29 = *v23;
    if (!v29)
    {
      goto LABEL_67;
    }

    result = v29 + 24 * *v28;
    v30 = *result;
    v31 = *(*result + 196);
    v32 = 0uLL;
    if (v31)
    {
      v66 = v6;
      v33 = *(v30 + 184);
      if (!v33)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v34 = v31 - 1;
      if (v8 <= *(v33 + 32 * (v31 - 1)))
      {
        v40 = v31 >> 1;
        v41 = *(v33 + 32 * (v31 >> 1));
        if (v31 != 1 && v41 != v8)
        {
          v43 = *(v30 + 192) | (v31 << 32);
          v65 = *(v30 + 184);
          if (v8 >= v41)
          {
            v45 = v40 + 1;
            v44 = v8;
            v40 = v31;
          }

          else
          {
            v44 = v8;
            v45 = 0;
          }

          result = specialized Collection<>.binarySearch(for:)(v44, v45, v40, v33, v43, 0);
          if (v48)
          {
            v40 = v31 - 1;
          }

          else
          {
            v40 = result;
          }

          v32 = 0uLL;
          v33 = v65;
        }

        v49 = (v33 + 32 * v40);
        v34 = v40;
        while (v40 < v31)
        {
          if (*v49 <= v8)
          {
            goto LABEL_13;
          }

          if (!v34)
          {
            goto LABEL_41;
          }

          --v34;
          v49 -= 8;
          if (v34 > v31)
          {
            __break(1u);
LABEL_41:
            v38 = 0;
            v39 = 0;
            goto LABEL_42;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_13:
        v35 = v17[1];
        v88[0] = *v17;
        v88[1] = v35;
        v89[0] = v17[2];
        *(v89 + 9) = *(v17 + 41);
        while (1)
        {
          v36 = *v21;
          if (v15 < *v20)
          {
            v37 = (*v19 + v22);
            if ((v37[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v36)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 0, v88);
          }

          v19 = (v36 + 32);
          v20 = (v36 + 44);
          v21 = (v36 + 48);
          v17 = v36;
        }

        if (!*v17)
        {
          goto LABEL_69;
        }

        result = *v17 + 24 * *v37;
        if (v34 < *(*result + 196))
        {
          v46 = *(*result + 184);
          if (!v46)
          {
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            return result;
          }

          v47 = (v46 + 32 * v34);
          v38 = *v47;
          v39 = *(v47 + 1);
          v32 = *(v47 + 1);
LABEL_42:
          v6 = v66;
LABEL_43:
          v79 = 0;
          *&v85 = v15 | 0x200000000;
          *(&v85 + 1) = v6 & 0xFFFFFFFF00000000;
          *&v86 = v38;
          *(&v86 + 1) = v39;
          v87[0] = v32;
          LOBYTE(v87[1]) = 1;
          Interpreter.Iterator.init(_:kind:onEvent:)(v70, &v85, 0, 0, v74);
          Interpreter.Iterator.read()();
          v85 = v75;
          v86 = v76;
          v87[0] = *v77;
          *(v87 + 9) = *&v77[9];
          v50 = v75;
          v51 = *v77;
          result = v78;
          v52 = *&v77[16];
          if (v78 >= *&v77[12])
          {
            goto LABEL_45;
          }

          while (1)
          {
            v53 = (v51 + 8 * v78);
            if ((v53[1] & 1) == 0)
            {
              break;
            }

            do
            {
LABEL_45:
              if (!v52)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(v78, 0, &v85);
              }

              v50 = *v52;
              v51 = v52[4];
              v54 = *(v52 + 11);
              v52 = v52[6];
            }

            while (v78 >= v54);
          }

          if (!v50)
          {
            goto LABEL_68;
          }

          result = v50 + 24 * *v53;
          v55 = *result;
          v56 = *(*result + 96);
          if (v56 != 2)
          {
            v57 = *(v55 + 104);
            v58 = *(v55 + 88);
            v80 = *(v55 + 72);
            v81 = v58;
            v82 = v56 & 0x101;
            v83 = HIDWORD(v56);
            v84 = v57 & 1;
            result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
            if ((v60 & 1) == 0)
            {
              v61 = v59 - result;
              if (!result)
              {
                v61 = 0;
              }

              v72 = result;
              v73 = v61;
              static String.Encoding.utf8.getter();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
              lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR, MEMORY[0x277D836F8]);
              result = String.init<A>(bytes:encoding:)();
              if (v62)
              {
                v13 = result;
                v14 = v62;
                specialized EvolutionTable.deallocate()();
                a2 = v68;
                a4 = v69;
                result = v67;
                goto LABEL_56;
              }

              goto LABEL_64;
            }

LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }
      }

      __break(1u);
      goto LABEL_62;
    }

    v38 = 0;
    v39 = 0;
    goto LABEL_43;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
LABEL_56:
  *a4 = result;
  if (a2 == -1)
  {
    v63 = 0;
  }

  else
  {
    v63 = a2;
  }

  *(a4 + 8) = v13;
  *(a4 + 16) = v14;
  *(a4 + 24) = v63;
  *(a4 + 28) = a2 == -1;
  *(a4 + 32) = HIDWORD(a2);
  return result;
}