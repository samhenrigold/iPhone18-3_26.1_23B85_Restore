uint64_t specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(uint64_t *a1, unint64_t a2, unint64_t a3, void *a4)
{
  v6 = *(v4 + 72);
  if (*(a2 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    v87 = 0xD00000000000001BLL;
    v88 = 0x8000000270C51C80;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v31);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = v6;
LABEL_19:
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    v35 = v88;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v36 = v87;
    *(v36 + 8) = v35;
    *(v36 + 16) = 2;
    return swift_willThrow();
  }

  v9 = a2;
  v11 = *(a3 + 16);
  if (v11 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51F80;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_19;
  }

  v74 = a1;
  v78 = a4;
  if (a4[2] != 3)
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51CE0;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = 3;
    goto LABEL_19;
  }

  v87 = a3;
  v88 = a3 + 32;
  v89 = 0;
  v90 = (2 * v11) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v13 = *(v4 + 24);
  v91 = *(v4 + 8);
  v92 = v13;
  v93 = *(v4 + 40);
  v14 = *(&v91 + 1);
  v79 = v13;
  v15 = v93;
  v16 = specialized Gadget.wirePolynomialLength.getter();
  v17 = specialized Gadget.gadgetPolynomialLength.getter();
  v73 = v91;
  *(inited + 32) = v91;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  *(inited + 64) = v17;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay4VDAF16GadgetParametersVG_AF0E10WireInputsCyAF7Field40VGs5NeverOTg5096_s4VDAF16FullyLinearProofPAAE5prove4into11measurement0E4Rand05jointH0yqd__z_Say1FQzGA2KtKSmRd__7b15Qyd__AJRSlFAA16egh11CyAJGAA0K10f43VXEfU_AA28PINENormEqualityCheckCircuitVyAA7I18VSRySfGG_SayAVGTG5s10ArraySliceVyAMGTf1cn_nTm(inited, &v87);
  v19 = v18;
  v20 = v5;
  swift_setDeallocating();
  if (v19 >> 62)
  {
    goto LABEL_123;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v72))
  {
    v22 = MEMORY[0x277D84F90];
    v80 = v19;
    v75 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    v81 = v20;
    v84[0] = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v24 = v75;
    if (v75 < 0)
    {
      break;
    }

    v25 = 0;
    v22 = v84[0];
    v26 = v19;
    v27 = v19 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v24 = v75;
        v28 = MEMORY[0x2743B2D10](v25, v26);
      }

      else
      {
        v28 = *(v26 + 8 * v25 + 32);
      }

      v84[0] = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v24 = v75;
        v26 = v80;
        v22 = v84[0];
      }

      ++v25;
      *(v22 + 16) = v30 + 1;
      *(v22 + 8 * v30 + 32) = v28;
    }

    while (v24 != v25);
    v20 = v81;
LABEL_20:
    specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v9, v78, 1, v22, v85);
    if (v20)
    {

      return swift_unknownObjectRelease();
    }

    if (v75 < 0)
    {
      goto LABEL_128;
    }

    v37 = v74;
    if (!v75)
    {
LABEL_101:

      return swift_unknownObjectRelease();
    }

    if (!v79)
    {
      goto LABEL_129;
    }

    v9 = 0;
    v82 = v80 & 0xC000000000000001;
    v76 = v80 + 32;
    while (1)
    {
      v19 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[12] = v19;
      if (v9 == 1)
      {
        goto LABEL_115;
      }

      v19 = 40 * v9;
      v39 = v86[5 * v9 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[0] = v73;
      v40 = v86[5 * v9];
      if (v40 < 0)
      {
        goto LABEL_116;
      }

      v41 = v80;
      if (v40)
      {
        break;
      }

      v42 = MEMORY[0x277D84F90];
LABEL_57:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v83[9] = result;
      v20 = v83[5 * v9 + 9];
      if (v79 < 1)
      {
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v56 = v42[2];
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v56)
        {
          v57 = 0;
          v58 = v42 + 4;
          v59 = 1;
          while (1)
          {
            v60 = v56 - v57;
            v61 = __OFSUB__(v56, v57);
            v62 = v57 + v79;
            if (__OFADD__(v57, v79))
            {
              if (v61)
              {
                goto LABEL_114;
              }

              if (v60 < 0)
              {
                goto LABEL_130;
              }

              v63 = v60 < v79;
              v64 = v60 >= v79 ? v57 + v79 : v56;
              if (!v63)
              {
                goto LABEL_130;
              }

              v62 = 0x7FFFFFFFFFFFFFFFLL;
              if (v64 < v57)
              {
                goto LABEL_107;
              }
            }

            else
            {
              if (v61)
              {
                goto LABEL_113;
              }

              if (v60 < 0)
              {
                v64 = v57 + v79;
                if (v62 < v57)
                {
                  goto LABEL_107;
                }
              }

              else
              {
                if (v60 >= v79)
                {
                  v64 = v57 + v79;
                }

                else
                {
                  v64 = v56;
                }

                if (v64 < v57)
                {
                  goto LABEL_107;
                }
              }
            }

            if (!v59)
            {
              goto LABEL_108;
            }

            if (v57 < 0)
            {
              break;
            }

            if (v56 < v64)
            {
              goto LABEL_110;
            }

            if (v57 >= v64)
            {
              goto LABEL_111;
            }

            if (v57 + 1 >= v64)
            {
              goto LABEL_112;
            }

            v65 = v58[v57];
            v66 = v58[v57 + 1];

            _s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field40V_Tt2B5(v65, v66, &v94);

            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field40V_Tt2B5(v19, v94, v83);

            v19 = v83[0];
            v59 = v56 >= v62;
            v57 = v62;
            if (v62 >= v56)
            {
              goto LABEL_90;
            }
          }

LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }
      }

LABEL_90:

      v67 = *(v19 + 16);
      if (!v67)
      {
        goto LABEL_117;
      }

      ++v9;
      v68 = *(v19 + 16);
      v37 = v74;
      do
      {
        v69 = v68 - 1;
        if (v68 < 1)
        {
          v71 = 0;
          goto LABEL_97;
        }
      }

      while (!*(v19 + 8 * v68-- + 24));
      v71 = v69 + 1;
      if (v67 < v69 + 1)
      {
        goto LABEL_118;
      }

LABEL_97:
      specialized Array.append<A>(contentsOf:)(v19, v19 + 32, 0, (2 * v71) | 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      v19 = v20 - v71;
      if (__OFSUB__(v20, v71))
      {
        goto LABEL_119;
      }

      if (v19 < 0)
      {
        goto LABEL_120;
      }

      if (v19)
      {
        v38 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v38 + 16) = v19;
        bzero((v38 + 32), 8 * v19);
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v38, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      if (v9 == v75)
      {
        goto LABEL_101;
      }
    }

    if (v82 || v9 < *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        v19 = *v37;
        v77 = -v40;
        v78 = (8 * v39);
        v20 = 4;
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v82)
          {
            v43 = MEMORY[0x2743B2D10](v9, v41);
          }

          else
          {
            v43 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v44 = *(v43 + 32);
          if ((v20 - 4) >= *(v44 + 16))
          {
            break;
          }

          v45 = *(v44 + 8 * v20);

          if (*(v45 + 16) - 1 >= v39)
          {
            goto LABEL_103;
          }

          v46 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v46 + 16) = v39;
          bzero((v46 + 32), v78);
          v94 = v46;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v45, v39, &v94);

          v47 = v94;
          if (!*(v94 + 2))
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
          }

          v49 = v42[2];
          v48 = v42[3];
          if (v49 >= v48 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v42);
          }

          v42[2] = v49 + 1;
          v42[v49 + 4] = v47;
          if (v82)
          {
            v50 = MEMORY[0x2743B2D10](v9, v80);
          }

          else
          {
            v50 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v51 = *(v50 + 32);
          if ((v20 - 4) >= *(v51 + 16))
          {
            goto LABEL_105;
          }

          v52 = *(v51 + 8 * v20);
          if (!*(v52 + 16))
          {
            goto LABEL_106;
          }

          v53 = *(v52 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
          }

          v55 = *(v19 + 16);
          v54 = *(v19 + 24);
          if (v55 >= v54 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v19);
          }

          *(v19 + 16) = v55 + 1;
          *(v19 + 8 * v55 + 32) = v53;
          ++v20;
          v41 = v80;
          if (v77 + v20 == 4)
          {
            *v74 = v19;
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      goto LABEL_121;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    if (v19 < 0)
    {
      v72 = v19;
    }

    else
    {
      v72 = v19 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

{
  v6 = *(v4 + 72);
  if (*(a2 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    v87 = 0xD00000000000001BLL;
    v88 = 0x8000000270C51C80;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v31);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = v6;
LABEL_19:
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    v35 = v88;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v36 = v87;
    *(v36 + 8) = v35;
    *(v36 + 16) = 2;
    return swift_willThrow();
  }

  v9 = a2;
  v11 = *(a3 + 16);
  if (v11 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51F80;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_19;
  }

  v74 = a1;
  v78 = a4;
  if (a4[2] != 3)
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51CE0;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = 3;
    goto LABEL_19;
  }

  v87 = a3;
  v88 = a3 + 32;
  v89 = 0;
  v90 = (2 * v11) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v13 = *(v4 + 24);
  v91 = *(v4 + 8);
  v92 = v13;
  v93 = *(v4 + 40);
  v14 = *(&v91 + 1);
  v79 = v13;
  v15 = v93;
  v16 = specialized Gadget.wirePolynomialLength.getter();
  v17 = specialized Gadget.gadgetPolynomialLength.getter();
  v73 = v91;
  *(inited + 32) = v91;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  *(inited + 64) = v17;

  sub_270B600A8(inited, &v87);
  v19 = v18;
  v20 = v5;
  swift_setDeallocating();
  if (v19 >> 62)
  {
    goto LABEL_123;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v72))
  {
    v22 = MEMORY[0x277D84F90];
    v80 = v19;
    v75 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    v81 = v20;
    v84[0] = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v24 = v75;
    if (v75 < 0)
    {
      break;
    }

    v25 = 0;
    v22 = v84[0];
    v26 = v19;
    v27 = v19 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v24 = v75;
        v28 = MEMORY[0x2743B2D10](v25, v26);
      }

      else
      {
        v28 = *(v26 + 8 * v25 + 32);
      }

      v84[0] = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v24 = v75;
        v26 = v80;
        v22 = v84[0];
      }

      ++v25;
      *(v22 + 16) = v30 + 1;
      *(v22 + 8 * v30 + 32) = v28;
    }

    while (v24 != v25);
    v20 = v81;
LABEL_20:
    specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v9, v78, 1uLL, v22, v85);
    if (v20)
    {

      return swift_unknownObjectRelease();
    }

    if (v75 < 0)
    {
      goto LABEL_128;
    }

    v37 = v74;
    if (!v75)
    {
LABEL_101:

      return swift_unknownObjectRelease();
    }

    if (!v79)
    {
      goto LABEL_129;
    }

    v9 = 0;
    v82 = v80 & 0xC000000000000001;
    v76 = v80 + 32;
    while (1)
    {
      v19 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[12] = v19;
      if (v9 == 1)
      {
        goto LABEL_115;
      }

      v19 = 40 * v9;
      v39 = v86[5 * v9 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[0] = v73;
      v40 = v86[5 * v9];
      if (v40 < 0)
      {
        goto LABEL_116;
      }

      v41 = v80;
      if (v40)
      {
        break;
      }

      v42 = MEMORY[0x277D84F90];
LABEL_57:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v83[9] = result;
      v20 = v83[5 * v9 + 9];
      if (v79 < 1)
      {
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v56 = v42[2];
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v56)
        {
          v57 = 0;
          v58 = v42 + 4;
          v59 = 1;
          while (1)
          {
            v60 = v56 - v57;
            v61 = __OFSUB__(v56, v57);
            v62 = v57 + v79;
            if (__OFADD__(v57, v79))
            {
              if (v61)
              {
                goto LABEL_114;
              }

              if (v60 < 0)
              {
                goto LABEL_130;
              }

              v63 = v60 < v79;
              v64 = v60 >= v79 ? v57 + v79 : v56;
              if (!v63)
              {
                goto LABEL_130;
              }

              v62 = 0x7FFFFFFFFFFFFFFFLL;
              if (v64 < v57)
              {
                goto LABEL_107;
              }
            }

            else
            {
              if (v61)
              {
                goto LABEL_113;
              }

              if (v60 < 0)
              {
                v64 = v57 + v79;
                if (v62 < v57)
                {
                  goto LABEL_107;
                }
              }

              else
              {
                if (v60 >= v79)
                {
                  v64 = v57 + v79;
                }

                else
                {
                  v64 = v56;
                }

                if (v64 < v57)
                {
                  goto LABEL_107;
                }
              }
            }

            if (!v59)
            {
              goto LABEL_108;
            }

            if (v57 < 0)
            {
              break;
            }

            if (v56 < v64)
            {
              goto LABEL_110;
            }

            if (v57 >= v64)
            {
              goto LABEL_111;
            }

            if (v57 + 1 >= v64)
            {
              goto LABEL_112;
            }

            v65 = v58[v57];
            v66 = v58[v57 + 1];

            _s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field64V_Tt2B5(v65, v66, &v94);

            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field64V_Tt2B5(v19, v94, v83);

            v19 = v83[0];
            v59 = v56 >= v62;
            v57 = v62;
            if (v62 >= v56)
            {
              goto LABEL_90;
            }
          }

LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }
      }

LABEL_90:

      v67 = *(v19 + 16);
      if (!v67)
      {
        goto LABEL_117;
      }

      ++v9;
      v68 = *(v19 + 16);
      v37 = v74;
      do
      {
        v69 = v68 - 1;
        if (v68 < 1)
        {
          v71 = 0;
          goto LABEL_97;
        }
      }

      while (!*(v19 + 8 * v68-- + 24));
      v71 = v69 + 1;
      if (v67 < v69 + 1)
      {
        goto LABEL_118;
      }

LABEL_97:
      specialized Array.append<A>(contentsOf:)(v19, v19 + 32, 0, (2 * v71) | 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      v19 = v20 - v71;
      if (__OFSUB__(v20, v71))
      {
        goto LABEL_119;
      }

      if (v19 < 0)
      {
        goto LABEL_120;
      }

      if (v19)
      {
        v38 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v38 + 16) = v19;
        bzero((v38 + 32), 8 * v19);
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v38, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      if (v9 == v75)
      {
        goto LABEL_101;
      }
    }

    if (v82 || v9 < *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        v19 = *v37;
        v77 = -v40;
        v78 = (8 * v39);
        v20 = 4;
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v82)
          {
            v43 = MEMORY[0x2743B2D10](v9, v41);
          }

          else
          {
            v43 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v44 = *(v43 + 32);
          if ((v20 - 4) >= *(v44 + 16))
          {
            break;
          }

          v45 = *(v44 + 8 * v20);

          if (*(v45 + 16) - 1 >= v39)
          {
            goto LABEL_103;
          }

          v46 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v46 + 16) = v39;
          bzero((v46 + 32), v78);
          v94 = v46;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v45, v39, &v94);

          v47 = v94;
          if (!*(v94 + 2))
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
          }

          v49 = v42[2];
          v48 = v42[3];
          if (v49 >= v48 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v42);
          }

          v42[2] = v49 + 1;
          v42[v49 + 4] = v47;
          if (v82)
          {
            v50 = MEMORY[0x2743B2D10](v9, v80);
          }

          else
          {
            v50 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v51 = *(v50 + 32);
          if ((v20 - 4) >= *(v51 + 16))
          {
            goto LABEL_105;
          }

          v52 = *(v51 + 8 * v20);
          if (!*(v52 + 16))
          {
            goto LABEL_106;
          }

          v53 = *(v52 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
          }

          v55 = *(v19 + 16);
          v54 = *(v19 + 24);
          if (v55 >= v54 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v19);
          }

          *(v19 + 16) = v55 + 1;
          *(v19 + 8 * v55 + 32) = v53;
          ++v20;
          v41 = v80;
          if (v77 + v20 == 4)
          {
            *v74 = v19;
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      goto LABEL_121;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    if (v19 < 0)
    {
      v72 = v19;
    }

    else
    {
      v72 = v19 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(char **a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = *(v4 + 72);
  if (*(a2 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    v98 = 0xD00000000000001BLL;
    v99 = 0x8000000270C51C80;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96[0] = v6;
    goto LABEL_7;
  }

  v10 = v5;
  v12 = *(a3 + 16);
  if (v12 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v98 = 0xD000000000000019;
    v99 = 0x8000000270C51F80;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96[0] = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_7;
  }

  if (*(a4 + 16))
  {
    _StringGuts.grow(_:)(33);

    v98 = 0xD000000000000019;
    v99 = 0x8000000270C51CE0;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96[0] = 0;
LABEL_7:
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    v17 = v99;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v18 = v98;
    *(v18 + 8) = v17;
    *(v18 + 16) = 2;
    return swift_willThrow();
  }

  v90 = a2;
  v92 = a4;
  v86 = a1;
  v105 = a3;
  v98 = a3;
  v99 = a3 + 32;
  v100 = 0;
  v101 = (2 * v12) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v21 = *(v4 + 24);
  v102 = *(v4 + 8);
  v103 = v21;
  v104 = *(v4 + 40);
  v23 = *(&v102 + 1);
  v22 = v102;
  v24 = *(&v21 + 1);
  v87 = v21;
  v25 = v104;
  v26 = specialized Gadget.wirePolynomialLength.getter();
  v27 = specialized Gadget.gadgetPolynomialLength.getter();
  v84 = v22;
  *(inited + 32) = __PAIR128__(v23, v22);
  *(inited + 48) = v24;
  *(inited + 56) = v26;
  *(inited + 64) = v27;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay4VDAF16GadgetParametersVG_AF0E10WireInputsCyAF7Field32VGs5NeverOTg5096_s4VDAF16FullyLinearProofPAAE5prove4into11measurement0E4Rand05jointH0yqd__z_Say1FQzGA2KtKSmRd__7b15Qyd__AJRSlFAA16egh11CyAJGAA0K10f43VXEfU_AA28PINENormEqualityCheckCircuitVyAA7I18VSRySfGG_SayAVGTG5s10ArraySliceVyAMGTf1cn_nTm(inited, &v98);
  v29 = v28;
  swift_setDeallocating();
  v91 = v29;
  if (v29 >> 62)
  {
    goto LABEL_141;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v83))
  {
    v31 = MEMORY[0x277D84F90];
    v85 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    v105 = v10;
    v96[0] = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v32 = v85;
    if (v85 < 0)
    {
      break;
    }

    v33 = 0;
    v31 = v96[0];
    do
    {
      if ((v91 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x2743B2D10](v33, v91);
      }

      else
      {
        v34 = *(v91 + 8 * v33 + 32);
      }

      v96[0] = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v32 = v85;
        v31 = v96[0];
      }

      ++v33;
      *(v31 + 16) = v36 + 1;
      *(v31 + 8 * v36 + 32) = v34;
    }

    while (v32 != v33);
    v10 = v105;
LABEL_20:
    specialized PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v90, v92, v31, v94);
    if (v10)
    {

      return swift_unknownObjectRelease();
    }

    v37 = v91;
    if (v85 < 0)
    {
      goto LABEL_146;
    }

    v38 = v86;
    if (!v85)
    {
LABEL_116:

      return swift_unknownObjectRelease();
    }

    if (!v87)
    {
      goto LABEL_147;
    }

    v39 = 0;
    v92 = v91 & 0xC000000000000001;
    v88 = v91 + 32;
    while (1)
    {
      v29 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v97[12] = v29;
      if (v39 == 1)
      {
        goto LABEL_132;
      }

      v10 = 40 * v39;
      v29 = v97[5 * v39 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v97[0] = v84;
      v41 = v97[5 * v39];
      if (v41 < 0)
      {
        goto LABEL_133;
      }

      v105 = v39;
      if (v41)
      {
        break;
      }

      v44 = MEMORY[0x277D84F90];
      v57 = v87;
LABEL_57:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v93[4] = result;
      v90 = v93[5 * v39 + 4];
      if (v57 < 1)
      {
        v29 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v10 = v44[2];
        v29 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v10)
        {
          v58 = 0;
          v59 = 1;
          while (1)
          {
            v61 = v58;
            v62 = v10 - v58;
            v63 = __OFSUB__(v10, v58);
            v64 = __OFADD__(v58, v57);
            v58 += v57;
            if (v64)
            {
              if (v63)
              {
                goto LABEL_129;
              }

              if ((v62 & 0x8000000000000000) != 0)
              {
                goto LABEL_148;
              }

              v65 = v62 >= v57;
              v66 = v62 >= v57 ? v58 : v10;
              if (v65)
              {
                goto LABEL_148;
              }

              v58 = 0x7FFFFFFFFFFFFFFFLL;
              if (v66 < v61)
              {
                goto LABEL_122;
              }
            }

            else
            {
              if (v63)
              {
                goto LABEL_128;
              }

              if ((v62 & 0x8000000000000000) != 0)
              {
                v66 = v58;
                if (v58 < v61)
                {
                  goto LABEL_122;
                }
              }

              else
              {
                if (v62 >= v57)
                {
                  v66 = v58;
                }

                else
                {
                  v66 = v10;
                }

                if (v66 < v61)
                {
                  goto LABEL_122;
                }
              }
            }

            if (!v59)
            {
              goto LABEL_123;
            }

            if (v61 < 0)
            {
              break;
            }

            if (v10 < v66)
            {
              goto LABEL_125;
            }

            if (v61 >= v66)
            {
              goto LABEL_126;
            }

            v67 = *(v25 + 16);
            if (!v67)
            {
              goto LABEL_127;
            }

            v68 = v44[v61 + 4];
            do
            {
              if (v67 < 1)
              {
                v60 = &outlined read-only object #1 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
LABEL_61:

                goto LABEL_62;
              }
            }

            while (!*(v25 + 4 * v67-- + 28));
            v70 = *(v68 + 16);
            if (!v70)
            {
              goto LABEL_130;
            }

            v71 = *(v68 + 16);
            do
            {
              if (v71 < 1)
              {
                v77 = *(v25 + 32);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMR);
                v60 = swift_allocObject();
                v60[1] = xmmword_270C44540;
                *(v60 + 8) = v77;
                goto LABEL_61;
              }
            }

            while (!*(v68 + 4 * v71-- + 28));
            do
            {
              v73 = v70 - 1;
              if (v70 < 1)
              {
                goto LABEL_99;
              }
            }

            while (!*(v68 + 4 * v70-- + 28));
            if ((v73 + 1) <= 0x3C)
            {
LABEL_99:

              specialized evaluateUsingHorner<A, B, C>(_:atInput:)(v25, v68);
              v60 = v75;
              v76 = v75[2];

              if (!v76)
              {
                goto LABEL_131;
              }

              goto LABEL_103;
            }

            v60 = specialized evaluateUsingDFT<A, B, C>(_:atInput:)(v25, v68);
            v78 = *(v60 + 2);

            if (!v78)
            {
              goto LABEL_138;
            }

LABEL_103:
            v57 = v87;
LABEL_62:
            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field32V_Tt2B5(v29, v60, &v95);

            v29 = v95;
            v59 = v10 >= v58;
            if (v58 >= v10)
            {
              goto LABEL_105;
            }
          }

LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }
      }

LABEL_105:

      v79 = *(v29 + 16);
      if (!v79)
      {
        goto LABEL_134;
      }

      v39 = v105 + 1;
      v80 = *(v29 + 16);
      v38 = v86;
      do
      {
        v81 = v80 - 1;
        if (v80 < 1)
        {
          v10 = 0;
          goto LABEL_112;
        }
      }

      while (!*(v29 + 4 * v80-- + 28));
      v10 = v81 + 1;
      if (v79 < v81 + 1)
      {
        goto LABEL_135;
      }

LABEL_112:
      specialized Array.append<A>(contentsOf:)(v29, v29 + 32, 0, (2 * v10) | 1);
      v37 = v91;
      v29 = v90 - v10;
      if (__OFSUB__(v90, v10))
      {
        goto LABEL_136;
      }

      if (v29 < 0)
      {
        goto LABEL_137;
      }

      if (v29)
      {
        v40 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v40 + 16) = v29;
        bzero((v40 + 32), 4 * v29);
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v40);
      if (v39 == v85)
      {
        goto LABEL_116;
      }
    }

    if (v92 || v39 < *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v29 & 0x8000000000000000) == 0)
      {
        v42 = *v38;
        v89 = -v41;
        v90 = 4 * v29;
        v43 = 4;
        v44 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v92)
          {
            v45 = MEMORY[0x2743B2D10](v105, v37);
          }

          else
          {
            v45 = *(v88 + 8 * v105);
          }

          v10 = v43 - 4;
          swift_beginAccess();
          v46 = *(v45 + 32);
          if ((v43 - 4) >= *(v46 + 16))
          {
            break;
          }

          v47 = *(v46 + 8 * v43);

          if (*(v47 + 16) - 1 >= v29)
          {
            goto LABEL_118;
          }

          v48 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v48 + 16) = v29;
          bzero((v48 + 32), v90);
          v95 = v48;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v47, v29, &v95);

          v49 = v95;
          if (!*(v95 + 2))
          {
            goto LABEL_119;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
          }

          v51 = v44[2];
          v50 = v44[3];
          if (v51 >= v50 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v44);
          }

          v44[2] = v51 + 1;
          v44[v51 + 4] = v49;
          if (v92)
          {
            v37 = v91;
            v52 = MEMORY[0x2743B2D10](v105, v91);
          }

          else
          {
            v52 = *(v88 + 8 * v105);

            v37 = v91;
          }

          swift_beginAccess();
          v53 = *(v52 + 32);
          if (v10 >= *(v53 + 16))
          {
            goto LABEL_120;
          }

          v54 = *(v53 + 8 * v43);
          if (!*(v54 + 16))
          {
            goto LABEL_121;
          }

          v10 = *(v54 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
          }

          v56 = *(v42 + 2);
          v55 = *(v42 + 3);
          if (v56 >= v55 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v42);
          }

          *(v42 + 2) = v56 + 1;
          *&v42[4 * v56 + 32] = v10;
          ++v43;
          if (v89 + v43 == 4)
          {
            *v86 = v42;
            v57 = v87;
            v39 = v105;
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      goto LABEL_139;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    if (v29 < 0)
    {
      v83 = v29;
    }

    else
    {
      v83 = v29 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 72);
  if (*(a2 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    v87 = 0xD00000000000001BLL;
    v88 = 0x8000000270C51C80;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v31);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = v6;
LABEL_19:
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    v35 = v88;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v36 = v87;
    *(v36 + 8) = v35;
    *(v36 + 16) = 2;
    return swift_willThrow();
  }

  v9 = a2;
  v11 = *(a3 + 16);
  if (v11 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51F80;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_19;
  }

  v74 = a1;
  v78 = a4;
  if (*(a4 + 16) != 3)
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51CE0;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = 3;
    goto LABEL_19;
  }

  v87 = a3;
  v88 = a3 + 32;
  v89 = 0;
  v90 = (2 * v11) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v13 = *(v4 + 24);
  v91 = *(v4 + 8);
  v92 = v13;
  v93 = *(v4 + 40);
  v14 = *(&v91 + 1);
  v79 = v13;
  v15 = v93;
  v16 = specialized Gadget.wirePolynomialLength.getter();
  v17 = specialized Gadget.gadgetPolynomialLength.getter();
  v73 = v91;
  *(inited + 32) = v91;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  *(inited + 64) = v17;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay4VDAF16GadgetParametersVG_AF0E10WireInputsCyAF7Field32VGs5NeverOTg5096_s4VDAF16FullyLinearProofPAAE5prove4into11measurement0E4Rand05jointH0yqd__z_Say1FQzGA2KtKSmRd__7b15Qyd__AJRSlFAA16egh11CyAJGAA0K10f43VXEfU_AA28PINENormEqualityCheckCircuitVyAA7I18VSRySfGG_SayAVGTG5s10ArraySliceVyAMGTf1cn_nTm(inited, &v87);
  v19 = v18;
  v20 = v5;
  swift_setDeallocating();
  if (v19 >> 62)
  {
    goto LABEL_123;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v72))
  {
    v22 = MEMORY[0x277D84F90];
    v80 = v19;
    v75 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    v81 = v20;
    v85[0] = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v24 = v75;
    if (v75 < 0)
    {
      break;
    }

    v25 = 0;
    v22 = v85[0];
    v26 = v19;
    v27 = v19 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v24 = v75;
        v28 = MEMORY[0x2743B2D10](v25, v26);
      }

      else
      {
        v28 = *(v26 + 8 * v25 + 32);
      }

      v85[0] = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v24 = v75;
        v26 = v80;
        v22 = v85[0];
      }

      ++v25;
      *(v22 + 16) = v30 + 1;
      *(v22 + 8 * v30 + 32) = v28;
    }

    while (v24 != v25);
    v20 = v81;
