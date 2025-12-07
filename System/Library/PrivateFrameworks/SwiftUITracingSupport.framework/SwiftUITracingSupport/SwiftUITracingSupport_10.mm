char *TreeValue.Position.names()(int a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SwiftUITracingSupport9TreeValueV8PositionVTt0g5Tf4g_n(&outlined read-only object #0 of TreeValue.Position.names());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SwiftUITracingSupport9TreeValueV8PositionVtMd, &_sSS_21SwiftUITracingSupport9TreeValueV8PositionVtMR);
  swift_arrayDestroy();
  result = v2;
  v4 = 0;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x277D84F90];
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = v11 | (v4 << 6);
      if ((*(*(result + 7) + 4 * v12) & ~a1) == 0)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v14 = result;
    v15 = (*(result + 6) + 16 * v12);
    v17 = *v15;
    v16 = v15[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v18 = *(v10 + 2);
    v19 = *(v10 + 3);
    v20 = v18 + 1;
    if (v18 >= v19 >> 1)
    {
      v25 = v18 + 1;
      v22 = v10;
      v23 = *(v10 + 2);
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v18 + 1, 1, v22);
      v18 = v23;
      v20 = v25;
      v10 = v24;
    }

    result = v14;
    *(v10 + 2) = v20;
    v21 = &v10[16 * v18];
    *(v21 + 4) = v17;
    *(v21 + 5) = v16;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return v10;
    }

    v8 = *(v5 + 8 * v13);
    ++v4;
    if (v8)
    {
      v4 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t TreeValue.Position.describe(state:)(uint64_t a1, int a2)
{
  TreeValue.Position.names()(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v2 = BidirectionalCollection<>.joined(separator:)();
  v4 = v3;

  MEMORY[0x26D69CDB0](v2, v4);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return 91;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance TreeValue.Position()
{
  TreeValue.Position.names()(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v1 = BidirectionalCollection<>.joined(separator:)();
  v3 = v2;

  MEMORY[0x26D69CDB0](v1, v3);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return 91;
}

uint64_t TreeValue.describe(state:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 41);
  v4 = *v1;
  v5 = v1[6];
  v6 = *(v1 + 28);
  v14 = v1[9];
  _StringGuts.grow(_:)(21);

  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = specialized InspectionState.wrapDescription<A>(_:)(v4);
    MEMORY[0x26D69CDB0](v7);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    if (v5)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
LABEL_9:
      MEMORY[0x26D69CDB0](v9, v10);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v12 = specialized InspectionState.wrapDescription<A>(_:)(v14);
      MEMORY[0x26D69CDB0](v12);

      MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
      return 0x6C61566565725428;
    }

    if (v3 <= 1)
    {
      v9 = Interpreter.Storage.Types.subscript.getter(v5);
      v10 = v11;
      goto LABEL_9;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Defaulted.describe(state:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v5 + 32))(v8, v10, v4);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = 29992;
  }

  else
  {
    v13 = 25640;
  }

  MEMORY[0x26D69CDB0](v13 | 0x200000u, 0xE300000000000000);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  v14 = v16[0];
  (*(v5 + 8))(v8, v4);
  return v14;
}

uint64_t Subforest2.Item.init(open:discreet:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 2) = result;
  *(a3 + 3) = 0;
  *(a3 + 4) = a2;
  *(a3 + 5) = 0;
  return result;
}

_BYTE *Subforest2.Item.init(prior:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[5];
  *a2 = 0;
  *(a2 + 2) = v2;
  *(a2 + 3) = v3;
  *(a2 + 4) = v4;
  *(a2 + 5) = v5;
  return result;
}

uint64_t Subforest2.Item.merge(other:asSelf:)(_BYTE *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[4];
    v5 = a1[3];
    v6 = a1[2];
    v7 = a1[1];
    *v2 = *a1;
    v2[1] = v7;
    v8 = v2[2];
    v9 = v2[3];
    if (!v9)
    {
      v8 = v6;
    }

    if (!v5)
    {
      v6 = v8;
    }

    v2[2] = v6;
    v2[3] = (v5 | v9) & 1;
    v10 = v2[4];
    v11 = v2[5];
    if (!v11)
    {
      v10 = v4;
    }

    if (!v3)
    {
      v4 = v10;
    }

    v2[4] = v4;
    v2[5] = (v3 | v11) & 1;
  }

  return 1;
}

uint64_t Subforest2.Item.describe(state:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = specialized InspectionState.describe<A>(_:_:)(1852141679, 0xE400000000000000, v0[2] | (v0[3] << 8));
  MEMORY[0x26D69CDB0](v5);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v6 = specialized InspectionState.describe<A>(_:_:)(0x7365686374616DLL, 0xE700000000000000, v1 | (v2 << 8));
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v7 = specialized InspectionState.describe<A>(_:_:)(0x7465657263736964, 0xE800000000000000, v3 | (v4 << 8));
  MEMORY[0x26D69CDB0](v7);

  return 40;
}

_BYTE *protocol witness for UnsafeTree_Stateful.init(prior:) in conformance Subforest2.Item@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[5];
  *a2 = 0;
  *(a2 + 2) = v2;
  *(a2 + 3) = v3;
  *(a2 + 4) = v4;
  *(a2 + 5) = v5;
  return result;
}

uint64_t protocol witness for Mergable.merge(other:asSelf:) in conformance Subforest2.Item(_BYTE *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[4];
    v5 = a1[3];
    v6 = a1[2];
    v7 = a1[1];
    *v2 = *a1;
    v2[1] = v7;
    v8 = v2[2];
    v9 = v2[3];
    if (!v9)
    {
      v8 = v6;
    }

    if (!v5)
    {
      v6 = v8;
    }

    v2[2] = v6;
    v2[3] = (v5 | v9) & 1;
    v10 = v2[4];
    v11 = v2[5];
    if (!v11)
    {
      v10 = v4;
    }

    if (!v3)
    {
      v4 = v10;
    }

    v2[4] = v4;
    v2[5] = (v3 | v11) & 1;
  }

  return 1;
}

uint64_t Subforest2.init(within:old:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v137[0] = a3;
  v160 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for DispatchQoS();
  v7 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  BYTE8(v184[1]) = 0;
  v140 = v11;
  v141 = v9;
  v138 = v13;
  v139 = v12;
  if (!v10)
  {
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v144 = v10;
  v201[0] = v10;
  v201[1] = v9;
  v201[2] = v11;
  v201[3] = v12;
  v201[4] = v13;
  _s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzAA0dE9_StatefulR_rlE3oldACyxq_GAGSg_tcfCAA10ChangelistC2IdO_AA10Subforest2V4ItemVTt0g5(v201, v185);
  v148 = *&v185[0];
  *&v184[1] = v186;
  v14 = *(a1 + 96);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v151 = v17 & *(v14 + 64);
  v183 = v185[0];
  v184[0] = v185[1];
  v145 = v14;

  result = swift_beginAccess();
  v19 = 0;
  v20 = (v16 + 63) >> 6;
  v156 = (v5 + 8);
  v154 = &v169;
  v155 = (v7 + 8);
  v137[1] = &v165;
  v162 = a1;
  v142 = v20;
  v143 = v15;
  while (2)
  {
    v21 = v151;
    if (!v151)
    {
      while (1)
      {
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v22 >= v20)
        {

          v164 = v183;
          v165 = v184[0];
          v166 = *&v184[1];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
          v132 = swift_allocObject();
          *(v132 + 16) = xmmword_26C328DC0;
          v168 = xmmword_26C32DAD0;
          LOBYTE(v169) = 1;
          *(&v169 + 1) = 0;
          *&v170 = 0;
          WORD4(v170) = 512;
          v133 = specialized UnsafeTree.describe(state:)(&v168);
          *(v132 + 56) = MEMORY[0x277D837D0];
          *(v132 + 32) = v133;
          *(v132 + 40) = v134;
          print(_:separator:terminator:)();

          v135 = v184[0];
          v136 = v137[0];
          *v137[0] = v183;
          *(v136 + 16) = v135;
          *(v136 + 25) = *(v184 + 9);
          return result;
        }

        v21 = *(v15 + 8 * v22);
        ++v19;
        if (v21)
        {
          v19 = v22;
          goto LABEL_12;
        }
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_12:
    v151 = v21;
    v23 = *(*(v145 + 48) + ((v19 << 8) | (4 * __clz(__rbit64(v21)))));
    v181 = 1;
    v182 = 1;
    v24 = *(a1 + 24);
    if (!*(v24 + 116))
    {
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v147 = v19;
    v25 = *(v24 + 104);
    if (!v25)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v26 = *v25;
    if ((*(*v25 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v26 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v27 = static OS_dispatch_queue.main.getter();
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      *&v170 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v170 + 1) = v28;
      *&v168 = MEMORY[0x277D85DD0];
      *(&v168 + 1) = 1107296256;
      *&v169 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v169 + 1) = &block_descriptor_965;
      v29 = _Block_copy(&v168);

      v30 = v157;
      static DispatchQoS.unspecified.getter();
      *&v168 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v32 = v159;
      v31 = v160;
      a1 = v162;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26D69D2D0](0, v30, v32, v29);
      _Block_release(v29);

      (*v156)(v32, v31);
      result = (*v155)(v30, v158);
    }

    v33 = *(v26 + 8);
    if (v23 >= *(v33 + 44))
    {
      goto LABEL_101;
    }

    v34 = *(v33 + 32);
    if (!v34)
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v35 = (v34 + (v23 << 7));
    v36 = v35[5];
    v197 = v35[4];
    v198 = v36;
    v37 = v35[7];
    v199 = v35[6];
    v200 = v37;
    v38 = v35[1];
    v193 = *v35;
    v194 = v38;
    v39 = v35[3];
    v195 = v35[2];
    v196 = v39;
    v40 = *(a1 + 24);
    if (!*(v40 + 116))
    {
      goto LABEL_102;
    }

    v41 = *(v40 + 104);
    if (!v41)
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v42 = *v41;
    if ((*(*v41 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v42 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v43 = static OS_dispatch_queue.main.getter();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *&v170 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v170 + 1) = v44;
      *&v168 = MEMORY[0x277D85DD0];
      *(&v168 + 1) = 1107296256;
      *&v169 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v169 + 1) = &block_descriptor_972;
      v45 = _Block_copy(&v168);

      v46 = v157;
      static DispatchQoS.unspecified.getter();
      *&v168 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v48 = v159;
      v47 = v160;
      a1 = v162;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26D69D2D0](0, v46, v48, v45);
      _Block_release(v45);

      (*v156)(v48, v47);
      (*v155)(v46, v158);
    }

    result = Event.hasTree(within:)(*(v42 + 8));
    v52 = v49;
    v149 = v49;
    if (v49)
    {
      v53 = 1;
      v146 = 1;
LABEL_37:
      v150 = v53;
      v151 &= v151 - 1;
      Changelist.subscript.getter(v53, v52 & 1, v187);
      v79 = v188;
      v191 = v188;
      v80 = 1 << *(v188 + 32);
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      else
      {
        v81 = -1;
      }

      v82 = v81 & *(v188 + 64);
      v83 = (v80 + 63) >> 6;

      v84 = 0;
      v161 = MEMORY[0x277D84F90];
LABEL_41:
      v85 = v187[2];
      while (v82)
      {
LABEL_48:
        v87 = __clz(__rbit64(v82)) | (v84 << 6);
        v88 = *(*(v79 + 48) + 4 * v87);
        v89 = *(*(v79 + 56) + 8 * v87);

        result = swift_beginAccess();
        v90 = *(v85 + 48);
        v91 = __OFSUB__(0, v90);
        v92 = -v90;
        if (v91)
        {
          goto LABEL_99;
        }

        v82 &= v82 - 1;
        if (v89 < v92)
        {
        }

        else
        {
          swift_beginAccess();
          v93 = *(v85 + 56);

          v94 = v93 < v89;
          a1 = v162;
          if (!v94)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v161 + 2) + 1, 1, v161);
              v161 = result;
            }

            v96 = *(v161 + 2);
            v95 = *(v161 + 3);
            if (v96 >= v95 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v161);
              v161 = result;
            }

            v97 = v161;
            *(v161 + 2) = v96 + 1;
            *&v97[4 * v96 + 32] = v88;
            goto LABEL_41;
          }
        }
      }

      while (1)
      {
        v86 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          __break(1u);
          goto LABEL_94;
        }

        if (v86 >= v83)
        {
          break;
        }

        v82 = *(v79 + 64 + 8 * v86);
        ++v84;
        if (v82)
        {
          v84 = v86;
          goto LABEL_48;
        }
      }

      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v191, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
      v190 = v189;
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v190, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);

      v98 = v161;
      v99 = *(v161 + 2);
      if (v99)
      {
        v100 = 0;
        v101 = 0;
        v102 = v161 + 32;
        v152 = v161 + 32;
        v153 = v99;
        while (v100 < *(v98 + 2))
        {
          if (v101)
          {
            v101 = 1;
          }

          else
          {
            v103 = *(a1 + 24);
            if (!*(v103 + 116))
            {
              goto LABEL_96;
            }

            v104 = *(v103 + 104);
            if (!v104)
            {
              goto LABEL_110;
            }

            v105 = *&v102[4 * v100];
            v106 = *v104;
            if ((*(*v104 + 4) & 1) == 0)
            {
              os_unfair_lock_lock_with_options();
              *(v106 + 4) = 1;
              type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
              v163 = static OS_dispatch_queue.main.getter();
              v107 = swift_allocObject();
              *(v107 + 16) = v106;
              *&v170 = closure #1 in Atomic.subscript.readspecialized partial apply;
              *(&v170 + 1) = v107;
              *&v168 = MEMORY[0x277D85DD0];
              *(&v168 + 1) = 1107296256;
              *&v169 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              *(&v169 + 1) = &block_descriptor_979;
              v108 = _Block_copy(&v168);

              v109 = v157;
              static DispatchQoS.unspecified.getter();
              *&v168 = MEMORY[0x277D84F90];
              _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
              v110 = v159;
              v111 = v160;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v112 = v163;
              MEMORY[0x26D69D2D0](0, v109, v110, v108);
              v98 = v161;
              _Block_release(v108);

              v113 = v111;
              a1 = v162;
              (*v156)(v110, v113);
              result = (*v155)(v109, v158);
              v102 = v152;
              v99 = v153;
            }

            v114 = *(v106 + 8);
            if (v105 >= *(v114 + 44))
            {
              goto LABEL_97;
            }

            v115 = *(v114 + 32);
            if (!v115)
            {
              goto LABEL_111;
            }

            v101 = *(v115 + (v105 << 7) + 64);
          }

          if (v99 == ++v100)
          {
            goto LABEL_70;
          }
        }

LABEL_94:
        __break(1u);
      }

      else
      {
        v101 = 0;
LABEL_70:

        specialized UnsafeTree.symbol(hashed:)(v150, v149 & 1, &v168);
        if (v144)
        {
          v117 = v140;
          v116 = v141;
          v119 = v138;
          v118 = v139;
        }

        else
        {
          v116 = 0;
          v117 = 0;
          v118 = 0;
          v119 = 0;
        }

        v120 = v168;
        v192[0] = v144;
        v192[1] = v116;
        v192[2] = v117;
        v192[3] = v118;
        v192[4] = v119;
        LODWORD(v164) = v168;
        result = closure #3 in Subforest2.init(within:old:)(&v164, &v183, &v181, a1);
        if (!*(v148 + 12))
        {
          goto LABEL_103;
        }

        v121 = DWORD1(v184[0]);
        if (!DWORD1(v184[0]))
        {
          v122 = 0;
LABEL_81:
          result = specialized UnsafeTree.add(child:to:default:)(v120, v122, &v183, v192, &v164);
          v125 = v164;
          if (!v121 || *(&v183 + 1))
          {
            v126 = v146 & 1;
            DWORD1(v184[0]) = 0;
            v127 = v164;
            v19 = v147;
            v128 = v148;
            v20 = v142;
            v15 = v143;
            if (v164 != 0xFFFFFFFFLL)
            {
              do
              {
                v129 = *v128 + 48 * v127;
                if (v127 == v125)
                {
                  *(v129 + 16) = 1;
                  v130 = *(v129 + 18);
                  if (!*(v129 + 19))
                  {
                    v130 = v126;
                  }

                  *(v129 + 18) = v130;
                  v131 = *(v129 + 20);
                  if (!*(v129 + 21))
                  {
                    v131 = v101;
                  }

                  *(v129 + 20) = v131;
                }

                v127 = *(v129 + 40);
              }

              while (v127 != -1);
            }

            continue;
          }

          goto LABEL_115;
        }

        v122 = 0;
        v123 = *(&v183 + 1);
        v124 = 4 * DWORD1(v184[0]);
        while (v124)
        {
          if (!v123)
          {
            goto LABEL_109;
          }

          result = specialized UnsafeTree.add(child:to:default:)(*(v123 - 4 + v124), v122, &v183, v192, &v164);
          v122 = v164;
          v124 -= 4;
          if (!v124)
          {
            goto LABEL_81;
          }
        }
      }

      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    break;
  }

  v53 = result;
  v181 = result;
  v182 = 0;
  v54 = *(a1 + 24);
  if (!*(v54 + 116))
  {
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v55 = *(v54 + 104);
  if (!v55)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v56 = *v55;
  v57 = *(*v55 + 4);
  v150 = result;
  if ((v57 & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v56 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v58 = static OS_dispatch_queue.main.getter();
    v59 = swift_allocObject();
    *(v59 + 16) = v56;
    *&v170 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v170 + 1) = v59;
    *&v168 = MEMORY[0x277D85DD0];
    *(&v168 + 1) = 1107296256;
    *&v169 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v169 + 1) = &block_descriptor_986;
    v60 = _Block_copy(&v168);

    v61 = v157;
    static DispatchQoS.unspecified.getter();
    *&v168 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v63 = v159;
    v62 = v160;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v61, v63, v60);
    _Block_release(v60);

    v53 = v150;
    v64 = v63;
    v52 = v149;
    (*v156)(v64, v62);
    result = (*v155)(v61, v158);
  }

  v65 = *(v56 + 8);
  if (HIDWORD(v53) >= *(v65 + 124))
  {
    goto LABEL_105;
  }

  v66 = *(v65 + 112);
  if (!v66)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if ((v53 & 0x80000000) != 0)
  {
    goto LABEL_106;
  }

  v67 = *(v66 + 168 * HIDWORD(v53));
  if (v53 >= *(v67 + 16))
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v68 = (v67 + 208 * v53);
  v177 = v68[11];
  v178 = v68[12];
  v179 = v68[13];
  v180 = v68[14];
  v173 = v68[7];
  v174 = v68[8];
  v175 = v68[9];
  v176 = v68[10];
  v169 = v68[3];
  v170 = v68[4];
  v171 = v68[5];
  v172 = v68[6];
  v168 = v68[2];
  v69 = *(v162 + 24);
  if (!*(v69 + 116))
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v70 = *(v69 + 104);
  if (v70)
  {
    v71 = *v70;
    if ((*(*v70 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v71 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v72 = static OS_dispatch_queue.main.getter();
      v73 = swift_allocObject();
      *(v73 + 16) = v71;
      v166 = closure #1 in Atomic.subscript.readspecialized partial apply;
      v167 = v73;
      *&v164 = MEMORY[0x277D85DD0];
      *(&v164 + 1) = 1107296256;
      *&v165 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v165 + 1) = &block_descriptor_993;
      v74 = _Block_copy(&v164);

      v75 = v157;
      static DispatchQoS.unspecified.getter();
      *&v164 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v77 = v159;
      v76 = v160;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26D69D2D0](0, v75, v77, v74);
      _Block_release(v74);

      v53 = v150;
      v78 = v77;
      v52 = v149;
      (*v156)(v78, v76);
      (*v155)(v75, v158);
    }

    v146 = Tree.isLeafView(within:)(*(v71 + 8), v49, v50, v51) ^ 1;
    a1 = v162;
    goto LABEL_37;
  }

LABEL_118:
  __break(1u);
  return result;
}

void (*Changelist.timeline.read(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v6 - 8) + 64));
  }

  v9 = v8;
  v5[10] = v8;
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  if (v3)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(*(v10 - 8) + 64));
  }

  v13 = v12;
  v5[11] = v12;
  result = swift_beginAccess();
  v15 = *(v1 + 24);
  if (!*(v15 + 116))
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = *(v15 + 104);
  if (!v16)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v17 = *v16;
  if ((*(*v16 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v17 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v20 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v5[4] = partial apply for specialized closure #1 in Atomic.subscript.read;
    v5[5] = v18;
    *v5 = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v5[3] = &block_descriptor_2;
    v19 = _Block_copy(v5);

    static DispatchQoS.unspecified.getter();
    v5[9] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v13, v9, v19);
    _Block_release(v19);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }

  return Changelist.timeline.read;
}

void Changelist.timeline.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  free(*(*a1 + 88));
  free(v2);

  free(v1);
}