LABEL_20:
    specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v9, v78, 1, v22, v84);
    if (v20)
    {

      return swift_unknownObjectRelease();
    }

    if (v75 < 0)
    {
      goto LABEL_128;
    }

    v37 = v74;
    if (!v75)
    {
LABEL_101:

      return swift_unknownObjectRelease();
    }

    if (!v79)
    {
      goto LABEL_129;
    }

    v9 = 0;
    v82 = v80 & 0xC000000000000001;
    v76 = v80 + 32;
    while (1)
    {
      v19 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[12] = v19;
      if (v9 == 1)
      {
        goto LABEL_115;
      }

      v19 = 40 * v9;
      v39 = v86[5 * v9 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[0] = v73;
      v40 = v86[5 * v9];
      if (v40 < 0)
      {
        goto LABEL_116;
      }

      v41 = v80;
      if (v40)
      {
        break;
      }

      v42 = MEMORY[0x277D84F90];
LABEL_57:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v83[9] = result;
      v20 = v83[5 * v9 + 9];
      if (v79 < 1)
      {
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v56 = v42[2];
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v56)
        {
          v57 = 0;
          v58 = v42 + 4;
          v59 = 1;
          while (1)
          {
            v60 = v56 - v57;
            v61 = __OFSUB__(v56, v57);
            v62 = v57 + v79;
            if (__OFADD__(v57, v79))
            {
              if (v61)
              {
                goto LABEL_114;
              }

              if (v60 < 0)
              {
                goto LABEL_130;
              }

              v63 = v60 < v79;
              v64 = v60 >= v79 ? v57 + v79 : v56;
              if (!v63)
              {
                goto LABEL_130;
              }

              v62 = 0x7FFFFFFFFFFFFFFFLL;
              if (v64 < v57)
              {
                goto LABEL_107;
              }
            }

            else
            {
              if (v61)
              {
                goto LABEL_113;
              }

              if (v60 < 0)
              {
                v64 = v57 + v79;
                if (v62 < v57)
                {
                  goto LABEL_107;
                }
              }

              else
              {
                if (v60 >= v79)
                {
                  v64 = v57 + v79;
                }

                else
                {
                  v64 = v56;
                }

                if (v64 < v57)
                {
                  goto LABEL_107;
                }
              }
            }

            if (!v59)
            {
              goto LABEL_108;
            }

            if (v57 < 0)
            {
              break;
            }

            if (v56 < v64)
            {
              goto LABEL_110;
            }

            if (v57 >= v64)
            {
              goto LABEL_111;
            }

            if (v57 + 1 >= v64)
            {
              goto LABEL_112;
            }

            v65 = v58[v57];
            v66 = v58[v57 + 1];

            _s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field32V_Tt2B5(v65, v66, &v94);

            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field32V_Tt2B5(v19, v94, v83);

            v19 = v83[0];
            v59 = v56 >= v62;
            v57 = v62;
            if (v62 >= v56)
            {
              goto LABEL_90;
            }
          }

LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }
      }

LABEL_90:

      v67 = *(v19 + 16);
      if (!v67)
      {
        goto LABEL_117;
      }

      ++v9;
      v68 = *(v19 + 16);
      v37 = v74;
      do
      {
        v69 = v68 - 1;
        if (v68 < 1)
        {
          v71 = 0;
          goto LABEL_97;
        }
      }

      while (!*(v19 + 4 * v68-- + 28));
      v71 = v69 + 1;
      if (v67 < v69 + 1)
      {
        goto LABEL_118;
      }

LABEL_97:
      specialized Array.append<A>(contentsOf:)(v19, v19 + 32, 0, (2 * v71) | 1);
      v19 = v20 - v71;
      if (__OFSUB__(v20, v71))
      {
        goto LABEL_119;
      }

      if (v19 < 0)
      {
        goto LABEL_120;
      }

      if (v19)
      {
        v38 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v38 + 16) = v19;
        bzero((v38 + 32), 4 * v19);
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v38);
      if (v9 == v75)
      {
        goto LABEL_101;
      }
    }

    if (v82 || v9 < *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        v19 = *v37;
        v77 = -v40;
        v78 = 4 * v39;
        v20 = 4;
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v82)
          {
            v43 = MEMORY[0x2743B2D10](v9, v41);
          }

          else
          {
            v43 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v44 = *(v43 + 32);
          if ((v20 - 4) >= *(v44 + 16))
          {
            break;
          }

          v45 = *(v44 + 8 * v20);

          if (*(v45 + 16) - 1 >= v39)
          {
            goto LABEL_103;
          }

          v46 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v46 + 16) = v39;
          bzero((v46 + 32), v78);
          v94 = v46;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v45, v39, &v94);

          v47 = v94;
          if (!*(v94 + 2))
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
          }

          v49 = v42[2];
          v48 = v42[3];
          if (v49 >= v48 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v42);
          }

          v42[2] = v49 + 1;
          v42[v49 + 4] = v47;
          if (v82)
          {
            v50 = MEMORY[0x2743B2D10](v9, v80);
          }

          else
          {
            v50 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v51 = *(v50 + 32);
          if ((v20 - 4) >= *(v51 + 16))
          {
            goto LABEL_105;
          }

          v52 = *(v51 + 8 * v20);
          if (!*(v52 + 16))
          {
            goto LABEL_106;
          }

          v53 = *(v52 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
          }

          v55 = *(v19 + 16);
          v54 = *(v19 + 24);
          if (v55 >= v54 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v19);
          }

          *(v19 + 16) = v55 + 1;
          *(v19 + 4 * v55 + 32) = v53;
          ++v20;
          v41 = v80;
          if (v77 + v20 == 4)
          {
            *v74 = v19;
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      goto LABEL_121;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    if (v19 < 0)
    {
      v72 = v19;
    }

    else
    {
      v72 = v19 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

{
  v6 = *(a2 + 16);
  v7 = *v4;
  if (v6 != *v4)
  {
    _StringGuts.grow(_:)(35);

    v88 = 0xD00000000000001BLL;
    v89 = 0x8000000270C51C80;
    v86[0] = v6;
LABEL_17:
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v86[0] = v7;
LABEL_19:
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v35);

    v36 = v89;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v37 = v88;
    *(v37 + 8) = v36;
    *(v37 + 16) = 2;
    return swift_willThrow();
  }

  v10 = a2;
  v11 = *(a3 + 16);
  if (v11 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v88 = 0xD000000000000019;
    v89 = 0x8000000270C51F80;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v86[0] = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_19;
  }

  v79 = a4;
  v12 = *(a4 + 16);
  v7 = *(v4 + 16);
  if (v12 != v7)
  {
    _StringGuts.grow(_:)(33);

    v88 = 0xD000000000000019;
    v89 = 0x8000000270C51CE0;
    v86[0] = v12;
    goto LABEL_17;
  }

  v88 = a3;
  v89 = a3 + 32;
  v90 = 0;
  v91 = (2 * v11) | 1;
  v13 = *(v4 + 64);
  v92 = *(v4 + 48);
  v93 = v13;
  v94 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v15 = *(&v92 + 1);
  v80 = v93;
  v16 = v94;
  v17 = specialized Gadget.wirePolynomialLength.getter();
  v18 = specialized Gadget.gadgetPolynomialLength.getter();
  v74 = v92;
  *(inited + 32) = v92;
  *(inited + 40) = v15;
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  *(inited + 64) = v18;

  sub_270B600A8(inited, &v88);
  v20 = v19;
  v21 = v5;
  swift_setDeallocating();
  if (v20 >> 62)
  {
    goto LABEL_124;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v73))
  {
    v23 = v79;
    v24 = MEMORY[0x277D84F90];
    v81 = v20;
    v76 = i;
    if (!i)
    {
      goto LABEL_21;
    }

    v82 = v21;
    v85[0] = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v26 = v76;
    if (v76 < 0)
    {
      break;
    }

    v27 = 0;
    v24 = v85[0];
    v28 = v20;
    v29 = v20 & 0xC000000000000001;
    do
    {
      if (v29)
      {
        v26 = v76;
        v30 = MEMORY[0x2743B2D10](v27, v28);
      }

      else
      {
        v30 = *(v28 + 8 * v27 + 32);
      }

      v85[0] = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v26 = v76;
        v28 = v81;
        v24 = v85[0];
      }

      ++v27;
      *(v24 + 16) = v32 + 1;
      *(v24 + 8 * v32 + 32) = v30;
    }

    while (v26 != v27);
    v23 = v79;
    v21 = v82;
LABEL_21:
    specialized SumVectorType.evaluate(measurement:jointRand:numOfShares:for:)(v10, v23, 1uLL, v24, v86);
    if (v21)
    {

      return swift_unknownObjectRelease();
    }

    if (v76 < 0)
    {
      goto LABEL_129;
    }

    v38 = a1;
    if (!v76)
    {
LABEL_102:

      return swift_unknownObjectRelease();
    }

    if (!v80)
    {
      goto LABEL_130;
    }

    v10 = 0;
    v83 = v81 & 0xC000000000000001;
    v77 = v81 + 32;
    while (1)
    {
      v20 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v87[12] = v20;
      if (v10 == 1)
      {
        goto LABEL_116;
      }

      v20 = 40 * v10;
      v40 = v87[5 * v10 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v87[0] = v74;
      v41 = v87[5 * v10];
      if (v41 < 0)
      {
        goto LABEL_117;
      }

      v42 = v81;
      if (v41)
      {
        break;
      }

      v43 = MEMORY[0x277D84F90];
LABEL_58:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v84[9] = result;
      v21 = v84[5 * v10 + 9];
      if (v80 < 1)
      {
        v20 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v57 = v43[2];
        v20 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v57)
        {
          v58 = 0;
          v59 = v43 + 4;
          v60 = 1;
          while (1)
          {
            v61 = v57 - v58;
            v62 = __OFSUB__(v57, v58);
            v63 = v58 + v80;
            if (__OFADD__(v58, v80))
            {
              if (v62)
              {
                goto LABEL_115;
              }

              if (v61 < 0)
              {
                goto LABEL_131;
              }

              v64 = v61 < v80;
              v65 = v61 >= v80 ? v58 + v80 : v57;
              if (!v64)
              {
                goto LABEL_131;
              }

              v63 = 0x7FFFFFFFFFFFFFFFLL;
              if (v65 < v58)
              {
                goto LABEL_108;
              }
            }

            else
            {
              if (v62)
              {
                goto LABEL_114;
              }

              if (v61 < 0)
              {
                v65 = v58 + v80;
                if (v63 < v58)
                {
                  goto LABEL_108;
                }
              }

              else
              {
                if (v61 >= v80)
                {
                  v65 = v58 + v80;
                }

                else
                {
                  v65 = v57;
                }

                if (v65 < v58)
                {
                  goto LABEL_108;
                }
              }
            }

            if (!v60)
            {
              goto LABEL_109;
            }

            if (v58 < 0)
            {
              break;
            }

            if (v57 < v65)
            {
              goto LABEL_111;
            }

            if (v58 >= v65)
            {
              goto LABEL_112;
            }

            if (v58 + 1 >= v65)
            {
              goto LABEL_113;
            }

            v66 = v59[v58];
            v67 = v59[v58 + 1];

            _s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field64V_Tt2B5(v66, v67, &v95);

            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field64V_Tt2B5(v20, v95, v84);

            v20 = v84[0];
            v60 = v57 >= v63;
            v58 = v63;
            if (v63 >= v57)
            {
              goto LABEL_91;
            }
          }

LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }
      }

LABEL_91:

      v68 = *(v20 + 16);
      if (!v68)
      {
        goto LABEL_118;
      }

      ++v10;
      v69 = *(v20 + 16);
      v38 = a1;
      do
      {
        v70 = v69 - 1;
        if (v69 < 1)
        {
          v72 = 0;
          goto LABEL_98;
        }
      }

      while (!*(v20 + 8 * v69-- + 24));
      v72 = v70 + 1;
      if (v68 < v70 + 1)
      {
        goto LABEL_119;
      }

LABEL_98:
      specialized Array.append<A>(contentsOf:)(v20, v20 + 32, 0, (2 * v72) | 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      v20 = v21 - v72;
      if (__OFSUB__(v21, v72))
      {
        goto LABEL_120;
      }

      if (v20 < 0)
      {
        goto LABEL_121;
      }

      if (v20)
      {
        v39 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v39 + 16) = v20;
        bzero((v39 + 32), 8 * v20);
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v39, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      if (v10 == v76)
      {
        goto LABEL_102;
      }
    }

    if (v83 || v10 < *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v40 & 0x8000000000000000) == 0)
      {
        v20 = *v38;
        v78 = -v41;
        v79 = 8 * v40;
        v21 = 4;
        v43 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v83)
          {
            v44 = MEMORY[0x2743B2D10](v10, v42);
          }

          else
          {
            v44 = *(v77 + 8 * v10);
          }

          swift_beginAccess();
          v45 = *(v44 + 32);
          if ((v21 - 4) >= *(v45 + 16))
          {
            break;
          }

          v46 = *(v45 + 8 * v21);

          if (*(v46 + 16) - 1 >= v40)
          {
            goto LABEL_104;
          }

          v47 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v47 + 16) = v40;
          bzero((v47 + 32), v79);
          v95 = v47;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v46, v40, &v95);

          v48 = v95;
          if (!*(v95 + 2))
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
          }

          v50 = v43[2];
          v49 = v43[3];
          if (v50 >= v49 >> 1)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v43);
          }

          v43[2] = v50 + 1;
          v43[v50 + 4] = v48;
          if (v83)
          {
            v51 = MEMORY[0x2743B2D10](v10, v81);
          }

          else
          {
            v51 = *(v77 + 8 * v10);
          }

          swift_beginAccess();
          v52 = *(v51 + 32);
          if ((v21 - 4) >= *(v52 + 16))
          {
            goto LABEL_106;
          }

          v53 = *(v52 + 8 * v21);
          if (!*(v53 + 16))
          {
            goto LABEL_107;
          }

          v54 = *(v53 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
          }

          v56 = *(v20 + 16);
          v55 = *(v20 + 24);
          if (v56 >= v55 >> 1)
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v20);
          }

          *(v20 + 16) = v56 + 1;
          *(v20 + 8 * v56 + 32) = v54;
          ++v21;
          v42 = v81;
          if (v78 + v21 == 4)
          {
            *a1 = v20;
            goto LABEL_58;
          }
        }

        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      goto LABEL_122;
    }

LABEL_123:
    __break(1u);
LABEL_124:
    if (v20 < 0)
    {
      v73 = v20;
    }

    else
    {
      v73 = v20 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  v15 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 > 0xFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[0] = result;
  v16 = *(a2 + 8 * a1 + 32);

  v17 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(1u, 101777407);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44590;
  v18 = *(a3 + 320);
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v18 > 0xFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = result;
  *(result + 32) = v18;
  v20 = *(a3 + 312);
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v20 > 0xFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(result + 33) = v20;
  *(result + 34) = v15;
  if (*(v16 + 16) != 32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v21, v17, v19);
  if (!*(result + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    v22 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    v23 = result;
    swift_beginAccess();
    (*(v7 + 16))(v9, v23 + v22, v6);
    HMAC.finalize()();
    (*(v7 + 8))(v9, v6);
    v24 = v25[0];
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();

    (*(v11 + 8))(v14, v24);
    return v23;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:)(unint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 > 0xFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(a2 + 8 * result + 32);

  v8 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(1u, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44590;
  v9 = *(a3 + 320);
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v9 > 0xFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(result + 32) = v9;
  v10 = *(a3 + 312);
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10 <= 0xFF)
  {
    *(result + 33) = v10;
    *(result + 34) = v4;
    v11 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v7, v8, result);

    swift_setDeallocating();
    return v11;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  if (*(*a3 + 16) < a1)
  {
    goto LABEL_75;
  }

  v3 = a3;
  v4 = a2;
  v5 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v8 = *(v6 + 16);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return result;
  }

LABEL_76:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v6 = result;
  v8 = *(result + 16);
  if (!v8)
  {
    goto LABEL_77;
  }

LABEL_4:
  v9 = (v6 + 32);
  v10 = *(v6 + 32);
  v11 = v10 * v4;
  v12 = (v10 * v4) >> 64;
  v13 = 0xCFFE47FFFEAFFFFFLL * v10 * v4;
  v14 = (v13 * 0xFFFEB00001uLL) >> 64;
  LODWORD(v15) = __CFADD__(0xFFFEB00001 * v13, v11);
  v16 = v14 + v12;
  if (__CFADD__(v14, v12))
  {
    v17 = v16 + v15;
    v18 = __CFADD__(v17, 0xFFFFFF00014FFFFFLL);
    v15 = v17 - 0xFFFEB00001;
    if (!v18)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (v16 == -1)
  {
    if (v15)
    {
      v15 = 0xFFFFFF00014FFFFFLL;
    }

    else
    {
      v15 = 0xFFFFFF00014FFFFELL;
    }
  }

  else
  {
    v15 = v16 + (v15 & 1);
    if (v15 >= 0xFFFEB00001)
    {
      v15 -= 0xFFFEB00001;
    }
  }

LABEL_19:
  *v9 = v15;
  if (v5 < -1)
  {
    goto LABEL_78;
  }

  v19 = v5 / 2;
  if (v5 / 2 >= v8)
  {
    goto LABEL_78;
  }

  v20 = v9[v19];
  v21 = (v20 * v4) >> 64;
  v22 = v20 * v4;
  v23 = (0xCFFE47FFFEAFFFFFLL * v22 * 0xFFFEB00001uLL) >> 64;
  LODWORD(v24) = __CFADD__(-v22, v22);
  v18 = __CFADD__(v23, v21);
  v25 = v23 + v21;
  if (v18)
  {
    v26 = v25 + v24;
    v18 = __CFADD__(v26, 0xFFFFFF00014FFFFFLL);
    v24 = v26 - 0xFFFEB00001;
    if (!v18)
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  if (v25 == -1)
  {
    if (v24)
    {
      v24 = 0xFFFFFF00014FFFFFLL;
    }

    else
    {
      v24 = 0xFFFFFF00014FFFFELL;
    }
  }

  else
  {
    v24 = v25 + (v24 & 1);
    if (v24 >= 0xFFFEB00001)
    {
      v24 -= 0xFFFEB00001;
    }
  }

LABEL_36:
  v9[v19] = v24;
  *v3 = v6;
  if (v5 >= 2 && (v5 & 0x7FFFFFFFFFFFFFFELL) != 2)
  {
    if (v8 != 1)
    {
      v27 = 0;
      v28 = v19 - 1;
      while (1)
      {
        v30 = v5 - (v27 + 1);
        if (__OFSUB__(v5, v27 + 1))
        {
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
          goto LABEL_76;
        }

        if (v5 == v27)
        {
          goto LABEL_71;
        }

        if (v30 >= *(v6 + 16))
        {
          goto LABEL_72;
        }

        v31 = v6 + 8 * v27;
        v32 = *(v31 + 40);
        v33 = v9[v30];
        v34 = (v33 * v4) >> 64;
        v35 = v33 * v4;
        v36 = (0xCFFE47FFFEAFFFFFLL * v35 * 0xFFFEB00001uLL) >> 64;
        v37 = __CFADD__(-v35, v35);
        v38 = v36 + v34;
        if (__CFADD__(v36, v34))
        {
          goto LABEL_50;
        }

        if (v38 != -1)
        {
          v41 = v38 + v37;
          if (v41 >= 0xFFFEB00001)
          {
            v40 = v41 - 0xFFFEB00001;
          }

          else
          {
            v40 = v41;
          }

          goto LABEL_58;
        }

        v40 = 0xFFFFFF00014FFFFELL;
        if (v37)
        {
          break;
        }

LABEL_58:
        *(v31 + 40) = v40;
        v42 = v32 * v4;
        v43 = (v32 * v4) >> 64;
        v44 = (0xCFFE47FFFEAFFFFFLL * v42 * 0xFFFEB00001uLL) >> 64;
        v45 = __CFADD__(-v42, v42);
        v18 = __CFADD__(v44, v43);
        v46 = v44 + v43;
        if (v18)
        {
          goto LABEL_40;
        }

        if (v46 != -1)
        {
          v47 = v46 + v45;
          if (v47 >= 0xFFFEB00001)
          {
            result = v47 - 0xFFFEB00001;
          }

          else
          {
            result = v47;
          }

          goto LABEL_41;
        }

        result = 0xFFFFFF00014FFFFELL;
        if (v45)
        {
          v45 = 1;
LABEL_40:
          v29 = v45 + v46;
          result = v29 - 0xFFFEB00001;
          if (v29 >= 0xFFFEB00001)
          {
            goto LABEL_74;
          }
        }

LABEL_41:
        v9[v30] = result;
        if (v28 == ++v27)
        {
          *v3 = v6;
          return result;
        }
      }

      v37 = 1;
LABEL_50:
      v39 = v37 + v38;
      v40 = v39 - 0xFFFEB00001;
      if (v39 >= 0xFFFEB00001)
      {
        goto LABEL_73;
      }

      goto LABEL_58;
    }

    goto LABEL_79;
  }

  return result;
}

{
  v6 = *a3;
  if (*(*a3 + 16) < a1)
  {
    goto LABEL_80;
  }

  v3 = a3;
  v4 = a2;
  v5 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v8 = *(v6 + 16);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return result;
  }

LABEL_81:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v6 = result;
  v8 = *(result + 16);
  if (!v8)
  {
    goto LABEL_82;
  }

LABEL_4:
  v9 = (v6 + 32);
  v10 = *(v6 + 32);
  v11 = (v10 * v4) >> 64;
  v12 = (0xFFFFFFFEFFFFFFFFLL * v10 * v4 * 0xFFFFFFFF00000001) >> 64;
  LODWORD(v13) = __CFADD__(-(v10 * v4), v10 * v4);
  v14 = v12 + v11;
  if (__CFADD__(v12, v11))
  {
    v15 = v14 + v13;
    goto LABEL_10;
  }

  while (v14 == -1)
  {
    if ((v13 & 1) == 0)
    {
      v13 = 4294967294;
      goto LABEL_20;
    }

    v15 = 0;
LABEL_10:
    v14 = 0xFFFFFFFFLL;
    v16 = __CFADD__(v15, 0xFFFFFFFFLL);
    v13 = v15 + 0xFFFFFFFFLL;
    if (!v16)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  v13 = v14 + (v13 & 1);
  if (v13 >= 0xFFFFFFFF00000001)
  {
    v13 += 0xFFFFFFFFLL;
  }

LABEL_20:
  *v9 = v13;
  if (v5 < -1)
  {
    goto LABEL_83;
  }

  v17 = v5 / 2;
  if (v5 / 2 >= v8)
  {
    goto LABEL_83;
  }

  v18 = v9[v17];
  v19 = (v18 * v4) >> 64;
  v20 = (0xFFFFFFFEFFFFFFFFLL * v18 * v4 * 0xFFFFFFFF00000001) >> 64;
  LODWORD(v21) = __CFADD__(-(v18 * v4), v18 * v4);
  v16 = __CFADD__(v20, v19);
  v22 = v20 + v19;
  if (v16)
  {
    v23 = v22 + v21;
    goto LABEL_28;
  }

  while (v22 == -1)
  {
    if ((v21 & 1) == 0)
    {
      v21 = 4294967294;
      goto LABEL_38;
    }

    v23 = 0;
LABEL_28:
    v22 = 0xFFFFFFFFLL;
    v16 = __CFADD__(v23, 0xFFFFFFFFLL);
    v21 = v23 + 0xFFFFFFFFLL;
    if (!v16)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  v21 = v22 + (v21 & 1);
  if (v21 >= 0xFFFFFFFF00000001)
  {
    v21 += 0xFFFFFFFFLL;
  }

LABEL_38:
  v9[v17] = v21;
  *v3 = v6;
  if (v5 >= 2 && (v5 & 0x7FFFFFFFFFFFFFFELL) != 2)
  {
    if (v8 != 1)
    {
      v24 = 0;
      v25 = v17 - 1;
      while (1)
      {
        v29 = v5 - (v24 + 1);
        if (__OFSUB__(v5, v24 + 1))
        {
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
          goto LABEL_81;
        }

        if (v5 == v24)
        {
          goto LABEL_76;
        }

        if (v29 >= *(v6 + 16))
        {
          goto LABEL_77;
        }

        v30 = v6 + 8 * v24;
        v31 = *(v30 + 40);
        v32 = v9[v29];
        result = (v32 * v4) >> 64;
        v33 = (0xFFFFFFFEFFFFFFFFLL * v32 * v4 * 0xFFFFFFFF00000001) >> 64;
        v34 = __CFADD__(-(v32 * v4), v32 * v4);
        v35 = v33 + result;
        if (!__CFADD__(v33, result))
        {
          if (v35 != -1)
          {
            v37 = v35 + v34;
            if (v37 >= 0xFFFFFFFF00000001)
            {
              v37 += 0xFFFFFFFFLL;
            }

            goto LABEL_63;
          }

          if (!v34)
          {
            v37 = 4294967294;
            goto LABEL_63;
          }

          v34 = 1;
        }

        v36 = v34 + v35;
        v16 = __CFADD__(v36, 0xFFFFFFFFLL);
        v37 = v36 + 0xFFFFFFFFLL;
        if (v16)
        {
          goto LABEL_78;
        }

LABEL_63:
        *(v30 + 40) = v37;
        v38 = (v31 * v4) >> 64;
        v39 = (0xFFFFFFFEFFFFFFFFLL * v31 * v4 * 0xFFFFFFFF00000001) >> 64;
        v26 = __CFADD__(-(v31 * v4), v31 * v4);
        v40 = v39 + v38;
        if (!__CFADD__(v39, v38))
        {
          if (v40 != -1)
          {
            v28 = v40 + v26;
            if (v28 >= 0xFFFFFFFF00000001)
            {
              v28 += 0xFFFFFFFFLL;
            }

            goto LABEL_44;
          }

          if (!v26)
          {
            v28 = 4294967294;
            goto LABEL_44;
          }

          v26 = 1;
        }

        v27 = v26 + v40;
        v16 = __CFADD__(v27, 0xFFFFFFFFLL);
        v28 = v27 + 0xFFFFFFFFLL;
        if (v16)
        {
          goto LABEL_79;
        }

LABEL_44:
        v9[v29] = v28;
        if (v25 == ++v24)
        {
          *v3 = v6;
          return result;
        }
      }
    }

    goto LABEL_84;
  }

  return result;
}

uint64_t specialized inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a3;
  if (*(*a3 + 16) < a1)
  {
    goto LABEL_46;
  }

  v3 = a3;
  v5 = a2;
  v4 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_47;
  }

  for (i = *(v6 + 16); i; i = *(result + 16))
  {
    v9 = (v6 + 32);
    v10 = *(v6 + 32) * v5;
    v11 = 4293918721 * (-1048577 * v10);
    v12 = __CFADD__(v11, v10);
    v13 = v11 + v10;
    v14 = HIDWORD(v13);
    if (v12)
    {
      v13 = 0xFFFFFLL;
      v12 = __CFADD__(v14, 0xFFFFF);
      LODWORD(v14) = v14 + 0xFFFFF;
      if (!v12)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    if (v13 >= 0xFFF0000100000000)
    {
      LODWORD(v14) = v14 + 0xFFFFF;
    }

LABEL_11:
    *v9 = v14;
    if (v4 < -1)
    {
      goto LABEL_49;
    }

    v15 = v4 / 2;
    if (v4 / 2 >= i)
    {
      goto LABEL_49;
    }

    v16 = v9[v15] * v5;
    v17 = 4293918721 * (-1048577 * v16);
    v12 = __CFADD__(v17, v16);
    v18 = v17 + v16;
    v19 = HIDWORD(v18);
    if (!v12)
    {
      goto LABEL_18;
    }

    v18 = 0xFFFFFLL;
    v12 = __CFADD__(v19, 0xFFFFF);
    LODWORD(v19) = v19 + 0xFFFFF;
    if (v12)
    {
      __break(1u);
LABEL_18:
      if (v18 >= 0xFFF0000100000000)
      {
        LODWORD(v19) = v19 + 0xFFFFF;
      }
    }

    v9[v15] = v19;
    *v3 = v6;
    if (v4 < 2 || (v4 & 0x7FFFFFFFFFFFFFFELL) == 2)
    {
      return result;
    }

    if (i == 1)
    {
      goto LABEL_50;
    }

    v20 = 0;
    v21 = v15 - 1;
    while (1)
    {
      v23 = v4 - (v20 + 1);
      if (__OFSUB__(v4, v20 + 1))
      {
        break;
      }

      if (v4 == v20)
      {
        goto LABEL_43;
      }

      if (v23 >= *(v6 + 16))
      {
        goto LABEL_44;
      }

      v24 = v6 + 4 * v20;
      v25 = *(v24 + 36);
      v26 = v9[v23] * v5;
      v27 = 4293918721 * (-1048577 * v26);
      v12 = __CFADD__(v27, v26);
      v28 = v27 + v26;
      v29 = HIDWORD(v28);
      if (v12)
      {
        LODWORD(v29) = HIDWORD(v28) + 0xFFFFF;
        if (HIDWORD(v28) >= 0xFFF00001)
        {
          goto LABEL_45;
        }
      }

      else if (v28 >= 0xFFF0000100000000)
      {
        LODWORD(v29) = HIDWORD(v28) + 0xFFFFF;
      }

      *(v24 + 36) = v29;
      v30 = v25 * v5;
      result = 4293918721;
      v31 = 4293918721 * (-1048577 * v30);
      v12 = __CFADD__(v31, v30);
      v32 = v31 + v30;
      v22 = HIDWORD(v32);
      if (v12)
      {
        LODWORD(v22) = HIDWORD(v32) + 0xFFFFF;
        if (HIDWORD(v32) >= 0xFFF00001)
        {
          __break(1u);
LABEL_40:
          *v3 = v6;
          return result;
        }
      }

      else
      {
        result = (HIDWORD(v32) + 0xFFFFF);
        if (v32 >= 0xFFF0000100000000)
        {
          LODWORD(v22) = HIDWORD(v32) + 0xFFFFF;
        }
      }

      v9[v23] = v22;
      if (v21 == ++v20)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unsigned int *_s4VDAF11PINECircuitPAAE17computeRangeCheck_10lowerBound05upperG0Sb04isInD0_1F_11FiniteField11IntegerTypeQZ1vAK1utAHQz_A2NtFZAA15PINEMainCircuitVyAA7Field32VSRySfGG_Tt4B5(unsigned int *result, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = a3 - a4;
  if (a3 < a4)
  {
    v6 = -1048575 - a4;
    if (a4 > 0xFFF00001)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v5 = a3 + v6;
    if (__CFADD__(a3, v6))
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v7 = v5 + 0xFFF000FEFFFFFFFFLL * v5;
  if (v7 >= 0xFFF0000100000000)
  {
    v8 = 0;
  }

  else
  {
    v8 = HIDWORD(v7);
  }

  *result = v8;
  v9 = a5 - a3;
  if (a5 >= a3)
  {
    goto LABEL_10;
  }

  v10 = -1048575 - a3;
  if (a3 > 0xFFF00001)
  {
    goto LABEL_21;
  }

  v11 = __CFADD__(a5, v10);
  v9 = a5 + v10;
  if (v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_10:
  v12 = 0xFFF000FEFFFFFFFFLL * v9 + v9;
  if (v12 >= 0xFFF0000100000000)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v12);
  }

  *a2 = v13;
  v14 = a5 - a4;
  if (a5 >= a4)
  {
    goto LABEL_16;
  }

  v15 = -1048575 - a4;
  if (a4 > 0xFFF00001)
  {
    goto LABEL_23;
  }

  v11 = __CFADD__(a5, v15);
  v14 = a5 + v15;
  if (v11)
  {
LABEL_25:
    __break(1u);
    return result;
  }

LABEL_16:
  if (0xFFF000FEFFFFFFFFLL * v14 + v14 >= 0xFFF0000100000000)
  {
    v16 = 0;
  }

  else
  {
    v16 = (0xFFF000FEFFFFFFFFLL * v14 + v14) >> 32;
  }

  return (v16 >= v8);
}

void specialized closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:)(uint64_t a1@<X2>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v8 = 0;
  v9 = a3 >> 1;
  v10 = a2;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v27 = v8;
      v11 = v10;
      while (1)
      {
        if (v9 == v10)
        {
          *(a4 + 40) = 0;
          *a5 = v27;
          return;
        }

        if (v11 < a2 || v10 >= v9)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v12 = *(a1 + 8 * v10);
        v13 = *(a4 + 40);
        if (!v13)
        {
          v14 = *(*(a4 + 32) + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
          if (!v14)
          {
            goto LABEL_38;
          }

          v16 = v14[3];
          v15 = v14[4];

          if (v16 == v15)
          {
            SeedStreamAES128CTR.fillBuffer()();
            v16 = v14[3];
          }

          swift_beginAccess();
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v17 = v14[2];
          if (v16 >= *(v17 + 16))
          {
            goto LABEL_34;
          }

          v18 = v16 + 1;
          v19 = *(v17 + v16 + 32);
          v14[3] = v18;

          *(a4 + 48) = v19;
          *(a4 + 40) = 8;
          v13 = 8;
        }

        v20 = __OFSUB__(v13, 2);
        v21 = v13 - 2;
        if (v20)
        {
          goto LABEL_32;
        }

        *(a4 + 40) = v21;
        v22 = *(a4 + 48);
        *(a4 + 48) = v22 >> 2;
        ++v10;
        v23 = v22 & 3;
        if (!v23)
        {
          if (v27 >= v12)
          {
            v8 = v27 - v12;
            goto LABEL_2;
          }

          v25 = 0xFFFEB00001 - v12;
          if (v12 <= 0xFFFEB00001)
          {
            v8 = v27 + v25;
            if (!__CFADD__(v27, v25))
            {
              goto LABEL_2;
            }

LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v23 == 3)
        {
          v11 = v10;
          if (v12)
          {
            break;
          }
        }
      }

      v24 = 0xFFFEB00001 - v12;
      if (v12 > 0xFFFEB00001)
      {
        goto LABEL_37;
      }

      if (v27 >= v24)
      {
        v8 = v27 - v24;
        continue;
      }

      break;
    }

    if (v24 > 0xFFFEB00001)
    {
      goto LABEL_39;
    }

    v8 = v27 + v12;
    if (!__CFADD__(v27, v12))
    {
      continue;
    }

    break;
  }

LABEL_40:
  __break(1u);
}

{
  v8 = 0;
  v9 = a3 >> 1;
  v10 = a2;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v27 = v8;
      v11 = v10;
      while (1)
      {
        if (v9 == v10)
        {
          *a5 = v27;
          *(a4 + 40) = 0;
          return;
        }

        if (v11 < a2 || v10 >= v9)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v12 = *(a1 + 8 * v10);
        v13 = *(a4 + 40);
        if (!v13)
        {
          v14 = *(*(a4 + 32) + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
          if (!v14)
          {
            goto LABEL_38;
          }

          v15 = v14[3];
          v16 = v14[4];

          if (v15 == v16)
          {
            SeedStreamAES128CTR.fillBuffer()();
            v15 = v14[3];
          }

          swift_beginAccess();
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v17 = v14[2];
          if (v15 >= *(v17 + 16))
          {
            goto LABEL_34;
          }

          v18 = v15 + 1;
          v19 = *(v17 + v15 + 32);
          v14[3] = v18;

          *(a4 + 48) = v19;
          *(a4 + 40) = 8;
          v13 = 8;
        }

        v20 = __OFSUB__(v13, 2);
        v21 = v13 - 2;
        if (v20)
        {
          goto LABEL_32;
        }

        *(a4 + 40) = v21;
        v22 = *(a4 + 48);
        *(a4 + 48) = v22 >> 2;
        ++v10;
        v23 = v22 & 3;
        if (!v23)
        {
          if (v27 >= v12)
          {
            v8 = v27 - v12;
            goto LABEL_2;
          }

          v25 = 0xFFFFFFFF00000001 - v12;
          if (v12 <= 0xFFFFFFFF00000001)
          {
            v8 = v27 + v25;
            if (!__CFADD__(v27, v25))
            {
              goto LABEL_2;
            }

LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v23 == 3)
        {
          v11 = v10;
          if (v12)
          {
            break;
          }
        }
      }

      v24 = 0xFFFFFFFF00000001 - v12;
      if (v12 > 0xFFFFFFFF00000001)
      {
        goto LABEL_37;
      }

      if (v27 >= v24)
      {
        v8 = v27 - v24;
        continue;
      }

      break;
    }

    if (v24 > 0xFFFFFFFF00000001)
    {
      goto LABEL_39;
    }

    v8 = v27 + v12;
    if (!__CFADD__(v27, v12))
    {
      continue;
    }

    break;
  }

LABEL_40:
  __break(1u);
}

void specialized closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:)(uint64_t a1@<X2>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X5>, _DWORD *a5@<X8>)
{
  v8 = 0;
  v9 = a3 >> 1;
  v10 = a2;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v27 = v8;
      v11 = v10;
      while (1)
      {
        if (v9 == v10)
        {
          *(a4 + 40) = 0;
          *a5 = v27;
          return;
        }

        if (v11 < a2 || v10 >= v9)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v12 = *(a1 + 4 * v10);
        v13 = *(a4 + 40);
        if (!v13)
        {
          v14 = *(*(a4 + 32) + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
          if (!v14)
          {
            goto LABEL_38;
          }

          v16 = v14[3];
          v15 = v14[4];

          if (v16 == v15)
          {
            SeedStreamAES128CTR.fillBuffer()();
            v16 = v14[3];
          }

          swift_beginAccess();
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v17 = v14[2];
          if (v16 >= *(v17 + 16))
          {
            goto LABEL_34;
          }

          v18 = v16 + 1;
          v19 = *(v17 + v16 + 32);
          v14[3] = v18;

          *(a4 + 48) = v19;
          *(a4 + 40) = 8;
          v13 = 8;
        }

        v20 = __OFSUB__(v13, 2);
        v21 = v13 - 2;
        if (v20)
        {
          goto LABEL_32;
        }

        *(a4 + 40) = v21;
        v22 = *(a4 + 48);
        *(a4 + 48) = v22 >> 2;
        ++v10;
        v23 = v22 & 3;
        if (!v23)
        {
          if (v27 >= v12)
          {
            v8 = v27 - v12;
            goto LABEL_2;
          }

          v25 = -1048575 - v12;
          if (v12 <= 0xFFF00001)
          {
            v8 = v27 + v25;
            if (!__CFADD__(v27, v25))
            {
              goto LABEL_2;
            }

LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v23 == 3)
        {
          v11 = v10;
          if (v12)
          {
            break;
          }
        }
      }

      v24 = -1048575 - v12;
      if (v12 > 0xFFF00001)
      {
        goto LABEL_37;
      }

      if (v27 >= v24)
      {
        v8 = v27 - v24;
        continue;
      }

      break;
    }

    if (v24 > 0xFFF00001)
    {
      goto LABEL_39;
    }

    v8 = v27 + v12;
    if (!__CFADD__(v27, v12))
    {
      continue;
    }

    break;
  }

LABEL_40:
  __break(1u);
}

uint64_t specialized PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *(v4 + 9);
  if (*(a1 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    *&v55 = 0xD00000000000001BLL;
    *(&v55 + 1) = 0x8000000270C51C80;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v65 = v6;
    goto LABEL_5;
  }

  if (*(a2 + 16))
  {
    _StringGuts.grow(_:)(33);

    *&v55 = 0xD000000000000019;
    *(&v55 + 1) = 0x8000000270C51CE0;
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v65 = 0;
LABEL_5:
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);
LABEL_6:

    v10 = *(&v55 + 1);
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = v55;
    *(v11 + 8) = v10;
    *(v11 + 16) = 2;
    return swift_willThrow();
  }

  v72 = *(v4 + 13);
  v13 = *(v4 + 15);
  v52 = *(v4 + 16);
  v14 = *(a3 + 16);
  v15 = *(v4 + 24);
  v66 = *(v4 + 8);
  v67 = v15;
  v68 = *(v4 + 40);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v14 != 1)
  {
    v53 = v66;
    v31 = *(&v67 + 1);
    _StringGuts.grow(_:)(23);

    *&v55 = 0x2064696C61766E49;
    *(&v55 + 1) = 0xEF203A746E756F63;
    v65 = v14;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_270C44540;
    v34 = specialized Gadget.wirePolynomialLength.getter();
    v35 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v33 + 32) = v53;
    *(v33 + 48) = v31;
    *(v33 + 56) = v34;
    *(v33 + 64) = v35;
    v36 = MEMORY[0x2743B2770](v33, &type metadata for GadgetParameters);
    v38 = v37;

    MEMORY[0x2743B25F0](v36, v38);
    goto LABEL_6;
  }

  v49 = specialized Collection.prefix(_:)();
  v47 = v17;
  v48 = v16;
  v46 = v18;
  specialized Collection.dropFirst(_:)();
  specialized Collection.prefix(_:)();
  specialized Collection.dropFirst(_:)();
  specialized Collection.prefix(_:)();
  specialized Collection.dropFirst(_:)();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  specialized Collection.prefix(_:)();
  v45 = v19;
  v43 = v21;
  v44 = v20;
  specialized Collection.dropFirst(_:)();
  specialized Collection.prefix(_:)();
  result = specialized Collection.dropFirst(_:)();
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (((v13 + 1) * v52) >> 64 != ((v13 + 1) * v52) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  specialized Collection.prefix(_:)();
  specialized Collection.dropFirst(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v22 = swift_unknownObjectRelease();
  v23 = v4[7];
  v24 = v4[8];
  v25 = v4[5];
  v61 = v4[6];
  v62 = v23;
  v63 = v24;
  v26 = v4[3];
  v27 = v4[4];
  v57 = v4[2];
  v58 = v26;
  v64 = *(v4 + 18);
  v28 = *(a3 + 32);
  v59 = v27;
  v60 = v25;
  v29 = v4[1];
  v55 = *v4;
  v56 = v29;
  v30 = *(v4 + 24);
  v69 = *(v4 + 8);
  v70 = v30;
  v71 = *(v4 + 40);
  MEMORY[0x28223BE20](v22);
  sub_270B60478(v28);
  specialized ParallelSum.chunkEvaluateSum(_:for:_:)(v49, v48, v47, v46, v28, partial apply for specialized closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:), &v65);
  if (v5)
  {
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v28);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field40V_Tt1g5(v45, v44, v43, &v54);
  swift_unknownObjectRelease();
  outlined consume of GadgetEvaluation<A><A>(v28);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v39 = v54 - v65;
  if (v54 >= v65)
  {
    goto LABEL_18;
  }

  v40 = 0xFFFEB00001 - v65;
  v41 = a4;
  if (v65 <= 0xFFFEB00001)
  {
    v42 = __CFADD__(v54, v40);
    v39 = v54 + v40;
    if (!v42)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v41 = a4;
LABEL_19:
    *v41 = v39;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

{
  v6 = *(v4 + 9);
  if (*(a1 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    *&v55 = 0xD00000000000001BLL;
    *(&v55 + 1) = 0x8000000270C51C80;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v65 = v6;
    goto LABEL_5;
  }

  if (*(a2 + 16))
  {
    _StringGuts.grow(_:)(33);

    *&v55 = 0xD000000000000019;
    *(&v55 + 1) = 0x8000000270C51CE0;
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v65 = 0;
LABEL_5:
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);
LABEL_6:

    v10 = *(&v55 + 1);
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = v55;
    *(v11 + 8) = v10;
    *(v11 + 16) = 2;
    return swift_willThrow();
  }

  v72 = *(v4 + 13);
  v13 = *(v4 + 15);
  v52 = *(v4 + 16);
  v14 = *(a3 + 16);
  v15 = *(v4 + 24);
  v66 = *(v4 + 8);
  v67 = v15;
  v68 = *(v4 + 40);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v14 != 1)
  {
    v53 = v66;
    v31 = *(&v67 + 1);
    _StringGuts.grow(_:)(23);

    *&v55 = 0x2064696C61766E49;
    *(&v55 + 1) = 0xEF203A746E756F63;
    v65 = v14;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_270C44540;
    v34 = specialized Gadget.wirePolynomialLength.getter();
    v35 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v33 + 32) = v53;
    *(v33 + 48) = v31;
    *(v33 + 56) = v34;
    *(v33 + 64) = v35;
    v36 = MEMORY[0x2743B2770](v33, &type metadata for GadgetParameters);
    v38 = v37;

    MEMORY[0x2743B25F0](v36, v38);
    goto LABEL_6;
  }

  v49 = specialized Collection.prefix(_:)();
  v47 = v17;
  v48 = v16;
  v46 = v18;
  specialized Collection.dropFirst(_:)();
  specialized Collection.prefix(_:)();
  specialized Collection.dropFirst(_:)();
  specialized Collection.prefix(_:)();
  specialized Collection.dropFirst(_:)();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  specialized Collection.prefix(_:)();
  v45 = v19;
  v43 = v21;
  v44 = v20;
  specialized Collection.dropFirst(_:)();
  specialized Collection.prefix(_:)();
  result = specialized Collection.dropFirst(_:)();
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (((v13 + 1) * v52) >> 64 != ((v13 + 1) * v52) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  specialized Collection.prefix(_:)();
  specialized Collection.dropFirst(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v22 = swift_unknownObjectRelease();
  v23 = v4[7];
  v24 = v4[8];
  v25 = v4[5];
  v61 = v4[6];
  v62 = v23;
  v63 = v24;
  v26 = v4[3];
  v27 = v4[4];
  v57 = v4[2];
  v58 = v26;
  v64 = *(v4 + 18);
  v28 = *(a3 + 32);
  v59 = v27;
  v60 = v25;
  v29 = v4[1];
  v55 = *v4;
  v56 = v29;
  v30 = *(v4 + 24);
  v69 = *(v4 + 8);
  v70 = v30;
  v71 = *(v4 + 40);
  MEMORY[0x28223BE20](v22);
  sub_270B60478(v28);
  specialized ParallelSum.chunkEvaluateSum(_:for:_:)(v49, v48, v47, v46, v28, partial apply for specialized closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:), &v65);
  if (v5)
  {
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v28);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field64V_Tt1g5(v45, v44, v43, &v54);
  swift_unknownObjectRelease();
  outlined consume of GadgetEvaluation<A><A>(v28);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v39 = v54 - v65;
  if (v54 >= v65)
  {
    goto LABEL_18;
  }

  v40 = 0xFFFFFFFF00000001 - v65;
  v41 = a4;
  if (v65 <= 0xFFFFFFFF00000001)
  {
    v42 = __CFADD__(v54, v40);
    v39 = v54 + v40;
    if (!v42)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v41 = a4;
LABEL_19:
    *v41 = v39;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t specialized PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _DWORD *a4@<X8>)
{
  v6 = *(v4 + 9);
  if (*(a1 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    *&v55 = 0xD00000000000001BLL;
    *(&v55 + 1) = 0x8000000270C51C80;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v65 = v6;
    goto LABEL_5;
  }

  if (*(a2 + 16))
  {
    _StringGuts.grow(_:)(33);

    *&v55 = 0xD000000000000019;
    *(&v55 + 1) = 0x8000000270C51CE0;
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v65 = 0;
LABEL_5:
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);
LABEL_6:

    v10 = *(&v55 + 1);
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = v55;
    *(v11 + 8) = v10;
    *(v11 + 16) = 2;
    return swift_willThrow();
  }

  v72 = *(v4 + 13);
  v13 = *(v4 + 15);
  v52 = *(v4 + 16);
  v14 = *(a3 + 16);
  v15 = *(v4 + 24);
  v66 = *(v4 + 8);
  v67 = v15;
  v68 = *(v4 + 40);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v14 != 1)
  {
    v53 = v66;
    v31 = *(&v67 + 1);
    _StringGuts.grow(_:)(23);

    *&v55 = 0x2064696C61766E49;
    *(&v55 + 1) = 0xEF203A746E756F63;
    v65 = v14;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_270C44540;
    v34 = specialized Gadget.wirePolynomialLength.getter();
    v35 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v33 + 32) = v53;
    *(v33 + 48) = v31;
    *(v33 + 56) = v34;
    *(v33 + 64) = v35;
    v36 = MEMORY[0x2743B2770](v33, &type metadata for GadgetParameters);
    v38 = v37;

    MEMORY[0x2743B25F0](v36, v38);
    goto LABEL_6;
  }

  v49 = specialized Collection.prefix(_:)();
  v47 = v17;
  v48 = v16;
  v46 = v18;
  specialized Collection.dropFirst(_:)();
  specialized Collection.prefix(_:)();
  specialized Collection.dropFirst(_:)();
  specialized Collection.prefix(_:)();
  specialized Collection.dropFirst(_:)();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  specialized Collection.prefix(_:)();
  v45 = v19;
  v43 = v21;
  v44 = v20;
  specialized Collection.dropFirst(_:)();
  specialized Collection.prefix(_:)();
  result = specialized Collection.dropFirst(_:)();
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (((v13 + 1) * v52) >> 64 != ((v13 + 1) * v52) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  specialized Collection.prefix(_:)();
  specialized Collection.dropFirst(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v22 = swift_unknownObjectRelease();
  v23 = v4[7];
  v24 = v4[8];
  v25 = v4[5];
  v61 = v4[6];
  v62 = v23;
  v63 = v24;
  v26 = v4[3];
  v27 = v4[4];
  v57 = v4[2];
  v58 = v26;
  v64 = *(v4 + 36);
  v28 = *(a3 + 32);
  v59 = v27;
  v60 = v25;
  v29 = v4[1];
  v55 = *v4;
  v56 = v29;
  v30 = *(v4 + 24);
  v69 = *(v4 + 8);
  v70 = v30;
  v71 = *(v4 + 40);
  MEMORY[0x28223BE20](v22);
  sub_270B60478(v28);
  specialized ParallelSum.chunkEvaluateSum(_:for:_:)(v49, v48, v47, v46, v28, partial apply for specialized closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:), &v65);
  if (v5)
  {
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v28);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field32V_Tt1g5(v45, v44, v43, &v54);
  swift_unknownObjectRelease();
  outlined consume of GadgetEvaluation<A><A>(v28);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v39 = v54 - v65;
  if (v54 >= v65)
  {
    goto LABEL_18;
  }

  v40 = -1048575 - v65;
  v41 = a4;
  if (v65 <= 0xFFF00001)
  {
    v42 = __CFADD__(v54, v40);
    v39 = v54 + v40;
    if (!v42)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v41 = a4;
LABEL_19:
    *v41 = v39;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v7 = *(v5 + 72);
  if (*(a1 + 16) != v7)
  {
    _StringGuts.grow(_:)(35);

    *&v226 = 0xD00000000000001BLL;
    *(&v226 + 1) = 0x8000000270C51C80;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v44);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v230 = v7;
LABEL_20:
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v46);
LABEL_21:

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v47 = v226;
    *(v47 + 16) = 2;
    return swift_willThrow();
  }

  if (a2[2] != 3)
  {
    _StringGuts.grow(_:)(33);

    *&v226 = 0xD000000000000019;
    *(&v226 + 1) = 0x8000000270C51CE0;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v45);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v230 = 3;
    goto LABEL_20;
  }

  v223 = v6;
  v224 = a1;
  v218 = *(v5 + 120);
  v209 = *(v5 + 128);
  v200 = *(v5 + 136);
  v202 = *(v5 + 144);
  v206 = a4;
  v10 = *(a4 + 16);
  v11 = *(v5 + 40);
  v12 = *(v5 + 24);
  v227 = *(v5 + 8);
  v228 = v12;
  v229 = v11;
  v14 = *(&v227 + 1);
  v13 = v227;
  v15 = v11;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v10 != 1)
  {
    _StringGuts.grow(_:)(23);

    *&v226 = 0x2064696C61766E49;
    *(&v226 + 1) = 0xEF203A746E756F63;
    v230 = v10;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v48);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_270C44540;
    v50 = specialized Gadget.wirePolynomialLength.getter();
    v51 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v49 + 32) = v13;
    *(v49 + 40) = v14;
    *(v49 + 48) = v15;
    *(v49 + 56) = v50;
    *(v49 + 64) = v51;
    v52 = MEMORY[0x2743B2770](v49, &type metadata for GadgetParameters);
    v54 = v53;

    MEMORY[0x2743B25F0](v52, v54);
    goto LABEL_21;
  }

  v201 = v227;
  if (a3 < 0)
  {
    goto LABEL_421;
  }

  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5(a3, &v230);
  v15 = v230;
  if (!v230)
  {
    goto LABEL_452;
  }

  v10 = 0xFFFEB00001;
  v225 = 0x1B7FFFEB0;
  v16 = 0xFFFEAFFFFFLL;
  _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(0xFFFEAFFFFFLL, &v226);
  if (v226 == 0)
  {
LABEL_7:
    v15 = a2[4];
    v208 = a2[5];
    v190 = a2[6];
    specialized Collection.prefix(_:)();
    specialized Collection.dropFirst(_:)();
    specialized Collection.prefix(_:)();
    v211 = v17;
    v219 = v18;
    v203 = v19;
    specialized Collection.dropFirst(_:)();
    specialized Collection.prefix(_:)();
    v191 = v20;
    v192 = v21;
    v197 = v22;
    specialized Collection.dropFirst(_:)();
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v23 = *(v206 + 32);
    swift_unknownObjectRetain();
    v217 = v23;
    sub_270B60478(v23);
    if (one-time initialization token for one != -1)
    {
      goto LABEL_422;
    }

    goto LABEL_8;
  }

  v27 = 0xFFFFFF00014FFFFELL;
  while (1)
  {
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v16 & 1, &v226);
    if (v226 == 0)
    {
      v56 = v225;
      goto LABEL_47;
    }

    v57 = (v15 * v225) >> 64;
    v58 = (0xCFFE47FFFEAFFFFFLL * v15 * v225 * 0xFFFEB00001uLL) >> 64;
    v59 = __CFADD__(-(v15 * v225), v15 * v225);
    v107 = __CFADD__(v58, v57);
    v60 = v58 + v57;
    if (v107)
    {
      v61 = v60 + v59;
    }

    else
    {
      v61 = 0;
      if (v60 != -1)
      {
        v62 = v60 + v59;
        if (v62 >= 0xFFFEB00001)
        {
          v56 = v62 - 0xFFFEB00001;
        }

        else
        {
          v56 = v62;
        }

        goto LABEL_47;
      }

      if (!v59)
      {
        v56 = 0xFFFFFF00014FFFFELL;
        goto LABEL_47;
      }
    }

    v56 = v61 - 0xFFFEB00001;
    if (v61 >= 0xFFFEB00001)
    {
      goto LABEL_384;
    }