uint64_t Changelist.subscript.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 112);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1), (v10 & 1) == 0))
  {
    result = swift_endAccess();
    v15 = MEMORY[0x277D84F98];
    v16 = MEMORY[0x277D84F98];
    goto LABEL_7;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 64);
    if (v11 < *(v13 + 16))
    {
      v14 = v13 + 40 * v11;
      a1 = *(v14 + 32);
      a2 = *(v14 + 40);
      v4 = *(v14 + 48);
      v15 = *(v14 + 56);
      v16 = *(v14 + 64);

LABEL_7:
      *a3 = a1;
      *(a3 + 8) = a2 & 1;
      *(a3 + 16) = v4;
      *(a3 + 24) = v15;
      *(a3 + 32) = v16;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t closure #3 in Subforest2.init(within:old:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v9 = *(v56 - 8);
  result = MEMORY[0x28223BE20](v56);
  v55 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a3 + 8) & 1) == 0)
  {
    v12 = *a3;
    result = swift_beginAccess();
    v13 = *(a4 + 24);
    if (*(v13 + 116))
    {
      v53 = (v9 + 8);
      v54 = (v7 + 8);
      v50[0] = &v60;
      v50[1] = &v74;
      while (1)
      {
        v14 = *(v13 + 104);
        if (!v14)
        {
          break;
        }

        v15 = *v14;
        if ((*(*v14 + 4) & 1) == 0)
        {
          os_unfair_lock_lock_with_options();
          *(v15 + 4) = 1;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v52 = static OS_dispatch_queue.main.getter();
          v16 = swift_allocObject();
          *(v16 + 16) = v15;
          *&v75 = closure #1 in Atomic.subscript.readspecialized partial apply;
          *(&v75 + 1) = v16;
          *&v73 = MEMORY[0x277D85DD0];
          *(&v73 + 1) = 1107296256;
          *&v74 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v74 + 1) = &block_descriptor_1000;
          v51 = _Block_copy(&v73);

          v17 = v55;
          static DispatchQoS.unspecified.getter();
          *&v73 = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
          v18 = v57;
          v19 = a2;
          v20 = v58;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v22 = v51;
          v21 = v52;
          MEMORY[0x26D69D2D0](0, v17, v18, v51);
          _Block_release(v22);

          v23 = v20;
          a2 = v19;
          (*v54)(v18, v23);
          result = (*v53)(v17, v56);
        }

        v24 = *(v15 + 8);
        if (HIDWORD(v12) >= *(v24 + 124))
        {
          goto LABEL_27;
        }

        v25 = *(v24 + 112);
        if (!v25)
        {
          goto LABEL_33;
        }

        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_28;
        }

        v26 = *(v25 + 168 * HIDWORD(v12));
        if (v12 >= *(v26 + 16))
        {
          goto LABEL_29;
        }

        v27 = (v26 + 208 * v12);
        v82 = v27[11];
        v83 = v27[12];
        v84 = v27[13];
        v85 = v27[14];
        v78 = v27[7];
        v79 = v27[8];
        v80 = v27[9];
        v81 = v27[10];
        v74 = v27[3];
        v75 = v27[4];
        v76 = v27[5];
        v77 = v27[6];
        v73 = v27[2];
        v28 = *(a4 + 24);
        if (!*(v28 + 116))
        {
          goto LABEL_30;
        }

        v29 = *(v28 + 104);
        if (!v29)
        {
          goto LABEL_34;
        }

        v30 = *v29;
        if ((*(*v29 + 4) & 1) == 0)
        {
          os_unfair_lock_lock_with_options();
          *(v30 + 4) = 1;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v52 = static OS_dispatch_queue.main.getter();
          v31 = swift_allocObject();
          *(v31 + 16) = v30;
          *&v61 = closure #1 in Atomic.subscript.readspecialized partial apply;
          *(&v61 + 1) = v31;
          *&v59 = MEMORY[0x277D85DD0];
          *(&v59 + 1) = 1107296256;
          *&v60 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v60 + 1) = &block_descriptor_1007;
          v32 = _Block_copy(&v59);

          v33 = v55;
          static DispatchQoS.unspecified.getter();
          *&v59 = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          v34 = a4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
          v35 = v57;
          v36 = v58;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v37 = v52;
          MEMORY[0x26D69D2D0](0, v33, v35, v32);
          _Block_release(v32);

          v38 = v36;
          a4 = v34;
          (*v54)(v35, v38);
          (*v53)(v33, v56);
        }

        v72 = *(v30 + 8);
        v69 = v83;
        v70 = v84;
        v71 = v85;
        v65 = v79;
        v66 = v80;
        v67 = v81;
        v68 = v82;
        v61 = v75;
        v62 = v76;
        v63 = v77;
        v64 = v78;
        v59 = v73;
        v60 = v74;
        result = specialized Tree.parent(_:within:unabstracting:)(16, &v72);
        if (v39)
        {
          return result;
        }

        v12 = result;
        v40 = a2[1];
        v86 = *a2;
        v87 = v40;
        v88 = *(a2 + 4);
        v42 = specialized UnsafeTree.subjectsMap.read(&v59);
        if (*(v41 + 16) && (v43 = v41, v44 = specialized __RawDictionaryStorage.find<A>(_:)(v12, 0), (v45 & 1) != 0))
        {
          v46 = *(*(v43 + 56) + 4 * v44);
          result = (v42)(&v59, 0);
        }

        else
        {
          (v42)(&v59, 0);
          Hasher.init(_seed:)();
          MEMORY[0x26D69DBC0](0);
          MEMORY[0x26D69DC00](v12);
          v47 = Hasher._finalize()();
          result = specialized UnsafeTree.new(element:identity:)(v12, 0, v47, &v59);
          v46 = v59;
        }

        if (DWORD1(v87) == v87)
        {
          result = specialized UnsafeArray.growToCapacity(_:)(2 * v87);
        }

        v48 = *(a2 + 1);
        if (!v48)
        {
          goto LABEL_35;
        }

        v49 = *(a2 + 5);
        *(v48 + 4 * v49) = v46;
        if (v49 == -1)
        {
          goto LABEL_31;
        }

        *(a2 + 5) = v49 + 1;
        v13 = *(a4 + 24);
        if (!*(v13 + 116))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  return result;
}

unint64_t specialized Subforest2.descendants(of:where:)(unint64_t result, __int16 a2, uint64_t *a3)
{
  v3 = *a3;
  if ((a2 & 0x100) != 0)
  {
    v8 = 0;
LABEL_8:
    v9 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
    specialized Array.append<A>(contentsOf:)(*(*v3 + v8 + 24), *(*v3 + v8 + 32), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
    v10 = v22;
    v11 = *(v22 + 16);
    if (!v11)
    {

      v11 = *(v9 + 16);
      if (!v11)
      {
        v12 = MEMORY[0x277D84F90];
LABEL_15:

        return v12;
      }

      v10 = v9;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v9;
    v13 = *(v9 + 16);
    v14 = 16 * v13;
    v15 = 32;
    do
    {
      v16 = *(v3 + 16) + 40 * *(*v3 + 48 * *(v10 + v15));
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v12 + 24);
      v20 = v13 + 1;
      if (v13 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v13 + 1, 1);
      }

      *(v12 + 16) = v20;
      v21 = v12 + v14;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v14 += 16;
      v15 += 4;
      v13 = v20;
      --v11;
    }

    while (v11);
    goto LABEL_15;
  }

  v4 = **(v3 + 32);
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2 & 1);
  if ((v5 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(v3 + 16) + 40 * *(*(v4 + 56) + 4 * result);
  if (!*(v6 + 36))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = 48 * *v7;
    goto LABEL_8;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t Subforest2.descendants(of:where:)(uint64_t result, __int16 a2, uint64_t (*a3)(void, void))
{
  v5 = *v3;
  if ((a2 & 0x100) != 0)
  {
    v10 = 0;
LABEL_8:
    v11 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
    specialized Array.append<A>(contentsOf:)(*(*v5 + v10 + 24), *(*v5 + v10 + 32), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
    v12 = v42;
    v13 = v42[2];
    if (v13)
    {
      v39 = MEMORY[0x277D84F90];
      while (1)
      {
        result = swift_bridgeObjectRetain_n();
        v14 = 0;
        v15 = 0;
LABEL_12:
        v41 = v14;
        v16 = v15;
        do
        {
          if (v16 >= *(v12 + 2))
          {
            __break(1u);
            goto LABEL_47;
          }

          v15 = v16 + 1;
          v17 = *(v5 + 16) + 40 * *(*v5 + 48 * *&v12[4 * v16 + 32]);
          result = a3(*v17, *(v17 + 8));
          if (result)
          {
            v14 = 1;
            if (v13 - 1 != v16)
            {
              goto LABEL_12;
            }

            v39 = v12;
            goto LABEL_36;
          }

          ++v16;
        }

        while (v13 != v15);
        swift_bridgeObjectRelease_n();
        if (v41)
        {
          break;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v18 = *(v12 + 2);
          v19 = v12;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 1, v12);
          }

          if (v18)
          {
            v20 = v19[2] - v18;
            memmove(v19 + 4, v19 + 4 * v18 + 32, 4 * v20);
            v19[2] = v20;
          }
        }

        else if (*(v12 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMR);
          v19 = swift_allocObject();
          v21 = _swift_stdlib_malloc_size(v19);
          v22 = v21 - 32;
          if (v21 < 32)
          {
            v22 = v21 - 29;
          }

          v19[2] = 0;
          v19[3] = 2 * (v22 >> 2);
        }

        else
        {

          v19 = MEMORY[0x277D84F90];
        }

        v23 = *(v12 + 2);
        if (!v23)
        {

          v12 = v19;
          v13 = v19[2];
          if (v13)
          {
            continue;
          }

          goto LABEL_36;
        }

        v24 = 32;
        do
        {
          v25 = *v5 + 48 * *&v12[v24];
          specialized Array.append<A>(contentsOf:)(*(v25 + 24), *(v25 + 32), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
          v24 += 4;
          --v23;
        }

        while (v23);

        v12 = v19;
        v13 = v19[2];
        if (!v13)
        {
LABEL_36:
          v11 = MEMORY[0x277D84F90];
          goto LABEL_37;
        }
      }

      v26 = v12;
      v11 = MEMORY[0x277D84F90];
      v27 = *(v12 + 2);
      if (v27)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v39 = v11;
LABEL_37:

      v26 = v39;
      v27 = *(v39 + 2);
      if (v27)
      {
LABEL_38:
        v40 = v26;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
        v28 = v40;
        v29 = v11;
        v30 = *(v11 + 2);
        v31 = 2 * v30;
        v32 = 32;
        do
        {
          v33 = *(v5 + 16) + 40 * *(*v5 + 48 * *&v28[v32]);
          v34 = *v33;
          v35 = *(v33 + 8);
          v36 = v29[3];
          v37 = v30 + 1;
          if (v30 >= v36 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v30 + 1, 1);
            v28 = v40;
          }

          v29[2] = v37;
          v38 = &v29[v31];
          v38[4] = v34;
          *(v38 + 40) = v35;
          v31 += 2;
          v32 += 4;
          v30 = v37;
          --v27;
        }

        while (v27);

        return v29;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v6 = **(v5 + 32);
  if (!*(v6 + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2 & 1);
  if ((v7 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = *(v5 + 16) + 40 * *(*(v6 + 56) + 4 * result);
  if (!*(v8 + 36))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = *(v8 + 24);
  if (v9)
  {
    v10 = 48 * *v9;
    goto LABEL_8;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t Subforest2.describe(state:)(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 10) = *(a1 + 26);
  v3 = v1[1];
  v8 = *v1;
  v9[0] = v3;
  *(v9 + 9) = *(v1 + 25);
  strcpy(v5, "(subforest \n");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  desc #1 (for:offset:into:) in Subforest2.describe(state:)(0, 256, 0, v5, &v6, &v8);
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return v5[0];
}

uint64_t desc #1 (for:offset:into:) in Subforest2.describe(state:)(unint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  if ((a2 & 0x100) != 0)
  {
    goto LABEL_9;
  }

  *&v43 = 40;
  *(&v43 + 1) = 0xE100000000000000;
  v11 = (a5 + 8);
  if (__OFSUB__(*a5, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v41 = *a5 - 1;
  v49 = v41;
  v12 = *(a5 + 24);
  v50 = *v11;
  v51 = v12;
  v52 = *(a5 + 40);
  v45 = a1;
  v40 = a2;
  v42 = a2 & 1;
  LOBYTE(v46) = a2 & 1;
  v13 = String.init<A>(describing:)();
  v15 = specialized InspectionState.wrapDescription<A>(_:)(v13, v14);
  v17 = v16;

  MEMORY[0x26D69CDB0](v15, v17);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v18 = *a6;
  v19 = **(*a6 + 32);
  if (!*(v19 + 16))
  {
    goto LABEL_17;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v42);
  if ((v21 & 1) == 0)
  {
    goto LABEL_17;
  }

  v22 = v18[2] + 40 * *(*(v19 + 56) + 4 * v20);
  if (!*(v22 + 36))
  {
    goto LABEL_14;
  }

  v23 = *(v22 + 24);
  if (!v23)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v24 = (*v18 + 48 * *v23);
  v25 = v24[16];
  v26 = v24[17];
  v27 = v24[18];
  v28 = v24[19];
  v29 = v24[20];
  LOBYTE(v24) = v24[21];
  v30 = *(a5 + 24);
  v46 = *v11;
  v47 = v30;
  v48 = *(a5 + 40);
  v45 = v41;
  v31 = specialized InspectionState.wrapDescription<A>(_:)(v25 | (v27 << 16) | (v29 << 32) | (v26 << 8) | (v28 << 24) | (v24 << 40));
  MEMORY[0x26D69CDB0](v31);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  MEMORY[0x26D69CDB0](v43, *(&v43 + 1));

  if (__OFADD__(a3++, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  a2 = v40;
LABEL_9:
  v33 = a6[1];
  v43 = *a6;
  v44[0] = v33;
  *(v44 + 9) = *(a6 + 25);
  v34 = specialized Subforest2.descendants(of:where:)(a1, a2 & 0x1FF, &v43);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = (v34 + 40);
    do
    {
      v37 = *(v36 - 1);
      v38 = *v36;
      v36 += 16;
      desc #1 (for:offset:into:) in Subforest2.describe(state:)(v37, v38, a3, a4, a5, a6);
      --v35;
    }

    while (v35);
  }
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance Subforest2(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 10) = *(a1 + 26);
  v3 = v1[1];
  v8 = *v1;
  v9[0] = v3;
  *(v9 + 9) = *(v1 + 25);
  strcpy(v5, "(subforest \n");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  desc #1 (for:offset:into:) in Subforest2.describe(state:)(0, 256, 0, v5, &v6, &v8);
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return v5[0];
}

uint64_t Changelist.eventTimes.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t Changelist._interpreter.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

__n128 Changelist.interpreter.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 144);
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 144) = v4;
  v5 = *(v3 + 176);
  *(a1 + 160) = *(v3 + 160);
  *(a1 + 176) = v5;
  v6 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v6;
  v7 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v7;
  v8 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v8;
  result = *(v3 + 32);
  v10 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v10;
  return result;
}

__n128 Changelist.interpreter.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(a1 + 144);
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = v4;
  v5 = *(a1 + 176);
  *(v3 + 160) = *(a1 + 160);
  *(v3 + 176) = v5;
  v6 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v6;
  v7 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v7;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v10;
  return result;
}

uint64_t key path setter for Changelist.unabstractedUpdates : Changelist(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;

  *(v3 + 194) = 1;
  return result;
}

uint64_t Changelist.unabstractedUpdates.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  *(v1 + 194) = 1;
  return result;
}

uint64_t (*Changelist.unabstractedUpdates.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Changelist.unabstractedUpdates.modify;
}

uint64_t key path setter for Changelist.unabstractedTrees : Changelist(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;

  *(v3 + 194) = 1;
  return result;
}

uint64_t Changelist.unabstractedTrees.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  *(v1 + 194) = 1;
  return result;
}

uint64_t (*Changelist.unabstractedTrees.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Changelist.unabstractedUpdates.modify;
}

uint64_t Changelist.upstreamCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  *(v1 + 194) = 1;
  return result;
}

uint64_t (*Changelist.upstreamCount.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Changelist.upstreamCount.modify;
}

uint64_t Changelist.upstreamCount.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(a1 + 24) + 194) = 1;
  }

  return result;
}

uint64_t Changelist.downstreamCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  *(v1 + 194) = 1;
  return result;
}

uint64_t (*Changelist.downstreamCount.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Changelist.unabstractedUpdates.modify;
}