LABEL_47:
    v63 = (v15 * v15) >> 64;
    v64 = (0xCFFE47FFFEAFFFFFLL * v15 * v15 * 0xFFFEB00001uLL) >> 64;
    v26 = -(v15 * v15);
    v65 = __CFADD__(v26, v15 * v15);
    v107 = __CFADD__(v64, v63);
    v29 = v64 + v63;
    if (!v107)
    {
      if (v29 == -1)
      {
        v15 = 0xFFFFFF00014FFFFELL;
        if (v65)
        {
          v15 = 0xFFFFFF00014FFFFFLL;
        }
      }

      else
      {
        v55 = v29 + v65;
        if (v55 >= 0xFFFEB00001)
        {
          v15 = v55 - 0xFFFEB00001;
        }

        else
        {
          v15 = v55;
        }
      }

      goto LABEL_28;
    }

    v66 = v29 + v65;
    v15 = v66 - 0xFFFEB00001;
    if (v66 >= 0xFFFEB00001)
    {
      break;
    }

LABEL_28:
    v225 = v56;
    v16 >>= 1;
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v16, &v226);
    if (v226 == 0)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_54:
  v221 = 0;
  v67 = v10 - v29;
  v68 = v10 < v29;
  v214 = v217 >> 62;
  v216 = a3;
  v42 = v198;
  v69 = v27;
  while (1)
  {
    v71 = v69 + v26;
    v72 = ((v69 + v26) >> 63) ^ 0x8000000000000000;
    if (!__OFADD__(v69, v26))
    {
      v72 = v69 + v26;
    }

    v222 = v72;
    if (__OFADD__(v69, v26))
    {
      goto LABEL_385;
    }

    if (a3 >= v71)
    {
      a3 = v69 + v26;
    }

    if (a3 < v69)
    {
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      outlined consume of GadgetEvaluation<A><A>(v27);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    if (v69 < v27)
    {
      goto LABEL_387;
    }

    if (v71 < 0)
    {
      goto LABEL_388;
    }

    v27 = a3 - v69;
    if (__OFSUB__(a3, v69))
    {
      goto LABEL_389;
    }

    if (v27 < 0)
    {
      goto LABEL_390;
    }

    if (v27)
    {
      break;
    }

LABEL_107:
    if (v26 < v27)
    {
      goto LABEL_391;
    }

    if (v27 != v26)
    {
      if (v27 >= v26)
      {
        goto LABEL_411;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      }

      v75 = v27 + 0x4000000000000000;
      v76 = 2 * a3 - 2 * v69;
      v77 = (v13 - 16 * v69 + 16 * a3 + 40);
      v91 = v224 + v69 - a3;
      v27 = v219;
      a3 = v216;
      while ((v75 & 0x8000000000000000) == 0)
      {
        if ((v76 & 0x8000000000000000) != 0)
        {
          goto LABEL_293;
        }

        v73 = *(v13 + 16);
        if (v76 >= v73)
        {
          goto LABEL_294;
        }

        *(v77 - 1) = 0;
        v74 = v76 + 1;
        if (v76 + 1 >= v73)
        {
          goto LABEL_295;
        }

        *v77 = 0;
        v77 += 2;
        ++v75;
        v76 += 2;
        if (!--v91)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_292;
    }

    v27 = v219;
    a3 = v216;
LABEL_119:
    if (v214)
    {
      if (v214 == 1)
      {
        specialized QueryGadget.evaluate<A>(at:)(v13, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), &v226);
        goto LABEL_124;
      }
    }

    else
    {
      specialized GadgetWireInputs.update<A>(_:)(v13, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew());
      if (v223)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        outlined consume of GadgetEvaluation<A><A>(v217);

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }
    }

    specialized ParallelSum.evaluate<A>(at:)(v13, &v226);
LABEL_124:
    v26 = v224;
    if (v226)
    {
      v92 = v10 - v226;
      if (v10 < v226)
      {
        goto LABEL_410;
      }

      if (v221 < v92)
      {
        if (v10 < v92)
        {
          goto LABEL_419;
        }

        v107 = __CFADD__(v221, v226);
        v221 += v226;
        if (!v107)
        {
          goto LABEL_56;
        }

        while (2)
        {
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          swift_once();
LABEL_8:
          v198 = static Field40.one;
          v24 = *(&v229 + 1);
          v25 = _sSa9repeating5countSayxGx_SitcfC4VDAF7Field40V_Tt1B5(0, v201);
          if (!v24)
          {
            __break(1u);
LABEL_424:
            __break(1u);
LABEL_425:
            __break(1u);
LABEL_426:
            __break(1u);
LABEL_427:
            __break(1u);
            goto LABEL_428;
          }

          v26 = v24;
          v13 = v25;
          a3 = v203 >> 1;
          v27 = v219;
          v28 = (v203 >> 1) >= v219;
          if (v24 > 0)
          {
            v28 = v219 >= (v203 >> 1);
          }

          v29 = v225;
          v224 = v24;
          if (v28)
          {
            v221 = 0;
LABEL_13:
            swift_unknownObjectRelease();
            outlined consume of GadgetEvaluation<A><A>(v217);

            specialized Collection.prefix(_:)();
            v31 = v30;
            v220 = v32;
            v213 = v33;
            specialized Collection.dropFirst(_:)();
            v203 = specialized Collection.prefix(_:)();
            v212 = v34;
            v193 = v36;
            v195 = v35;
            specialized Collection.dropFirst(_:)();
            if (__OFADD__(v218, 1))
            {
LABEL_428:
              __break(1u);
            }

            else
            {
              v217 = v218 + 1;
              if (((v218 + 1) * v209) >> 64 == ((v218 + 1) * v209) >> 63)
              {
                v37 = v31;
                v38 = specialized Collection.prefix(_:)();
                v222 = v39;
                v216 = v40;
                v210 = v41;
                specialized Collection.dropFirst(_:)();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                _s4VDAF15PINEMainCircuitV22evaluateNormRangeCheck5vBits01uH018inverseNumOfShares3forxs10ArraySliceVyxG_AKxAA16GadgetEvaluationOyxGtKFAA7Field40V_SRySfGTt3B5(v37, v220, v213, v212, v195, v193, &v226, v225);
                v42 = v223;
                if (v223)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  return swift_unknownObjectRelease();
                }

                v13 = v210;
                v211 = v38;
                v15 = *(v206 + 32);
                v69 = v198 - v202;
                if (v198 >= v202)
                {
                  goto LABEL_136;
                }

                v93 = v10 - v202;
                v27 = v197;
                if (v10 >= v202)
                {
                  v69 = v198 + v93;
                  if (!__CFADD__(v198, v93))
                  {
LABEL_137:
                    sub_270B60478(v15);
                    a3 = _sSa9repeating5countSayxGx_SitcfC4VDAF7Field40V_Tt1B5(0, v201);
                    v74 = v192 >> 1;
                    v94 = (v192 >> 1) >= v27;
                    v73 = v224;
                    if (v224 > 0)
                    {
                      v94 = v27 >= (v192 >> 1);
                    }

                    if (v94)
                    {
                      v219 = 0;
                      v27 = 0;
LABEL_141:

                      v68 = v190;
                      v95 = v200;
                      v69 = v211;
                      if ((v200 & 0x8000000000000000) != 0)
                      {
                        v96 = -v200;
                        if (__OFSUB__(0, v200))
                        {
                          goto LABEL_446;
                        }

                        if ((v96 & 0x8000000000000000) != 0)
                        {
LABEL_447:
                          __break(1u);
                        }

                        else
                        {
                          v95 = v10 + v200;
                          if (v10 >= v96)
                          {
                            goto LABEL_145;
                          }
                        }

                        __break(1u);
                        goto LABEL_449;
                      }

LABEL_145:
                      _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5(v95, &v230);
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      outlined consume of GadgetEvaluation<A><A>(v15);
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      v97 = (v230 * v225) >> 64;
                      v74 = 0xCFFE47FFFEAFFFFFLL;
                      v98 = (0xCFFE47FFFEAFFFFFLL * v230 * v225 * v10) >> 64;
                      v76 = __CFADD__(0xCFFE47FFFEAFFFFFLL * v230 * v225 * v10, v230 * v225);
                      v107 = __CFADD__(v98, v97);
                      v75 = v98 + v97;
                      if (!v107)
                      {
                        v73 = 0xFFFFFF00014FFFFFLL;
                        v77 = v219;
                        if (v75 != -1)
                        {
                          v100 = v75 + (v76 & 1);
                          if (v100 >= v10)
                          {
                            v100 -= 0xFFFEB00001;
                          }

                          goto LABEL_303;
                        }

                        goto LABEL_298;
                      }

                      v73 = 0xFFFFFF00014FFFFFLL;
                      v77 = v219;
LABEL_151:
                      v99 = v76 + v75;
                      v107 = __CFADD__(v99, v73);
                      v100 = v99 + v73;
                      if (!v107)
                      {
                        goto LABEL_303;
                      }

                      __break(1u);
                    }

                    v219 = 0;
                    v101 = 0;
                    v205 = v13 & 1;
                    v206 = v13 >> 1;
                    v102 = v69 * v225;
                    v103 = (v69 * v225) >> 64;
                    v104 = 0xCFFE47FFFEAFFFFFLL * v69 * v225 * v10;
                    v105 = (0xCFFE47FFFEAFFFFFLL * v69 * v225 * v10) >> 64;
                    v209 = v105 + v103;
                    v106 = __CFADD__(v105, v103);
                    v204 = v106;
                    v107 = __CFADD__(v104, v102);
                    v108 = __CFADD__(v104, v102);
                    v215 = v108;
                    v109 = v103 + v107 + v105;
                    if (v109 >= v10)
                    {
                      v109 -= 0xFFFEB00001;
                    }

                    v202 = v109;
                    v110 = v15 >> 62;
                    v111 = v27;
                    v112 = v198;
                    v187 = v15;
                    v188 = v74;
                    v194 = v15 >> 62;
                    v13 = v27;
                    v27 = 0;
LABEL_163:
                    v113 = v111 + v73;
                    if (__OFADD__(v111, v73))
                    {
                      goto LABEL_430;
                    }

                    if (v74 >= v113)
                    {
                      v114 = v111 + v73;
                    }

                    else
                    {
                      v114 = v74;
                    }

                    if (v114 < v111)
                    {
                      goto LABEL_431;
                    }

                    if (v111 < v13)
                    {
                      goto LABEL_432;
                    }

                    if (v113 < 0)
                    {
                      goto LABEL_433;
                    }

                    v115 = v114 - v111;
                    if (__OFSUB__(v114, v111))
                    {
                      goto LABEL_434;
                    }

                    if (v115 < 0)
                    {
                      goto LABEL_435;
                    }

                    v189 = v114;
                    v201 = v111;
                    v196 = v111 + v73;
                    v198 = v27;
                    if (v115)
                    {
                      v192 = v114 - v111;
                      v223 = v42;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
                      }

                      v116 = v206;
                      v117 = v192;
                      v118 = 0;
                      v207 = a3;
                      v119 = (a3 + 40);
                      v120 = (v191 + 8 * v201);
                      while (1)
                      {
                        if (!v117)
                        {
                          goto LABEL_397;
                        }

                        v121 = v101 * v217;
                        if ((v101 * v217) >> 64 != (v101 * v217) >> 63)
                        {
                          goto LABEL_398;
                        }

                        v122 = v216 + v121;
                        if (__OFADD__(v216, v121))
                        {
                          goto LABEL_399;
                        }

                        v123 = v122 + v218;
                        if (__OFADD__(v122, v218))
                        {
                          goto LABEL_400;
                        }

                        if (v123 < v122)
                        {
                          goto LABEL_401;
                        }

                        if (v116 < v122)
                        {
                          goto LABEL_402;
                        }

                        if (v122 < v216)
                        {
                          goto LABEL_403;
                        }

                        if (v116 < v123)
                        {
                          goto LABEL_404;
                        }

                        if (v123 < 0)
                        {
                          goto LABEL_405;
                        }

                        v15 = v205 | (2 * v123);
                        swift_unknownObjectRetain();
                        _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field40V_Tt1g5(v222, v122, v15, &v230);
                        if (v223)
                        {
                          swift_unknownObjectRelease();
                          swift_unknownObjectRelease();
                          outlined consume of GadgetEvaluation<A><A>(v187);
                          swift_unknownObjectRelease();
                          swift_unknownObjectRelease();

                          swift_unknownObjectRelease();
                          return swift_unknownObjectRelease();
                        }

                        v124 = v215;
                        v125 = v224;
                        v116 = v206;
                        if (!v204)
                        {
                          v127 = v202;
                          if (v209 != -1)
                          {
                            goto LABEL_191;
                          }

                          if (!v215)
                          {
                            goto LABEL_412;
                          }

                          v124 = 1;
                        }

                        v126 = v124 + v209;
                        v107 = __CFADD__(v126, 0xFFFFFF00014FFFFFLL);
                        v127 = v126 - 0xFFFEB00001;
                        if (v107)
                        {
                          goto LABEL_414;
                        }

LABEL_191:
                        v128 = v230;
                        if (v127)
                        {
                          v107 = v10 >= v127;
                          v129 = v10 - v127;
                          if (!v107)
                          {
                            goto LABEL_412;
                          }

                          if (v230 >= v129)
                          {
                            v128 = v230 - v129;
                          }

                          else
                          {
                            v107 = v10 >= v129;
                            v130 = v10 - v129;
                            if (!v107)
                            {
                              goto LABEL_424;
                            }

                            v128 = v230 + v130;
                            if (__CFADD__(v230, v130))
                            {
                              goto LABEL_425;
                            }
                          }
                        }

                        if (v123 >= v206)
                        {
                          goto LABEL_406;
                        }

                        v131 = *(v222 + 8 * v123);
                        v132 = *v120;
                        v133 = *v120 - v128;
                        if (*v120 < v128)
                        {
                          v107 = v10 >= v128;
                          v134 = v10 - v128;
                          if (!v107)
                          {
                            goto LABEL_417;
                          }

                          v133 = v132 + v134;
                          if (__CFADD__(v132, v134))
                          {
                            goto LABEL_418;
                          }
                        }

                        v135 = v133 * v112;
                        v136 = (v133 * v112) >> 64;
                        v137 = 0xCFFE47FFFEAFFFFFLL * v133 * v112;
                        v138 = (v137 * v10) >> 64;
                        v139 = __CFADD__(v137 * v10, v135);
                        v140 = v138 + v136;
                        if (!__CFADD__(v138, v136))
                        {
                          if (v140 != -1)
                          {
                            v142 = v140 + v139;
                            if (v142 >= v10)
                            {
                              v142 -= 0xFFFEB00001;
                            }

                            goto LABEL_224;
                          }

                          if (!v139)
                          {
                            v142 = 0xFFFFFF00014FFFFELL;
                            goto LABEL_224;
                          }

                          v139 = 1;
                        }

                        v141 = v139 + v140;
                        v107 = __CFADD__(v141, 0xFFFFFF00014FFFFFLL);
                        v142 = v141 - 0xFFFEB00001;
                        if (v107)
                        {
                          goto LABEL_415;
                        }

LABEL_224:
                        v143 = *(v207 + 16);
                        if (v118 >= v143)
                        {
                          goto LABEL_407;
                        }

                        *(v119 - 1) = v142;
                        if (v118 + 1 >= v143)
                        {
                          goto LABEL_408;
                        }

                        *v119 = v131;
                        if (v131)
                        {
                          v107 = v10 >= v131;
                          v144 = v10 - v131;
                          if (!v107)
                          {
                            goto LABEL_413;
                          }

                          if (v219 >= v144)
                          {
                            v219 = (v219 - v144);
                          }

                          else
                          {
                            v107 = v10 >= v144;
                            v145 = v10 - v144;
                            if (!v107)
                            {
                              goto LABEL_426;
                            }

                            if (__CFADD__(v219, v145))
                            {
                              goto LABEL_427;
                            }

                            v219 = (v219 + v145);
                          }
                        }

                        v146 = (v112 * v208) >> 64;
                        v147 = 0xCFFE47FFFEAFFFFFLL * v112 * v208;
                        v148 = (v147 * v10) >> 64;
                        v149 = __CFADD__(v147 * v10, v112 * v208);
                        v150 = v148 + v146;
                        if (__CFADD__(v148, v146))
                        {
                          goto LABEL_240;
                        }

                        if (v150 == -1)
                        {
                          if (v149)
                          {
                            v149 = 1;
LABEL_240:
                            v151 = v149 + v150;
                            v112 = v151 - 0xFFFEB00001;
                            if (v151 >= 0xFFFEB00001)
                            {
                              goto LABEL_416;
                            }

                            goto LABEL_249;
                          }

                          v112 = 0xFFFFFF00014FFFFELL;
                        }

                        else
                        {
                          v152 = v150 + v149;
                          if (v152 >= v10)
                          {
                            v112 = v152 - 0xFFFEB00001;
                          }

                          else
                          {
                            v112 = v152;
                          }
                        }

LABEL_249:
                        if (v101 == 0x7FFFFFFFFFFFFFFFLL)
                        {
                          goto LABEL_409;
                        }

                        ++v101;
                        ++v120;
                        v118 += 2;
                        v119 += 2;
                        if (!--v117)
                        {
                          v42 = 0;
                          v13 = v197;
                          v15 = v187;
                          a3 = v207;
                          v115 = v192;
                          LODWORD(v110) = v194;
                          goto LABEL_253;
                        }
                      }
                    }

                    v125 = v224;
LABEL_253:
                    if (v125 < v115)
                    {
                      goto LABEL_436;
                    }

                    if (v115 != v125)
                    {
                      if (v115 < v125)
                      {
                        v27 = v15;
                        v15 = v115;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
                        }

                        LODWORD(v110) = v194;
                        v153 = v15 + 0x4000000000000000;
                        v154 = 2 * v189 - 2 * v201;
                        v155 = (a3 - 16 * v201 + 16 * v189 + 40);
                        v156 = v224 + v201 - v189;
                        while ((v153 & 0x8000000000000000) == 0)
                        {
                          if ((v154 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_394;
                          }

                          v157 = *(a3 + 16);
                          if (v154 >= v157)
                          {
                            goto LABEL_395;
                          }

                          *(v155 - 1) = 0;
                          if (v154 + 1 >= v157)
                          {
                            goto LABEL_396;
                          }

                          *v155 = 0;
                          v155 += 2;
                          ++v153;
                          v154 += 2;
                          if (!--v156)
                          {
                            goto LABEL_265;
                          }
                        }

                        __break(1u);
LABEL_394:
                        __break(1u);
LABEL_395:
                        __break(1u);
LABEL_396:
                        __break(1u);
LABEL_397:
                        __break(1u);
LABEL_398:
                        __break(1u);
LABEL_399:
                        __break(1u);
LABEL_400:
                        __break(1u);
LABEL_401:
                        __break(1u);
LABEL_402:
                        __break(1u);
LABEL_403:
                        __break(1u);
LABEL_404:
                        __break(1u);
LABEL_405:
                        __break(1u);
LABEL_406:
                        __break(1u);
                        __break(1u);
LABEL_407:
                        __break(1u);
LABEL_408:
                        __break(1u);
LABEL_409:
                        __break(1u);
LABEL_410:
                        __break(1u);
LABEL_411:
                        __break(1u);
LABEL_412:
                        __break(1u);
LABEL_413:
                        __break(1u);
LABEL_414:
                        __break(1u);
LABEL_415:
                        __break(1u);
LABEL_416:
                        __break(1u);
LABEL_417:
                        __break(1u);
LABEL_418:
                        __break(1u);
LABEL_419:
                        __break(1u);
                        continue;
                      }

LABEL_439:
                      __break(1u);
LABEL_440:
                      __break(1u);
LABEL_441:
                      __break(1u);
LABEL_442:
                      __break(1u);
LABEL_443:
                      __break(1u);
LABEL_444:
                      __break(1u);
LABEL_445:
                      __break(1u);
LABEL_446:
                      __break(1u);
                      goto LABEL_447;
                    }

                    v27 = v15;
LABEL_265:
                    if (v110)
                    {
                      if (v110 == 1)
                      {
                        specialized QueryGadget.evaluate<A>(at:)(a3, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), &v230);
LABEL_270:
                        v73 = v224;
                        v74 = v188;
                        v111 = v196;
                        if (v230)
                        {
                          v158 = v10 - v230;
                          LODWORD(v110) = v194;
                          if (v10 < v230)
                          {
                            goto LABEL_438;
                          }

                          if (v198 >= v158)
                          {
                            v15 = v27;
                            v27 = v198 - v158;
                          }

                          else
                          {
                            if (v10 < v158)
                            {
                              goto LABEL_444;
                            }

                            v15 = v27;
                            v27 = v198 + v230;
                            if (__CFADD__(v198, v230))
                            {
                              goto LABEL_445;
                            }
                          }
                        }

                        else
                        {
                          LODWORD(v110) = v194;
                          v15 = v27;
                          v27 = v198;
                        }

                        v159 = v188 >= v196;
                        if (v224 > 0)
                        {
                          v159 = v196 >= v188;
                        }

                        if (v159)
                        {
                          goto LABEL_141;
                        }

                        goto LABEL_163;
                      }
                    }

                    else
                    {
                      specialized GadgetWireInputs.update<A>(_:)(a3, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew());
                      if (v42)
                      {
                        goto LABEL_392;
                      }
                    }

                    specialized ParallelSum.evaluate<A>(at:)(a3, &v230);
                    goto LABEL_270;
                  }

                  __break(1u);
LABEL_136:
                  v27 = v197;
                  goto LABEL_137;
                }

LABEL_437:
                __break(1u);
LABEL_438:
                __break(1u);
                goto LABEL_439;
              }
            }

            __break(1u);
LABEL_430:
            __break(1u);
LABEL_431:
            __break(1u);
LABEL_432:
            __break(1u);
LABEL_433:
            __break(1u);
LABEL_434:
            __break(1u);
LABEL_435:
            __break(1u);
LABEL_436:
            __break(1u);
            goto LABEL_437;
          }

          goto LABEL_54;
        }
      }

      v221 -= v92;
    }

LABEL_56:
    v69 = v222;
    v70 = a3 >= v222;
    if (v224 > 0)
    {
      v70 = v222 >= a3;
    }

    if (v70)
    {
      goto LABEL_13;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
  }

  v75 = 0;
  v76 = v211 + 8 * v69;
  v77 = (a3 - v69);
  while (1)
  {
    if (!v77)
    {
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      if ((v76 & 1) == 0)
      {
        goto LABEL_302;
      }

      v76 = 1;
      goto LABEL_151;
    }

    v79 = *v76;
    v80 = *v76 * v42;
    v81 = (*v76 * v42) >> 64;
    v82 = (0xCFFE47FFFEAFFFFFLL * v80 * v10) >> 64;
    v74 = __CFADD__(0xCFFE47FFFEAFFFFFLL * v80 * v10, v80);
    v83 = v82 + v81;
    if (!__CFADD__(v82, v81))
    {
      if (v83 != -1)
      {
        v85 = v83 + (v74 & 1);
        v74 = v85 - 0xFFFEB00001;
        if (v85 >= v10)
        {
          v84 = v85 - 0xFFFEB00001;
        }

        else
        {
          v84 = v85;
        }

        goto LABEL_91;
      }

      if ((v74 & 1) == 0)
      {
        v84 = 0xFFFFFF00014FFFFELL;
        goto LABEL_91;
      }

      v74 = 1;
    }

    v73 = v74 + v83;
    v84 = v73 - 0xFFFEB00001;
    if (v73 >= 0xFFFEB00001)
    {
      goto LABEL_296;
    }

LABEL_91:
    v73 = *(v13 + 16);
    if (v75 >= v73)
    {
      goto LABEL_290;
    }

    v74 = v13 + 8 * v75;
    *(v74 + 32) = v84;
    v86 = v79 - v225;
    if (v79 >= v225)
    {
      goto LABEL_95;
    }

    if (v68)
    {
      break;
    }

    v86 = v79 + v67;
    if (__CFADD__(v79, v67))
    {
      goto LABEL_301;
    }

LABEL_95:
    if (v75 + 1 >= v73)
    {
      goto LABEL_291;
    }

    *(v74 + 40) = v86;
    v74 = (v42 * v15) >> 64;
    v87 = 0xCFFE47FFFEAFFFFFLL * v42 * v15;
    v88 = (v87 * v10) >> 64;
    v73 = __CFADD__(v87 * v10, v42 * v15);
    v89 = v88 + v74;
    if (__CFADD__(v88, v74))
    {
      goto LABEL_74;
    }

    if (v89 == -1)
    {
      if (v73)
      {
        v73 = 1;
LABEL_74:
        v78 = v73 + v89;
        v42 = v78 - 0xFFFEB00001;
        if (v78 >= 0xFFFEB00001)
        {
          goto LABEL_297;
        }

        goto LABEL_75;
      }

      v42 = 0xFFFFFF00014FFFFELL;
    }

    else
    {
      v90 = v89 + (v73 & 1);
      v73 = v90 - 0xFFFEB00001;
      if (v90 >= v10)
      {
        v42 = v90 - 0xFFFEB00001;
      }

      else
      {
        v42 = v90;
      }
    }

LABEL_75:
    v76 += 8;
    v75 += 2;
    v77 = (v77 - 1);
    if (!v77)
    {
      v26 = v224;
      goto LABEL_107;
    }
  }

  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  v100 = v73 - 1;
LABEL_303:
  v160 = v77 - v100;
  if (v77 < v100)
  {
    v107 = v10 >= v100;
    v161 = v10 - v100;
    if (!v107)
    {
      goto LABEL_442;
    }

    v160 = v77 + v161;
    if (__CFADD__(v77, v161))
    {
      goto LABEL_443;
    }
  }

  v162 = (v226 * v68) >> 64;
  v163 = (v226 * v68 * v74 * v10) >> 64;
  v164 = __CFADD__(v226 * v68 * v74 * v10, v226 * v68);
  v165 = v163 + v162;
  if (__CFADD__(v163, v162))
  {
    goto LABEL_312;
  }

  if (v165 == -1)
  {
    if (!v164)
    {
      v167 = v73 - 1;
      goto LABEL_323;
    }

    v164 = 1;
LABEL_312:
    v166 = v164 + v165;
    v107 = __CFADD__(v166, v73);
    v167 = v166 + v73;
    if (v107)
    {
      goto LABEL_441;
    }

    if (v167)
    {
      goto LABEL_323;
    }

LABEL_332:
    result = specialized FieldElement.pow(_:)(2uLL, v68, &v230);
    v171 = (v230 * v27) >> 64;
    v172 = (0xCFFE47FFFEAFFFFFLL * v230 * v27 * v10) >> 64;
    v173 = __CFADD__(0xCFFE47FFFEAFFFFFLL * v230 * v27 * v10, v230 * v27);
    v107 = __CFADD__(v172, v171);
    v174 = v172 + v171;
    if (v107)
    {
      goto LABEL_337;
    }

    while (v174 == -1)
    {
      if (!v173)
      {
        v176 = (v10 + 0xFFFEB00002);
LABEL_381:
        __break(1u);
LABEL_382:
        *v176 = v221;
        v184 = v10 - (v172 - 1);
        if (v10 < v172 - 1)
        {
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
          goto LABEL_386;
        }

LABEL_368:
        v185 = v221 - v184;
        if (v221 < v184)
        {
          v107 = v10 >= v184;
          v186 = v10 - v184;
          if (!v107)
          {
            goto LABEL_451;
          }

          v107 = __CFADD__(v221, v186);
          v185 = v221 + v186;
          v221 += v186;
          if (!v107)
          {
            goto LABEL_375;
          }

          __break(1u);
        }

        v221 = v185;
LABEL_375:
        *v176 = v221;
        return result;
      }

      v173 = 1;
LABEL_337:
      v175 = v173 + v174;
      v107 = __CFADD__(v175, 0xFFFFFF00014FFFFFLL);
      v174 = v175 - 0xFFFEB00001;
      if (!v107)
      {
        goto LABEL_343;
      }

      __break(1u);
    }

    v174 += v173;
    if (v174 >= v10)
    {
      v174 -= 0xFFFEB00001;
    }

LABEL_343:
    if (v174)
    {
      v107 = v10 >= v174;
      v176 = (v10 - v174);
      if (!v107)
      {
        goto LABEL_381;
      }

      v177 = v221 - v176;
      if (v221 < v176)
      {
        v107 = v10 >= v176;
        v178 = v10 - v176;
        if (!v107)
        {
          goto LABEL_450;
        }

        v107 = __CFADD__(v221, v178);
        v177 = v221 + v178;
        v221 += v178;
        if (!v107)
        {
          goto LABEL_353;
        }

        __break(1u);
      }

      v221 = v177;
    }

LABEL_353:
    result = specialized FieldElement.pow(_:)(3uLL, v68, &v230);
    v179 = (v230 * v160) >> 64;
    v180 = (0xCFFE47FFFEAFFFFFLL * v230 * v160 * v10) >> 64;
    v181 = __CFADD__(0xCFFE47FFFEAFFFFFLL * v230 * v160 * v10, v230 * v160);
    v182 = v180 + v179;
    if (__CFADD__(v180, v179))
    {
      v176 = a5;
      goto LABEL_359;
    }

    while (1)
    {
      v176 = a5;
      v172 = 0xFFFFFF00014FFFFFLL;
      if (v182 != -1)
      {
        break;
      }

      if (!v181)
      {
        goto LABEL_382;
      }

      v181 = 1;
LABEL_359:
      v183 = v181 + v182;
      v107 = __CFADD__(v183, 0xFFFFFF00014FFFFFLL);
      v182 = v183 - 0xFFFEB00001;
      if (!v107)
      {
        goto LABEL_365;
      }

      __break(1u);
    }

    v182 += v181;
    if (v182 >= v10)
    {
      v182 -= 0xFFFEB00001;
    }

LABEL_365:
    *v176 = v221;
    if (v182)
    {
      v107 = v10 >= v182;
      v184 = v10 - v182;
      if (!v107)
      {
        goto LABEL_383;
      }

      goto LABEL_368;
    }

    goto LABEL_375;
  }

  v167 = v165 + v164;
  if (v167 >= v10)
  {
    v167 += v73;
  }

  if (!v167)
  {
    goto LABEL_332;
  }