uint64_t Changelist.timeline.getter()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v10 = *(v0 + 24);
  if (!*(v10 + 116))
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = *(v10 + 104);
  if (!v11)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v12 = *v11;
  if ((*(*v11 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v12 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v18 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    aBlock[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_73;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v16 = v5;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v17;
    v14 = v18;
    MEMORY[0x26D69D2D0](0, v8, v4, v17);
    _Block_release(v15);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v16);
  }

  return *(v12 + 8);
}

uint64_t key path getter for Changelist.timeline : Changelist@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  result = swift_beginAccess();
  v14 = *(v12 + 24);
  if (!*(v14 + 116))
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = *v15;
  if ((*(*v15 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v16 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v23 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    aBlock[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_879;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    v20[1] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v21 = v8;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v22;
    v19 = v23;
    MEMORY[0x26D69D2D0](0, v11, v7, v22);
    _Block_release(v18);

    (*(v5 + 8))(v7, v4);
    result = (*(v9 + 8))(v11, v21);
  }

  *a2 = *(v16 + 8);
  return result;
}

uint64_t key path setter for Changelist.timeline : Changelist(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *a2;
  result = swift_beginAccess();
  v15 = *(v13 + 24);
  if (!*(v15 + 116))
  {
    __break(1u);
    goto LABEL_7;
  }

  v16 = *(v15 + 104);
  if (!v16)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v17 = *v16;
  if ((*(*v16 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v17 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v25 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    aBlock[4] = closure #1 in Atomic.subscript.modifyspecialized partial apply;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_872;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v23 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v22 = v8;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v12 = v23;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v24;
    v19 = v25;
    MEMORY[0x26D69D2D0](0, v11, v7, v24);
    _Block_release(v20);

    (*(v5 + 8))(v7, v4);
    result = (*(v9 + 8))(v11, v22);
  }

  *(v17 + 8) = v12;
  return result;
}

void (*Changelist.timeline.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x100uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_beginAccess();
  v5 = *(v1 + 24);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  *(v4 + 32) = v5[2];
  *(v4 + 48) = v8;
  *v4 = v6;
  *(v4 + 16) = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  *(v4 + 96) = v5[6];
  *(v4 + 112) = v11;
  *(v4 + 64) = v9;
  *(v4 + 80) = v10;
  v12 = v5[8];
  v13 = v5[9];
  v14 = v5[11];
  *(v4 + 160) = v5[10];
  *(v4 + 176) = v14;
  *(v4 + 128) = v12;
  *(v4 + 144) = v13;
  *(v4 + 248) = Interpreter.Storage.subscript.modify((v4 + 192), 0);
  return Changelist.timeline.modify;
}

void Changelist.timeline.modify(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 248))();

  free(v1);
}

uint64_t Changelist.timeline.setter(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v12 = *(v1 + 24);
  if (!*(v12 + 116))
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = *(v12 + 104);
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v14 = *v13;
  if ((*(*v13 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v14 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v21 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    aBlock[4] = _s21SwiftUITracingSupport6AtomicV6onMainxSb_tciMyyScMYccfU_AA8SnapshotV_Tgq5TA_0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_79;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    v18[1] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v19 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v20;
    v16 = v21;
    MEMORY[0x26D69D2D0](0, v10, v6, v20);
    _Block_release(v17);

    (*(v4 + 8))(v6, v3);
    result = (*(v8 + 8))(v10, v19);
  }

  *(v14 + 8) = a1;
  return result;
}

uint64_t Changelist.updates.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t Changelist.rawEvents.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2;
  return result;
}

uint64_t static Changelist.Id.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 == 0);
  if (a1)
  {
    v4 = a4 & (a3 != 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

uint64_t Changelist.Id.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    return MEMORY[0x26D69DBC0](v4);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    return MEMORY[0x26D69DC00](a2);
  }
}

Swift::Int Changelist.Id.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    if (a1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    MEMORY[0x26D69DBC0](v4);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    MEMORY[0x26D69DC00](a1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Changelist.Id()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    MEMORY[0x26D69DBC0](v3);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    MEMORY[0x26D69DC00](v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Changelist.Id()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    return MEMORY[0x26D69DBC0](v2);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    return MEMORY[0x26D69DC00](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Changelist.Id(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    MEMORY[0x26D69DBC0](v4);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    MEMORY[0x26D69DC00](v2);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Changelist.Id(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t Changelist.map.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t Changelist.viewTreeDisplayOrder.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t Changelist.kind.setter(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

__n128 Changelist.subforest.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  *a1 = *(v1 + 136);
  *(a1 + 16) = v3;
  result = *(v1 + 161);
  *(a1 + 25) = result;
  return result;
}

__n128 Changelist.subforest.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 136) = *a1;
  *(v1 + 152) = v3;
  result = *(a1 + 25);
  *(v1 + 161) = result;
  return result;
}

uint64_t Changelist.rawCurrent.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 180) = a1;
  return result;
}

uint64_t Changelist.currentRawView.setter(uint64_t a1, __int16 a2)
{
  result = swift_beginAccess();
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  *(v2 + 193) = HIBYTE(a2) & 1;
  return result;
}

void *Changelist.current.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26C328DC0;
  swift_beginAccess();
  *(v1 + 32) = *(v0 + 180);
  v3._rawValue = v1;
  Changelist.resolve(_:)(&v3);
  return v3._rawValue;
}

Swift::Void __swiftcall Changelist.resolve(_:)(Swift::OpaquePointer *a1)
{
  v26 = MEMORY[0x277D84F98];
  rawValue = a1->_rawValue;
  v3 = *(a1->_rawValue + 2);
  if (!v3)
  {
LABEL_20:

    Changelist.resolve(_:)(&v26);
    v21 = v26;
    v22 = *(v26 + 2);
    if (v22)
    {
      v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport8EventRefV_Tt1g5(*(v26 + 2), 0);
      v24 = specialized Sequence._copySequenceContents(initializing:)(&v25, v23 + 8, v22, v21);
      outlined consume of Set<AGSubgraphRef>.Iterator._Variant(v25);
      if (v24 == v22)
      {
LABEL_24:
        v25 = v23;

        specialized MutableCollection<>.sort(by:)(&v25);

        a1->_rawValue = v25;
        return;
      }

      __break(1u);
    }

    v23 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  while (v4 < *(rawValue + 2))
  {
    v6 = rawValue[v4 + 8];
    if (*(v5 + 2))
    {
      v7 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v8 & 1) != 0 && *(*(v5 + 7) + 8 * v7) < 1)
      {
        goto LABEL_4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v5;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)();
    v12 = *(v5 + 2);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_26;
    }

    v16 = v11;
    if (*(v5 + 3) < v15)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
      v10 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_28;
      }

LABEL_14:
      v5 = v25;
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v20 = v10;
    specialized _NativeDictionary.copy()();
    v10 = v20;
    v5 = v25;
    if (v16)
    {
LABEL_3:
      *(*(v5 + 7) + 8 * v10) = 0;
      goto LABEL_4;
    }

LABEL_15:
    *&v5[8 * (v10 >> 6) + 64] |= 1 << v10;
    *(*(v5 + 6) + 4 * v10) = v6;
    *(*(v5 + 7) + 8 * v10) = 0;
    v18 = *(v5 + 2);
    v14 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v14)
    {
      goto LABEL_27;
    }

    *(v5 + 2) = v19;
LABEL_4:
    if (v3 == ++v4)
    {
      v26 = v5;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}

uint64_t Changelist.currentIsRaw.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  swift_beginAccess();
  v2 = *(v0 + 180);
  *(inited + 32) = v2;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_26C328DC0;
  *(v3 + 32) = v2;
  v6._rawValue = v3;
  Changelist.resolve(_:)(&v6);
  v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(inited, v6._rawValue);
  swift_setDeallocating();

  return v4 & 1;
}

uint64_t Changelist.__allocating_init(within:current:relationship:unabstractedUpdates:unabstractedTrees:_:_:local:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, __int128 *a6, _OWORD *a7)
{
  v11 = a3;
  swift_allocObject();
  return specialized Changelist.init(within:current:relationship:unabstractedUpdates:unabstractedTrees:_:_:local:)(a1, a2, v11, a4, a5, a6, a7);
}

uint64_t Event.related(_:within:limit:collectedInto:clear:includeSelf:)(uint64_t result, uint64_t a2, uint64_t a3, void *a4, char a5, char a6)
{
  while (1)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = result;
    if (a5)
    {
      result = *a4;
      if (*(*a4 + 16))
      {
        v11 = a6;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v7;
        *v7 = 0x8000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy21SwiftUITracingSupport8EventRefVSiGMd, &_ss17_NativeDictionaryVy21SwiftUITracingSupport8EventRefVSiGMR);
        _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
        *v7 = v25;

        a6 = v11;
      }
    }

    if (!v10)
    {
      break;
    }

    if (a6)
    {
      result = specialized DepthMap.insert(_:at:)(*v6, 0);
    }

    if ((v10 & 0xC000) != 0xC000)
    {
      if ((v10 & 0xC000) != 0 && ((v10 & 0x4000) != 0 || (v10 & 0x8000) != 0))
      {
        v13 = MEMORY[0x28223BE20](result);
        v19[6] = v9;
        v20 = v10;
        v21 = v8;
        v22 = v7;
        v23 = v14;
        v15 = *v6;
        MEMORY[0x28223BE20](v13);
        v19[2] = partial apply for closure #1 in Event.related(_:within:limit:collectedInto:clear:includeSelf:);
        v19[3] = v16;
        v17 = swift_allocObject();
        *(v17 + 16) = partial apply for specialized closure #1 in static IterativeTreeTraversal<>.run(visitor:revisitor:start:revisitLeaf:);
        *(v17 + 24) = v19;
        specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(EventTreeStats.count.modify, 0, partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v17, 0, 0, 0, v15);
        if (swift_isEscapingClosureAtFileLocation())
        {
          __break(1u);
        }

        else
        {
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return result;
          }
        }

        __break(1u);
      }

      v24 = 0;
      v23 = 5882;
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    Event.related(_:within:limit:collectedInto:clear:includeSelf:)(v10 & 0x7FFF, v9, v8, v7, 0, 0);
    result = v10 & 0xFFFFBFFF;
    a2 = v9;
    a3 = v8;
    a4 = v7;
    a5 = 0;
    a6 = 0;
    v6 = v26;
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF21SwiftUITracingSupport8DepthMapVyAF8EventRefVG_AJs5NeverOTg504_s21de121Support10ChangelistC6within7current12relationship19unabstractedUpdates0H5Trees__5localACSpyAA11InterpreterC7StorageVG_AA8iJ76VAA0N0V12RelationshipVShyAPGShyAA04TreeO0VGS2iSbtcfcA2P3key_Si5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v24 = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = a1;
  v4 = a1 + 64;
  v5 = -1;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a1 + 64);
  v8 = (63 - v6) >> 6;
  if (v2)
  {
    v9 = v2;
    v10 = 0;
    v11 = 0;
    while (v7)
    {
LABEL_10:
      v13 = *(*(v3 + 48) + ((v11 << 8) | (4 * __clz(__rbit64(v7)))));
      v15 = *(v24 + 16);
      v14 = *(v24 + 24);
      if (v15 >= v14 >> 1)
      {
        v22 = v9;
        v23 = v3;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v9 = v22;
        v3 = v23;
      }

      ++v10;
      v7 &= v7 - 1;
      *(v24 + 16) = v15 + 1;
      *(v24 + 4 * v15 + 32) = v13;
      if (v10 == v9)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_27;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        v11 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 0;
LABEL_15:
    if (v7)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v16 >= v8)
      {

        return v24;
      }

      v7 = *(v4 + 8 * v16);
      ++v11;
      if (v7)
      {
        v11 = v16;
        do
        {
LABEL_20:
          v17 = *(*(v3 + 48) + ((v11 << 8) | (4 * __clz(__rbit64(v7)))));
          v19 = *(v24 + 16);
          v18 = *(v24 + 24);
          if (v19 >= v18 >> 1)
          {
            v20 = v3;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
            v3 = v20;
          }

          v7 &= v7 - 1;
          *(v24 + 16) = v19 + 1;
          *(v24 + 4 * v19 + 32) = v17;
        }

        while (v7);
      }
    }
  }

  __break(1u);
LABEL_27:

  __break(1u);
  return result;
}

uint64_t Changelist.resolve(_:)(void *a1)
{
  v2 = v1;
  v139 = a1;
  v133 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v131);
  v130 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = &v146;
  v128 = (v3 + 8);
  v127 = (v6 + 8);
  v136 = v2;
  while (1)
  {
    v8 = *v139;
    *v139 = MEMORY[0x277D84F98];
    v9 = *(v8 + 64);
    v142 = v8 + 64;
    v124 = v8;
    v10 = 1 << *(v8 + 32);
    v11 = v10 < 64 ? ~(-1 << v10) : -1;
    v126 = v11 & v9;
    swift_beginAccess();
    v134 = 0;
    v12 = v10 + 63;
    v13 = 0;
    v143 = v12 >> 6;
LABEL_8:
    v14 = v13;
    v15 = v126;
    if (v126)
    {
      break;
    }

    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_104;
      }

      if (v13 >= v143)
      {
        break;
      }

      v15 = *(v142 + 8 * v13);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    if ((v134 & 1) == 0)
    {
      return result;
    }
  }

LABEL_12:
  v16 = v2[3];
  if (!*(v16 + 116))
  {
    goto LABEL_110;
  }

  v17 = *(v16 + 104);
  if (!v17)
  {
    goto LABEL_123;
  }

  v18 = __clz(__rbit64(v15)) | (v13 << 6);
  v19 = *(*(v124 + 48) + 4 * v18);
  v20 = *(*(v124 + 56) + 8 * v18);
  v21 = *v17;
  v22 = *(*v17 + 4);
  v135 = v13;
  v137 = v20;
  if ((v22 & 1) == 0)
  {
    v23 = v15;
    os_unfair_lock_lock_with_options();
    *(v21 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    v148 = closure #1 in Atomic.subscript.readspecialized partial apply;
    v149 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v145 = 1107296256;
    v146 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v147 = &block_descriptor_90;
    v26 = _Block_copy(&aBlock);

    v27 = v130;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v28 = v132;
    v29 = v133;
    v20 = v137;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v27, v28, v26);
    _Block_release(v26);

    v2 = v136;
    v30 = v29;
    v13 = v135;
    (*v128)(v28, v30);
    (*v127)(v27, v131);
    v15 = v23;
  }

  v31 = *(v21 + 8);
  if (v19 >= *(v31 + 44))
  {
    goto LABEL_111;
  }

  v32 = *(v31 + 32);
  if (!v32)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v33 = v32 + (v19 << 7);
  v34 = *(v33 + 112);
  v35 = *(v33 + 124) + 1;
  v36 = v34;
  v126 = (v15 - 1) & v15;
  do
  {
    if (!--v35)
    {
      specialized DepthMap.insert(_:at:)(v19, v20);
      goto LABEL_8;
    }

    if (!v34)
    {
      goto LABEL_117;
    }

    v37 = *v36;
    v36 += 4;
  }

  while ((v37 & 0x8020) != 0x20);
  v38 = v2[3];
  if (!*(v38 + 116))
  {
    goto LABEL_113;
  }

  v39 = *(v38 + 104);
  if (!v39)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v40 = *v39;
  if ((*(*v39 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v40 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v41 = static OS_dispatch_queue.main.getter();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    v148 = closure #1 in Atomic.subscript.readspecialized partial apply;
    v149 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v145 = 1107296256;
    v146 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v147 = &block_descriptor_97;
    v43 = _Block_copy(&aBlock);

    v44 = v130;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v45 = v132;
    v46 = v133;
    v20 = v137;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v44, v45, v43);
    _Block_release(v43);

    v2 = v136;
    v47 = v46;
    v13 = v135;
    (*v128)(v45, v47);
    (*v127)(v44, v131);
  }

  v48 = *(v40 + 8);
  if (v19 >= *(v48 + 44))
  {
    goto LABEL_114;
  }

  v49 = *(v48 + 32);
  if (!v49)
  {
    goto LABEL_126;
  }

  v50 = v49 + (v19 << 7);
  v51 = *(v50 + 112);
  v140 = *(v50 + 124);
  swift_beginAccess();
  v52 = 0;
  v141 = v51;
  v138 = v51 + 4;
  v53 = v134;
  while (2)
  {
    v134 = v53;
    while (1)
    {
      v54 = v52;
      do
      {
LABEL_33:
        if (v54 == v140)
        {
          goto LABEL_8;
        }

        if (v54 >= v140)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!v141)
        {
          goto LABEL_118;
        }

        v52 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_103;
        }

        v55 = 8 * v54;
        v56 = *(v141 + 8 * v54++) & 0x8020;
      }

      while (v56 != 32);
      v57 = *(v138 + v55);
      v58 = v2[4];
      if (!*(v58 + 16))
      {
        break;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v57);
      v59 = Hasher._finalize()();
      v60 = -1 << *(v58 + 32);
      v61 = v59 & ~v60;
      if (((*(v58 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
      {
        break;
      }

      v62 = ~v60;
      while (*(*(v58 + 48) + 4 * v61) != v57)
      {
        v61 = (v61 + 1) & v62;
        if (((*(v58 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_43:
    v63 = v2[3];
    if (!*(v63 + 116))
    {
      goto LABEL_105;
    }

    v64 = *(v63 + 104);
    if (!v64)
    {
      goto LABEL_120;
    }

    v65 = *v64;
    if ((*(*v64 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v65 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v66 = static OS_dispatch_queue.main.getter();
      v67 = swift_allocObject();
      *(v67 + 16) = v65;
      v148 = closure #1 in Atomic.subscript.readspecialized partial apply;
      v149 = v67;
      aBlock = MEMORY[0x277D85DD0];
      v145 = 1107296256;
      v146 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v147 = &block_descriptor_104;
      v68 = _Block_copy(&aBlock);

      v69 = v130;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v70 = v132;
      v71 = v133;
      v20 = v137;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26D69D2D0](0, v69, v70, v68);
      _Block_release(v68);

      v2 = v136;
      (*v128)(v70, v71);
      v72 = v69;
      v13 = v135;
      (*v127)(v72, v131);
    }

    v73 = *(v65 + 8);
    if (v57 >= *(v73 + 44))
    {
      goto LABEL_106;
    }

    v74 = *(v73 + 32);
    if (!v74)
    {
      goto LABEL_119;
    }

    v75 = v74 + (v57 << 7);
    v76 = *(v75 + 112);
    v77 = *(v75 + 124) + 1;
    v78 = v76;
LABEL_50:
    if (!--v77)
    {
LABEL_70:
      v100 = *v139;
      if (*(*v139 + 16) && (v101 = specialized __RawDictionaryStorage.find<A>(_:)(), (v102 & 1) != 0))
      {
        v103 = 0;
        v104 = *(*(v100 + 56) + 8 * v101);
        v105 = 1;
        if (v20 < 0)
        {
LABEL_73:
          v106 = 0x8000000000000000;
          if (v105)
          {
            v106 = v104;
          }

          if (v20 <= v106)
          {
            v107 = v106;
          }

          else
          {
            v107 = v20;
          }

          goto LABEL_86;
        }
      }

      else
      {
        v104 = 0;
        v103 = 1;
        v105 = 0;
        if (v20 < 0)
        {
          goto LABEL_73;
        }
      }

      v108 = 0x7FFFFFFFFFFFFFFFLL;
      if (v105)
      {
        v108 = v104;
      }

      if (v20 >= v108)
      {
        v107 = v108;
      }

      else
      {
        v107 = v20;
      }

LABEL_86:
      if (v104 != v107)
      {
        v103 = 1;
      }

      v53 = 1;
      if (v103 != 1)
      {
        continue;
      }

      v109 = v139;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = *v109;
      aBlock = v111;
      v112 = specialized __RawDictionaryStorage.find<A>(_:)();
      v114 = v111[2];
      v115 = (v113 & 1) == 0;
      v116 = __OFADD__(v114, v115);
      v117 = v114 + v115;
      if (v116)
      {
        goto LABEL_109;
      }

      v118 = v113;
      if (v111[3] >= v117)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v123 = v112;
          specialized _NativeDictionary.copy()();
          v112 = v123;
          v120 = aBlock;
          if ((v118 & 1) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_29;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v117, isUniquelyReferenced_nonNull_native);
        v112 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v118 & 1) != (v119 & 1))
        {
          goto LABEL_127;
        }
      }

      v120 = aBlock;
      if ((v118 & 1) == 0)
      {
LABEL_95:
        v120[(v112 >> 6) + 8] |= 1 << v112;
        *(v120[6] + 4 * v112) = v57;
        *(v120[7] + 8 * v112) = v107;
        v121 = v120[2];
        v116 = __OFADD__(v121, 1);
        v122 = v121 + 1;
        if (v116)
        {
          goto LABEL_112;
        }

        v120[2] = v122;
LABEL_30:
        *v139 = v120;
        v53 = 1;
        continue;
      }

LABEL_29:
      *(v120[7] + 8 * v112) = v107;
      goto LABEL_30;
    }

    break;
  }

  if (!v76)
  {
    goto LABEL_115;
  }

  v79 = *v78;
  v78 += 4;
  if ((v79 & 0x40) == 0)
  {
    goto LABEL_50;
  }

  v80 = v2[3];
  if (!*(v80 + 116))
  {
    goto LABEL_107;
  }

  v81 = *(v80 + 104);
  if (!v81)
  {
    goto LABEL_122;
  }

  v82 = v2[9];
  v83 = *v81;
  v84 = *(*v81 + 4);

  if ((v84 & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v83 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v125 = static OS_dispatch_queue.main.getter();
    v85 = swift_allocObject();
    *(v85 + 16) = v83;
    v148 = closure #1 in Atomic.subscript.readspecialized partial apply;
    v149 = v85;
    aBlock = MEMORY[0x277D85DD0];
    v145 = 1107296256;
    v146 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v147 = &block_descriptor_111;
    v86 = _Block_copy(&aBlock);

    v87 = v130;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v88 = v132;
    v89 = v133;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v90 = v125;
    MEMORY[0x26D69D2D0](0, v87, v88, v86);
    _Block_release(v86);

    (*v128)(v88, v89);
    v91 = v87;
    v13 = v135;
    result = (*v127)(v91, v131);
  }

  v92 = *(v83 + 8);
  if (v57 >= *(v92 + 44))
  {
    goto LABEL_108;
  }

  v93 = *(v92 + 32);
  if (!v93)
  {
    goto LABEL_121;
  }

  v94 = 0;
  v95 = v93 + (v57 << 7);
  v96 = *(v95 + 112);
  v97 = *(v95 + 124);
  for (i = v96 + 4; ; i += 8)
  {
    if (v97 == v94)
    {

      v54 = v52;
      v2 = v136;
      v20 = v137;
      goto LABEL_33;
    }

    if (v94 >= v97)
    {
      break;
    }

    if (!v96)
    {
      goto LABEL_116;
    }

    if (__OFADD__(v94, 1))
    {
      goto LABEL_100;
    }

    if ((*(i - 4) & 0x40) != 0)
    {
      if (*(v82 + 16))
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)();
        if (v99)
        {

          v2 = v136;
          v20 = v137;
          goto LABEL_70;
        }
      }
    }

    ++v94;
  }

  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Changelist.rebuildDisplayOrder()()
{
  v1 = v0;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 120);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v3 + 16));
  }

  else
  {
    *(v1 + 120) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_21SwiftUITracingSupport10ChangelistC2IdOt_Tt1g5(0, *(v3 + 24) >> 1);
  }

  buildViewTreeDisplayOrder #1 (for:offset:into:) in Changelist.rebuildDisplayOrder()(0, 256, 0, (v1 + 120), v1);
  swift_endAccess();
  swift_beginAccess();
  v4 = *(v1 + 152);
  v28 = *(v1 + 136);
  v29 = v4;
  v30 = *(v1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26C328DC0;
  v23 = xmmword_26C32DAD0;
  v24 = 1;
  v25 = 0;
  v26 = 0;
  v27 = 512;
  v6 = specialized UnsafeTree.describe(state:)(&v23);
  v7 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  print(_:separator:terminator:)();

  v9 = *(v1 + 152);
  v21 = *(v1 + 136);
  v22[0] = v9;
  *(v22 + 9) = *(v1 + 161);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26C328DC0;
  v16 = xmmword_26C32DAD0;
  v17 = 1;
  v18 = 0;
  v19 = 0;
  v20 = 512;
  strcpy(v15, "(subforest \n");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  desc #1 (for:offset:into:) in Subforest2.describe(state:)(0, 256, 0, v15, &v16, &v21);
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  v11 = v15[0];
  v12 = v15[1];
  *(v10 + 56) = v7;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  print(_:separator:terminator:)();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26C328DC0;
  v14 = *(v1 + 120);
  *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_21SwiftUITracingSupport10ChangelistC2IdOtGMd, &_sSaySi_21SwiftUITracingSupport10ChangelistC2IdOtGMR);
  *(v13 + 32) = v14;

  print(_:separator:terminator:)();
}

void *Changelist.deinit()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 80) = 0;
  }

  return v0;
}

uint64_t Changelist.__deallocating_deinit()
{
  Changelist.deinit();

  return swift_deallocClassInstance();
}