LABEL_323:
  v107 = v10 >= v167;
  v168 = v10 - v167;
  if (!v107)
  {
    goto LABEL_440;
  }

  v169 = v221 - v168;
  if (v221 >= v168)
  {
LABEL_331:
    v221 = v169;
    goto LABEL_332;
  }

  v107 = v10 >= v168;
  v170 = v10 - v168;
  if (v107)
  {
    v107 = __CFADD__(v221, v170);
    v169 = v221 + v170;
    v221 += v170;
    if (!v107)
    {
      goto LABEL_332;
    }

    __break(1u);
    goto LABEL_331;
  }

LABEL_449:
  __break(1u);
LABEL_450:
  __break(1u);
LABEL_451:
  __break(1u);
LABEL_452:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v7 = *(v5 + 72);
  if (*(a1 + 16) != v7)
  {
    _StringGuts.grow(_:)(35);

    *&v214 = 0xD00000000000001BLL;
    *(&v214 + 1) = 0x8000000270C51C80;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v38);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v218 = v7;
LABEL_22:
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v40);
LABEL_23:

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v41 = v214;
    *(v41 + 16) = 2;
    return swift_willThrow();
  }

  if (*(a2 + 16) != 3)
  {
    _StringGuts.grow(_:)(33);

    *&v214 = 0xD000000000000019;
    *(&v214 + 1) = 0x8000000270C51CE0;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v39);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v218 = 3;
    goto LABEL_22;
  }

  v210 = v6;
  v212 = a2;
  v213 = a1;
  v9 = *(v5 + 64);
  v10 = *(v5 + 96);
  v200 = a4;
  v197 = *(v5 + 112);
  v203 = *(v5 + 120);
  v204 = *(v5 + 128);
  v194 = *(v5 + 136);
  v196 = *(v5 + 144);
  v11 = *(a4 + 16);
  v12 = *(v5 + 40);
  v13 = *(v5 + 24);
  v215 = *(v5 + 8);
  v216 = v13;
  v217 = v12;
  v15 = *(&v215 + 1);
  v14 = v215;
  v16 = v12;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v11 != 1)
  {
    _StringGuts.grow(_:)(23);

    *&v214 = 0x2064696C61766E49;
    *(&v214 + 1) = 0xEF203A746E756F63;
    v218 = v11;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v43);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_270C44540;
    v45 = specialized Gadget.wirePolynomialLength.getter();
    v46 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v44 + 32) = v14;
    *(v44 + 40) = v15;
    *(v44 + 48) = v16;
    *(v44 + 56) = v45;
    *(v44 + 64) = v46;
    v47 = MEMORY[0x2743B2770](v44, &type metadata for GadgetParameters);
    v49 = v48;

    MEMORY[0x2743B25F0](v47, v49);
    goto LABEL_23;
  }

  v195 = v215;
  if (a3 < 0)
  {
    goto LABEL_359;
  }

  if (HIDWORD(a3))
  {
LABEL_360:
    __break(1u);
  }

  else
  {
    _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(a3, &v218);
    LODWORD(a3) = v218;
    if (!v218)
    {
LABEL_419:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v11 = 4293918719;
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(4293918719, &v214);
    v17 = 0xFFFFFLL;
    v16 = 0xFFFFFLL;
    if (v214 != 0)
    {
      v26 = 4293918719;
      do
      {
        _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(v26 & 1, &v214);
        if (v214 == 0)
        {
          v50 = a3;
        }

        else
        {
          v50 = a3;
          v51 = a3 * v16;
          v52 = 4293918721 * (-1048577 * v51);
          v105 = __CFADD__(v52, v51);
          v53 = v52 + v51;
          if (v105)
          {
            v16 = (HIDWORD(v53) + 0xFFFFF);
            if (HIDWORD(v53) >= 0xFFF00001)
            {
              goto LABEL_350;
            }
          }

          else if (v53 >= 0xFFF0000100000000)
          {
            v16 = (HIDWORD(v53) + 0xFFFFF);
          }

          else
          {
            v16 = HIDWORD(v53);
          }
        }

        v54 = v50 * v50;
        v27 = 4293918721;
        v55 = 4293918721 * (-1048577 * v54);
        v105 = __CFADD__(v55, v54);
        v56 = v55 + v54;
        if (v105)
        {
          a3 = (HIDWORD(v56) + 0xFFFFF);
          if (HIDWORD(v56) >= 0xFFF00001)
          {
            __break(1u);
            goto LABEL_43;
          }
        }

        else if (v56 >= 0xFFF0000100000000)
        {
          LODWORD(a3) = HIDWORD(v56) + 0xFFFFF;
        }

        else
        {
          LODWORD(a3) = HIDWORD(v56);
        }

        v26 = v26 >> 1;
        _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(v26, &v214);
      }

      while (v214 != 0);
    }

    v14 = v212[8];
    v192 = v212[9];
    v188 = v212[10];
    v212 = specialized Collection.prefix(_:)();
    v211 = specialized Collection.dropFirst(_:)();
    specialized Collection.prefix(_:)();
    v205 = v18;
    v209 = v19;
    v198 = v20;
    specialized Collection.dropFirst(_:)();
    specialized Collection.prefix(_:)();
    v185 = v21;
    v189 = v22;
    v187 = v23;
    v10 = specialized Collection.dropFirst(_:)();
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v24 = *(v200 + 32);
    swift_unknownObjectRetain();
    v208 = v24;
    sub_270B60478(v24);
    if (one-time initialization token for one == -1)
    {
      v25 = v195;
      if ((v195 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_362:
      __break(1u);
LABEL_363:
      __break(1u);
LABEL_364:
      __break(1u);
LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
LABEL_372:
      __break(1u);
      __break(1u);
LABEL_373:
      __break(1u);
LABEL_374:
      __break(1u);
LABEL_375:
      __break(1u);
      goto LABEL_376;
    }
  }

  swift_once();
  v25 = v195;
  if (v195 < 0)
  {
    goto LABEL_362;
  }

LABEL_10:
  v26 = static Field32.one;
  v27 = *(&v217 + 1);
  v213 = *(&v217 + 1);
  v17 = v209;
  if (v25)
  {
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v25;
    bzero((v9 + 32), 4 * v25);
    v27 = v213;
    if (v213)
    {
      goto LABEL_12;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v9 = MEMORY[0x277D84F90];
  if (!*(&v217 + 1))
  {
    goto LABEL_109;
  }

LABEL_12:
  a3 = v198 >> 1;
  v28 = (v198 >> 1) >= v209;
  if (v27 > 0)
  {
    v28 = v209 >= (v198 >> 1);
  }

  LODWORD(v186) = v26;
  if (v28)
  {
    v211 = 0;
LABEL_16:
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v208);

    specialized Collection.prefix(_:)();
    v208 = v30;
    v209 = v29;
    v191 = v31;
    specialized Collection.dropFirst(_:)();
    specialized Collection.prefix(_:)();
    v198 = v32;
    v183 = v34;
    v184 = v33;
    specialized Collection.dropFirst(_:)();
    if (!__OFADD__(v203, 1))
    {
      v207 = v203 + 1;
      if (((v203 + 1) * v204) >> 64 == ((v203 + 1) * v204) >> 63)
      {
        v25 = specialized Collection.prefix(_:)();
        v212 = v35;
        v206 = v36;
        v204 = v37;
        specialized Collection.dropFirst(_:)();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field32V_Tt1g5(v209, v208, v191, &v214);
        v10 = v210;
        if (v210)
        {
          goto LABEL_111;
        }

LABEL_110:
        v205 = v25;
        swift_unknownObjectRetain();
        _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field32V_Tt1g5(v198, v184, v183, &v218);
        if (v10)
        {
LABEL_111:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

        LODWORD(v64) = v214;
        if (v218)
        {
          v85 = -1048575 - v218;
          v78 = 0xFFF0000100000000;
          LODWORD(v9) = v188;
          v79 = v186;
          v57 = v195;
          if (v218 <= 0xFFF00001)
          {
            LODWORD(v82) = v214 - v85;
            if (v214 < v85)
            {
              if (v85 > 0xFFF00001)
              {
LABEL_406:
                __break(1u);
LABEL_407:
                __break(1u);
                goto LABEL_408;
              }

              LODWORD(v64) = v214 + v218;
              if (!__CFADD__(v214, v218))
              {
                goto LABEL_130;
              }

              __break(1u);
LABEL_120:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              outlined consume of GadgetEvaluation<A><A>(v208);

              swift_unknownObjectRelease();
              return swift_unknownObjectRelease();
            }

LABEL_129:
            LODWORD(v64) = v82;
LABEL_130:
            v86 = v197;
LABEL_131:
            v87 = v86 * v16;
            v88 = (v87 * v11) * (v11 + 2);
            v105 = __CFADD__(v88, v87);
            v89 = v88 + v87;
            v90 = HIDWORD(v89);
            if (v105)
            {
              v89 = 0xFFFFFLL;
              v105 = __CFADD__(v90, 0xFFFFF);
              LODWORD(v90) = v90 + 0xFFFFF;
              if (!v105)
              {
LABEL_138:
                v91 = v64 - v90;
                if (v64 < v90)
                {
                  v105 = v90 <= 0xFFF00001;
                  v92 = -1048575 - v90;
                  if (!v105)
                  {
                    goto LABEL_397;
                  }

                  v91 = v64 + v92;
                  if (__CFADD__(v64, v92))
                  {
LABEL_399:
                    __break(1u);
                    goto LABEL_400;
                  }
                }

                v184 = *(v200 + 32);
                v14 = v79;
                LODWORD(v58) = v79 - v196;
                v180 = v91;
                if (v79 < v196)
                {
                  v93 = -1048575 - v196;
                  if (v196 > 0xFFF00001)
                  {
LABEL_398:
                    __break(1u);
                    goto LABEL_399;
                  }

                  LODWORD(v58) = v79 + v93;
                  if (__CFADD__(v79, v93))
                  {
LABEL_400:
                    __break(1u);
LABEL_401:
                    __break(1u);
LABEL_402:
                    __break(1u);
                    goto LABEL_403;
                  }
                }

                v183 = v16;
                v16 = *(v200 + 32);
                sub_270B60478(v184);
                if (v57)
                {
                  a3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
                  *(a3 + 16) = v57;
                  bzero((a3 + 32), 4 * v57);
                }

                else
                {
                  a3 = MEMORY[0x277D84F90];
                }

                v94 = 0xFFF0000100000000;
                v95 = v189;
                v96 = (v187 >> 1) >= v189;
                v190 = v187 >> 1;
                v97 = v213;
                if (v213 > 0)
                {
                  v96 = v189 >= (v187 >> 1);
                }

                if (!v96)
                {
                  goto LABEL_155;
                }

                LODWORD(v58) = 0;
                LODWORD(v208) = 0;
LABEL_152:

                isUniquelyReferenced_nonNull_native = v194;
                v95 = v205;
                if ((v194 & 0x8000000000000000) == 0)
                {
                  if (HIDWORD(v194))
                  {
                    __break(1u);
LABEL_155:
                    LODWORD(v208) = 0;
                    v98 = 0;
                    v179 = 0;
                    v99 = v183 * v58;
                    v100 = (v99 * v11) * (v11 + 2);
                    v101 = (v100 + v99) >> 32;
                    if (v100 + v99 >= v94)
                    {
                      v102 = v101 + 0xFFFFF;
                    }

                    else
                    {
                      v102 = (v100 + v99) >> 32;
                    }

                    v105 = __CFADD__(v101, 0xFFFFF);
                    v103 = v101 + 0xFFFFF;
                    v104 = v105;
                    v105 = __CFADD__(v100, v99);
                    v202 = v204 & 1;
                    v204 = v204 >> 1;
                    v106 = __CFADD__(v100, v99);
                    v107 = v16 >> 62;
                    LODWORD(v200) = v106 & v104;
                    if (v105)
                    {
                      v108 = v103;
                    }

                    else
                    {
                      v108 = v102;
                    }

                    v199 = v108;
                    v105 = v108 <= 0xFFF00001;
                    v109 = -1048575 - v108;
                    v110 = !v105;
                    LODWORD(v198) = v110;
                    v197 = v109;
                    LODWORD(v195) = -1048575 - v109;
                    v196 = v109 > 0xFFF00001;
                    v111 = v95;
                    v112 = v14;
                    v182 = v16 >> 62;
                    while (1)
                    {
                      v113 = v111 + v97;
                      if (__OFADD__(v111, v97))
                      {
                        v114 = ((v111 + v97) >> 63) ^ 0x8000000000000000;
                      }

                      else
                      {
                        v114 = v111 + v97;
                      }

                      if (__OFADD__(v111, v97))
                      {
                        goto LABEL_389;
                      }

                      if (v190 >= v113)
                      {
                        v14 = v111 + v97;
                      }

                      else
                      {
                        v14 = v190;
                      }

                      if (v14 < v111)
                      {
                        goto LABEL_390;
                      }

                      if (v111 < v95)
                      {
                        goto LABEL_391;
                      }

                      if (v113 < 0)
                      {
                        goto LABEL_392;
                      }

                      v115 = v14 - v111;
                      if (__OFSUB__(v14, v111))
                      {
                        goto LABEL_393;
                      }

                      if (v115 < 0)
                      {
                        goto LABEL_394;
                      }

                      v186 = v114;
                      v187 = v111;
                      if (v115)
                      {
                        v181 = v14 - v111;
                        v210 = v10;
                        v178 = v14;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
                        }

                        v116 = v204;
                        v117 = v181;
                        v118 = 0;
                        v119 = (a3 + 36);
                        v120 = (v185 + 4 * v187);
                        while (v117)
                        {
                          v121 = v98 * v207;
                          if ((v98 * v207) >> 64 != (v98 * v207) >> 63)
                          {
                            goto LABEL_364;
                          }

                          v122 = v206 + v121;
                          if (__OFADD__(v206, v121))
                          {
                            goto LABEL_365;
                          }

                          v123 = v122 + v203;
                          if (__OFADD__(v122, v203))
                          {
                            goto LABEL_366;
                          }

                          if (v123 < v122)
                          {
                            goto LABEL_367;
                          }

                          if (v116 < v122)
                          {
                            goto LABEL_368;
                          }

                          if (v122 < v206)
                          {
                            goto LABEL_369;
                          }

                          v209 = v119;
                          if (v116 < v123)
                          {
                            goto LABEL_370;
                          }

                          if (v123 < 0)
                          {
                            goto LABEL_371;
                          }

                          swift_unknownObjectRetain();
                          _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field32V_Tt1g5(v212, v122, v202 | (2 * v123), &v214);
                          if (v210)
                          {
                            outlined consume of GadgetEvaluation<A><A>(v184);
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();

                            swift_unknownObjectRelease();
                            return swift_unknownObjectRelease();
                          }

                          if (v200)
                          {
                            goto LABEL_380;
                          }

                          v124 = v214;
                          v125 = v213;
                          v116 = v204;
                          if (v199)
                          {
                            v126 = v212;
                            if (v198)
                            {
                              goto LABEL_378;
                            }

                            if (v214 >= v197)
                            {
                              v124 = v214 - v197;
                            }

                            else
                            {
                              if (v196)
                              {
                                goto LABEL_385;
                              }

                              v124 = v214 + v195;
                              if (__CFADD__(v214, v195))
                              {
                                goto LABEL_386;
                              }
                            }
                          }

                          else
                          {
                            v126 = v212;
                          }

                          if (v123 >= v204)
                          {
                            goto LABEL_372;
                          }

                          v127 = v126[v123];
                          v128 = *v120;
                          v129 = *v120 - v124;
                          if (*v120 < v124)
                          {
                            v105 = v124 <= 0xFFF00001;
                            v130 = -1048575 - v124;
                            if (!v105)
                            {
                              goto LABEL_381;
                            }

                            v129 = v128 + v130;
                            if (__CFADD__(v128, v130))
                            {
                              goto LABEL_382;
                            }
                          }

                          v131 = v129 * v112;
                          v132 = (v131 * v11) * (v11 + 2);
                          v105 = __CFADD__(v132, v131);
                          v133 = v132 + v131;
                          v134 = HIDWORD(v133);
                          if (v105)
                          {
                            LODWORD(v134) = HIDWORD(v133) + 0xFFFFF;
                            if (HIDWORD(v133) >= 0xFFF00001)
                            {
                              goto LABEL_383;
                            }
                          }

                          else if (v133 >= 0xFFF0000100000000)
                          {
                            LODWORD(v134) = HIDWORD(v133) + 0xFFFFF;
                          }

                          v135 = *(a3 + 16);
                          if (v118 >= v135)
                          {
                            goto LABEL_373;
                          }

                          *(v209 - 1) = v134;
                          if (v118 + 1 >= v135)
                          {
                            goto LABEL_374;
                          }

                          *v209 = v127;
                          if (v127)
                          {
                            v105 = v127 <= 0xFFF00001;
                            v136 = -1048575 - v127;
                            if (!v105)
                            {
                              goto LABEL_379;
                            }

                            if (v208 >= v136)
                            {
                              LODWORD(v208) = v208 - v136;
                            }

                            else
                            {
                              v105 = v136 <= 0xFFF00001;
                              v137 = -1048575 - v136;
                              if (!v105)
                              {
                                goto LABEL_387;
                              }

                              v105 = __CFADD__(v208, v137);
                              LODWORD(v208) = v208 + v137;
                              if (v105)
                              {
                                goto LABEL_388;
                              }
                            }
                          }

                          v138 = v112 * v192;
                          v139 = (v138 * v11) * (v11 + 2);
                          v105 = __CFADD__(v139, v138);
                          v140 = v139 + v138;
                          if (v105)
                          {
                            v112 = (HIDWORD(v140) + 0xFFFFF);
                            if (HIDWORD(v140) >= 0xFFF00001)
                            {
                              goto LABEL_384;
                            }
                          }

                          else if (v140 >= 0xFFF0000100000000)
                          {
                            v112 = (HIDWORD(v140) + 0xFFFFF);
                          }

                          else
                          {
                            v112 = HIDWORD(v140);
                          }

                          if (v98 == 0x7FFFFFFFFFFFFFFFLL)
                          {
                            goto LABEL_375;
                          }

                          ++v98;
                          ++v120;
                          v118 += 2;
                          v119 = v209 + 2;
                          if (!--v117)
                          {
                            v10 = 0;
                            v95 = v189;
                            v16 = v184;
                            LODWORD(v107) = v182;
                            v14 = v178;
                            v115 = v181;
                            goto LABEL_241;
                          }
                        }

                        goto LABEL_363;
                      }

                      v125 = v213;
LABEL_241:
                      if (v125 < v115)
                      {
                        goto LABEL_395;
                      }

                      if (v115 != v125)
                      {
                        if (v115 >= v125)
                        {
                          goto LABEL_402;
                        }

                        v141 = v16;
                        v142 = v115;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
                        }

                        LODWORD(v107) = v182;
                        v143 = v142 + 0x4000000000000000;
                        v144 = 2 * v14 - 2 * v187;
                        v145 = (a3 - 8 * v187 + 8 * v14 + 36);
                        v146 = v213 + v187 - v14;
                        v16 = v141;
                        v95 = v189;
                        while ((v143 & 0x8000000000000000) == 0)
                        {
                          if ((v144 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_356;
                          }

                          v147 = *(a3 + 16);
                          if (v144 >= v147)
                          {
                            goto LABEL_357;
                          }

                          *(v145 - 1) = 0;
                          if (v144 + 1 >= v147)
                          {
                            goto LABEL_358;
                          }

                          *v145 = 0;
                          v145 += 2;
                          ++v143;
                          v144 += 2;
                          if (!--v146)
                          {
                            goto LABEL_252;
                          }
                        }

                        goto LABEL_355;
                      }

LABEL_252:
                      v14 = v112;
                      if (v107)
                      {
                        if (v107 == 1)
                        {
                          specialized QueryGadget.evaluate<A>(at:)(a3, &v214);
                          goto LABEL_257;
                        }
                      }

                      else
                      {
                        specialized GadgetWireInputs.update<A>(_:)(a3);
                        if (v10)
                        {
                          goto LABEL_353;
                        }
                      }

                      specialized ParallelSum.evaluate<A>(at:)(a3, &v214);
LABEL_257:
                      v97 = v213;
                      v111 = v186;
                      if (v214)
                      {
                        v148 = -1048575 - v214;
                        LODWORD(v107) = v182;
                        if (v214 > 0xFFF00001)
                        {
                          goto LABEL_401;
                        }

                        v149 = v179;
                        if (v179 >= v148)
                        {
                          v179 -= v148;
                        }

                        else
                        {
                          if (v148 > 0xFFF00001)
                          {
                            goto LABEL_409;
                          }

                          v179 += v214;
                          if (__CFADD__(v149, v214))
                          {
                            goto LABEL_410;
                          }
                        }
                      }

                      else
                      {
                        LODWORD(v107) = v182;
                      }

                      v150 = v190 >= v186;
                      if (v213 > 0)
                      {
                        v150 = v186 >= v190;
                      }

                      if (v150)
                      {
                        goto LABEL_348;
                      }
                    }
                  }

LABEL_278:
                  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(isUniquelyReferenced_nonNull_native, &v214);
                  swift_unknownObjectRelease();
                  outlined consume of GadgetEvaluation<A><A>(v16);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v152 = v214 * v183;
                  v153 = (v152 * v11) * (v11 + 2);
                  v105 = __CFADD__(v153, v152);
                  v154 = v153 + v152;
                  v155 = HIDWORD(v154);
                  if (v105)
                  {
                    v154 = 0xFFFFFLL;
                    v105 = __CFADD__(v155, 0xFFFFF);
                    LODWORD(v155) = v155 + 0xFFFFF;
                    if (!v105)
                    {
                      goto LABEL_285;
                    }

                    __break(1u);
                  }

                  if (v154 >= 0xFFF0000100000000)
                  {
                    LODWORD(v155) = v155 + 0xFFFFF;
                  }

LABEL_285:
                  v156 = v208 - v155;
                  if (v208 < v155)
                  {
                    v105 = v155 <= 0xFFF00001;
                    v157 = -1048575 - v155;
                    if (!v105)
                    {
                      goto LABEL_407;
                    }

                    v156 = v208 + v157;
                    if (__CFADD__(v208, v157))
                    {
LABEL_408:
                      __break(1u);
LABEL_409:
                      __break(1u);
LABEL_410:
                      __break(1u);
                      goto LABEL_411;
                    }
                  }

                  v158 = v9 * v180;
                  v159 = (v158 * v11) * (v11 + 2);
                  v105 = __CFADD__(v159, v158);
                  v160 = v159 + v158;
                  v161 = HIDWORD(v160);
                  if (v105)
                  {
                    v160 = 0xFFFFFLL;
                    v105 = __CFADD__(v161, 0xFFFFF);
                    LODWORD(v161) = v161 + 0xFFFFF;
                    if (!v105)
                    {
                      goto LABEL_296;
                    }

                    __break(1u);
                  }

                  if (v160 >= 0xFFF0000100000000)
                  {
                    LODWORD(v161) = v161 + 0xFFFFF;
                  }

LABEL_296:
                  if (!v161)
                  {
                    goto LABEL_306;
                  }

                  v105 = v161 <= 0xFFF00001;
                  v162 = -1048575 - v161;
                  if (!v105)
                  {
LABEL_403:
                    __break(1u);
LABEL_404:
                    __break(1u);
LABEL_405:
                    __break(1u);
                    goto LABEL_406;
                  }

                  v163 = v211 - v162;
                  if (v211 < v162)
                  {
                    v105 = v162 <= 0xFFF00001;
                    v164 = -1048575 - v162;
                    if (!v105)
                    {
                      goto LABEL_415;
                    }

                    v105 = __CFADD__(v211, v164);
                    v163 = v211 + v164;
                    v211 += v164;
                    if (!v105)
                    {
LABEL_306:
                      specialized FieldElement.pow(_:)(2, v9, &v214);
                      v165 = v58 * v214;
                      v166 = (v165 * v11) * (v11 + 2);
                      v105 = __CFADD__(v166, v165);
                      v167 = v166 + v165;
                      v168 = HIDWORD(v167);
                      if (v105)
                      {
                        v167 = 0xFFFFFLL;
                        v105 = __CFADD__(v168, 0xFFFFF);
                        LODWORD(v168) = v168 + 0xFFFFF;
                        if (!v105)
                        {
                          goto LABEL_313;
                        }

                        __break(1u);
                      }

                      if (v167 >= 0xFFF0000100000000)
                      {
                        LODWORD(v168) = v168 + 0xFFFFF;
                      }

LABEL_313:
                      if (v168)
                      {
                        v105 = v168 <= 0xFFF00001;
                        v169 = -1048575 - v168;
                        if (!v105)
                        {
                          goto LABEL_404;
                        }

                        if (v211 >= v169)
                        {
                          v211 -= v169;
                        }

                        else
                        {
                          v105 = v169 <= 0xFFF00001;
                          v170 = -1048575 - v169;
                          if (!v105)
                          {
                            goto LABEL_416;
                          }

                          v105 = __CFADD__(v211, v170);
                          v211 += v170;
                          if (v105)
                          {
LABEL_417:
                            __break(1u);
LABEL_418:
                            __break(1u);
                            goto LABEL_419;
                          }
                        }
                      }

                      result = specialized FieldElement.pow(_:)(3, v9, &v214);
                      v171 = v214 * v156;
                      v172 = (v171 * v11) * (v11 + 2);
                      v105 = __CFADD__(v172, v171);
                      v173 = v172 + v171;
                      v174 = HIDWORD(v173);
                      if (v105)
                      {
                        v105 = __CFADD__(HIDWORD(v173), 0xFFFFF);
                        v173 = (HIDWORD(v173) + 0xFFFFF);
                        v174 = a5;
                        if (!v105)
                        {
                          goto LABEL_331;
                        }

                        __break(1u);
                      }

                      if (v173 >= 0xFFF0000100000000)
                      {
                        LODWORD(v173) = v174 + 0xFFFFF;
                      }

                      else
                      {
                        LODWORD(v173) = v174;
                      }

                      v174 = a5;
LABEL_331:
                      *v174 = v211;
                      if (!v173)
                      {
                        goto LABEL_341;
                      }

                      v105 = v173 <= 0xFFF00001;
                      v175 = -1048575 - v173;
                      if (!v105)
                      {
                        goto LABEL_405;
                      }

                      v176 = v211 - v175;
                      if (v211 < v175)
                      {
                        v105 = v175 <= 0xFFF00001;
                        v177 = -1048575 - v175;
                        if (!v105)
                        {
                          goto LABEL_418;
                        }

                        v105 = __CFADD__(v211, v177);
                        v176 = v211 + v177;
                        v211 += v177;
                        if (!v105)
                        {
LABEL_341:
                          *v174 = v211;
                          return result;
                        }

                        __break(1u);
                      }

                      v211 = v176;
                      goto LABEL_341;
                    }

                    __break(1u);
                  }

                  v211 = v163;
                  goto LABEL_306;
                }

LABEL_274:
                v151 = -isUniquelyReferenced_nonNull_native;
                if (__OFSUB__(0, isUniquelyReferenced_nonNull_native))
                {
LABEL_411:
                  __break(1u);
                  goto LABEL_412;
                }

                if ((v151 & 0x8000000000000000) != 0)
                {
LABEL_412:
                  __break(1u);
                  goto LABEL_413;
                }

                if (HIDWORD(v151))
                {
LABEL_413:
                  __break(1u);
                  goto LABEL_414;
                }

                isUniquelyReferenced_nonNull_native = (isUniquelyReferenced_nonNull_native - 0xFFFFF);
                if (v151 > 0xFFF00001)
                {
LABEL_414:
                  __break(1u);
LABEL_415:
                  __break(1u);
LABEL_416:
                  __break(1u);
                  goto LABEL_417;
                }

                goto LABEL_278;
              }

              __break(1u);
            }

            if (v89 >= v78)
            {
              LODWORD(v90) = v90 + 0xFFFFF;
            }

            goto LABEL_138;
          }

LABEL_396:
          __break(1u);
LABEL_397:
          __break(1u);
          goto LABEL_398;
        }

LABEL_124:
        v78 = 0xFFF0000100000000;
        LODWORD(v9) = v188;
        v79 = v186;
        v86 = v197;
        v57 = v195;
        goto LABEL_131;
      }

LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
      goto LABEL_396;
    }

LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

LABEL_43:
  v211 = 0;
  v201 = -1048575 - v16;
  v206 = v208 >> 62;
  v207 = a3;
  v57 = 0xFFFFFLL;
  v10 = v26;
  v58 = v17;
  while (1)
  {
    v60 = v58 + v27;
    v61 = ((v58 + v27) >> 63) ^ 0x8000000000000000;
    if (!__OFADD__(v58, v27))
    {
      v61 = v58 + v27;
    }

    v212 = v61;
    if (__OFADD__(v58, v27))
    {
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      LODWORD(v58) = v179;
      LODWORD(v9) = v188;
      goto LABEL_152;
    }

    if (a3 >= v60)
    {
      a3 = v58 + v27;
    }

    if (a3 < v58)
    {
      goto LABEL_343;
    }

    if (v58 < v17)
    {
      goto LABEL_344;
    }

    if (v60 < 0)
    {
      goto LABEL_345;
    }

    v62 = a3 - v58;
    if (__OFSUB__(a3, v58))
    {
      goto LABEL_346;
    }

    if (v62 < 0)
    {
      goto LABEL_347;
    }

    if (!v62)
    {
      goto LABEL_83;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v64 = 0;
    v65 = (v205 + 4 * v58);
    v66 = a3 - v58;
    do
    {
      if (!v66)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v67 = *v65;
      v68 = *v65 * v10;
      v69 = (v68 * v11) * (v11 + 2);
      v105 = __CFADD__(v69, v68);
      v70 = v69 + v68;
      if (v105)
      {
        v71 = HIDWORD(v70) + 0xFFFFF;
        if (HIDWORD(v70) >= 0xFFF00001)
        {
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
          goto LABEL_274;
        }
      }

      else
      {
        v71 = HIDWORD(v70) + 0xFFFFF;
        if (v70 < 0xFFF0000100000000)
        {
          v71 = HIDWORD(v70);
        }
      }

      v72 = *(v9 + 16);
      if (v64 >= v72)
      {
        goto LABEL_122;
      }

      v73 = v9 + 4 * v64;
      *(v73 + 32) = v71;
      v74 = v67 - v16;
      if (v67 < v16)
      {
        if (v16 > 0xFFF00001)
        {
          goto LABEL_271;
        }

        v74 = v67 + v201;
        if (__CFADD__(v67, v201))
        {
          goto LABEL_272;
        }
      }

      if (v64 + 1 >= v72)
      {
        goto LABEL_123;
      }

      *(v73 + 36) = v74;
      v75 = v10 * v14;
      v76 = (v75 * v11) * (v11 + 2);
      v105 = __CFADD__(v76, v75);
      v77 = v76 + v75;
      if (v105)
      {
        v10 = (HIDWORD(v77) + 0xFFFFF);
        if (HIDWORD(v77) >= 0xFFF00001)
        {
          goto LABEL_273;
        }
      }

      else if (v77 >= 0xFFF0000100000000)
      {
        v10 = (HIDWORD(v77) + 0xFFFFF);
      }

      else
      {
        v10 = HIDWORD(v77);
      }

      ++v65;
      v64 += 2;
      --v66;
    }

    while (v66);
    v27 = v213;
LABEL_83:
    if (v27 < v62)
    {
      break;
    }

    if (v62 != v27)
    {
      if (v62 >= v27)
      {
        goto LABEL_352;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      }

      v80 = v62 + 0x4000000000000000;
      v81 = 2 * a3 - 2 * v58;
      v82 = (v9 - 8 * v58 + 8 * a3 + 36);
      v83 = v213 + v58 - a3;
      v17 = v209;
      a3 = v207;
      while ((v80 & 0x8000000000000000) == 0)
      {
        if ((v81 & 0x8000000000000000) != 0)
        {
          goto LABEL_126;
        }

        v78 = *(v9 + 16);
        if (v81 >= v78)
        {
          goto LABEL_127;
        }

        *(v82 - 1) = 0;
        v79 = v81 + 1;
        if (v81 + 1 >= v78)
        {
          goto LABEL_128;
        }

        *v82 = 0;
        v82 += 2;
        ++v80;
        v81 += 2;
        if (!--v83)
        {
          goto LABEL_95;
        }
      }

      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v17 = v209;
    a3 = v207;
LABEL_95:
    if (!v206)
    {
      specialized GadgetWireInputs.update<A>(_:)(v9);
      if (!v210)
      {
        goto LABEL_99;
      }

      goto LABEL_120;
    }

    if (v206 == 1)
    {
      specialized QueryGadget.evaluate<A>(at:)(v9, &v214);
      goto LABEL_100;
    }

LABEL_99:
    specialized ParallelSum.evaluate<A>(at:)(v9, &v214);
LABEL_100:
    v27 = v213;
    if (!v214)
    {
      goto LABEL_45;
    }

    v84 = -1048575 - v214;
    if (v214 > 0xFFF00001)
    {
      goto LABEL_351;
    }

    if (v211 >= v84)
    {
      v211 -= v84;
    }

    else
    {
      if (v84 > 0xFFF00001)
      {
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
        goto LABEL_360;
      }

      v105 = __CFADD__(v211, v214);
      v211 += v214;
      if (v105)
      {
        goto LABEL_354;
      }
    }

LABEL_45:
    v58 = v212;
    v59 = a3 >= v212;
    if (v213 > 0)
    {
      v59 = v212 >= a3;
    }

    if (v59)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_350:
  __break(1u);
LABEL_351:
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  outlined consume of GadgetEvaluation<A><A>(v16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, int64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(v5 + 72);
  if (v7 != v8)
  {
    _StringGuts.grow(_:)(35);

    *&v230 = 0xD00000000000001BLL;
    *(&v230 + 1) = 0x8000000270C51C80;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v45);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v234 = v8;
LABEL_20:
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v47);
LABEL_21:

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v48 = v230;
    *(v48 + 16) = 2;
    return swift_willThrow();
  }

  if (a2[2] != 3)
  {
    _StringGuts.grow(_:)(33);

    *&v230 = 0xD000000000000019;
    *(&v230 + 1) = 0x8000000270C51CE0;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v46);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v234 = 3;
    goto LABEL_20;
  }

  v223 = v6;
  v222 = *(v5 + 120);
  v215 = *(v5 + 128);
  v202 = *(v5 + 136);
  v204 = *(v5 + 144);
  v213 = a4;
  v11 = *(a4 + 16);
  v12 = *(v5 + 40);
  v13 = *(v5 + 24);
  v231 = *(v5 + 8);
  v232 = v13;
  v233 = v12;
  v14 = v231;
  v15 = v12;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v11 != 1)
  {
    _StringGuts.grow(_:)(23);

    *&v230 = 0x2064696C61766E49;
    *(&v230 + 1) = 0xEF203A746E756F63;
    v234 = v11;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v49);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_270C44540;
    v51 = specialized Gadget.wirePolynomialLength.getter();
    v52 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v50 + 32) = v14;
    *(v50 + 48) = v15;
    *(v50 + 56) = v51;
    *(v50 + 64) = v52;
    v53 = MEMORY[0x2743B2770](v50, &type metadata for GadgetParameters);
    v55 = v54;

    MEMORY[0x2743B25F0](v53, v55);
    goto LABEL_21;
  }

  v203 = v231;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_420;
  }

  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(a3, &v234);
  v16 = v234;
  if (!v234)
  {
    goto LABEL_453;
  }

  _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(0xFFFFFFFEFFFFFFFFLL, &v230);
  if (v230 != 0)
  {
    v56 = 0xFFFFFFFEFFFFFFFFLL;
    v229 = 0xFFFFFFFFLL;
    while (1)
    {
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v56 & 1, &v230);
      if (v230 == 0)
      {
        v58 = v229;
        goto LABEL_47;
      }

      v59 = (v16 * v229) >> 64;
      v60 = (0xFFFFFFFEFFFFFFFFLL * v16 * v229 * 0xFFFFFFFF00000001) >> 64;
      v61 = __CFADD__(-(v16 * v229), v16 * v229);
      v110 = __CFADD__(v60, v59);
      v62 = v60 + v59;
      if (v110)
      {
        v63 = v62 + v61;
      }

      else
      {
        if (v62 != -1)
        {
          v64 = v62 + v61;
          if (v64 >= 0xFFFFFFFF00000001)
          {
            v58 = v64 + 0xFFFFFFFF;
          }

          else
          {
            v58 = v64;
          }

          goto LABEL_47;
        }

        v63 = 0;
        if (!v61)
        {
          v58 = 4294967294;
          goto LABEL_47;
        }
      }

      v58 = v63 + 0xFFFFFFFF;
      if (v63 >= 0xFFFFFFFF00000001)
      {
        goto LABEL_384;
      }

LABEL_47:
      v65 = (v16 * v16) >> 64;
      v66 = (0xFFFFFFFEFFFFFFFFLL * v16 * v16 * 0xFFFFFFFF00000001) >> 64;
      v67 = __CFADD__(-(v16 * v16), v16 * v16);
      v110 = __CFADD__(v66, v65);
      v68 = v66 + v65;
      v229 = v58;
      if (v110)
      {
        v69 = v68 + v67;
        v16 = v69 + 0xFFFFFFFF;
        if (v69 >= 0xFFFFFFFF00000001)
        {
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
LABEL_386:
          __break(1u);
LABEL_387:
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
LABEL_391:
          __break(1u);
LABEL_392:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          outlined consume of GadgetEvaluation<A><A>(v7);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }
      }

      else if (v68 == -1)
      {
        if (v67)
        {
          v16 = 0xFFFFFFFFLL;
        }

        else
        {
          v16 = 4294967294;
        }
      }

      else
      {
        v57 = v68 + v67;
        if (v57 >= 0xFFFFFFFF00000001)
        {
          v16 = v57 + 0xFFFFFFFF;
        }

        else
        {
          v16 = v57;
        }
      }

      v56 >>= 1;
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v56, &v230);
      if (v230 == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v229 = 0xFFFFFFFFLL;
LABEL_8:
  v11 = a2[4];
  v214 = a2[5];
  v195 = a2[6];
  specialized Collection.prefix(_:)();
  specialized Collection.dropFirst(_:)();
  specialized Collection.prefix(_:)();
  v216 = v17;
  v224 = v18;
  v206 = v19;
  specialized Collection.dropFirst(_:)();
  specialized Collection.prefix(_:)();
  v200 = v20;
  v196 = v21;
  v199 = v22;
  specialized Collection.dropFirst(_:)();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v23 = *(v213 + 32);
  swift_unknownObjectRetain();
  v221 = v23;
  sub_270B60478(v23);
  if (one-time initialization token for one != -1)
  {
    goto LABEL_421;
  }

LABEL_9:
  v24 = static Field64.one;
  v25 = *(&v233 + 1);
  v26 = _sSa9repeating5countSayxGx_SitcfC4VDAF7Field64V_Tt1B5(0, v203);
  if (!v25)
  {
    __break(1u);
LABEL_423:
    __break(1u);
LABEL_424:
    __break(1u);
LABEL_425:
    __break(1u);
LABEL_426:
    __break(1u);
    goto LABEL_427;
  }

  v27 = v25;
  v7 = v26;
  v28 = v206 >> 1;
  v29 = v224;
  v30 = (v206 >> 1) >= v224;
  if (v27 > 0)
  {
    v30 = v224 >= (v206 >> 1);
  }

  v228 = v27;
  v197 = v24;
  if (v30)
  {
    v226 = 0;
LABEL_14:
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v221);

    specialized Collection.prefix(_:)();
    v32 = v31;
    v225 = v33;
    v218 = v34;
    specialized Collection.dropFirst(_:)();
    specialized Collection.prefix(_:)();
    v217 = v35;
    v210 = v36;
    v207 = v37;
    specialized Collection.dropFirst(_:)();
    if (!__OFADD__(v222, 1))
    {
      v221 = v222 + 1;
      if (((v222 + 1) * v215) >> 64 == ((v222 + 1) * v215) >> 63)
      {
        v38 = v32;
        v39 = specialized Collection.prefix(_:)();
        v227 = v40;
        v220 = v41;
        v215 = v42;
        v43 = specialized Collection.dropFirst(_:)();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        _s4VDAF15PINEMainCircuitV22evaluateNormRangeCheck5vBits01uH018inverseNumOfShares3forxs10ArraySliceVyxG_AKxAA16GadgetEvaluationOyxGtKFAA7Field64V_SRySfGTt3B5(v38, v225, v218, v217, v210, v207, &v230, v229);
        v11 = v223;
        if (v223)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

        v7 = v215;
        v219 = v39;
        v29 = *(v213 + 32);
        v71 = v197;
        v28 = v197 - v204;
        if (v197 >= v204)
        {
          goto LABEL_137;
        }

        v95 = 0xFFFFFFFF00000001 - v204;
        v24 = v200;
        if (v204 <= 0xFFFFFFFF00000001)
        {
          v28 = v197 + v95;
          if (!__CFADD__(v197, v95))
          {
LABEL_138:
            sub_270B60478(v29);
            v70 = _sSa9repeating5countSayxGx_SitcfC4VDAF7Field64V_Tt1B5(0, v203);
            v76 = v199 >> 1;
            v96 = (v199 >> 1) >= v24;
            v75 = v228;
            if (v228 > 0)
            {
              v96 = v24 >= (v199 >> 1);
            }

            if (v96)
            {
              v97 = 0;
              v224 = 0;
              v7 = v29;
LABEL_142:
              v24 = v97;

              v71 = v195;
              v98 = v202;
              v28 = v219;
              if ((v202 & 0x8000000000000000) != 0)
              {
                if (__OFSUB__(0, v202))
                {
                  goto LABEL_448;
                }

                if (-v202 < 0)
                {
LABEL_449:
                  __break(1u);
                  goto LABEL_450;
                }

                v98 = v202 - 0xFFFFFFFF;
              }

              _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(v98, &v234);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              outlined consume of GadgetEvaluation<A><A>(v7);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v99 = (v234 * v229) >> 64;
              v75 = 0xFFFFFFFF00000001;
              v100 = (0xFFFFFFFEFFFFFFFFLL * v234 * v229 * 0xFFFFFFFF00000001) >> 64;
              v78 = __CFADD__(-(v234 * v229), v234 * v229);
              v77 = v100 + v99;
              if (!__CFADD__(v100, v99))
              {
                if (v77 != -1)
                {
                  v103 = v77 + (v78 & 1);
                  if (v103 >= 0xFFFFFFFF00000001)
                  {
                    v103 += 0xFFFFFFFFLL;
                  }

                  goto LABEL_303;
                }

                goto LABEL_298;
              }

              goto LABEL_151;
            }

            goto LABEL_154;
          }

          __break(1u);
LABEL_137:
          v24 = v200;
          goto LABEL_138;
        }

LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
        goto LABEL_438;
      }

LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      __break(1u);
LABEL_432:
      __break(1u);
LABEL_433:
      __break(1u);
LABEL_434:
      __break(1u);
LABEL_435:
      __break(1u);
      goto LABEL_436;
    }

LABEL_427:
    __break(1u);
    goto LABEL_428;
  }

  v226 = 0;
  v43 = 0xFFFFFFFF00000001;
  v211 = 0xFFFFFFFF00000001 - v229;
  v219 = v221 >> 62;
  v220 = v206 >> 1;
  v70 = 0xFFFFFFFFLL;
  v71 = v224;
  while (1)
  {
    v73 = v71 + v27;
    v74 = ((v71 + v27) >> 63) ^ 0x8000000000000000;
    if (!__OFADD__(v71, v27))
    {
      v74 = v71 + v27;
    }

    v227 = v74;
    if (__OFADD__(v71, v27))
    {
      goto LABEL_385;
    }

    if (v28 >= v73)
    {
      v28 = v71 + v27;
    }

    if (v28 < v71)
    {
      goto LABEL_386;
    }

    if (v71 < v29)
    {
      goto LABEL_387;
    }

    if (v73 < 0)
    {
      goto LABEL_388;
    }

    v29 = v28 - v71;
    if (__OFSUB__(v28, v71))
    {
      goto LABEL_389;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_390;
    }

    if (v29)
    {
      break;
    }

LABEL_108:
    if (v27 < v29)
    {
      goto LABEL_391;
    }

    if (v29 != v27)
    {
      if (v29 >= v27)
      {
        goto LABEL_410;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      v77 = v29 + 0x4000000000000000;
      v78 = 2 * v28 - 2 * v71;
      v92 = (v7 - 16 * v71 + 16 * v28 + 40);
      v93 = v228 + v71 - v28;
      v29 = v224;
      v28 = v206 >> 1;
      while ((v77 & 0x8000000000000000) == 0)
      {
        if ((v78 & 0x8000000000000000) != 0)
        {
          goto LABEL_293;
        }

        v75 = *(v7 + 16);
        if (v78 >= v75)
        {
          goto LABEL_294;
        }

        *(v92 - 1) = 0;
        v76 = v78 + 1;
        if (v78 + 1 >= v75)
        {
          goto LABEL_295;
        }

        *v92 = 0;
        v92 += 2;
        ++v77;
        v78 += 2;
        if (!--v93)
        {
          goto LABEL_120;
        }
      }

      goto LABEL_292;
    }

    v29 = v224;
    v28 = v206 >> 1;
LABEL_120:
    if (v219)
    {
      if (v219 == 1)
      {
        specialized QueryGadget.evaluate<A>(at:)(v7, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), &v230);
        goto LABEL_125;
      }
    }

    else
    {
      specialized GadgetWireInputs.update<A>(_:)(v7, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew());
      if (v223)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        outlined consume of GadgetEvaluation<A><A>(v221);

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }
    }

    specialized ParallelSum.evaluate<A>(at:)(v7, &v230);
LABEL_125:
    v27 = v228;
    if (v230)
    {
      v94 = 0xFFFFFFFF00000001 - v230;
      if (v230 > 0xFFFFFFFF00000001)
      {
        goto LABEL_409;
      }

      if (v226 >= v94)
      {
        v226 -= v94;
      }

      else
      {
        if (v94 > 0xFFFFFFFF00000001)
        {
          goto LABEL_418;
        }

        v110 = __CFADD__(v226, v230);
        v226 += v230;
        if (v110)
        {
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          swift_once();
          goto LABEL_9;
        }
      }
    }

    v71 = v227;
    v72 = v28 >= v227;
    if (v228 > 0)
    {
      v72 = v227 >= v28;
    }

    if (v72)
    {
      goto LABEL_14;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  }

  v77 = 0;
  v78 = v216 + 8 * v71;
  v79 = v28 - v71;
  while (1)
  {
    if (!v79)
    {
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      if ((v78 & 1) == 0)
      {
        goto LABEL_302;
      }

      v78 = 1;
LABEL_151:
      v101 = v224;
      v102 = v78 + v77;
      v110 = __CFADD__(v102, 0xFFFFFFFFLL);
      v103 = v102 + 0xFFFFFFFF;
      if (!v110)
      {
        goto LABEL_304;
      }

      __break(1u);
LABEL_154:
      v224 = 0;
      v104 = 0;
      v97 = 0;
      v212 = v7 & 1;
      v213 = v7 >> 1;
      v105 = v28 * v229;
      v106 = (v28 * v229) >> 64;
      v107 = -(v28 * v229);
      v108 = (0xFFFFFFFEFFFFFFFFLL * v28 * v229 * 0xFFFFFFFF00000001) >> 64;
      v216 = v108 + v106;
      v109 = __CFADD__(v108, v106);
      v209 = v109;
      v110 = __CFADD__(v107, v105);
      v111 = __CFADD__(v107, v105);
      v223 = v111;
      v112 = v106 + v110 + v108;
      v113 = v24;
      if (v112 >= 0xFFFFFFFF00000001)
      {
        v112 += 0xFFFFFFFFLL;
      }

      v208 = v112;
      v114 = v29 >> 62;
      v193 = v43;
      v194 = v29;
      v205 = v29 >> 62;
      v7 = v29;
      v199 = v76;
      while (1)
      {
        v115 = v113 + v75;
        v116 = ((v113 + v75) >> 63) ^ 0x8000000000000000;
        if (!__OFADD__(v113, v75))
        {
          v116 = v113 + v75;
        }

        v206 = v116;
        if (__OFADD__(v113, v75))
        {
          goto LABEL_429;
        }

        if (v76 >= v115)
        {
          v117 = v113 + v75;
        }

        else
        {
          v117 = v76;
        }

        if (v117 < v113)
        {
          goto LABEL_430;
        }

        if (v113 < v200)
        {
          goto LABEL_431;
        }

        if (v115 < 0)
        {
          goto LABEL_432;
        }

        v118 = v117 - v113;
        if (__OFSUB__(v117, v113))
        {
          goto LABEL_433;
        }

        if (v118 < 0)
        {
          goto LABEL_434;
        }

        v204 = v97;
        if (v118)
        {
          v198 = v117;
          v203 = v113;
          v119 = v11;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
          }

          v11 = 0;
          v215 = v70;
          v120 = (v70 + 40);
          v192 = v118;
          v121 = (v196 + 8 * v203);
          v122 = v213;
          while (1)
          {
            v123 = v104 * v221;
            if ((v104 * v221) >> 64 != (v104 * v221) >> 63)
            {
              goto LABEL_397;
            }

            v124 = v220 + v123;
            if (__OFADD__(v220, v123))
            {
              goto LABEL_398;
            }

            v125 = v124 + v222;
            if (__OFADD__(v124, v222))
            {
              goto LABEL_399;
            }

            if (v125 < v124)
            {
              goto LABEL_400;
            }

            if (v122 < v124)
            {
              goto LABEL_401;
            }

            if (v124 < v220)
            {
              goto LABEL_402;
            }

            if (v122 < v125)
            {
              goto LABEL_403;
            }

            if (v125 < 0)
            {
              goto LABEL_404;
            }

            swift_unknownObjectRetain();
            _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field64V_Tt1g5(v227, v124, v212 | (2 * v125), &v234);
            if (v119)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              outlined consume of GadgetEvaluation<A><A>(v194);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              return swift_unknownObjectRelease();
            }

            v126 = v223;
            v127 = v228;
            v122 = v213;
            if (v209)
            {
              goto LABEL_188;
            }

            v129 = v208;
            if (v216 == -1)
            {
              break;
            }

LABEL_192:
            v130 = v234;
            if (!v129)
            {
              goto LABEL_202;
            }

            v110 = v129 <= 0xFFFFFFFF00000001;
            v131 = 0xFFFFFFFF00000001 - v129;
            if (!v110)
            {
              goto LABEL_411;
            }

LABEL_195:
            if (v130 >= v131)
            {
              v130 -= v131;
            }

            else
            {
              v110 = v131 <= 0xFFFFFFFF00000001;
              v132 = 0xFFFFFFFF00000001 - v131;
              if (!v110)
              {
                goto LABEL_423;
              }

              v110 = __CFADD__(v130, v132);
              v130 += v132;
              if (v110)
              {
                goto LABEL_424;
              }
            }

LABEL_202:
            if (v125 >= v213)
            {
              goto LABEL_405;
            }

            v133 = *(v227 + 8 * v125);
            v134 = *v121;
            v135 = *v121 - v130;
            if (*v121 < v130)
            {
              v110 = v130 <= 0xFFFFFFFF00000001;
              v136 = 0xFFFFFFFF00000001 - v130;
              if (!v110)
              {
                goto LABEL_416;
              }

              v135 = v134 + v136;
              if (__CFADD__(v134, v136))
              {
                goto LABEL_417;
              }
            }

            v137 = (v135 * v71) >> 64;
            v138 = (0xFFFFFFFEFFFFFFFFLL * v135 * v71 * 0xFFFFFFFF00000001) >> 64;
            v139 = __CFADD__(-(v135 * v71), v135 * v71);
            v140 = v138 + v137;
            if (!__CFADD__(v138, v137))
            {
              if (v140 != -1)
              {
                v142 = v140 + v139;
                if (v142 >= 0xFFFFFFFF00000001)
                {
                  v142 += 0xFFFFFFFFLL;
                }

                goto LABEL_225;
              }

              if (!v139)
              {
                v142 = 4294967294;
                goto LABEL_225;
              }

              v139 = 1;
            }

            v141 = v139 + v140;
            v110 = __CFADD__(v141, 0xFFFFFFFFLL);
            v142 = v141 + 0xFFFFFFFFLL;
            if (v110)
            {
              goto LABEL_414;
            }

LABEL_225:
            v143 = *(v215 + 16);
            if (v11 >= v143)
            {
              goto LABEL_406;
            }

            *(v120 - 1) = v142;
            if (v11 + 1 >= v143)
            {
              goto LABEL_407;
            }

            *v120 = v133;
            if (v133)
            {
              v110 = v133 <= 0xFFFFFFFF00000001;
              v144 = 0xFFFFFFFF00000001 - v133;
              if (!v110)
              {
                goto LABEL_412;
              }

              if (v224 >= v144)
              {
                v224 -= v144;
              }

              else
              {
                v110 = v144 <= 0xFFFFFFFF00000001;
                v145 = 0xFFFFFFFF00000001 - v144;
                if (!v110)
                {
                  goto LABEL_425;
                }

                if (__CFADD__(v224, v145))
                {
                  goto LABEL_426;
                }

                v224 += v145;
              }
            }

            v146 = (v71 * v214) >> 64;
            v147 = (0xFFFFFFFEFFFFFFFFLL * v71 * v214 * 0xFFFFFFFF00000001) >> 64;
            v148 = __CFADD__(-(v71 * v214), v71 * v214);
            v149 = v147 + v146;
            if (__CFADD__(v147, v146))
            {
              goto LABEL_241;
            }

            if (v149 == -1)
            {
              if (v148)
              {
                v148 = 1;
LABEL_241:
                v150 = v148 + v149;
                v71 = v150 + 0xFFFFFFFF;
                if (v150 >= 0xFFFFFFFF00000001)
                {
                  goto LABEL_415;
                }

                goto LABEL_250;
              }

              v71 = 4294967294;
            }

            else
            {
              v151 = v149 + v148;
              if (v151 >= 0xFFFFFFFF00000001)
              {
                v71 = v151 + 0xFFFFFFFF;
              }

              else
              {
                v71 = v151;
              }
            }

LABEL_250:
            if (v104 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_408;
            }

            ++v104;
            ++v121;
            v11 += 2;
            v120 += 2;
            if (!--v118)
            {
              v11 = 0;
              v97 = v204;
              LODWORD(v114) = v205;
              v43 = v193;
              v7 = v194;
              v70 = v215;
              v113 = v203;
              v117 = v198;
              v118 = v192;
              goto LABEL_254;
            }
          }

          if (!v223)
          {
            v130 = v234;
            v131 = 0xFFFFFFFE00000003;
            goto LABEL_195;
          }

          v126 = 1;
LABEL_188:
          v128 = v126 + v216;
          v110 = __CFADD__(v128, 0xFFFFFFFFLL);
          v129 = v128 + 0xFFFFFFFFLL;
          if (v110)
          {
            goto LABEL_413;
          }

          goto LABEL_192;
        }

        v127 = v228;
LABEL_254:
        if (v127 < v118)
        {
          goto LABEL_435;
        }

        if (v118 != v127)
        {
          if (v118 < v127)
          {
            v152 = v118;
            v153 = v43;
            v154 = v117;
            v155 = v113;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v70 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
            }

            v97 = v204;
            LODWORD(v114) = v205;
            v156 = v152 + 0x4000000000000000;
            v157 = 2 * v154 - 2 * v155;
            v158 = (v70 - 16 * v155 + 16 * v154 + 40);
            v159 = v228 + v155 - v154;
            v43 = v153;
            v7 = v194;
            while ((v156 & 0x8000000000000000) == 0)
            {
              if ((v157 & 0x8000000000000000) != 0)
              {
                goto LABEL_394;
              }

              v160 = *(v70 + 16);
              if (v157 >= v160)
              {
                goto LABEL_395;
              }

              *(v158 - 1) = 0;
              if (v157 + 1 >= v160)
              {
                goto LABEL_396;
              }

              *v158 = 0;
              v158 += 2;
              ++v156;
              v157 += 2;
              if (!--v159)
              {
                goto LABEL_265;
              }
            }

            __break(1u);
LABEL_394:
            __break(1u);
LABEL_395:
            __break(1u);
LABEL_396:
            __break(1u);
            __break(1u);
LABEL_397:
            __break(1u);
LABEL_398:
            __break(1u);
LABEL_399:
            __break(1u);
LABEL_400:
            __break(1u);
LABEL_401:
            __break(1u);
LABEL_402:
            __break(1u);
LABEL_403:
            __break(1u);
LABEL_404:
            __break(1u);
LABEL_405:
            __break(1u);
            __break(1u);
LABEL_406:
            __break(1u);
LABEL_407:
            __break(1u);
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
            goto LABEL_419;
          }

LABEL_438:
          __break(1u);
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
LABEL_443:
          __break(1u);
LABEL_444:
          __break(1u);
LABEL_445:
          __break(1u);
LABEL_446:
          __break(1u);
LABEL_447:
          __break(1u);
LABEL_448:
          __break(1u);
          goto LABEL_449;
        }

LABEL_265:
        v29 = v97;
        if (v114)
        {
          if (v114 == 1)
          {
            specialized QueryGadget.evaluate<A>(at:)(v70, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), &v234);
            goto LABEL_270;
          }
        }

        else
        {
          specialized GadgetWireInputs.update<A>(_:)(v70, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew());
          if (v11)
          {
            goto LABEL_392;
          }
        }

        specialized ParallelSum.evaluate<A>(at:)(v70, &v234);
LABEL_270:
        v75 = v228;
        v76 = v199;
        v97 = v29;
        if (v234)
        {
          v161 = 0xFFFFFFFF00000001 - v234;
          LODWORD(v114) = v205;
          if (v234 > 0xFFFFFFFF00000001)
          {
            goto LABEL_437;
          }

          if (v29 >= v161)
          {
            v97 = v29 - v161;
          }

          else
          {
            if (v161 > 0xFFFFFFFF00000001)
            {
              goto LABEL_446;
            }

            v97 = v29 + v234;
            if (__CFADD__(v29, v234))
            {
              goto LABEL_447;
            }
          }
        }

        else
        {
          LODWORD(v114) = v205;
        }

        v113 = v206;
        v162 = v199 >= v206;
        if (v228 > 0)
        {
          v162 = v206 >= v199;
        }

        if (v162)
        {
          goto LABEL_142;
        }
      }
    }

    v81 = *v78;
    v82 = *v78 * v24;
    v83 = (*v78 * v24) >> 64;
    v84 = (0xFFFFFFFEFFFFFFFFLL * v82 * 0xFFFFFFFF00000001) >> 64;
    v76 = __CFADD__(-v82, v82);
    v85 = v84 + v83;
    if (!__CFADD__(v84, v83))
    {
      if (v85 != -1)
      {
        v87 = v85 + (v76 & 1);
        v76 = v87 + 0xFFFFFFFF;
        if (v87 >= 0xFFFFFFFF00000001)
        {
          v86 = v87 + 0xFFFFFFFF;
        }

        else
        {
          v86 = v87;
        }

        goto LABEL_92;
      }

      if ((v76 & 1) == 0)
      {
        v86 = 4294967294;
        goto LABEL_92;
      }

      v76 = 1;
    }

    v75 = v76 + v85;
    v86 = v75 + 0xFFFFFFFF;
    if (v75 >= 0xFFFFFFFF00000001)
    {
      goto LABEL_296;
    }

LABEL_92:
    v75 = *(v7 + 16);
    if (v77 >= v75)
    {
      goto LABEL_290;
    }

    v76 = v7 + 8 * v77;
    *(v76 + 32) = v86;
    v88 = v81 - v229;
    if (v81 >= v229)
    {
      goto LABEL_96;
    }

    if (v229 > 0xFFFFFFFF00000001)
    {
      break;
    }

    v88 = v81 + v211;
    if (__CFADD__(v81, v211))
    {
      goto LABEL_301;
    }

LABEL_96:
    if (v77 + 1 >= v75)
    {
      goto LABEL_291;
    }

    *(v76 + 40) = v88;
    v76 = (v24 * v11) >> 64;
    v89 = (0xFFFFFFFEFFFFFFFFLL * v24 * v11 * 0xFFFFFFFF00000001) >> 64;
    v75 = __CFADD__(-(v24 * v11), v24 * v11);
    v90 = v89 + v76;
    if (__CFADD__(v89, v76))
    {
      goto LABEL_75;
    }

    if (v90 == -1)
    {
      if (v75)
      {
        v75 = 1;
LABEL_75:
        v80 = v75 + v90;
        v24 = v80 + 0xFFFFFFFF;
        if (v80 >= 0xFFFFFFFF00000001)
        {
          goto LABEL_297;
        }

        goto LABEL_76;
      }

      v24 = 4294967294;
    }

    else
    {
      v91 = v90 + (v75 & 1);
      v75 = v91 + 0xFFFFFFFF;
      if (v91 >= 0xFFFFFFFF00000001)
      {
        v24 = v91 + 0xFFFFFFFF;
      }

      else
      {
        v24 = v91;
      }
    }