uint64_t Changelist.filter(id:)(unint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1)
    {
      Changelist.subscript.getter(1, 1, aBlock);
      v14 = v68;
      v65 = v68;
      v15 = 1 << v68[32];
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v68 + 8);
      v18 = (v15 + 63) >> 6;

      v20 = 0;
      v21 = MEMORY[0x277D84F90];
LABEL_6:
      v22 = v67;
      while (v17)
      {
LABEL_13:
        v24 = __clz(__rbit64(v17)) | (v20 << 6);
        v25 = *(*(v14 + 6) + 4 * v24);
        v26 = *(*(v14 + 7) + 8 * v24);

        result = swift_beginAccess();
        v27 = *(v22 + 6);
        v28 = __OFSUB__(0, v27);
        v29 = -v27;
        if (v28)
        {
          goto LABEL_54;
        }

        v17 &= v17 - 1;
        if (v26 < v29)
        {
        }

        else
        {
          swift_beginAccess();
          v30 = *(v22 + 7);

          if (v30 >= v26)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
              v21 = result;
            }

            v32 = *(v21 + 16);
            v31 = *(v21 + 24);
            if (v32 >= v31 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v21);
              v21 = result;
            }

            *(v21 + 16) = v32 + 1;
            *(v21 + 4 * v32 + 32) = v25;
            goto LABEL_6;
          }
        }
      }

      while (1)
      {
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v23 >= v18)
        {
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v65, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
          v72[0] = v69;
          v42 = v72;
          goto LABEL_51;
        }

        v17 = *&v14[8 * v23 + 64];
        ++v20;
        if (v17)
        {
          v20 = v23;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    return 1;
  }

  v64 = v11;
  result = swift_beginAccess();
  v33 = *(v2 + 24);
  if (!*(v33 + 116))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v34 = *(v33 + 104);
  if (!v34)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v35 = *v34;
  if ((*(*v34 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v35 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v63 = v2;
    v62 = static OS_dispatch_queue.main.getter();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v69 = closure #1 in Atomic.subscript.readspecialized partial apply;
    v70 = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v67 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v68 = &block_descriptor_958;
    v61 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    v60[1] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v38 = v61;
    v37 = v62;
    MEMORY[0x26D69D2D0](0, v13, v8, v61);
    _Block_release(v38);

    (*(v6 + 8))(v8, v5);
    result = (*(v10 + 8))(v13, v64);
  }

  v39 = *(v35 + 8);
  if (HIDWORD(a1) >= *(v39 + 124))
  {
    goto LABEL_57;
  }

  v40 = *(v39 + 112);
  if (v40)
  {
    if ((a1 & 0x80000000) != 0)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v41 = *(v40 + 168 * HIDWORD(a1));
    if (a1 >= *(v41 + 16))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (*(v41 + 208 * a1 + 149) != 5)
    {
      Changelist.subscript.getter(a1, 0, aBlock);
      v43 = v68;
      v72[0] = v68;
      v44 = 1 << v68[32];
      v45 = -1;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      v46 = v45 & *(v68 + 8);
      v47 = (v44 + 63) >> 6;

      v48 = 0;
      v21 = MEMORY[0x277D84F90];
LABEL_35:
      v49 = v67;
      while (v46)
      {
LABEL_42:
        v51 = __clz(__rbit64(v46)) | (v48 << 6);
        v52 = *(*(v43 + 6) + 4 * v51);
        v53 = *(*(v43 + 7) + 8 * v51);

        result = swift_beginAccess();
        v54 = *(v49 + 6);
        v28 = __OFSUB__(0, v54);
        v55 = -v54;
        if (v28)
        {
          goto LABEL_55;
        }

        v46 &= v46 - 1;
        if (v53 < v55)
        {
        }

        else
        {
          swift_beginAccess();
          v56 = *(v49 + 7);

          if (v56 >= v53)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
              v21 = result;
            }

            v58 = *(v21 + 16);
            v57 = *(v21 + 24);
            if (v58 >= v57 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v21);
              v21 = result;
            }

            *(v21 + 16) = v58 + 1;
            *(v21 + 4 * v58 + 32) = v52;
            goto LABEL_35;
          }
        }
      }

      while (1)
      {
        v50 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_53;
        }

        if (v50 >= v47)
        {
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v72, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
          v71 = v69;
          v42 = &v71;
LABEL_51:
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v42, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);

          v59 = *(v21 + 16);

          return v59 != 0;
        }

        v46 = *&v43[8 * v50 + 64];
        ++v48;
        if (v46)
        {
          v48 = v50;
          goto LABEL_42;
        }
      }
    }

    return 1;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t ChangelistGroup.clean.getter()
{
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v20 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_10:
    v9 = __clz(__rbit64(v4)) | (v7 << 6);
    v10 = *(*(v1 + 48) + 4 * v9);
    v11 = *(*(v1 + 56) + 8 * v9);
    v12 = *(v0 + 16);

    result = swift_beginAccess();
    v13 = *(v12 + 48);
    v14 = __OFSUB__(0, v13);
    v15 = -v13;
    if (v14)
    {
      goto LABEL_20;
    }

    v4 &= v4 - 1;
    if (v11 < v15)
    {
    }

    else
    {
      swift_beginAccess();
      v16 = *(v12 + 56);

      if (v16 >= v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
          v20 = result;
        }

        v18 = *(v20 + 16);
        v17 = *(v20 + 24);
        if (v18 >= v17 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v20);
          v20 = result;
        }

        *(v20 + 16) = v18 + 1;
        *(v20 + 4 * v18 + 32) = v10;
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      v19 = *(v20 + 16);

      return v19 == 0;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Changelist.rebuildDisplayOrderIfNeeded()()
{
  if (*(v0 + 194) == 1)
  {
    *(v0 + 194) = 0;
    swift_beginAccess();
    *&v8[9] = *(v0 + 161);
    v1 = *(v0 + 152);
    v7 = *(v0 + 136);
    *v8 = v1;
    v4[0] = v7;
    v4[1] = v1;
    v5 = *&v8[16];
    v6 = v8[24];

    Subforest2.init(within:old:)(v2, v4, &v9);
    v3 = v10[0];
    *(v0 + 136) = v9;
    *(v0 + 152) = v3;
    *(v0 + 161) = *(v10 + 9);
    specialized UnsafeTree.deallocate()(&_sSDy21SwiftUITracingSupport10ChangelistC2IdOAA10UnsafeTreeV6SymbolV3RefVyAeA10Subforest2V4ItemV__GGMd, &_sSDy21SwiftUITracingSupport10ChangelistC2IdOAA10UnsafeTreeV6SymbolV3RefVyAeA10Subforest2V4ItemV__GGMR, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGGMd, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGGMR);
    Changelist.rebuildDisplayOrder()();
  }
}

uint64_t isLeafView #1 (_:) in Changelist.rebuildDisplayOrder()(unint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v9 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a1 != 0;
    return v12 & 1;
  }

  result = swift_beginAccess();
  v17 = a3[3];
  if (!*(v17 + 116))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = *(v17 + 104);
  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = *v18;
  if ((*(*v18 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v19 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v47 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *&v55 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v55 + 1) = v20;
    *&v53 = MEMORY[0x277D85DD0];
    *(&v53 + 1) = 1107296256;
    *&v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v54 + 1) = &block_descriptor_944;
    v45 = _Block_copy(&v53);

    static DispatchQoS.unspecified.getter();
    *&v53 = MEMORY[0x277D84F90];
    v21 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v49 = v9;
    v44 = v21;
    v22 = v6;
    v23 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v46 = a1;
    v48 = a3;
    v24 = v11;
    v26 = v50;
    v25 = v51;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v27 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v45;
    v29 = v47;
    MEMORY[0x26D69D2D0](0, v24, v23, v45);
    _Block_release(v28);

    v30 = v26;
    v11 = v24;
    v8 = v23;
    v6 = v22;
    (*(v30 + 8))(v23, v22);
    v9 = v27;
    v31 = v27;
    a1 = v46;
    v32 = v25;
    a3 = v48;
    result = (*(v31 + 8))(v11, v32);
  }

  v33 = *(v19 + 8);
  if (HIDWORD(a1) >= *(v33 + 124))
  {
    goto LABEL_18;
  }

  v34 = *(v33 + 112);
  if (!v34)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  v35 = *(v34 + 168 * HIDWORD(a1));
  if (a1 >= *(v35 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v36 = (v35 + 208 * a1);
  v62 = v36[11];
  v63 = v36[12];
  v64 = v36[13];
  v65 = v36[14];
  v58 = v36[7];
  v59 = v36[8];
  v60 = v36[9];
  v61 = v36[10];
  v54 = v36[3];
  v55 = v36[4];
  v56 = v36[5];
  v57 = v36[6];
  v53 = v36[2];
  v37 = a3[3];
  if (!*(v37 + 116))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v38 = *(v37 + 104);
  if (v38)
  {
    v39 = *v38;
    if ((*(*v38 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v39 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v49 = static OS_dispatch_queue.main.getter();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      v52[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
      v52[5] = v40;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 1107296256;
      v52[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v52[3] = &block_descriptor_951;
      v48 = _Block_copy(v52);

      static DispatchQoS.unspecified.getter();
      v52[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v41 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v43 = v48;
      v42 = v49;
      MEMORY[0x26D69D2D0](0, v11, v8, v48);
      _Block_release(v43);

      (*(v50 + 8))(v8, v6);
      (*(v41 + 8))(v11, v51);
    }

    v12 = Tree.isLeafView(within:)(*(v39 + 8), v14, v15, v16);
    return v12 & 1;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t buildViewTreeDisplayOrder #1 (for:offset:into:) in Changelist.rebuildDisplayOrder()(unint64_t a1, __int16 a2, Swift::Int a3, uint64_t *a4, void *a5)
{
  v5 = a5;
  if ((a2 & 0x100) != 0)
  {
LABEL_2:
    v10 = a4;
    swift_beginAccess();
    v11 = *(v5 + 19);
    v31 = *(v5 + 17);
    v32[0] = v11;
    *(v32 + 9) = *(v5 + 161);

    v12 = specialized Subforest2.descendants(of:where:)(a1, a2 & 0x1FF, &v31, v5);

    v13 = v12[2];
    if (v13)
    {
      v14 = (v12 + 5);
      v15 = MEMORY[0x277D837D0];
      do
      {
        v16 = *(v14 - 1);
        v17 = *v14;
        v14 += 16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v18 = v5;
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_26C32F2A0;
        v20._countAndFlagsBits = 32;
        v20._object = 0xE100000000000000;
        *(v19 + 32) = String.init(repeating:count:)(v20, a3);
        *(v19 + 88) = &type metadata for Changelist.Id;
        *(v19 + 56) = v15;
        *(v19 + 64) = v16;
        *(v19 + 72) = v17;
        print(_:separator:terminator:)();
        v5 = v18;

        buildViewTreeDisplayOrder #1 (for:offset:into:) in Changelist.rebuildDisplayOrder()(v16, v17, a3, v10, v18);
        --v13;
      }

      while (v13);
    }
  }

  if ((isLeafView #1 (_:) in Changelist.rebuildDisplayOrder()(a1, a2 & 1, a5) & 1) == 0)
  {
    v24 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    v23 = 0;
    v25 = 0;
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  Changelist.subscript.getter(a1, a2 & 1, &v33);
  v22 = specialized ChangelistGroup.open.getter(v33, v34, v35);
  v46[0] = v36;
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
  v45 = v37;
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v45, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
  v23 = v22 ^ 1;
  v24 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  v25 = v23;
  if ((result & 1) == 0)
  {
LABEL_8:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
    v24 = result;
    v25 = v23;
  }

LABEL_10:
  v27 = *(v24 + 16);
  v26 = *(v24 + 24);
  if (v27 >= v26 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
    v24 = result;
  }

  *(v24 + 16) = v27 + 1;
  v28 = v24 + 24 * v27;
  *(v28 + 32) = a3;
  *(v28 + 40) = a1;
  *(v28 + 48) = a2 & 1;
  *a4 = v24;
  if ((v25 & 1) == 0)
  {
    Changelist.subscript.getter(a1, a2 & 1, &v38);
    v29 = specialized ChangelistGroup.open.getter(v38, v39, v40);
    v44 = v41;
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v44, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
    v43 = v42;
    result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v43, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
    if (__OFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }

    if (v29)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t key path setter for Changelist.subscript(_:) : Changelist(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a1 + 32);
  v9 = *(a1 + 24);
  v10 = v6;
  outlined init with copy of ResourceSet<Interpreter, ()>(&v9, v8, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v10, v8, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
  return Changelist.subscript.setter(a1, v4, v5);
}

uint64_t Changelist.subscript.setter(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 112);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 1), (v10 & 1) == 0))
  {
    swift_endAccess();
    v17 = *(a1 + 3);
    v29 = *(a1 + 4);
    v30 = v17;
    swift_beginAccess();
    v18 = *(v4 + 64);
    outlined init with copy of ResourceSet<Interpreter, ()>(&v30, &v28, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
    outlined init with copy of ResourceSet<Interpreter, ()>(&v29, &v28, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 64) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      *(v4 + 64) = v18;
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    }

    *(v18 + 2) = v21 + 1;
    v22 = &v18[40 * v21];
    v23 = *a1;
    v24 = a1[1];
    *(v22 + 8) = *(a1 + 4);
    *(v22 + 2) = v23;
    *(v22 + 3) = v24;
    *(v4 + 64) = v18;
    swift_endAccess();
    v25 = *a1;
    v26 = *(a1 + 8);
    swift_beginAccess();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v4 + 112);
    *(v4 + 112) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v25, v26, v27);
    *(v4 + 112) = v28;
    swift_endAccess();
    goto LABEL_12;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *(a1 + 3);
  v29 = *(a1 + 4);
  v30 = v12;
  swift_beginAccess();
  v13 = *(v4 + 64);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v30, &v28, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v29, &v28, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 64) = v13;
  if (result)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
  v13 = result;
  *(v4 + 64) = result;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v11 < *(v13 + 16))
  {
    v15 = v13 + 40 * v11;
    v16 = a1[1];
    *(v15 + 32) = *a1;
    *(v15 + 48) = v16;
    *(v15 + 64) = *(a1 + 4);
    *(v4 + 64) = v13;
    swift_endAccess();

LABEL_12:
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v30, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
    return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v29, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
  }

LABEL_15:
  __break(1u);
  return result;
}

void (*Changelist.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xA8uLL);
  }

  *a1 = v7;
  *(v7 + 160) = a3;
  *(v7 + 144) = a2;
  *(v7 + 152) = v3;
  Changelist.subscript.getter(a2, a3 & 1, v7 + 80);
  return Changelist.subscript.modify;
}

void Changelist.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 144);
    *(v2 + 32) = *(v2 + 112);
    v5 = *(v2 + 96);
    *v2 = *(v2 + 80);
    *(v2 + 16) = v5;
    *(v2 + 120) = vextq_s8(*(v2 + 24), *(v2 + 24), 8uLL);
    outlined init with copy of ResourceSet<Interpreter, ()>(v2 + 128, v2 + 136, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
    outlined init with copy of ResourceSet<Interpreter, ()>(v2 + 120, v2 + 136, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
    Changelist.subscript.setter(v2, v4, v3 & 1);
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 144);
    v8 = *(v2 + 96);
    *(v2 + 40) = *(v2 + 80);
    *(v2 + 56) = v8;
    *(v2 + 72) = *(v2 + 112);
    Changelist.subscript.setter((v2 + 40), v7, v6 & 1);
  }

  free(v2);
}

uint64_t Changelist.setUnabstractedUpdates(_:)(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  *(v1 + 194) = 1;
  return result;
}

uint64_t Changelist.related(_:update:collectedInto:)(unsigned int a1, unsigned int a2, void *a3)
{
  v4 = v3;
  v85 = a3;
  v91 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchQoS();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  v86 = v3;
  if ((a1 & 0x8000) == 0)
  {
    goto LABEL_2;
  }

  result = swift_beginAccess();
  v38 = *(v3 + 24);
  if (!*(v38 + 116))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v39 = *(v38 + 104);
  if (!v39)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v40 = *v39;
  if ((*(*v39 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v40 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v41 = static OS_dispatch_queue.main.getter();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *&v95 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v95 + 1) = v42;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v94 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v94 + 1) = &block_descriptor_132;
    v43 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v44 = v87;
    v45 = v91;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v9, v44, v43);
    v46 = v43;
    v4 = v86;
    _Block_release(v46);

    (*(v88 + 8))(v44, v45);
    result = (*(v89 + 8))(v9, v90);
  }

  v47 = *(v40 + 8);
  if (*(v47 + 44) <= a2)
  {
    goto LABEL_39;
  }

  v48 = *(v47 + 32);
  if (!v48)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v49 = v48 + (a2 << 7);
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v52 = *(v49 + 24);
  v53 = *(v49 + 25);
  v56 = v49 + 28;
  v55 = *(v49 + 28);
  v54 = *(v56 + 4);
  LOBYTE(aBlock) = v52;
  v57 = v53 == 0;
  v58 = 256;
  if (v57)
  {
    v58 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v50, v51, v58 | (v55 << 32) | v52, v54);
  if (!result)
  {
    goto LABEL_2;
  }

  v59 = *(v4 + 24);
  if (!*(v59 + 116))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v60 = *(v59 + 104);
  if (!v60)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v61 = *v60;
  if ((*(*v60 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v61 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v83 = static OS_dispatch_queue.main.getter();
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *&v95 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v95 + 1) = v62;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v94 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v94 + 1) = &block_descriptor_139;
    v63 = v4;
    v64 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v65 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v66 = v87;
    v67 = v91;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v68 = v83;
    MEMORY[0x26D69D2D0](0, v65, v66, v64);
    v69 = v64;
    v4 = v63;
    _Block_release(v69);

    v70 = v66;
    v9 = v65;
    (*(v88 + 8))(v70, v67);
    result = (*(v89 + 8))(v65, v90);
  }

  v71 = *(v61 + 8);
  if (*(v71 + 44) <= a2)
  {
    goto LABEL_41;
  }

  v72 = *(v71 + 32);
  if (!v72)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v73 = v72 + (a2 << 7);
  v74 = *(v73 + 8);
  v75 = *(v73 + 16);
  v76 = *(v73 + 24);
  v77 = *(v73 + 25);
  v80 = v73 + 28;
  v79 = *(v73 + 28);
  v78 = *(v80 + 4);
  LOBYTE(aBlock) = v76;
  v57 = v77 == 0;
  v81 = 256;
  if (v57)
  {
    v81 = 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v74, v75, v81 | (v79 << 32) | v76, v78, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm))
  {
    v10 = 2;
  }

  else
  {
LABEL_2:
    v10 = 1;
  }

  result = swift_beginAccess();
  v12 = *(v4 + 24);
  if (!*(v12 + 116))
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = *(v12 + 104);
  if (!v13)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v14 = *v13;
  if ((*(*v13 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v14 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *&v95 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v95 + 1) = v16;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v94 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v94 + 1) = &block_descriptor_118;
    v17 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v18 = v10;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v19 = v87;
    v20 = v91;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v9, v19, v17);
    _Block_release(v17);

    v4 = v86;
    v21 = v20;
    v10 = v18;
    (*(v88 + 8))(v19, v21);
    result = (*(v89 + 8))(v9, v90);
  }

  v22 = *(v14 + 8);
  if (*(v22 + 44) <= a2)
  {
    goto LABEL_36;
  }

  v23 = *(v22 + 32);
  if (!v23)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v24 = (v23 + (a2 << 7));
  v97 = v24[4];
  v98 = v24[5];
  v99 = v24[6];
  v100 = v24[7];
  aBlock = *v24;
  v94 = v24[1];
  v95 = v24[2];
  v96 = v24[3];
  v25 = *(v4 + 24);
  if (!*(v25 + 116))
  {
    goto LABEL_37;
  }

  v26 = *(v25 + 104);
  if (!v26)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v27 = *v26;
  if ((*(*v26 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v27 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v28 = static OS_dispatch_queue.main.getter();
    v29 = v88;
    v83 = v28;
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    v92[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    v92[5] = v30;
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 1107296256;
    v92[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v92[3] = &block_descriptor_125;
    v31 = _Block_copy(v92);

    static DispatchQoS.unspecified.getter();
    v92[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v32 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v33 = v87;
    v34 = v91;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v35 = v83;
    MEMORY[0x26D69D2D0](0, v32, v33, v31);
    _Block_release(v31);

    (*(v29 + 8))(v33, v34);
    (*(v89 + 8))(v32, v90);
  }

  v36 = v10;
  v37 = v85;
  Event.related(_:within:limit:collectedInto:clear:includeSelf:)(v84, *(v27 + 8), v36, v85, 1, 0);
  return Changelist.resolve(_:)(v37);
}

unint64_t Event.hasUpdate.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 28);
  v4 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v2, v1, v3, v4);
  v7 = 0;
  if (v5 == result && v4 == HIDWORD(result))
  {
    return v7;
  }

  if (HIDWORD(result) >= v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2)
  {
    return *(v2 + result + 8);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t ChangelistGroup.resolved.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ChangelistGroup.updatesByID.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ChangelistGroup.subforest.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);

  swift_beginAccess();
  v4 = *(v3 + 152);
  *a1 = *(v3 + 136);
  a1[1] = v4;
  *(a1 + 25) = *(v3 + 161);
}

uint64_t ChangelistGroup.open.setter(char a1)
{
  v3 = *(v1 + 16);

  swift_beginAccess();
  v4 = *(v3 + 136);

  v6 = **(v4 + 32);
  if (*(v6 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(*v1, *(v1 + 8));
    if (v7)
    {
      v8 = *(*(v6 + 56) + 4 * result);

      swift_beginAccess();
      v9 = *(v3 + 136);

      v10 = *(v9 + 16) + 40 * v8;
      if (*(v10 + 36))
      {
        v11 = *(v10 + 24);
        if (v11)
        {
          v12 = *v11;

          swift_beginAccess();
          v13 = *(v3 + 136);

          v14 = *v13 + 48 * v12;
          *(v14 + 18) = a1 & 1;
          *(v14 + 19) = 1;
          *(v3 + 194) = 1;
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t (*ChangelistGroup.open.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = specialized ChangelistGroup.open.getter(*v1, *(v1 + 8), *(v1 + 16)) & 1;
  return ChangelistGroup.open.modify;
}

uint64_t ChangelistGroup.discreet.setter(int a1)
{
  v64 = a1;
  v72 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v63[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = type metadata accessor for DispatchQoS();
  v3 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v63[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v65 = v1;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v73 = MEMORY[0x277D84F90];
LABEL_5:
  if (v9)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
LABEL_10:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = *(*(v5 + 48) + 4 * v13);
      v15 = *(*(v5 + 56) + 8 * v13);

      swift_beginAccess();
      v16 = *(v6 + 48);
      v17 = __OFSUB__(0, v16);
      v18 = -v16;
      if (v17)
      {
        goto LABEL_47;
      }

      v9 &= v9 - 1;
      if (v15 < v18)
      {
      }

      else
      {
        swift_beginAccess();
        v19 = *(v6 + 56);

        if (v19 >= v15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
          }

          v21 = *(v73 + 2);
          v20 = *(v73 + 3);
          if (v21 >= v20 >> 1)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v73);
          }

          v22 = v73;
          *(v73 + 2) = v21 + 1;
          *&v22[4 * v21 + 32] = v14;
        }
      }

      goto LABEL_5;
    }
  }

  v23 = v73;
  v24 = *(v73 + 2);
  if (!v24)
  {
  }

  v25 = 0;
  v68 = v77;
  v67 = (v75 + 8);
  v66 = (v3 + 8);
  v26 = v24 - 1;
  v27 = 32;
  while (2)
  {
    if (v25)
    {
      if (!v26)
      {

        goto LABEL_35;
      }

      v25 = 1;
      goto LABEL_22;
    }

    v28 = *&v23[v27];

    swift_beginAccess();
    v29 = *(v6 + 24);
    if (!*(v29 + 116))
    {
      goto LABEL_45;
    }

    v30 = *(v29 + 104);
    if (!v30)
    {
      goto LABEL_50;
    }

    v31 = *v30;
    if ((*(*v30 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v31 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v75 = static OS_dispatch_queue.main.getter();
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      v77[2] = closure #1 in Atomic.subscript.readspecialized partial apply;
      v77[3] = v32;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v77[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v77[1] = &block_descriptor_146;
      v74 = _Block_copy(aBlock);

      v33 = v69;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v34 = v6;
      v35 = v71;
      v36 = v72;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v38 = v74;
      v37 = v75;
      MEMORY[0x26D69D2D0](0, v33, v35, v74);
      _Block_release(v38);

      v39 = v35;
      v6 = v34;
      v23 = v73;
      (*v67)(v39, v36);
      (*v66)(v33, v70);
    }

    v40 = *(v31 + 8);

    if (v28 >= *(v40 + 44))
    {
      goto LABEL_46;
    }

    v41 = *(v40 + 32);
    if (!v41)
    {
      goto LABEL_51;
    }

    v25 = *(v41 + (v28 << 7) + 64);
    if (v26)
    {
LABEL_22:
      --v26;
      v27 += 4;
      continue;
    }

    break;
  }

  if ((v25 & 1) == 0)
  {
    return result;
  }

LABEL_35:
  v43 = *v65;
  v44 = *(v65 + 8);

  swift_beginAccess();
  v45 = *(v6 + 136);
  v46 = **(v45 + 32);
  if (!*(v46 + 16))
  {
    goto LABEL_54;
  }

  v47 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
  if ((v48 & 1) == 0)
  {
    goto LABEL_54;
  }

  v49 = *(v45 + 16) + 40 * *(*(v46 + 56) + 4 * v47);
  if (!*(v49 + 36))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v50 = *(v49 + 24);
  if (!v50)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v51 = **(v45 + 32);
  if (!*(v51 + 16))
  {
    goto LABEL_54;
  }

  v52 = (*v45 + 48 * *v50);
  v53 = v52[16];
  v54 = v52[17];
  v55 = v52[18];
  v56 = v52[19];
  v57 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
  if ((v58 & 1) == 0)
  {
    goto LABEL_54;
  }

  v59 = *(v45 + 16) + 40 * *(*(v51 + 56) + 4 * v57);
  if (!*(v59 + 36))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v60 = *(v59 + 24);
  if (v60)
  {
    v61 = v64 & 1;
    v62 = (*v45 + 48 * *v60);
    v62[16] = v53;
    v62[17] = v54;
    v62[18] = v55;
    v62[19] = v56;
    v62[20] = v61;
    v62[21] = 1;
    swift_endAccess();

    *(v6 + 194) = 1;
    return result;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*ChangelistGroup.discreet.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = specialized ChangelistGroup.discreet.getter(*v1, *(v1 + 8), *(v1 + 16)) & 1;
  return ChangelistGroup.discreet.modify;
}

uint64_t ChangelistGroup.updates(mode:)(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + 16);

  swift_beginAccess();
  v5 = *(v4 + 136);

  v6 = **(v5 + 32);
  if (!*(v6 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(*v2, *(v2 + 8));
  if ((v10 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(v5 + 16) + 40 * *(*(v6 + 56) + 4 * v9);
  result = MEMORY[0x277D84F90];
  if (*(v11 + 36))
  {
    v13 = *(v11 + 24);
    if (v13)
    {
      v14 = *v5 + 48 * *v13;
      v15 = *(v14 + 18);
      v16 = *(v14 + 20);
      v19 = MEMORY[0x277D84F90];
      if (v15)
      {
        if (v16)
        {
          v18 = v3;
LABEL_15:
          updates #1 (id:mode:into:) in ChangelistGroup.updates(mode:)(v7, v8, &v18, &v19, v2);
          return v19;
        }

        if ((v3 & 2) == 0)
        {
          v17 = v3 | 8;
          goto LABEL_14;
        }
      }

      else if ((v3 & 2) != 0)
      {
        v17 = 24;
LABEL_14:
        v18 = v17;
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t updates #1 (id:mode:into:) in ChangelistGroup.updates(mode:)(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v60 = a2;
  v61 = a1;
  v69 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = type metadata accessor for DispatchQoS();
  v8 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = *a3;
  v74 = a5;
  v10 = *(a5 + 24);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v70 = MEMORY[0x277D84F90];
  while (v13)
  {
LABEL_10:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = *(*(v10 + 48) + 4 * v18);
    v20 = *(*(v10 + 56) + 8 * v18);
    v21 = *(v74 + 16);

    result = swift_beginAccess();
    v22 = *(v21 + 48);
    v23 = __OFSUB__(0, v22);
    v24 = -v22;
    if (v23)
    {
      goto LABEL_46;
    }

    v13 &= v13 - 1;
    if (v20 < v24)
    {
    }

    else
    {
      swift_beginAccess();
      v25 = *(v21 + 56);

      if (v25 >= v20)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
          v70 = result;
        }

        v27 = *(v70 + 2);
        v26 = *(v70 + 3);
        if (v27 >= v26 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v70);
          v70 = result;
        }

        v28 = v70;
        *(v70 + 2) = v27 + 1;
        *&v28[4 * v27 + 32] = v19;
      }
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  v29 = v70;
  v30 = MEMORY[0x277D84F90];
  v77 = *(v70 + 2);
  if (!v77)
  {
    v33 = MEMORY[0x277D84F90];
    v34 = v74;
    v32 = v73;
LABEL_36:

    v53 = v62;
    result = specialized Array.append<A>(contentsOf:)(v33);
    if ((v32 & 0x10) != 0)
    {

      Changelist.subscript.getter(v61, v60 & 1, &aBlock);

      v54 = specialized ChangelistGroup.children.getter(aBlock, v80, v81);
      v86 = v82;
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v86, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
      v85 = v83;
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v85, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
      v55 = *(v54 + 16);
      if (v55)
      {
        v56 = (v54 + 40);
        do
        {
          v57 = *(v56 - 1);
          v58 = *v56;
          v56 += 16;
          v78 = v32;
          updates #1 (id:mode:into:) in ChangelistGroup.updates(mode:)(v57, v58, &v78, v53, v34);
          --v55;
        }

        while (v55);
      }
    }

    return result;
  }

  v31 = 0;
  v76 = v70 + 32;
  v32 = v73;
  v75 = v73 & 0x18;
  v65 = &v81;
  v64 = (v72 + 8);
  v63 = (v8 + 8);
  v33 = MEMORY[0x277D84F90];
  v34 = v74;
  while (v31 < *(v29 + 2))
  {
    v37 = *&v76[4 * v31];
    if (v75)
    {
      goto LABEL_33;
    }

    v38 = *(v34 + 16);

    result = swift_beginAccess();
    v39 = *(v38 + 24);
    if (!*(v39 + 116))
    {
      goto LABEL_44;
    }

    v40 = *(v39 + 104);
    if (!v40)
    {
      goto LABEL_47;
    }

    v41 = *v40;
    if (*(*v40 + 4) != 1)
    {
      os_unfair_lock_lock_with_options();
      *(v41 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v72 = static OS_dispatch_queue.main.getter();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      v83 = closure #1 in Atomic.subscript.readspecialized partial apply;
      v84 = v42;
      aBlock = MEMORY[0x277D85DD0];
      v80 = 1107296256;
      v81 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v82 = &block_descriptor_918;
      v43 = _Block_copy(&aBlock);

      v44 = v66;
      static DispatchQoS.unspecified.getter();
      aBlock = v30;
      v71 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v45 = v68;
      v46 = v69;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v47 = v72;
      MEMORY[0x26D69D2D0](0, v44, v45, v43);
      v48 = v43;
      v34 = v74;
      _Block_release(v48);

      v49 = v46;
      v30 = MEMORY[0x277D84F90];
      (*v64)(v45, v49);
      v50 = v44;
      v29 = v70;
      (*v63)(v50, v67);
    }

    v51 = *(v41 + 8);

    if (v37 >= *(v51 + 44))
    {
      goto LABEL_45;
    }

    v52 = *(v51 + 32);
    if (!v52)
    {
      goto LABEL_48;
    }

    v32 = v73;
    if ((((v73 & 2) == 0) ^ *(v52 + (v37 << 7) + 64)))
    {
LABEL_33:
      result = swift_isUniquelyReferenced_nonNull_native();
      v86 = v33;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1);
        v33 = v86;
      }

      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      if (v36 >= v35 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v33 = v86;
      }

      *(v33 + 16) = v36 + 1;
      *(v33 + 4 * v36 + 32) = v37;
    }

    if (v77 == ++v31)
    {
      goto LABEL_36;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void protocol witness for Identifiable.id.getter in conformance ChangelistGroup(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t GraphContext.id.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t GraphContext.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

SwiftUITracingSupport::GraphContext::Kind_optional __swiftcall GraphContext.Kind.init(rawValue:)(SwiftUITracingSupport::GraphContext::Kind_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SwiftUITracingSupport_GraphContext_Kind_unknownDefault)
  {
    value = SwiftUITracingSupport_GraphContext_Kind_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.Parser.Flags()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.Parser.Flags(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t GraphContext.rootSubgraphs.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t GraphContext.globalSubgraph.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t *(*GraphContext.viewType.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v2 = *(v1 + 68);
  *(a1 + 8) = *(v1 + 64);
  *(a1 + 13) = v2;
  *(a1 + 12) = v2;
  return GraphContext.viewType.modify;
}

uint64_t *GraphContext.viewType.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 12);
  v4 = *(a1 + 13);
  v6 = *(a1 + 2);
  result = a1 + 1;
  *(v2 + 64) = v6;
  *(v2 + 68) = v3;
  if (a2)
  {
    if (v4)
    {
      return result;
    }

    __break(1u);
  }

  if ((v4 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t GraphContext.describe(state:)(__int128 *a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[6];
  _StringGuts.grow(_:)(26);
  MEMORY[0x26D69CDB0](0x6F43687061724728, 0xEE0020747865746ELL);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v5 = specialized InspectionState.describe<A>(_:_:)();
  MEMORY[0x26D69CDB0](v5);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v6 = specialized InspectionState.describe<A>(_:_:)(25705, 0xE200000000000000, v2, v3);
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v7 = specialized InspectionState.describe<A>(_:_:)(0x73746F6F72, 0xE500000000000000, v4);
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0;
}

uint64_t GraphContext.displayName(within:)()
{
  v1 = *(v0 + 61);
  if (v1 <= 1)
  {
    if (*(v0 + 61))
    {
      return 0x6870617247707041;
    }

    v3 = 0x736F486870617247;
    if (*(v0 + 68))
    {
      return 0x736F486870617247;
    }

    goto LABEL_13;
  }

  if (v1 == 2)
  {
    if (*(v0 + 68))
    {
      return 0xD00000000000001ALL;
    }

    v3 = 0x56676E6974736F48;
LABEL_13:
    v5 = v3;
    v4 = Interpreter.Storage.Types.subscript.getter(*(v0 + 64));
    MEMORY[0x26D69CDB0](v4);

    return v5;
  }

  if (v1 == 3)
  {
    return 0x2065727574736547;
  }

  else
  {
    return 0x746567646957;
  }
}

uint64_t protocol witness for Mortal.interval.setter in conformance GraphContext(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t T_GraphCreated.model(within:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = (result + 56);
  v5 = *(result + 72);
  v109[0] = *(result + 56);
  v109[1] = v5;
  v110[0] = *(result + 88);
  v6 = (result + 72);
  v7 = (result + 84);
  v8 = (result + 88);
  v9 = (result + 104);
  *(v110 + 9) = *(result + 97);
  v10 = (result + 56);
  v11 = (result + 72);
  v12 = (result + 84);
  v13 = (result + 104);
  while (1)
  {
    v14 = *v13;
    if (*v12 >= 2u)
    {
      v15 = *v11;
      if ((*(v15 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v109);
    }

    v11 = (v14 + 16);
    v12 = (v14 + 28);
    v13 = (v14 + 48);
    v10 = v14;
  }

  v16 = *v10;
  if (!v16)
  {
    goto LABEL_74;
  }

  result = v16 + 24 * *(v15 + 8);
  v17 = *(*result + 112);
  if (!v17)
  {
    goto LABEL_66;
  }

  v18 = v17[1];
  v83 = *v17;
  v19 = *(v17 + 6);
  v97 = *(v17 + 5);
  v98[0] = v19;
  *(v98 + 13) = *(v17 + 109);
  v20 = *(v17 + 2);
  v93 = *(v17 + 1);
  v94 = v20;
  v21 = *(v17 + 4);
  v95 = *(v17 + 3);
  v96 = v21;
  v22 = *v18;
  if (!*(*v18 + 16))
  {
    v27 = 0;
    v23 = a2;
LABEL_14:
    v28 = -1;
    v25 = v23;
    v84 = v23;
    goto LABEL_15;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v23 = a2;
  if ((v24 & 1) == 0)
  {
    v27 = 0;
    goto LABEL_14;
  }

  v25 = a2;
  v26 = *(v22 + 56) + 24 * result;
  v27 = *(v26 + 8);
  v84 = *v26;
  v28 = *(v26 + 16);
LABEL_15:
  v29 = v4[1];
  v107[0] = *v4;
  v107[1] = v29;
  v108[0] = v4[2];
  *(v108 + 9) = *(v4 + 41);
  v30 = v4;
  v31 = v6;
  v32 = v7;
  v33 = v9;
  while (1)
  {
    v34 = *v33;
    if (*v32 >= 2u)
    {
      v35 = *v31;
      if ((*(v35 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v34)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v107);
    }

    v31 = (v34 + 16);
    v32 = (v34 + 28);
    v33 = (v34 + 48);
    v30 = v34;
  }

  v36 = *v30;
  if (!v36)
  {
    goto LABEL_75;
  }

  result = v36 + 24 * *(v35 + 8);
  v37 = *(*result + 112);
  if (!v37)
  {
    goto LABEL_67;
  }

  *v37 = v83;
  *(v37 + 8) = v18;
  v38 = v98[0];
  *(v37 + 80) = v97;
  *(v37 + 96) = v38;
  *(v37 + 109) = *(v98 + 13);
  v39 = v94;
  *(v37 + 16) = v93;
  *(v37 + 32) = v39;
  v40 = v96;
  *(v37 + 48) = v95;
  *(v37 + 64) = v40;
  v99[0] = v84;
  v100 = v28;
  v41 = v27 + 1;
  if (v27 == -1)
  {
    __break(1u);
    goto LABEL_62;
  }

  v99[1] = v27 + 1;
  v42 = v4[1];
  v105[0] = *v4;
  v105[1] = v42;
  v106[0] = v4[2];
  *(v106 + 9) = *(v4 + 41);
  v43 = v4;
  v44 = v6;
  v45 = v7;
  v46 = v9;
  while (1)
  {
    v47 = *v46;
    if (*v45 >= 2u)
    {
      v48 = *v44;
      if ((*(v48 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v47)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v105);
    }

    v44 = (v47 + 16);
    v45 = (v47 + 28);
    v46 = (v47 + 48);
    v43 = v47;
  }

  v49 = *v43;
  if (!v49)
  {
    goto LABEL_76;
  }

  result = v49 + 24 * *(v48 + 8);
  v50 = *(*result + 112);
  if (!v50)
  {
    goto LABEL_68;
  }

  v51 = v50[5];
  v90 = v50[4];
  v91 = v51;
  v92[0] = v50[6];
  *(v92 + 13) = *(v50 + 109);
  v52 = v50[1];
  v86 = *v50;
  v87 = v52;
  v53 = v50[3];
  v88 = v50[2];
  v89 = v53;
  result = specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v86 + 1, v25, v99, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport11GraphCtxtIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport11GraphCtxtIDV4name_AE0G3RefV9referencetGMR);
  v54 = v4[1];
  v103[0] = *v4;
  v103[1] = v54;
  v104[0] = v4[2];
  *(v104 + 9) = *(v4 + 41);
  v55 = v4;
  v56 = v9;
  while (1)
  {
    v57 = *v56;
    if (*v7 >= 2u && (*(*v6 + 12) & 1) == 0)
    {
      break;
    }

    if (!v57)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v103);
    }

    v6 = (v57 + 16);
    v7 = (v57 + 28);
    v56 = (v57 + 48);
    v55 = v57;
  }

  v58 = *v55;
  if (!v58)
  {
    goto LABEL_77;
  }

  result = v58 + 24 * *(*v6 + 8);
  v59 = *(*result + 112);
  if (!v59)
  {
    goto LABEL_69;
  }

  v60 = v87;
  *v59 = v86;
  v59[1] = v60;
  v61 = v89;
  v59[2] = v88;
  v59[3] = v61;
  *(v59 + 109) = *(v92 + 13);
  v62 = v92[0];
  v59[5] = v91;
  v59[6] = v62;
  v59[4] = v90;
  if (!v3[48] && (*v3 & 0xFF00) == 0x200)
  {
    v63 = *(v3 + 22);
    v64 = *(v63 + 116);
    v65 = *v3;
    if (v65 < v64)
    {
      v66 = *(v63 + 104);
      if (!v66)
      {
LABEL_70:
        __break(1u);
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v67 = *(*(*(v66 + 8 * v65) + 8) + 148);
      v68 = v4[1];
      v101[0] = *v4;
      v101[1] = v68;
      v102[0] = v4[2];
      *(v102 + 9) = *(v4 + 41);
      v69 = v3 + 100;
      result = *(v3 + 29);
      while (1)
      {
        v70 = *v9;
        if (result < *v69)
        {
          v71 = (*v8 + 8 * result);
          if ((v71[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v70)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v101);
        }

        v8 = (v70 + 32);
        v69 = (v70 + 44);
        v9 = (v70 + 48);
        v4 = v70;
      }

      if (!*v4)
      {
        goto LABEL_78;
      }

      result = *v4 + 24 * *v71;
      v72 = *(*result + 32);
      if (v65 < v64)
      {
        v73 = *(*(v66 + 8 * v65) + 8);
        v74 = *(v73 + 148);
        if (v74 == *(v73 + 144))
        {
          result = specialized UnsafeArray.growToCapacity(_:)(2 * v74);
        }

        v75 = *(v73 + 136);
        if (!v75)
        {
          goto LABEL_71;
        }

        v76 = *(v73 + 148);
        v77 = v75 + 80 * v76;
        *v77 = v67;
        *(v77 + 8) = v84;
        *(v77 + 16) = v41;
        *(v77 + 24) = 0;
        *(v77 + 32) = v72;
        v78 = MEMORY[0x277D84F90];
        *(v77 + 40) = -1;
        *(v77 + 48) = v78;
        *(v77 + 56) = 0;
        *(v77 + 60) = 1;
        *(v77 + 64) = 0;
        *(v77 + 68) = 1;
        *(v77 + 72) = 0;
        if (v76 != -1)
        {
          *(v73 + 148) = v76 + 1;
          if (v3[48])
          {
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
            return result;
          }

          v79 = *v3;
          if (v79 < *(v63 + 116))
          {
            v80 = *(v63 + 104);
            if (v80)
            {
              v81 = *(*(*(v80 + 8 * v79) + 8) + 152);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v85 = *v81;
              *v81 = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v84, v41, isUniquelyReferenced_nonNull_native, specialized __RawDictionaryStorage.find<A>(_:), &_ss18_DictionaryStorageCy21SwiftUITracingSupport11GraphCtxtIDVAC0F3RefVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport11GraphCtxtIDVAC0F3RefVGMR, &type metadata for GraphCtxtID);
              *v81 = v85;
            }

            goto LABEL_73;
          }

          goto LABEL_65;
        }

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
        goto LABEL_70;
      }

LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  return result;
}

uint64_t T_GraphNeedsUpdateV0.model(within:)(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 116);
  if (!a3)
  {
    v5 = 0;
  }

  *(a1 + 160) = v5;
  *(a1 + 164) = a3 != 0;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 168) = a3 == 0;
  *(a1 + 172) = v6;
  v7 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, a1);
  v8 = v7;
  specialized Interpreter.Iterator.observe<A>(invalidation:)(v7);
  if ((v9 & 0x100000000) != 0)
  {
    goto LABEL_31;
  }

  v10 = v9;
  v11 = (a1 + 56);
  v12 = *(a1 + 72);
  v39[0] = *(a1 + 56);
  v39[1] = v12;
  v40[0] = *(a1 + 88);
  *(v40 + 9) = *(a1 + 97);
  v13 = (a1 + 72);
  v14 = (a1 + 84);
  v15 = (a1 + 104);
  while (1)
  {
    v16 = *v15;
    if (*v14 >= 2u)
    {
      v17 = *v13;
      if ((*(v17 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v16)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v39);
    }

    v13 = (v16 + 16);
    v14 = (v16 + 28);
    v15 = (v16 + 48);
    v11 = v16;
  }

  v18 = *v11;
  if (!v18)
  {
    goto LABEL_33;
  }

  v19 = *(*(v18 + 24 * *(v17 + 8)) + 112);
  if (!v19)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v20 = *(v19 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v20;
  v38 = *v20;
  *v20 = 0x8000000000000000;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)();
  v25 = *(v22 + 16);
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    __break(1u);
    goto LABEL_29;
  }

  v28 = v23;
  if (*(v22 + 24) >= v27)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMR);
      v22 = v38;
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMR);
    v22 = v38;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_34:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v24 = v29;
  }

  *v20 = v22;

  v31 = *v20;
  if (v28)
  {
    goto LABEL_24;
  }

  v31[(v24 >> 6) + 8] |= 1 << v24;
  *(v31[6] + 4 * v24) = v8;
  *(v31[7] + 8 * v24) = MEMORY[0x277D84F90];
  v32 = v31[2];
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v31[2] = v34;
LABEL_24:
  v3 = v31[7];
  v22 = *(v3 + 8 * v24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 8 * v24) = v22;
  if ((result & 1) == 0)
  {
LABEL_29:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
    v22 = result;
    *(v3 + 8 * v24) = result;
  }

  v37 = *(v22 + 16);
  v36 = *(v22 + 24);
  if (v37 >= v36 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v22);
    v22 = result;
    *(v3 + 8 * v24) = result;
  }

  *(v22 + 16) = v37 + 1;
  *(v22 + 4 * v37 + 32) = v10;
  return result;
}

uint64_t T_GraphNeedsUpdate.model(within:)(uint64_t a1, uint64_t a2)
{
  v4 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, a1);
  v5 = v4;
  specialized Interpreter.Iterator.observe<A>(invalidation:)(v4);
  if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_26;
  }

  v7 = v6;
  v8 = (a1 + 56);
  v9 = *(a1 + 72);
  v36[0] = *(a1 + 56);
  v36[1] = v9;
  v37[0] = *(a1 + 88);
  *(v37 + 9) = *(a1 + 97);
  v10 = (a1 + 72);
  v11 = (a1 + 84);
  v12 = (a1 + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11 > 1u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v36);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v8 = v13;
  }

  v15 = *v8;
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = *(*(v15 + 24 * *(v14 + 8)) + 112);
  if (!v16)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = *(v16 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v17;
  v35 = *v17;
  *v17 = 0x8000000000000000;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)();
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_24;
  }

  v25 = v20;
  if (*(v19 + 24) >= v24)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMR);
      v19 = v35;
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMR);
    v19 = v35;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v25 & 1) != (v27 & 1))
    {
LABEL_29:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v21 = v26;
  }

  *v17 = v19;

  v28 = *v17;
  if (v25)
  {
    goto LABEL_19;
  }

  v28[(v21 >> 6) + 8] |= 1 << v21;
  *(v28[6] + 4 * v21) = v5;
  *(v28[7] + 8 * v21) = MEMORY[0x277D84F90];
  v29 = v28[2];
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28[2] = v31;
LABEL_19:
  v2 = v28[7];
  v19 = *(v2 + 8 * v21);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 8 * v21) = v19;
  if ((result & 1) == 0)
  {
LABEL_24:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
    v19 = result;
    *(v2 + 8 * v21) = result;
  }

  v34 = *(v19 + 16);
  v33 = *(v19 + 24);
  if (v34 >= v33 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v19);
    v19 = result;
    *(v2 + 8 * v21) = result;
  }

  *(v19 + 16) = v34 + 1;
  *(v19 + 4 * v34 + 32) = v7;
  return result;
}

void specialized Interpreter.Iterator.observe<A>(invalidation:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 72);
  v216[0] = *(v2 + 56);
  v216[1] = v3;
  v217[0] = *(v2 + 88);
  *(v217 + 9) = *(v2 + 97);
  v4 = v2 + 88;
  v5 = v2 + 100;
  v6 = *(v2 + 29);
  v7 = v2 + 56;
  v8 = (v2 + 104);
  while (1)
  {
    v9 = *v8;
    if (v6 < *v5)
    {
      v10 = (*v4 + 8 * v6);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(v2 + 29), 0, v216);
    }

    v4 = (v9 + 32);
    v5 = (v9 + 44);
    v8 = (v9 + 48);
    v7 = v9;
  }

  if (!*v7)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(result, a2, *(*(*v7 + 24 * *v10) + 32), 0);
  v12 = *v2;
  v13 = v2[48];
  v14 = *(v2 + 72);
  v214[0] = *(v2 + 56);
  v214[1] = v14;
  v215[0] = *(v2 + 88);
  *(v215 + 9) = *(v2 + 97);
  v15 = (v2 + 72);
  v16 = v2 + 84;
  v17 = (v2 + 56);
  v193 = v2 + 72;
  v196 = v2 + 84;
  v18 = (v2 + 104);
  v19 = *(v2 + 22);
  while (1)
  {
    v20 = *v18;
    if (*v16)
    {
      v21 = *v15;
      if ((v21[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v20)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v214);
    }

    v15 = (v20 + 16);
    v16 = (v20 + 28);
    v18 = (v20 + 48);
    v17 = v20;
  }

  v22 = *v17;
  if (!v22)
  {
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v191 = v11;
  v194 = v2 + 104;
  v195 = v2 + 56;
  v192 = v2;
  v23 = *(*(v22 + 24 * *v21) + 112);
  if (!v23)
  {
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  v24 = *(*(v23 + 32) + 8);
  v25 = *(v24 + 16);
  v26 = (v24 + 48 * v25 - 16);
  do
  {
    if (v25-- < 1)
    {
LABEL_92:
      v100 = *v192;
      v198 = v192[48];
      v101 = v195;
      v102 = v196;
      v103 = v195[1];
      v206[0] = *v195;
      v206[1] = v103;
      v207[0] = v195[2];
      *(v207 + 9) = *(v195 + 41);
      v104 = v193;
      v105 = v194;
      while (1)
      {
        v106 = *v105;
        if (*v102)
        {
          v107 = *v104;
          if ((v107[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v106)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v206);
        }

        v104 = (v106 + 16);
        v102 = (v106 + 28);
        v105 = (v106 + 48);
        v101 = v106;
      }

      v108 = *v101;
      if (!v108)
      {
        goto LABEL_249;
      }

      v109 = *(*(v108 + 24 * *v107) + 112);
      if (!v109)
      {
        goto LABEL_234;
      }

      v110 = *(*(v109 + 32) + 8);
      v111 = *(v110 + 16);

      if (!v111)
      {
LABEL_116:

        v124 = v192;
        v126 = v194;
        v125 = v195;
LABEL_132:
        v142 = *v124;
        v199 = v124[48];
        v143 = v125[1];
        v203 = *v125;
        v204 = v143;
        v205[0] = v125[2];
        *(v205 + 9) = *(v125 + 41);
        v144 = v126;
        v145 = v196;
        v146 = v193;
        for (i = v125; ; i = v148)
        {
          v148 = *v144;
          if (*v145)
          {
            v149 = *v146;
            if ((v149[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v148)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v203);
          }

          v146 = (v148 + 16);
          v145 = (v148 + 28);
          v144 = (v148 + 48);
        }

        if (!*i)
        {
          goto LABEL_250;
        }

        v150 = *(*(*i + 24 * *v149) + 112);
        if (!v150)
        {
          goto LABEL_235;
        }

        v151 = *(*(v150 + 32) + 8);
        v152 = *(v151 + 16);

        if (!v152)
        {
LABEL_156:

          v165 = v193;
          v167 = v194;
          v166 = v195;
LABEL_172:
          v183 = v166[1];
          v200 = *v166;
          v201 = v183;
          v202[0] = v166[2];
          *(v202 + 9) = *(v166 + 41);
          v184 = v196;
          while (1)
          {
            v185 = *v167;
            if (*v184)
            {
              if ((*(*v165 + 4) & 1) == 0)
              {
                break;
              }
            }

            if (!v185)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v200);
            }

            v165 = (v185 + 16);
            v184 = (v185 + 28);
            v167 = (v185 + 48);
            v166 = v185;
          }

          if (!*v166)
          {
            goto LABEL_251;
          }

          v186 = *(*(*v166 + 24 * **v165) + 112);
          if (!v186)
          {
            goto LABEL_236;
          }

          v187 = *(v186 + 32);
          v188 = *(v187 + 24);
          v189 = *(v187 + 32);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v188, v189);
          Interpreter.Iterator.finalize(update:observer:)(v191, v188, v189);
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v188, v189);
          LOBYTE(v216[0]) = 0;
          return;
        }

        v153 = 48 * v152 - 16;
        while (v152 <= *(v151 + 16))
        {
          if (v199)
          {
            goto LABEL_226;
          }

          if (*(v19 + 116) <= v142)
          {
            goto LABEL_193;
          }

          v154 = *(v19 + 104);
          if (!v154)
          {
            goto LABEL_227;
          }

          v155 = *(v151 + v153);
          v156 = *(*(v154 + 8 * v142) + 8);
          if (v155 >= *(v156 + 44))
          {
            goto LABEL_194;
          }

          v157 = *(v156 + 32);
          if (!v157)
          {
            goto LABEL_228;
          }

          v158 = v157 + (v155 << 7);
          v159 = *(v158 + 8);
          v162 = *(v158 + 28);
          v161 = *(v158 + 32);
          v160 = *(v158 + 24);
          v163 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v159, *(v158 + 16), v160, v161);
          if (v162 == v163 && v161 == HIDWORD(v163))
          {
            v200 = 0u;
            v201 = 0u;
            v202[0] = xmmword_26C32F2B0;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v200, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);

            if (v192[48])
            {
              goto LABEL_258;
            }

            v168 = *v192;
            v167 = v194;
            v166 = v195;
            v165 = v193;
            if (v168 >= *(v19 + 116))
            {
              goto LABEL_210;
            }

            v169 = *(v19 + 104);
            if (!v169)
            {
              goto LABEL_259;
            }

            v170 = *(*(v169 + 8 * v168) + 8);
            v171 = *(v170 + 44);
            if (v155 >= v171)
            {
              goto LABEL_211;
            }

            v172 = *(v170 + 32);
            if (!v172)
            {
              goto LABEL_260;
            }

            if (v191 >= v171)
            {
              goto LABEL_212;
            }

            v173 = (v172 + (v155 << 7));
            v174 = (v172 + (v191 << 7));
            v175 = *v174;
            if (v173[31] == v173[30])
            {
              specialized UnsafeArray.growToCapacity(_:)();
            }

            v176 = *(v173 + 14);
            if (!v176)
            {
              goto LABEL_261;
            }

            v177 = v173[31];
            v178 = v176 + 8 * v177;
            *v178 = -20480;
            *(v178 + 4) = v175;
            if (v177 == -1)
            {
              goto LABEL_213;
            }

            v173[31] = v177 + 1;
            v179 = *v173;
            if (v174[31] == v174[30])
            {
              specialized UnsafeArray.growToCapacity(_:)();
            }

            v180 = *(v174 + 14);
            if (v180)
            {
              v181 = v174[31];
              v182 = v180 + 8 * v181;
              *v182 = 28672;
              *(v182 + 4) = v179;
              if (v181 == -1)
              {
                goto LABEL_214;
              }

              v174[31] = v181 + 1;
              goto LABEL_172;
            }

            goto LABEL_262;
          }

          if (HIDWORD(v163) >= v161)
          {
            goto LABEL_196;
          }

          if (v160)
          {
            goto LABEL_231;
          }

          if (!v159)
          {
            goto LABEL_232;
          }

          --v152;
          outlined init with copy of Event.Action(v159 + v163 + 8, &v200);
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v200, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
          v153 -= 48;
          if (v152 + 1 < 2)
          {
            goto LABEL_156;
          }
        }

        goto LABEL_192;
      }

      v112 = 48 * v111 - 16;
      while (v111 <= *(v110 + 16))
      {
        if (v198)
        {
          goto LABEL_223;
        }

        if (*(v19 + 116) <= v100)
        {
          goto LABEL_190;
        }

        v113 = *(v19 + 104);
        if (!v113)
        {
          goto LABEL_224;
        }

        v114 = *(v110 + v112);
        v115 = *(*(v113 + 8 * v100) + 8);
        if (v114 >= *(v115 + 44))
        {
          goto LABEL_191;
        }

        v116 = *(v115 + 32);
        if (!v116)
        {
          goto LABEL_225;
        }

        v117 = v116 + (v114 << 7);
        v119 = *(v117 + 8);
        v118 = *(v117 + 16);
        v121 = *(v117 + 28);
        v120 = *(v117 + 32);
        LOBYTE(v200) = *(v117 + 24);
        v122 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v119, v118, v200, v120);
        if (v121 == v122 && v120 == HIDWORD(v122))
        {
          v203 = 0u;
          v204 = 0u;
          v205[0] = xmmword_26C32F2B0;
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v203, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);

          v124 = v192;
          if (v192[48])
          {
            goto LABEL_253;
          }

          v127 = *v192;
          v126 = v194;
          v125 = v195;
          if (v127 >= *(v19 + 116))
          {
            goto LABEL_205;
          }

          v128 = *(v19 + 104);
          if (!v128)
          {
            goto LABEL_254;
          }

          v129 = *(*(v128 + 8 * v127) + 8);
          v130 = *(v129 + 44);
          if (v114 >= v130)
          {
            goto LABEL_206;
          }

          v131 = *(v129 + 32);
          if (!v131)
          {
            goto LABEL_255;
          }

          if (v191 >= v130)
          {
            goto LABEL_207;
          }

          v132 = (v131 + (v114 << 7));
          v133 = (v131 + (v191 << 7));
          v134 = *v133;
          if (v132[31] == v132[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v135 = *(v132 + 14);
          if (!v135)
          {
            goto LABEL_256;
          }

          v136 = v132[31];
          v137 = v135 + 8 * v136;
          *v137 = -23552;
          *(v137 + 4) = v134;
          if (v136 == -1)
          {
            goto LABEL_208;
          }

          v132[31] = v136 + 1;
          v138 = *v132;
          if (v133[31] == v133[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v139 = *(v133 + 14);
          if (v139)
          {
            v140 = v133[31];
            v141 = v139 + 8 * v140;
            *v141 = 25600;
            *(v141 + 4) = v138;
            if (v140 == -1)
            {
              goto LABEL_209;
            }

            v133[31] = v140 + 1;
            goto LABEL_132;
          }

          goto LABEL_257;
        }

        if (HIDWORD(v122) >= v120)
        {
          goto LABEL_195;
        }

        if (v200)
        {
          goto LABEL_229;
        }

        if (!v119)
        {
          goto LABEL_230;
        }

        --v111;
        outlined init with copy of Event.Transaction(v119 + v122 + 8, &v203);
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v203, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
        v112 -= 48;
        if (v111 + 1 < 2)
        {
          goto LABEL_116;
        }
      }

LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if ((v25 + 1) > *(v24 + 16))
    {
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (v13)
    {
      goto LABEL_215;
    }

    if (*(v19 + 116) <= v12)
    {
      goto LABEL_182;
    }

    v28 = *(v19 + 104);
    if (!v28)
    {
      goto LABEL_216;
    }

    v29 = *v26;
    v30 = *(*(v28 + 8 * v12) + 8);
    if (v29 >= *(v30 + 44))
    {
      goto LABEL_183;
    }

    v31 = *(v30 + 32);
    if (!v31)
    {
      goto LABEL_217;
    }

    v32 = v31 + (v29 << 7);
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
    v36 = *(v32 + 28);
    v35 = *(v32 + 32);
    LOBYTE(v212[0]) = *(v32 + 24);
    v37 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v34, v33, v212[0], v35);
    if (v36 == v37 && v35 == HIDWORD(v37))
    {
      goto LABEL_32;
    }

    if (HIDWORD(v37) >= v35)
    {
      goto LABEL_184;
    }

    if (v212[0])
    {
      goto LABEL_218;
    }

    v26 -= 12;
  }

  while (v34);
  __break(1u);
LABEL_32:
  if (v192[48])
  {
    goto LABEL_237;
  }

  v39 = *v192;
  if (v39 >= *(v19 + 116))
  {
    goto LABEL_197;
  }

  v40 = *(v19 + 104);
  if (!v40)
  {
    goto LABEL_238;
  }

  v41 = *(*(v40 + 8 * v39) + 8);
  v42 = v195[1];
  v212[0] = *v195;
  v212[1] = v42;
  v213[0] = v195[2];
  *(v213 + 9) = *(v195 + 41);
  v43 = v195;
  v44 = v193;
  v45 = v196;
  v46 = v194;
  while (1)
  {
    v47 = *v46;
    if (*v45)
    {
      v48 = *v44;
      if ((v48[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v47)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v212);
    }

    v44 = (v47 + 16);
    v45 = (v47 + 28);
    v46 = (v47 + 48);
    v43 = v47;
  }

  v49 = *v43;
  if (!v49)
  {
    goto LABEL_263;
  }

  v50 = *(*(v49 + 24 * *v48) + 112);
  if (!v50)
  {
    goto LABEL_239;
  }

  if (!*(*(*(v50 + 32) + 8) + 16))
  {
    goto LABEL_198;
  }

  if (v192[48])
  {
    goto LABEL_240;
  }

  v51 = *v192;
  if (v51 >= *(v19 + 116))
  {
    goto LABEL_199;
  }

  v52 = *(v19 + 104);
  if (!v52)
  {
    goto LABEL_241;
  }

  v53 = *(*(v52 + 8 * v51) + 8);
  v54 = v195[1];
  v210[0] = *v195;
  v210[1] = v54;
  v211[0] = v195[2];
  *(v211 + 9) = *(v195 + 41);
  v55 = v195;
  v56 = v193;
  v57 = v196;
  v58 = v194;
  while (1)
  {
    v59 = *v58;
    if (*v57)
    {
      v60 = *v56;
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
    }

    v56 = (v59 + 16);
    v57 = (v59 + 28);
    v58 = (v59 + 48);
    v55 = v59;
  }

  v61 = *v55;
  if (v61)
  {
    v197 = v53;
    v190 = v41;
    v62 = *(*(v61 + 24 * *v60) + 112);
    if (!v62)
    {
      goto LABEL_242;
    }

    v63 = *(*(v62 + 32) + 8);
    v64 = *(v63 + 16);
    v65 = 48 * v64 - 16;
    while (v64 > 0)
    {
      if (v64 > *(v63 + 16))
      {
        goto LABEL_185;
      }

      if (*(v19 + 116) <= v51)
      {
        goto LABEL_186;
      }

      v66 = *(v19 + 104);
      if (!v66)
      {
        goto LABEL_220;
      }

      v67 = *(v63 + v65);
      v68 = *(*(v66 + 8 * v51) + 8);
      if (v67 >= *(v68 + 44))
      {
        goto LABEL_187;
      }

      v69 = *(v68 + 32);
      if (!v69)
      {
        goto LABEL_221;
      }

      v70 = v69 + (v67 << 7);
      v72 = *(v70 + 8);
      v71 = *(v70 + 16);
      v74 = *(v70 + 28);
      v73 = *(v70 + 32);
      LOBYTE(v208[0]) = *(v70 + 24);
      v75 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v72, v71, v208[0], v73);
      if (v74 == v75 && v73 == HIDWORD(v75))
      {
        goto LABEL_70;
      }

      if (HIDWORD(v75) >= v73)
      {
        goto LABEL_188;
      }

      if (v208[0])
      {
        goto LABEL_222;
      }

      v65 -= 48;
      --v64;
      if (!v72)
      {
        __break(1u);
LABEL_70:
        v77 = v195;
        v78 = v196;
        v79 = v195[1];
        v208[0] = *v195;
        v208[1] = v79;
        v209[0] = v195[2];
        *(v209 + 9) = *(v195 + 41);
        v80 = v193;
        v81 = v194;
        while (1)
        {
          v82 = *v81;
          if (*v78)
          {
            v83 = *v80;
            if ((v83[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v82)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v208);
          }

          v80 = (v82 + 16);
          v78 = (v82 + 28);
          v81 = (v82 + 48);
          v77 = v82;
        }

        v84 = *v77;
        if (!v84)
        {
          goto LABEL_265;
        }

        v85 = *(*(v84 + 24 * *v83) + 112);
        if (!v85)
        {
          goto LABEL_243;
        }

        v86 = *(*(v85 + 32) + 8);
        if (v64 > *(v86 + 16))
        {
          goto LABEL_200;
        }

        v87 = *(v86 + v65);
        if (v87 >= *(v197 + 44))
        {
          goto LABEL_201;
        }

        v88 = *(v197 + 32);
        if (!v88)
        {
          goto LABEL_244;
        }

        if (v191 >= *(v190 + 44))
        {
          goto LABEL_202;
        }

        v89 = *(v190 + 32);
        if (v89)
        {
          v90 = (v88 + (v87 << 7));
          v91 = (v89 + (v191 << 7));
          v92 = *v91;
          if (v90[31] == v90[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v93 = *(v90 + 14);
          if (!v93)
          {
            goto LABEL_246;
          }

          v94 = v90[31];
          v95 = v93 + 8 * v94;
          *v95 = -24575;
          *(v95 + 4) = v92;
          if (v94 == -1)
          {
            goto LABEL_203;
          }

          v90[31] = v94 + 1;
          v96 = *v90;
          if (v91[31] == v91[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v97 = *(v91 + 14);
          if (v97)
          {
            v98 = v91[31];
            v99 = v97 + 8 * v98;
            *v99 = 24577;
            *(v99 + 4) = v96;
            if (v98 == -1)
            {
              goto LABEL_204;
            }

            v91[31] = v98 + 1;
            goto LABEL_92;
          }

          goto LABEL_247;
        }

        goto LABEL_245;
      }
    }

    goto LABEL_219;
  }

LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
}

unint64_t specialized Interpreter.Iterator.observe<A>(invalidation:)(unint64_t a1)
{
  return specialized Interpreter.Iterator.observe<A>(invalidation:)(a1, specialized Interpreter.Iterator.new<A, B>(event:_:discreet:));
}

{
  return specialized Interpreter.Iterator.observe<A>(invalidation:)(a1, specialized Interpreter.Iterator.new<A, B>(event:_:discreet:));
}

{
  return specialized Interpreter.Iterator.observe<A>(invalidation:)(a1, specialized Interpreter.Iterator.new<A, B>(event:_:discreet:));
}

unint64_t specialized Interpreter.Iterator.observe<A>(invalidation:)(unint64_t result, uint64_t (*a2)(unint64_t, void, void))
{
  v3 = *(v2 + 72);
  v212[0] = *(v2 + 56);
  v212[1] = v3;
  v213[0] = *(v2 + 88);
  *(v213 + 9) = *(v2 + 97);
  v4 = v2 + 88;
  v5 = v2 + 100;
  v6 = *(v2 + 29);
  v7 = v2 + 56;
  v8 = (v2 + 104);
  while (1)
  {
    v9 = *v8;
    if (v6 < *v5)
    {
      v10 = (*v4 + 8 * v6);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(v2 + 29), 0, v212);
    }

    v4 = (v9 + 32);
    v5 = (v9 + 44);
    v8 = (v9 + 48);
    v7 = v9;
  }

  if (!*v7)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  result = a2(result, *(*(*v7 + 24 * *v10) + 32), 0);
  v11 = result;
  v12 = *v2;
  v13 = v2[48];
  v14 = *(v2 + 72);
  v210[0] = *(v2 + 56);
  v210[1] = v14;
  v211[0] = *(v2 + 88);
  *(v211 + 9) = *(v2 + 97);
  v15 = (v2 + 72);
  v16 = v2 + 84;
  v17 = (v2 + 56);
  v189 = v2 + 72;
  v192 = v2 + 84;
  v18 = (v2 + 104);
  v19 = *(v2 + 22);
  while (1)
  {
    v20 = *v18;
    if (*v16)
    {
      v21 = *v15;
      if ((v21[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v20)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v210);
    }

    v15 = (v20 + 16);
    v16 = (v20 + 28);
    v18 = (v20 + 48);
    v17 = v20;
  }

  v22 = *v17;
  if (!v22)
  {
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  result = v22 + 24 * *v21;
  v187 = v11;
  v190 = v2 + 104;
  v191 = v2 + 56;
  v188 = v2;
  v23 = *(*result + 112);
  if (!v23)
  {
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  v24 = *(*(v23 + 32) + 8);
  v25 = *(v24 + 16);
  v26 = (v24 + 48 * v25 - 16);
  do
  {
    if (v25-- < 1)
    {
LABEL_92:
      v98 = *v188;
      v194 = v188[48];
      v99 = v191;
      v100 = v192;
      v101 = v191[1];
      v202[0] = *v191;
      v202[1] = v101;
      v203[0] = v191[2];
      *(v203 + 9) = *(v191 + 41);
      v102 = v189;
      v103 = v190;
      while (1)
      {
        v104 = *v103;
        if (*v100)
        {
          v105 = *v102;
          if ((v105[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v104)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v202);
        }

        v102 = (v104 + 16);
        v100 = (v104 + 28);
        v103 = (v104 + 48);
        v99 = v104;
      }

      v106 = *v99;
      if (!v106)
      {
        goto LABEL_249;
      }

      result = v106 + 24 * *v105;
      v107 = *(*result + 112);
      if (!v107)
      {
        goto LABEL_234;
      }

      v108 = *(*(v107 + 32) + 8);
      v109 = *(v108 + 16);

      if (!v109)
      {
LABEL_116:

        v121 = v188;
        v123 = v190;
        v122 = v191;
LABEL_132:
        v139 = *v121;
        v195 = v121[48];
        v140 = v122[1];
        v199 = *v122;
        v200 = v140;
        v201[0] = v122[2];
        *(v201 + 9) = *(v122 + 41);
        v141 = v123;
        v142 = v192;
        v143 = v189;
        for (i = v122; ; i = v145)
        {
          v145 = *v141;
          if (*v142)
          {
            v146 = *v143;
            if ((v146[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v145)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v199);
          }

          v143 = (v145 + 16);
          v142 = (v145 + 28);
          v141 = (v145 + 48);
        }

        if (!*i)
        {
          goto LABEL_250;
        }

        result = *i + 24 * *v146;
        v147 = *(*result + 112);
        if (!v147)
        {
          goto LABEL_235;
        }

        v148 = *(*(v147 + 32) + 8);
        v149 = *(v148 + 16);

        if (!v149)
        {
LABEL_156:

          v161 = v189;
          v163 = v190;
          v162 = v191;
LABEL_172:
          v179 = v162[1];
          v196 = *v162;
          v197 = v179;
          v198[0] = v162[2];
          *(v198 + 9) = *(v162 + 41);
          v180 = v192;
          while (1)
          {
            v181 = *v163;
            if (*v180)
            {
              if ((*(*v161 + 4) & 1) == 0)
              {
                break;
              }
            }

            if (!v181)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v196);
            }

            v161 = (v181 + 16);
            v180 = (v181 + 28);
            v163 = (v181 + 48);
            v162 = v181;
          }

          if (!*v162)
          {
            goto LABEL_251;
          }

          result = *v162 + 24 * **v161;
          v182 = *(*result + 112);
          if (!v182)
          {
            goto LABEL_236;
          }

          v183 = *(v182 + 32);
          v184 = *(v183 + 24);
          v185 = *(v183 + 32);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v184, v185);
          Interpreter.Iterator.finalize(update:observer:)(v187, v184, v185);
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v184, v185);
          LOBYTE(v212[0]) = 0;
          return v187;
        }

        v150 = 48 * v149 - 16;
        while (v149 <= *(v148 + 16))
        {
          if (v195)
          {
            goto LABEL_226;
          }

          if (*(v19 + 116) <= v139)
          {
            goto LABEL_193;
          }

          v151 = *(v19 + 104);
          if (!v151)
          {
            goto LABEL_227;
          }

          v152 = *(v148 + v150);
          v153 = *(*(v151 + 8 * v139) + 8);
          if (v152 >= *(v153 + 44))
          {
            goto LABEL_194;
          }

          v154 = *(v153 + 32);
          if (!v154)
          {
            goto LABEL_228;
          }

          v155 = v154 + (v152 << 7);
          v156 = *(v155 + 8);
          v159 = *(v155 + 28);
          v158 = *(v155 + 32);
          v157 = *(v155 + 24);
          result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v156, *(v155 + 16), v157, v158);
          if (v159 == result && v158 == HIDWORD(result))
          {
            v196 = 0u;
            v197 = 0u;
            v198[0] = xmmword_26C32F2B0;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v196, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);

            if (v188[48])
            {
              goto LABEL_258;
            }

            v164 = *v188;
            v163 = v190;
            v162 = v191;
            v161 = v189;
            if (v164 >= *(v19 + 116))
            {
              goto LABEL_210;
            }

            v165 = *(v19 + 104);
            if (!v165)
            {
              goto LABEL_259;
            }

            v166 = *(*(v165 + 8 * v164) + 8);
            v167 = *(v166 + 44);
            if (v152 >= v167)
            {
              goto LABEL_211;
            }

            v168 = *(v166 + 32);
            if (!v168)
            {
              goto LABEL_260;
            }

            if (v187 >= v167)
            {
              goto LABEL_212;
            }

            v169 = (v168 + (v152 << 7));
            v170 = (v168 + (v187 << 7));
            v171 = *v170;
            if (v169[31] == v169[30])
            {
              result = specialized UnsafeArray.growToCapacity(_:)();
            }

            v172 = *(v169 + 14);
            if (!v172)
            {
              goto LABEL_261;
            }

            v173 = v169[31];
            v174 = v172 + 8 * v173;
            *v174 = -20480;
            *(v174 + 4) = v171;
            if (v173 == -1)
            {
              goto LABEL_213;
            }

            v169[31] = v173 + 1;
            v175 = *v169;
            if (v170[31] == v170[30])
            {
              result = specialized UnsafeArray.growToCapacity(_:)();
            }

            v176 = *(v170 + 14);
            if (v176)
            {
              v177 = v170[31];
              v178 = v176 + 8 * v177;
              *v178 = 28672;
              *(v178 + 4) = v175;
              if (v177 == -1)
              {
                goto LABEL_214;
              }

              v170[31] = v177 + 1;
              goto LABEL_172;
            }

            goto LABEL_262;
          }

          if (HIDWORD(result) >= v158)
          {
            goto LABEL_196;
          }

          if (v157)
          {
            goto LABEL_231;
          }

          if (!v156)
          {
            goto LABEL_232;
          }

          --v149;
          outlined init with copy of Event.Action(v156 + result + 8, &v196);
          result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v196, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
          v150 -= 48;
          if (v149 + 1 < 2)
          {
            goto LABEL_156;
          }
        }

        goto LABEL_192;
      }

      v110 = 48 * v109 - 16;
      while (v109 <= *(v108 + 16))
      {
        if (v194)
        {
          goto LABEL_223;
        }

        if (*(v19 + 116) <= v98)
        {
          goto LABEL_190;
        }

        v111 = *(v19 + 104);
        if (!v111)
        {
          goto LABEL_224;
        }

        v112 = *(v108 + v110);
        v113 = *(*(v111 + 8 * v98) + 8);
        if (v112 >= *(v113 + 44))
        {
          goto LABEL_191;
        }

        v114 = *(v113 + 32);
        if (!v114)
        {
          goto LABEL_225;
        }

        v115 = v114 + (v112 << 7);
        v117 = *(v115 + 8);
        v116 = *(v115 + 16);
        v119 = *(v115 + 28);
        v118 = *(v115 + 32);
        LOBYTE(v196) = *(v115 + 24);
        result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v117, v116, v196, v118);
        if (v119 == result && v118 == HIDWORD(result))
        {
          v199 = 0u;
          v200 = 0u;
          v201[0] = xmmword_26C32F2B0;
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v199, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);

          v121 = v188;
          if (v188[48])
          {
            goto LABEL_253;
          }

          v124 = *v188;
          v123 = v190;
          v122 = v191;
          if (v124 >= *(v19 + 116))
          {
            goto LABEL_205;
          }

          v125 = *(v19 + 104);
          if (!v125)
          {
            goto LABEL_254;
          }

          v126 = *(*(v125 + 8 * v124) + 8);
          v127 = *(v126 + 44);
          if (v112 >= v127)
          {
            goto LABEL_206;
          }

          v128 = *(v126 + 32);
          if (!v128)
          {
            goto LABEL_255;
          }

          if (v187 >= v127)
          {
            goto LABEL_207;
          }

          v129 = (v128 + (v112 << 7));
          v130 = (v128 + (v187 << 7));
          v131 = *v130;
          if (v129[31] == v129[30])
          {
            result = specialized UnsafeArray.growToCapacity(_:)();
          }

          v132 = *(v129 + 14);
          if (!v132)
          {
            goto LABEL_256;
          }

          v133 = v129[31];
          v134 = v132 + 8 * v133;
          *v134 = -23552;
          *(v134 + 4) = v131;
          if (v133 == -1)
          {
            goto LABEL_208;
          }

          v129[31] = v133 + 1;
          v135 = *v129;
          if (v130[31] == v130[30])
          {
            result = specialized UnsafeArray.growToCapacity(_:)();
          }

          v136 = *(v130 + 14);
          if (v136)
          {
            v137 = v130[31];
            v138 = v136 + 8 * v137;
            *v138 = 25600;
            *(v138 + 4) = v135;
            if (v137 == -1)
            {
              goto LABEL_209;
            }

            v130[31] = v137 + 1;
            goto LABEL_132;
          }

          goto LABEL_257;
        }

        if (HIDWORD(result) >= v118)
        {
          goto LABEL_195;
        }

        if (v196)
        {
          goto LABEL_229;
        }

        if (!v117)
        {
          goto LABEL_230;
        }

        --v109;
        outlined init with copy of Event.Transaction(v117 + result + 8, &v199);
        result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v199, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
        v110 -= 48;
        if (v109 + 1 < 2)
        {
          goto LABEL_116;
        }
      }

LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if ((v25 + 1) > *(v24 + 16))
    {
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (v13)
    {
      goto LABEL_215;
    }

    if (*(v19 + 116) <= v12)
    {
      goto LABEL_182;
    }

    v28 = *(v19 + 104);
    if (!v28)
    {
      goto LABEL_216;
    }

    v29 = *v26;
    v30 = *(*(v28 + 8 * v12) + 8);
    if (v29 >= *(v30 + 44))
    {
      goto LABEL_183;
    }

    v31 = *(v30 + 32);
    if (!v31)
    {
      goto LABEL_217;
    }

    v32 = v31 + (v29 << 7);
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
    v36 = *(v32 + 28);
    v35 = *(v32 + 32);
    LOBYTE(v208[0]) = *(v32 + 24);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v34, v33, v208[0], v35);
    if (v36 == result && v35 == HIDWORD(result))
    {
      goto LABEL_32;
    }

    if (HIDWORD(result) >= v35)
    {
      goto LABEL_184;
    }

    if (v208[0])
    {
      goto LABEL_218;
    }

    v26 -= 12;
  }

  while (v34);
  __break(1u);
LABEL_32:
  if (v188[48])
  {
    goto LABEL_237;
  }

  v38 = *v188;
  if (v38 >= *(v19 + 116))
  {
    goto LABEL_197;
  }

  v39 = *(v19 + 104);
  if (!v39)
  {
    goto LABEL_238;
  }

  v40 = *(*(v39 + 8 * v38) + 8);
  v41 = v191[1];
  v208[0] = *v191;
  v208[1] = v41;
  v209[0] = v191[2];
  *(v209 + 9) = *(v191 + 41);
  v42 = v191;
  v43 = v189;
  v44 = v192;
  v45 = v190;
  while (1)
  {
    v46 = *v45;
    if (*v44)
    {
      v47 = *v43;
      if ((v47[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v46)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v208);
    }

    v43 = (v46 + 16);
    v44 = (v46 + 28);
    v45 = (v46 + 48);
    v42 = v46;
  }

  v48 = *v42;
  if (!v48)
  {
    goto LABEL_263;
  }

  result = v48 + 24 * *v47;
  v49 = *(*result + 112);
  if (!v49)
  {
    goto LABEL_239;
  }

  if (!*(*(*(v49 + 32) + 8) + 16))
  {
    goto LABEL_198;
  }

  if (v188[48])
  {
    goto LABEL_240;
  }

  v50 = *v188;
  if (v50 >= *(v19 + 116))
  {
    goto LABEL_199;
  }

  v51 = *(v19 + 104);
  if (!v51)
  {
    goto LABEL_241;
  }

  v52 = *(*(v51 + 8 * v50) + 8);
  v53 = v191[1];
  v206[0] = *v191;
  v206[1] = v53;
  v207[0] = v191[2];
  *(v207 + 9) = *(v191 + 41);
  v54 = v191;
  v55 = v189;
  v56 = v192;
  v57 = v190;
  while (1)
  {
    v58 = *v57;
    if (*v56)
    {
      v59 = *v55;
      if ((v59[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v58)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v206);
    }

    v55 = (v58 + 16);
    v56 = (v58 + 28);
    v57 = (v58 + 48);
    v54 = v58;
  }

  v60 = *v54;
  if (v60)
  {
    result = v60 + 24 * *v59;
    v193 = v52;
    v186 = v40;
    v61 = *(*result + 112);
    if (!v61)
    {
      goto LABEL_242;
    }

    v62 = *(*(v61 + 32) + 8);
    v63 = *(v62 + 16);
    v64 = 48 * v63 - 16;
    while (v63 > 0)
    {
      if (v63 > *(v62 + 16))
      {
        goto LABEL_185;
      }

      if (*(v19 + 116) <= v50)
      {
        goto LABEL_186;
      }

      v65 = *(v19 + 104);
      if (!v65)
      {
        goto LABEL_220;
      }

      v66 = *(v62 + v64);
      v67 = *(*(v65 + 8 * v50) + 8);
      if (v66 >= *(v67 + 44))
      {
        goto LABEL_187;
      }

      v68 = *(v67 + 32);
      if (!v68)
      {
        goto LABEL_221;
      }

      v69 = v68 + (v66 << 7);
      v71 = *(v69 + 8);
      v70 = *(v69 + 16);
      v73 = *(v69 + 28);
      v72 = *(v69 + 32);
      LOBYTE(v204[0]) = *(v69 + 24);
      result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v71, v70, v204[0], v72);
      if (v73 == result && v72 == HIDWORD(result))
      {
        goto LABEL_70;
      }

      if (HIDWORD(result) >= v72)
      {
        goto LABEL_188;
      }

      if (v204[0])
      {
        goto LABEL_222;
      }

      v64 -= 48;
      --v63;
      if (!v71)
      {
        __break(1u);
LABEL_70:
        v75 = v191;
        v76 = v192;
        v77 = v191[1];
        v204[0] = *v191;
        v204[1] = v77;
        v205[0] = v191[2];
        *(v205 + 9) = *(v191 + 41);
        v78 = v189;
        v79 = v190;
        while (1)
        {
          v80 = *v79;
          if (*v76)
          {
            v81 = *v78;
            if ((v81[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v80)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v204);
          }

          v78 = (v80 + 16);
          v76 = (v80 + 28);
          v79 = (v80 + 48);
          v75 = v80;
        }

        v82 = *v75;
        if (!v82)
        {
          goto LABEL_265;
        }

        result = v82 + 24 * *v81;
        v83 = *(*result + 112);
        if (!v83)
        {
          goto LABEL_243;
        }

        v84 = *(*(v83 + 32) + 8);
        if (v63 > *(v84 + 16))
        {
          goto LABEL_200;
        }

        v85 = *(v84 + v64);
        if (v85 >= *(v193 + 44))
        {
          goto LABEL_201;
        }

        v86 = *(v193 + 32);
        if (!v86)
        {
          goto LABEL_244;
        }

        if (v187 >= *(v186 + 44))
        {
          goto LABEL_202;
        }

        v87 = *(v186 + 32);
        if (v87)
        {
          v88 = (v86 + (v85 << 7));
          v89 = (v87 + (v187 << 7));
          v90 = *v89;
          if (v88[31] == v88[30])
          {
            result = specialized UnsafeArray.growToCapacity(_:)();
          }

          v91 = *(v88 + 14);
          if (!v91)
          {
            goto LABEL_246;
          }

          v92 = v88[31];
          v93 = v91 + 8 * v92;
          *v93 = -24575;
          *(v93 + 4) = v90;
          if (v92 == -1)
          {
            goto LABEL_203;
          }

          v88[31] = v92 + 1;
          v94 = *v88;
          if (v89[31] == v89[30])
          {
            result = specialized UnsafeArray.growToCapacity(_:)();
          }

          v95 = *(v89 + 14);
          if (v95)
          {
            v96 = v89[31];
            v97 = v95 + 8 * v96;
            *v97 = 24577;
            *(v97 + 4) = v94;
            if (v96 == -1)
            {
              goto LABEL_204;
            }

            v89[31] = v96 + 1;
            goto LABEL_92;
          }

          goto LABEL_247;
        }

        goto LABEL_245;
      }
    }

    goto LABEL_219;
  }

LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
  return result;
}

void specialized Interpreter.Iterator.observe<A>(invalidation:)(uint64_t result)
{
  v2 = *(v1 + 72);
  v215[0] = *(v1 + 56);
  v215[1] = v2;
  v216[0] = *(v1 + 88);
  *(v216 + 9) = *(v1 + 97);
  v3 = v1 + 88;
  v4 = v1 + 100;
  v5 = *(v1 + 29);
  v6 = v1 + 56;
  v7 = (v1 + 104);
  while (1)
  {
    v8 = *v7;
    if (v5 < *v4)
    {
      v9 = (*v3 + 8 * v5);
      if ((v9[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v8)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(v1 + 29), 0, v215);
    }

    v3 = (v8 + 32);
    v4 = (v8 + 44);
    v7 = (v8 + 48);
    v6 = v8;
  }

  if (!*v6)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(result, *(*(*v6 + 24 * *v9) + 32), 0);
  v11 = *v1;
  v12 = v1[48];
  v13 = *(v1 + 72);
  v213[0] = *(v1 + 56);
  v213[1] = v13;
  v214[0] = *(v1 + 88);
  *(v214 + 9) = *(v1 + 97);
  v14 = v1 + 84;
  v15 = (v1 + 56);
  v16 = (v1 + 72);
  v195 = v1 + 84;
  v17 = (v1 + 104);
  v18 = *(v1 + 22);
  while (1)
  {
    v19 = *v17;
    if (*v14)
    {
      v20 = *v16;
      if ((v20[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v19)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v213);
    }

    v16 = (v19 + 16);
    v14 = (v19 + 28);
    v17 = (v19 + 48);
    v15 = v19;
  }

  v21 = *v15;
  if (!v21)
  {
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v192 = v1 + 72;
  v193 = v1 + 104;
  v190 = v10;
  v194 = v1 + 56;
  v191 = v1;
  v22 = *(*(v21 + 24 * *v20) + 112);
  if (!v22)
  {
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  v23 = *(*(v22 + 32) + 8);
  v24 = *(v23 + 16);
  v25 = (v23 + 48 * v24 - 16);
  do
  {
    if (v24-- < 1)
    {
LABEL_92:
      v99 = *v191;
      v197 = v191[48];
      v100 = v194;
      v101 = v195;
      v102 = v194[1];
      v205[0] = *v194;
      v205[1] = v102;
      v206[0] = v194[2];
      *(v206 + 9) = *(v194 + 41);
      v103 = v192;
      v104 = v193;
      while (1)
      {
        v105 = *v104;
        if (*v101)
        {
          v106 = *v103;
          if ((v106[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v105)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v205);
        }

        v103 = (v105 + 16);
        v101 = (v105 + 28);
        v104 = (v105 + 48);
        v100 = v105;
      }

      v107 = *v100;
      if (!v107)
      {
        goto LABEL_249;
      }

      v108 = *(*(v107 + 24 * *v106) + 112);
      if (!v108)
      {
        goto LABEL_234;
      }

      v109 = *(*(v108 + 32) + 8);
      v110 = *(v109 + 16);

      if (!v110)
      {
LABEL_116:

        v123 = v191;
        v125 = v193;
        v124 = v194;
LABEL_132:
        v141 = *v123;
        v198 = v123[48];
        v142 = v124[1];
        v202 = *v124;
        v203 = v142;
        v204[0] = v124[2];
        *(v204 + 9) = *(v124 + 41);
        v143 = v125;
        v144 = v195;
        v145 = v192;
        for (i = v124; ; i = v147)
        {
          v147 = *v143;
          if (*v144)
          {
            v148 = *v145;
            if ((v148[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v147)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v202);
          }

          v145 = (v147 + 16);
          v144 = (v147 + 28);
          v143 = (v147 + 48);
        }

        if (!*i)
        {
          goto LABEL_250;
        }

        v149 = *(*(*i + 24 * *v148) + 112);
        if (!v149)
        {
          goto LABEL_235;
        }

        v150 = *(*(v149 + 32) + 8);
        v151 = *(v150 + 16);

        if (!v151)
        {
LABEL_156:

          v164 = v192;
          v166 = v193;
          v165 = v194;
LABEL_172:
          v182 = v165[1];
          v199 = *v165;
          v200 = v182;
          v201[0] = v165[2];
          *(v201 + 9) = *(v165 + 41);
          v183 = v195;
          while (1)
          {
            v184 = *v166;
            if (*v183)
            {
              if ((*(*v164 + 4) & 1) == 0)
              {
                break;
              }
            }

            if (!v184)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v199);
            }

            v164 = (v184 + 16);
            v183 = (v184 + 28);
            v166 = (v184 + 48);
            v165 = v184;
          }

          if (!*v165)
          {
            goto LABEL_251;
          }

          v185 = *(*(*v165 + 24 * **v164) + 112);
          if (!v185)
          {
            goto LABEL_236;
          }

          v186 = *(v185 + 32);
          v187 = *(v186 + 24);
          v188 = *(v186 + 32);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v187, v188);
          Interpreter.Iterator.finalize(update:observer:)(v190, v187, v188);
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v187, v188);
          LOBYTE(v215[0]) = 0;
          return;
        }

        v152 = 48 * v151 - 16;
        while (v151 <= *(v150 + 16))
        {
          if (v198)
          {
            goto LABEL_226;
          }

          if (*(v18 + 116) <= v141)
          {
            goto LABEL_193;
          }

          v153 = *(v18 + 104);
          if (!v153)
          {
            goto LABEL_227;
          }

          v154 = *(v150 + v152);
          v155 = *(*(v153 + 8 * v141) + 8);
          if (v154 >= *(v155 + 44))
          {
            goto LABEL_194;
          }

          v156 = *(v155 + 32);
          if (!v156)
          {
            goto LABEL_228;
          }

          v157 = v156 + (v154 << 7);
          v158 = *(v157 + 8);
          v161 = *(v157 + 28);
          v160 = *(v157 + 32);
          v159 = *(v157 + 24);
          v162 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v158, *(v157 + 16), v159, v160);
          if (v161 == v162 && v160 == HIDWORD(v162))
          {
            v199 = 0u;
            v200 = 0u;
            v201[0] = xmmword_26C32F2B0;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v199, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);

            if (v191[48])
            {
              goto LABEL_258;
            }

            v167 = *v191;
            v166 = v193;
            v165 = v194;
            v164 = v192;
            if (v167 >= *(v18 + 116))
            {
              goto LABEL_210;
            }

            v168 = *(v18 + 104);
            if (!v168)
            {
              goto LABEL_259;
            }

            v169 = *(*(v168 + 8 * v167) + 8);
            v170 = *(v169 + 44);
            if (v154 >= v170)
            {
              goto LABEL_211;
            }

            v171 = *(v169 + 32);
            if (!v171)
            {
              goto LABEL_260;
            }

            if (v190 >= v170)
            {
              goto LABEL_212;
            }

            v172 = (v171 + (v154 << 7));
            v173 = (v171 + (v190 << 7));
            v174 = *v173;
            if (v172[31] == v172[30])
            {
              specialized UnsafeArray.growToCapacity(_:)();
            }

            v175 = *(v172 + 14);
            if (!v175)
            {
              goto LABEL_261;
            }

            v176 = v172[31];
            v177 = v175 + 8 * v176;
            *v177 = -20480;
            *(v177 + 4) = v174;
            if (v176 == -1)
            {
              goto LABEL_213;
            }

            v172[31] = v176 + 1;
            v178 = *v172;
            if (v173[31] == v173[30])
            {
              specialized UnsafeArray.growToCapacity(_:)();
            }

            v179 = *(v173 + 14);
            if (v179)
            {
              v180 = v173[31];
              v181 = v179 + 8 * v180;
              *v181 = 28672;
              *(v181 + 4) = v178;
              if (v180 == -1)
              {
                goto LABEL_214;
              }

              v173[31] = v180 + 1;
              goto LABEL_172;
            }

            goto LABEL_262;
          }

          if (HIDWORD(v162) >= v160)
          {
            goto LABEL_196;
          }

          if (v159)
          {
            goto LABEL_231;
          }

          if (!v158)
          {
            goto LABEL_232;
          }

          --v151;
          outlined init with copy of Event.Action(v158 + v162 + 8, &v199);
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v199, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
          v152 -= 48;
          if (v151 + 1 < 2)
          {
            goto LABEL_156;
          }
        }

        goto LABEL_192;
      }

      v111 = 48 * v110 - 16;
      while (v110 <= *(v109 + 16))
      {
        if (v197)
        {
          goto LABEL_223;
        }

        if (*(v18 + 116) <= v99)
        {
          goto LABEL_190;
        }

        v112 = *(v18 + 104);
        if (!v112)
        {
          goto LABEL_224;
        }

        v113 = *(v109 + v111);
        v114 = *(*(v112 + 8 * v99) + 8);
        if (v113 >= *(v114 + 44))
        {
          goto LABEL_191;
        }

        v115 = *(v114 + 32);
        if (!v115)
        {
          goto LABEL_225;
        }

        v116 = v115 + (v113 << 7);
        v118 = *(v116 + 8);
        v117 = *(v116 + 16);
        v120 = *(v116 + 28);
        v119 = *(v116 + 32);
        LOBYTE(v199) = *(v116 + 24);
        v121 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v118, v117, v199, v119);
        if (v120 == v121 && v119 == HIDWORD(v121))
        {
          v202 = 0u;
          v203 = 0u;
          v204[0] = xmmword_26C32F2B0;
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v202, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);

          v123 = v191;
          if (v191[48])
          {
            goto LABEL_253;
          }

          v126 = *v191;
          v125 = v193;
          v124 = v194;
          if (v126 >= *(v18 + 116))
          {
            goto LABEL_205;
          }

          v127 = *(v18 + 104);
          if (!v127)
          {
            goto LABEL_254;
          }

          v128 = *(*(v127 + 8 * v126) + 8);
          v129 = *(v128 + 44);
          if (v113 >= v129)
          {
            goto LABEL_206;
          }

          v130 = *(v128 + 32);
          if (!v130)
          {
            goto LABEL_255;
          }

          if (v190 >= v129)
          {
            goto LABEL_207;
          }

          v131 = (v130 + (v113 << 7));
          v132 = (v130 + (v190 << 7));
          v133 = *v132;
          if (v131[31] == v131[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v134 = *(v131 + 14);
          if (!v134)
          {
            goto LABEL_256;
          }

          v135 = v131[31];
          v136 = v134 + 8 * v135;
          *v136 = -23552;
          *(v136 + 4) = v133;
          if (v135 == -1)
          {
            goto LABEL_208;
          }

          v131[31] = v135 + 1;
          v137 = *v131;
          if (v132[31] == v132[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v138 = *(v132 + 14);
          if (v138)
          {
            v139 = v132[31];
            v140 = v138 + 8 * v139;
            *v140 = 25600;
            *(v140 + 4) = v137;
            if (v139 == -1)
            {
              goto LABEL_209;
            }

            v132[31] = v139 + 1;
            goto LABEL_132;
          }

          goto LABEL_257;
        }

        if (HIDWORD(v121) >= v119)
        {
          goto LABEL_195;
        }

        if (v199)
        {
          goto LABEL_229;
        }

        if (!v118)
        {
          goto LABEL_230;
        }

        --v110;
        outlined init with copy of Event.Transaction(v118 + v121 + 8, &v202);
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v202, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
        v111 -= 48;
        if (v110 + 1 < 2)
        {
          goto LABEL_116;
        }
      }

LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if ((v24 + 1) > *(v23 + 16))
    {
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (v12)
    {
      goto LABEL_215;
    }

    if (*(v18 + 116) <= v11)
    {
      goto LABEL_182;
    }

    v27 = *(v18 + 104);
    if (!v27)
    {
      goto LABEL_216;
    }

    v28 = *v25;
    v29 = *(*(v27 + 8 * v11) + 8);
    if (v28 >= *(v29 + 44))
    {
      goto LABEL_183;
    }

    v30 = *(v29 + 32);
    if (!v30)
    {
      goto LABEL_217;
    }

    v31 = v30 + (v28 << 7);
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
    v35 = *(v31 + 28);
    v34 = *(v31 + 32);
    LOBYTE(v211[0]) = *(v31 + 24);
    v36 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v33, v32, v211[0], v34);
    if (v35 == v36 && v34 == HIDWORD(v36))
    {
      goto LABEL_32;
    }

    if (HIDWORD(v36) >= v34)
    {
      goto LABEL_184;
    }

    if (v211[0])
    {
      goto LABEL_218;
    }

    v25 -= 12;
  }

  while (v33);
  __break(1u);
LABEL_32:
  if (v191[48])
  {
    goto LABEL_237;
  }

  v38 = *v191;
  if (v38 >= *(v18 + 116))
  {
    goto LABEL_197;
  }

  v39 = *(v18 + 104);
  if (!v39)
  {
    goto LABEL_238;
  }

  v40 = *(*(v39 + 8 * v38) + 8);
  v41 = v194[1];
  v211[0] = *v194;
  v211[1] = v41;
  v212[0] = v194[2];
  *(v212 + 9) = *(v194 + 41);
  v42 = v194;
  v43 = v192;
  v44 = v195;
  v45 = v193;
  while (1)
  {
    v46 = *v45;
    if (*v44)
    {
      v47 = *v43;
      if ((v47[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v46)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v211);
    }

    v43 = (v46 + 16);
    v44 = (v46 + 28);
    v45 = (v46 + 48);
    v42 = v46;
  }

  v48 = *v42;
  if (!v48)
  {
    goto LABEL_263;
  }

  v49 = *(*(v48 + 24 * *v47) + 112);
  if (!v49)
  {
    goto LABEL_239;
  }

  if (!*(*(*(v49 + 32) + 8) + 16))
  {
    goto LABEL_198;
  }

  if (v191[48])
  {
    goto LABEL_240;
  }

  v50 = *v191;
  if (v50 >= *(v18 + 116))
  {
    goto LABEL_199;
  }

  v51 = *(v18 + 104);
  if (!v51)
  {
    goto LABEL_241;
  }

  v52 = *(*(v51 + 8 * v50) + 8);
  v53 = v194[1];
  v209[0] = *v194;
  v209[1] = v53;
  v210[0] = v194[2];
  *(v210 + 9) = *(v194 + 41);
  v54 = v194;
  v55 = v192;
  v56 = v195;
  v57 = v193;
  while (1)
  {
    v58 = *v57;
    if (*v56)
    {
      v59 = *v55;
      if ((v59[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v58)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v209);
    }

    v55 = (v58 + 16);
    v56 = (v58 + 28);
    v57 = (v58 + 48);
    v54 = v58;
  }

  v60 = *v54;
  if (v60)
  {
    v196 = v52;
    v189 = v40;
    v61 = *(*(v60 + 24 * *v59) + 112);
    if (!v61)
    {
      goto LABEL_242;
    }

    v62 = *(*(v61 + 32) + 8);
    v63 = *(v62 + 16);
    v64 = 48 * v63 - 16;
    while (v63 > 0)
    {
      if (v63 > *(v62 + 16))
      {
        goto LABEL_185;
      }

      if (*(v18 + 116) <= v50)
      {
        goto LABEL_186;
      }

      v65 = *(v18 + 104);
      if (!v65)
      {
        goto LABEL_220;
      }

      v66 = *(v62 + v64);
      v67 = *(*(v65 + 8 * v50) + 8);
      if (v66 >= *(v67 + 44))
      {
        goto LABEL_187;
      }

      v68 = *(v67 + 32);
      if (!v68)
      {
        goto LABEL_221;
      }

      v69 = v68 + (v66 << 7);
      v71 = *(v69 + 8);
      v70 = *(v69 + 16);
      v73 = *(v69 + 28);
      v72 = *(v69 + 32);
      LOBYTE(v207[0]) = *(v69 + 24);
      v74 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v71, v70, v207[0], v72);
      if (v73 == v74 && v72 == HIDWORD(v74))
      {
        goto LABEL_70;
      }

      if (HIDWORD(v74) >= v72)
      {
        goto LABEL_188;
      }

      if (v207[0])
      {
        goto LABEL_222;
      }

      v64 -= 48;
      --v63;
      if (!v71)
      {
        __break(1u);
LABEL_70:
        v76 = v194;
        v77 = v195;
        v78 = v194[1];
        v207[0] = *v194;
        v207[1] = v78;
        v208[0] = v194[2];
        *(v208 + 9) = *(v194 + 41);
        v79 = v192;
        v80 = v193;
        while (1)
        {
          v81 = *v80;
          if (*v77)
          {
            v82 = *v79;
            if ((v82[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v81)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v207);
          }

          v79 = (v81 + 16);
          v77 = (v81 + 28);
          v80 = (v81 + 48);
          v76 = v81;
        }

        v83 = *v76;
        if (!v83)
        {
          goto LABEL_265;
        }

        v84 = *(*(v83 + 24 * *v82) + 112);
        if (!v84)
        {
          goto LABEL_243;
        }

        v85 = *(*(v84 + 32) + 8);
        if (v63 > *(v85 + 16))
        {
          goto LABEL_200;
        }

        v86 = *(v85 + v64);
        if (v86 >= *(v196 + 44))
        {
          goto LABEL_201;
        }

        v87 = *(v196 + 32);
        if (!v87)
        {
          goto LABEL_244;
        }

        if (v190 >= *(v189 + 44))
        {
          goto LABEL_202;
        }

        v88 = *(v189 + 32);
        if (v88)
        {
          v89 = (v87 + (v86 << 7));
          v90 = (v88 + (v190 << 7));
          v91 = *v90;
          if (v89[31] == v89[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v92 = *(v89 + 14);
          if (!v92)
          {
            goto LABEL_246;
          }

          v93 = v89[31];
          v94 = v92 + 8 * v93;
          *v94 = -24575;
          *(v94 + 4) = v91;
          if (v93 == -1)
          {
            goto LABEL_203;
          }

          v89[31] = v93 + 1;
          v95 = *v89;
          if (v90[31] == v90[30])
          {
            specialized UnsafeArray.growToCapacity(_:)();
          }

          v96 = *(v90 + 14);
          if (v96)
          {
            v97 = v90[31];
            v98 = v96 + 8 * v97;
            *v98 = 24577;
            *(v98 + 4) = v95;
            if (v97 == -1)
            {
              goto LABEL_204;
            }

            v90[31] = v97 + 1;
            goto LABEL_92;
          }

          goto LABEL_247;
        }

        goto LABEL_245;
      }
    }

    goto LABEL_219;
  }

LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
}