LABEL_76:
    v78 += 8;
    v77 += 2;
    if (!--v79)
    {
      v27 = v228;
      goto LABEL_108;
    }
  }

  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  v103 = 4294967294;
LABEL_303:
  v101 = v224;
LABEL_304:
  v163 = v101 - v103;
  if (v101 < v103)
  {
    v110 = v103 <= 0xFFFFFFFF00000001;
    v164 = 0xFFFFFFFF00000001 - v103;
    if (!v110)
    {
      goto LABEL_444;
    }

    v163 = v101 + v164;
    if (__CFADD__(v101, v164))
    {
      goto LABEL_445;
    }
  }

  v165 = (v230 * v71) >> 64;
  v166 = (0xFFFFFFFEFFFFFFFFLL * v230 * v71 * v75) >> 64;
  v167 = __CFADD__(-(v230 * v71), v230 * v71);
  v168 = v166 + v165;
  if (__CFADD__(v166, v165))
  {
    goto LABEL_313;
  }

  if (v168 == -1)
  {
    if (!v167)
    {
      v170 = 4294967294;
      goto LABEL_324;
    }

    v167 = 1;
LABEL_313:
    v169 = v167 + v168;
    v110 = __CFADD__(v169, 0xFFFFFFFFLL);
    v170 = v169 + 0xFFFFFFFFLL;
    if (v110)
    {
      goto LABEL_442;
    }

    if (v170)
    {
      goto LABEL_324;
    }

LABEL_333:
    specialized FieldElement.pow(_:)(2uLL, v71, &v234);
    v174 = (v234 * v24) >> 64;
    v175 = (0xFFFFFFFEFFFFFFFFLL * v234 * v24 * 0xFFFFFFFF00000001) >> 64;
    v176 = __CFADD__(-(v234 * v24), v234 * v24);
    v177 = v175 + v174;
    if (!__CFADD__(v175, v174))
    {
      if (v177 != -1)
      {
        v179 = v177 + v176;
        if (v179 >= 0xFFFFFFFF00000001)
        {
          v179 += 0xFFFFFFFFLL;
        }

        if (!v179)
        {
          goto LABEL_358;
        }

        goto LABEL_349;
      }

      if (!v176)
      {
        v179 = 4294967294;
        goto LABEL_349;
      }

      v176 = 1;
    }

    v178 = v176 + v177;
    v110 = __CFADD__(v178, 0xFFFFFFFFLL);
    v179 = v178 + 0xFFFFFFFFLL;
    if (v110)
    {
      goto LABEL_443;
    }

    if (!v179)
    {
      goto LABEL_358;
    }

LABEL_349:
    v110 = v179 <= 0xFFFFFFFF00000001;
    v180 = 0xFFFFFFFF00000001 - v179;
    if (!v110)
    {
      goto LABEL_440;
    }

    v181 = v226 - v180;
    if (v226 < v180)
    {
      v110 = v180 <= 0xFFFFFFFF00000001;
      v182 = 0xFFFFFFFF00000001 - v180;
      if (!v110)
      {
        goto LABEL_451;
      }

      v110 = __CFADD__(v226, v182);
      v181 = v226 + v182;
      v226 += v182;
      if (!v110)
      {
LABEL_358:
        result = specialized FieldElement.pow(_:)(3uLL, v71, &v234);
        v183 = (v234 * v163) >> 64;
        v184 = (0xFFFFFFFEFFFFFFFFLL * v234 * v163 * 0xFFFFFFFF00000001) >> 64;
        v185 = __CFADD__(-(v234 * v163), v234 * v163);
        v186 = v184 + v183;
        if (__CFADD__(v184, v183))
        {
          v187 = a5;
          goto LABEL_364;
        }

        while (1)
        {
          v187 = a5;
          if (v186 != -1)
          {
            break;
          }

          if ((v185 & 1) == 0)
          {
            *a5 = v226;
            v186 = 4294967294;
            goto LABEL_371;
          }

          v185 = 1;
LABEL_364:
          v188 = v185 + v186;
          LOBYTE(v185) = -1;
          v110 = __CFADD__(v188, 0xFFFFFFFFLL);
          v186 = v188 + 0xFFFFFFFF;
          if (!v110)
          {
            goto LABEL_370;
          }

          __break(1u);
        }

        v186 += v185 & 1;
        if (v186 >= 0xFFFFFFFF00000001)
        {
          v186 += 0xFFFFFFFFLL;
        }

LABEL_370:
        *v187 = v226;
        if (!v186)
        {
          goto LABEL_380;
        }

LABEL_371:
        v110 = v186 <= 0xFFFFFFFF00000001;
        v189 = 0xFFFFFFFF00000001 - v186;
        if (!v110)
        {
          goto LABEL_441;
        }

        v190 = v226 - v189;
        if (v226 < v189)
        {
          v110 = v189 <= 0xFFFFFFFF00000001;
          v191 = 0xFFFFFFFF00000001 - v189;
          if (!v110)
          {
            goto LABEL_452;
          }

          v110 = __CFADD__(v226, v191);
          v190 = v226 + v191;
          v226 += v191;
          if (!v110)
          {
            goto LABEL_380;
          }

          __break(1u);
        }

        v226 = v190;
LABEL_380:
        *v187 = v226;
        return result;
      }

      __break(1u);
    }

    v226 = v181;
    goto LABEL_358;
  }

  v170 = v168 + v167;
  if (v170 >= 0xFFFFFFFF00000001)
  {
    v170 += 0xFFFFFFFFLL;
  }

  if (!v170)
  {
    goto LABEL_333;
  }

LABEL_324:
  v110 = v170 <= 0xFFFFFFFF00000001;
  v171 = 0xFFFFFFFF00000001 - v170;
  if (!v110)
  {
    goto LABEL_439;
  }

  v172 = v226 - v171;
  if (v226 >= v171)
  {
LABEL_332:
    v226 = v172;
    goto LABEL_333;
  }

  v110 = v171 <= 0xFFFFFFFF00000001;
  v173 = 0xFFFFFFFF00000001 - v171;
  if (v110)
  {
    v110 = __CFADD__(v226, v173);
    v172 = v226 + v173;
    v226 += v173;
    if (!v110)
    {
      goto LABEL_333;
    }

    __break(1u);
    goto LABEL_332;
  }

LABEL_450:
  __break(1u);
LABEL_451:
  __break(1u);
LABEL_452:
  __break(1u);
LABEL_453:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}