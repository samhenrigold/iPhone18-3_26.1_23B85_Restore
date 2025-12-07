Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMd, &_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = (*a4 + 16 * a3);
    v5 = result - a3;
LABEL_5:
    v19 = v4;
    v20 = a3;
    v6 = *(v21 + 16 * a3 + 8);
    v18 = v5;
    while (1)
    {
      v24 = *(v4 - 1);

      AnimationResource.definition.getter();
      __swift_project_boxed_opaque_existential_1(v22, v23);
      dispatch thunk of AnimationDefinition.duration.getter();
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_0(v22);
      AnimationResource.definition.getter();
      __swift_project_boxed_opaque_existential_1(v22, v23);
      dispatch thunk of AnimationDefinition.duration.getter();
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0(v22);
      if (v8 >= v10)
      {
        if (v8 != v10)
        {

LABEL_4:
          a3 = v20 + 1;
          v4 = v19 + 2;
          v5 = v18 - 1;
          if (v20 + 1 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }

        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v22, v23);
        dispatch thunk of AnimationDefinition.delay.getter();
        v12 = v11;
        __swift_destroy_boxed_opaque_existential_0(v22);
        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v22, v23);
        dispatch thunk of AnimationDefinition.delay.getter();
        v14 = v13;
        __swift_destroy_boxed_opaque_existential_0(v22);

        if (v12 >= v14 && (v12 != v14 || v6 >= v24))
        {
          goto LABEL_4;
        }
      }

      else
      {
      }

      if (!v21)
      {
        break;
      }

      v15 = *v4;
      v6 = v4[1];
      *v4 = *(v4 - 1);
      *(v4 - 1) = v6;
      *(v4 - 2) = v15;
      v4 -= 2;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v105 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_106:
    v18 = *v105;
    if (!*v105)
    {
      goto LABEL_147;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_109:
      v119 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*v7)
        {
          v97 = *(result + 16 * v4);
          v98 = result;
          v99 = *(result + 16 * (v4 - 1) + 40);
          specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v97), (*v7 + 16 * *(result + 16 * (v4 - 1) + 32)), (*v7 + 16 * v99), v18);
          if (v6)
          {
          }

          if (v99 < v97)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = specialized _ArrayBuffer._consumeAndCreateNew()(v98);
          }

          if (v4 - 2 >= *(v98 + 2))
          {
            goto LABEL_135;
          }

          v100 = &v98[16 * v4];
          *v100 = v97;
          *(v100 + 1) = v99;
          v119 = v98;
          specialized Array.remove(at:)(v4 - 1);
          result = v119;
          v4 = *(v119 + 16);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_145;
      }
    }

LABEL_141:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_109;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      v18 = v9 + 1;
    }

    else
    {
      v103 = v10;
      v12 = *v7;
      v13 = (*v7 + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      v117[0] = v15;
      v117[1] = v14;
      v4 = v12 + 16 * v9;
      v16 = *(v4 + 8);
      v116[0] = *v4;
      v116[1] = v16;

      v17 = v6;
      v114 = closure #4 in closure #1 in TimelineBuilder.run(inputs:)(v117, v116);
      if (v6)
      {
      }

      v18 = v9 + 2;
      if (v9 + 2 < v8)
      {
        v4 += 24;
        v110 = v8;
        v112 = 2 - v8;
        while (1)
        {
          v19 = *(v4 + 16);
          v20 = *v4;

          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v117, v118);
          dispatch thunk of AnimationDefinition.duration.getter();
          v22 = v21;
          __swift_destroy_boxed_opaque_existential_0(v117);
          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v117, v118);
          dispatch thunk of AnimationDefinition.duration.getter();
          v24 = v23;
          __swift_destroy_boxed_opaque_existential_0(v117);
          if (v22 < v24)
          {
          }

          else
          {
            if (v22 != v24)
            {

LABEL_17:
              v7 = a3;
              if (v114)
              {
                v18 = v11 + 1;
                v6 = v17;
                v10 = v103;
                goto LABEL_22;
              }

              goto LABEL_10;
            }

            AnimationResource.definition.getter();
            __swift_project_boxed_opaque_existential_1(v117, v118);
            dispatch thunk of AnimationDefinition.delay.getter();
            v26 = v25;
            __swift_destroy_boxed_opaque_existential_0(v117);
            AnimationResource.definition.getter();
            __swift_project_boxed_opaque_existential_1(v117, v118);
            dispatch thunk of AnimationDefinition.delay.getter();
            v28 = v27;
            __swift_destroy_boxed_opaque_existential_0(v117);

            if (v26 >= v28 && (v26 != v28 || v19 >= v20))
            {
              goto LABEL_17;
            }
          }

          v7 = a3;
          if (!v114)
          {
            v18 = v11 + 1;
            v6 = v17;
            v10 = v103;
            goto LABEL_30;
          }

LABEL_10:
          ++v11;
          v4 += 16;
          if (v112 + v11 == 1)
          {
            v18 = v110;
            v6 = v17;
            break;
          }
        }
      }

      v10 = v103;
      if (v114)
      {
LABEL_22:
        if (v18 < v9)
        {
          goto LABEL_140;
        }

        if (v9 <= v11)
        {
          v29 = 0;
          v30 = 16 * v18;
          v31 = 16 * v9;
          v32 = v9;
          do
          {
            if (v32 != v18 + v29 - 1)
            {
              v33 = *v7;
              if (!*v7)
              {
                goto LABEL_144;
              }

              v34 = (v33 + v31);
              v35 = v33 + v30;
              v36 = *v34;
              v37 = v34[1];
              *v34 = *(v35 - 16);
              *(v35 - 16) = v36;
              *(v35 - 8) = v37;
            }

            ++v32;
            --v29;
            v30 -= 16;
            v31 += 16;
          }

          while (v32 < v18 + v29);
        }
      }
    }

LABEL_30:
    v38 = v7[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v9))
      {
        goto LABEL_137;
      }

      if (v18 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v18 < v9)
    {
      goto LABEL_136;
    }

    v51 = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v10 = v51;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1, v51);
      v10 = result;
    }

    v4 = *(v10 + 16);
    v52 = *(v10 + 24);
    v53 = v4 + 1;
    if (v4 >= v52 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v4 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v53;
    v54 = v10 + 16 * v4;
    *(v54 + 32) = v9;
    *(v54 + 40) = v18;
    v55 = *v105;
    if (!*v105)
    {
      goto LABEL_146;
    }

    v9 = v18;
    if (v4)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v10 + 32);
          v58 = *(v10 + 40);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_73:
          if (v60)
          {
            goto LABEL_125;
          }

          v73 = (v10 + 16 * v53);
          v75 = *v73;
          v74 = v73[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_128;
          }

          v79 = (v10 + 32 + 16 * v56);
          v81 = *v79;
          v80 = v79[1];
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_132;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v83 = (v10 + 16 * v53);
        v85 = *v83;
        v84 = v83[1];
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_87:
        if (v78)
        {
          goto LABEL_127;
        }

        v86 = v10 + 16 * v56;
        v88 = *(v86 + 32);
        v87 = *(v86 + 40);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_130;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_94:
        v4 = v56 - 1;
        if (v56 - 1 >= v53)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
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
          goto LABEL_139;
        }

        if (!*v7)
        {
          goto LABEL_143;
        }

        v18 = v10;
        v94 = *(v10 + 32 + 16 * v4);
        v95 = *(v10 + 32 + 16 * v56 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v94), (*v7 + 16 * *(v10 + 32 + 16 * v56)), (*v7 + 16 * v95), v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
        }

        if (v4 >= *(v18 + 16))
        {
          goto LABEL_122;
        }

        v96 = v18 + 16 * v4;
        *(v96 + 32) = v94;
        *(v96 + 40) = v95;
        v119 = v18;
        result = specialized Array.remove(at:)(v56);
        v10 = v119;
        v53 = *(v119 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = v10 + 32 + 16 * v53;
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_123;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_124;
      }

      v68 = (v10 + 16 * v53);
      v70 = *v68;
      v69 = v68[1];
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_126;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_129;
      }

      if (v72 >= v64)
      {
        v90 = (v10 + 32 + 16 * v56);
        v92 = *v90;
        v91 = v90[1];
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_133;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v8 = v7[1];
    if (v9 >= v8)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_138;
  }

  if (v9 + a4 < v38)
  {
    v38 = v9 + a4;
  }

  if (v38 < v9)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v18 == v38)
  {
    goto LABEL_53;
  }

  v104 = v10;
  v101 = v6;
  v113 = *v7;
  v4 = *v7 + 16 * v18;
  v39 = v9 - v18;
  v106 = v38;
LABEL_40:
  v109 = v4;
  v111 = v18;
  v40 = *(v113 + 16 * v18 + 8);
  v108 = v39;
  while (1)
  {
    v115 = *(v4 - 8);

    AnimationResource.definition.getter();
    __swift_project_boxed_opaque_existential_1(v117, v118);
    dispatch thunk of AnimationDefinition.duration.getter();
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_0(v117);
    AnimationResource.definition.getter();
    __swift_project_boxed_opaque_existential_1(v117, v118);
    dispatch thunk of AnimationDefinition.duration.getter();
    v44 = v43;
    __swift_destroy_boxed_opaque_existential_0(v117);
    if (v42 >= v44)
    {
      if (v42 != v44)
      {

LABEL_39:
        ++v18;
        v4 = v109 + 16;
        v39 = v108 - 1;
        if (v111 + 1 == v106)
        {
          v18 = v106;
          v6 = v101;
          v7 = a3;
          v10 = v104;
          goto LABEL_53;
        }

        goto LABEL_40;
      }

      AnimationResource.definition.getter();
      __swift_project_boxed_opaque_existential_1(v117, v118);
      dispatch thunk of AnimationDefinition.delay.getter();
      v46 = v45;
      __swift_destroy_boxed_opaque_existential_0(v117);
      AnimationResource.definition.getter();
      __swift_project_boxed_opaque_existential_1(v117, v118);
      dispatch thunk of AnimationDefinition.delay.getter();
      v48 = v47;
      __swift_destroy_boxed_opaque_existential_0(v117);

      if (v46 >= v48 && (v46 != v48 || v40 >= v115))
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    if (!v113)
    {
      break;
    }

    v49 = *v4;
    v40 = *(v4 + 8);
    *v4 = *(v4 - 16);
    *(v4 - 8) = v40;
    *(v4 - 16) = v49;
    v4 -= 16;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __dst - __src;
  v8 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v12] <= a4)
    {
      memmove(a4, __dst, 16 * v12);
    }

    v45 = &v4[16 * v12];
    if (v10 >= 16 && v6 > __src)
    {
LABEL_30:
      v38 = v6 - 16;
      v5 -= 16;
      v26 = v45;
      do
      {
        v27 = *(v26 - 1);
        v26 -= 16;
        v42 = v27;
        v28 = *(v6 - 1);

        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v43, v44);
        dispatch thunk of AnimationDefinition.duration.getter();
        v30 = v29;
        __swift_destroy_boxed_opaque_existential_0(v43);
        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v43, v44);
        dispatch thunk of AnimationDefinition.duration.getter();
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_0(v43);
        if (v30 < v32)
        {

LABEL_41:
          if (v5 + 16 != v6)
          {
            *v5 = *v38;
          }

          if (v45 <= v4 || (v6 -= 16, v38 <= __src))
          {
            v6 = v38;
            goto LABEL_49;
          }

          goto LABEL_30;
        }

        if (v30 == v32)
        {
          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v43, v44);
          dispatch thunk of AnimationDefinition.delay.getter();
          v34 = v33;
          __swift_destroy_boxed_opaque_existential_0(v43);
          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v43, v44);
          dispatch thunk of AnimationDefinition.delay.getter();
          v36 = v35;
          __swift_destroy_boxed_opaque_existential_0(v43);

          if (v34 < v36 || v34 == v36 && v42 < v28)
          {
            goto LABEL_41;
          }
        }

        else
        {
        }

        if (v5 + 16 != v45)
        {
          *v5 = *v26;
        }

        v5 -= 16;
        v45 = v26;
      }

      while (v26 > v4);
      v45 = v26;
    }
  }

  else
  {
    v13 = __src;
    if (a4 != __src || &__src[16 * v9] <= a4)
    {
      memmove(a4, __src, 16 * v9);
    }

    v45 = &v4[16 * v9];
    if (v7 >= 16 && v6 < v5)
    {
      while (1)
      {
        v14 = v5;
        v15 = v4;
        v40 = *(v4 + 1);
        v41 = *(v6 + 1);

        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v43, v44);
        dispatch thunk of AnimationDefinition.duration.getter();
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_0(v43);
        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v43, v44);
        dispatch thunk of AnimationDefinition.duration.getter();
        v19 = v18;
        __swift_destroy_boxed_opaque_existential_0(v43);
        if (v17 < v19)
        {
          break;
        }

        if (v17 == v19)
        {
          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v43, v44);
          dispatch thunk of AnimationDefinition.delay.getter();
          v21 = v20;
          __swift_destroy_boxed_opaque_existential_0(v43);
          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v43, v44);
          dispatch thunk of AnimationDefinition.delay.getter();
          v23 = v22;
          __swift_destroy_boxed_opaque_existential_0(v43);

          if (v21 < v23 || v21 == v23 && v41 < v40)
          {
            goto LABEL_18;
          }
        }

        else
        {
        }

        v24 = v4;
        v4 += 16;
        if (v13 != v15)
        {
          goto LABEL_19;
        }

LABEL_20:
        v13 += 16;
        if (v4 < v45)
        {
          v5 = v14;
          if (v6 < v14)
          {
            continue;
          }
        }

        goto LABEL_46;
      }

LABEL_18:
      v24 = v6;
      v25 = v13 == v6;
      v6 += 16;
      if (v25)
      {
        goto LABEL_20;
      }

LABEL_19:
      *v13 = *v24;
      goto LABEL_20;
    }

LABEL_46:
    v6 = v13;
  }

LABEL_49:
  if (v6 != v4 || v6 >= &v4[(v45 - v4 + (v45 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v45 - v4) / 16));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized TimelineTrackAndActionBuilder.stageSubscription.getter()
{
  v0 = closure #1 in TimelineTrackAndActionBuilder.stageSubscription.getter();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

uint64_t specialized TimelineBuilder.stageSubscription.getter()
{
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v8 = static TimelineConstants.Timeline.primType;
  v0 = static TimelineConstants.Timeline.primType;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = v8;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v5 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v4, 0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26198A640;
  *(v6 + 32) = v5;
  v8 = v3;

  specialized Sequence.forEach(_:)(v6);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v8;
}

uint64_t specialized TimelineBuilder.inputDescriptors()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198AB50;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v1 = static EntityBuilder.OutputName;
  v2 = one-time initialization token for OutputIdentifier;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static EntityBuilder.OutputIdentifier;
  v3 = *algn_27FEC8E68;
  *(inited + 32) = v1;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 80) = 112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26198AB50;
  v6 = one-time initialization token for primType;
  swift_bridgeObjectRetain_n();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static TimelineConstants.Track.primType;
  *(v5 + 32) = static TimelineConstants.Track.primType;
  v8 = one-time initialization token for primType;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = static TimelineConstants.Action.primType;
  *(v5 + 40) = static TimelineConstants.Action.primType;
  v11 = one-time initialization token for realityKitStruct;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static ToolsFoundations.Token.realityKitStruct;
  *(v5 + 48) = static ToolsFoundations.Token.realityKitStruct;
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000261994940;
  *(inited + 104) = 0xD000000000000027;
  *(inited + 112) = 0x8000000261994210;
  *(inited + 120) = v5;
  *(inited + 128) = 1;
  *(inited + 136) = 64;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x8000000261994960;
  *(inited + 160) = v4;
  *(inited + 168) = v3;
  *(inited + 176) = closure #1 in TimelineBuilder.inputDescriptors();
  *(inited + 184) = 0;
  *(inited + 192) = -127;
  v14 = v13;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(inited);
  v16 = v15;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v16;
}

double specialized TimelineBuilder.startTimeAndDuration(for:)()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  v2 = COERCE_DOUBLE(_s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5(v0));
  v4 = v3;

  if (String.count.getter() < 1)
  {
    v5 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v5 = RIOPxrTfTokenCreateWithCString();
  }

  v6 = v5;
  if (v4)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5(v5);

  return v7;
}

uint64_t specialized TimelineBuilder.handleLooping(action:for:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, float), uint64_t a4)
{
  v7 = type metadata accessor for AnimationFillMode();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AnimationRepeatMode();
  v11 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = v28 - v18;
  v20 = a3(0, v17);
  v33 = v20;
  v34 = a4;
  v28[2] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  v22 = *(*(v20 - 8) + 16);
  v28[1] = boxed_opaque_existential_1;
  v22(boxed_opaque_existential_1, a1, v20);
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() < 1)
  {
    v23 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v23 = RIOPxrTfTokenCreateWithCString();
  }

  v24 = v23;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5(v23);

  __swift_project_boxed_opaque_existential_1(v32, v33);
  type metadata accessor for AnimationResource();
  v25 = type metadata accessor for BindTarget();
  (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  (*(v11 + 104))(v14, *MEMORY[0x277CDB420], v31);
  default argument 6 of static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  v26 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  (*(v29 + 8))(v10, v30);
  (*(v11 + 8))(v14, v31);
  outlined destroy of Any?(v19, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v26;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSs12Zip2SequenceVySaySSGAGGTt0g5Tf4g_n(void *a1, void *a2)
{
  if (a2[2] >= a1[2])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = a2[2];
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, 1, &v7);
  return v7;
}

uint64_t specialized TimelineBuilder.createNotificationAction(for:inputs:)(unint64_t a1)
{
  v2 = type metadata accessor for AnimationFillMode();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnimationRepeatMode();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v57 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v55 = &v45 - v13;
  v56 = type metadata accessor for NotificationAction();
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v14);
  v54 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    goto LABEL_46;
  }

LABEL_2:
  v58 = a1;
  v16 = static ToolsFoundations.Token.targetPathAttributeName;
  if (!RIOPxrUsdPrimHasRelationship())
  {

    v59 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v59);
    return 0;
  }

  v17 = RIOPxrUsdPrimCopyRelationship();

  type metadata accessor for Relationship();
  v18 = swift_allocObject();
  v18[2] = v17;
  Relationship.targets.getter();

  outlined consume of Result<AnyAttribute, Object.Error>(v18, 0);
  if (String.count.getter() <= 0)
  {
    v19 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v19 = RIOPxrTfTokenCreateWithCString();
  }

  v21 = v19;
  v50 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(v19);
  v23 = v22;

  v49 = v23;
  if (!v23)
  {
    return 0;
  }

  v51 = v8;
  v52 = v7;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v25 = Prim.children.getter();
  v7 = v25;
  v46 = v3;
  v47 = v2;
  v45 = v6;
  v48 = v24;
  if (v25 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
LABEL_48:

      v32 = v52;
      goto LABEL_49;
    }
  }

  else
  {
    v8 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_48;
    }
  }

  a1 = 0;
  v3 = v7 & 0xC000000000000001;
  v6 = (v7 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v3)
    {
      MEMORY[0x26670F670](a1, v7);
      v26 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
LABEL_22:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (a1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_46:
        swift_once();
        goto LABEL_2;
      }

      v26 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_22;
      }
    }

    v2 = RIOPxrUsdPrimCopyTypeName();
    v27 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
    v28 = v27;
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
    v29 = static _CFObject.== infix(_:_:)();

    if (v29)
    {
      break;
    }

    ++a1;
    if (v26 == v8)
    {
      goto LABEL_48;
    }
  }

  if (String.count.getter() < 1)
  {
    v30 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v30 = RIOPxrTfTokenCreateWithCString();
  }

  v31 = v30;
  v32 = v52;
  if (!RIOPxrUsdPrimHasAttribute())
  {

    goto LABEL_49;
  }

  v33 = RIOPxrUsdPrimCopyAttribute();
  v34 = RIOPxrUsdAttributeCopyValue();
  if (!v34)
  {

LABEL_34:

    goto LABEL_49;
  }

  v35 = v34;
  v36 = RIOPxrVtValueRef.asStringArray.getter();

  if (!v36)
  {

    goto LABEL_49;
  }

  if (String.count.getter() <= 0)
  {
    v37 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v37 = RIOPxrTfTokenCreateWithCString();
  }

  v31 = v37;
  if (!RIOPxrUsdPrimHasAttribute())
  {

    goto LABEL_49;
  }

  v33 = RIOPxrUsdPrimCopyAttribute();
  v38 = RIOPxrUsdAttributeCopyValue();
  if (!v38)
  {

    goto LABEL_34;
  }

  v39 = v38;
  v40 = RIOPxrVtValueRef.asStringArray.getter();

  if (v40)
  {

    v48 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSs12Zip2SequenceVySaySSGAGGTt0g5Tf4g_n(v36, v40);
  }

  else
  {
  }

LABEL_49:
  NotificationAction.init(name:customArguments:)();
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  type metadata accessor for AnimationResource();
  v41 = type metadata accessor for BindTarget();
  (*(*(v41 - 8) + 56))(v55, 1, 1, v41);
  (*(v51 + 104))(v57, *MEMORY[0x277CDB418], v32);
  v59 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8], MEMORY[0x277CDB3F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR, MEMORY[0x277D83970]);
  v42 = v45;
  v43 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  (*(v46 + 8))(v42, v43);
  (*(v51 + 8))(v57, v52);
  outlined destroy of Any?(v55, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  (*(v53 + 8))(v54, v56);
  return v44;
}

__n128 specialized TimelineBuilder.transform(for:)()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5(v0);

  if (String.count.getter() < 1)
  {
    v2 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v2 = RIOPxrTfTokenCreateWithCString();
  }

  v3 = v2;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSo10simd_quatfa_Tt1B5(v2);

  if (String.count.getter() < 1)
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v4 = RIOPxrTfTokenCreateWithCString();
  }

  v5 = v4;
  v6 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5(v4);
  v8 = v7;
  v10 = v9;

  v11.i64[0] = v6;
  v11.i64[1] = v8;
  if (v10)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v14 = vbslq_s8(vdupq_n_s32(v12), xmmword_26198AAA0, v11);
  static simd_quatf.identity.getter();
  return v14;
}

uint64_t specialized TimelineBuilder.printDebug(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13AnimationViewVSgMd, &_s17RealityFoundation13AnimationViewVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v51 - v6);
  v8 = type metadata accessor for AnimationView();
  *&v57 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationGroupVSgMd, &_s17RealityFoundation14AnimationGroupVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v51 - v14;
  v16 = type metadata accessor for AnimationGroup();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v61 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = static os_log_type_t.debug.getter();
  if (one-time initialization token for timeline != -1)
  {
LABEL_16:
    swift_once();
  }

  v21 = static OS_os_log.timeline;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v22 = swift_allocObject();
  v53 = xmmword_2619891C0;
  *(v22 + 16) = xmmword_2619891C0;
  *(v22 + 56) = MEMORY[0x277D837D0];
  v63 = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 64) = v63;
  *(v22 + 32) = v65;
  *(v22 + 40) = a3;

  v23 = v20;
  v20 = v21;
  os_log(_:dso:log:_:_:)(v23, &dword_26187B000, v21, "Produced a Timeline for key: %s", v51);

  AnimationResource.definition.getter();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pMd, &_s17RealityFoundation19AnimationDefinition_pMR);
  v24 = swift_dynamicCast();
  v25 = *(v17 + 56);
  if (v24)
  {
    v56 = v11;
    v25(v15, 0, 1, v16);
    v51 = v17;
    v26 = *(v17 + 32);
    v52 = v16;
    v26(v61, v15, v16);
    v27 = *(AnimationGroup.group.getter() + 16);

    v60 = v27;
    if (v27)
    {
      v17 = 0;
      v11 = (v57 + 56);
      v55 = (v57 + 32);
      v54 = (v57 + 8);
      v16 = 32;
      v57 = xmmword_26198AB70;
      v59 = v21;
      v58 = v11;
      v28 = MEMORY[0x277D837D0];
      do
      {
        v32 = AnimationGroup.group.getter();
        if (v17 >= *(v32 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        v66 = v16;
        outlined init with copy of AnimationDefinition(v32 + v16, v70);

        LODWORD(v65) = static os_log_type_t.debug.getter();
        v15 = swift_allocObject();
        *(v15 + 1) = v57;
        v69[0] = v17;
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v63;
        *(v15 + 7) = v28;
        *(v15 + 8) = v34;
        *(v15 + 4) = v33;
        *(v15 + 5) = v35;
        outlined init with copy of AnimationDefinition(v70, v69);
        v36 = String.init<A>(describing:)();
        *(v15 + 12) = v28;
        *(v15 + 13) = v34;
        *(v15 + 9) = v36;
        *(v15 + 10) = v37;
        a3 = v8;
        __swift_project_boxed_opaque_existential_1(v70, v71);
        dispatch thunk of AnimationDefinition.delay.getter();
        v38 = Double.description.getter();
        *(v15 + 17) = v28;
        *(v15 + 18) = v34;
        *(v15 + 14) = v38;
        *(v15 + 15) = v39;
        __swift_project_boxed_opaque_existential_1(v70, v71);
        dispatch thunk of AnimationDefinition.duration.getter();
        v40 = Double.description.getter();
        *(v15 + 22) = v28;
        *(v15 + 23) = v34;
        *(v15 + 19) = v40;
        *(v15 + 20) = v41;
        v20 = v59;
        os_log(_:dso:log:_:_:)(v65, &dword_26187B000, v59, "Action %s: %s\tdelay: %s, duration: %s", v51, v52, v53, *(&v53 + 1));

        outlined init with copy of AnimationDefinition(v70, v69);
        v11 = v58;
        v42 = swift_dynamicCast();
        v43 = *v11;
        if (v42)
        {
          v43(v7, 0, 1, v8);
          v15 = v56;
          (*v55)(v56, v7, v8);
          AnimationView.source.getter();
          if (v68)
          {
            outlined init with take of AnimationDefinition(&v67, v69);
            v44 = static os_log_type_t.debug.getter();
            v45 = swift_allocObject();
            *(v45 + 16) = v53;
            outlined init with copy of AnimationDefinition(v69, &v67);
            v46 = String.init<A>(describing:)();
            v47 = v63;
            *(v45 + 56) = MEMORY[0x277D837D0];
            *(v45 + 64) = v47;
            *(v45 + 32) = v46;
            *(v45 + 40) = v48;
            os_log(_:dso:log:_:_:)(v44, &dword_26187B000, v20, "\tUnwrapped AnimationView to: %s", v51);

            __swift_destroy_boxed_opaque_existential_0(v69);
            (*v54)(v15, v8);
            goto LABEL_7;
          }

          (*v54)(v15, v8);
          v29 = &v67;
          v30 = &_s17RealityFoundation19AnimationDefinition_pSgMd;
          v31 = &_s17RealityFoundation19AnimationDefinition_pSgMR;
        }

        else
        {
          v43(v7, 1, 1, v8);
          v29 = v7;
          v30 = &_s17RealityFoundation13AnimationViewVSgMd;
          v31 = &_s17RealityFoundation13AnimationViewVSgMR;
        }

        outlined destroy of Any?(v29, v30, v31);
LABEL_7:
        ++v17;
        __swift_destroy_boxed_opaque_existential_0(v70);
        v16 = v66 + 40;
      }

      while (v60 != v17);
    }

    return (*(v51 + 1))(v61, v52);
  }

  else
  {
    v25(v15, 1, 1, v16);
    outlined destroy of Any?(v15, &_s17RealityFoundation14AnimationGroupVSgMd, &_s17RealityFoundation14AnimationGroupVSgMR);
    v49 = static os_log_type_t.debug.getter();
    return os_log(_:dso:log:_:_:)(v49, &dword_26187B000, v21, "AnimationResource is not an AnimationGroup, so it's not a Timeline", 66, 2, MEMORY[0x277D84F90]);
  }
}

uint64_t specialized TimelineBuilder.clear(inputs:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25AnimationLibraryComponentVSgMd, &_s17RealityFoundation25AnimationLibraryComponentVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v27 - v2;
  v4 = type metadata accessor for Entity.ComponentSet();
  v5 = *(v4 - 8);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v4, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v7);
  v12 = &v27 - v11;
  v13 = type metadata accessor for AnimationLibraryComponent();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&v33, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (!v34)
  {
    return outlined destroy of Any?(&v33, &_sypSgMd, &_sypSgMR);
  }

  type metadata accessor for EntityProxy(0);
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v32;
    v31 = Inputs.prim.getter();
    type metadata accessor for Entity();
    v30 = v19;
    static Entity.__fromCore(_:)();
    dispatch thunk of Entity.components.getter();
    Entity.ComponentSet.subscript.getter();
    v20 = *(v5 + 8);
    v20(v12, v4);
    if ((*(v14 + 48))(v3, 1, v13) == 1)
    {

      return outlined destroy of Any?(v3, &_s17RealityFoundation25AnimationLibraryComponentVSgMd, &_s17RealityFoundation25AnimationLibraryComponentVSgMR);
    }

    else
    {
      (*(v14 + 32))(v17, v3, v13);
      v21 = RIOPxrUsdObjectCopyPath();
      v29 = v20;
      v22 = v21;
      v23 = RIOPxrSdfPathCopyString();
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v25;

      v26 = AnimationLibraryComponent.animations.modify();
      MEMORY[0x26670ECE0](0, v24, v28);
      v26(&v33, 0);
      dispatch thunk of Entity.components.getter();
      Entity.ComponentSet.set<A>(_:)();

      v29(v9, v4);
      return (*(v14 + 8))(v17, v13);
    }
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of AnimationDefinition(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with copy of AnimationDefinition(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t type metadata accessor for TimelineBuilder.BindPathWrapper(uint64_t a1)
{
  result = type metadata singleton initialization cache for TimelineBuilder.BindPathWrapper;
  if (!type metadata singleton initialization cache for TimelineBuilder.BindPathWrapper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of TimelineBuilder.BindPathWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TimelineBuilder.BindPathWrapper(uint64_t a1)
{
  v2 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of TimelineBuilder.BindPathWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TimelineBuilder.Error and conformance TimelineBuilder.Error()
{
  result = lazy protocol witness table cache variable for type TimelineBuilder.Error and conformance TimelineBuilder.Error;
  if (!lazy protocol witness table cache variable for type TimelineBuilder.Error and conformance TimelineBuilder.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineBuilder.Error and conformance TimelineBuilder.Error);
  }

  return result;
}

uint64_t outlined init with copy of BindTarget.EntityPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of BindTarget.EntityPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimelineBuilder.Error(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimelineBuilder.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for TimelineBuilder.Error(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for TimelineBuilder.Error(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t type metadata completion function for TimelineBuilder.BindPathWrapper(uint64_t a1)
{
  v1 = type metadata accessor for BindTarget.EntityPath();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t SceneDescriptionFoundations.ValueTypeName.description.getter()
{
  v0 = RIOPxrSdfValueTypeNameCopyToken();
  v1 = RIOPxrTfTokenCopyString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t SceneDescriptionFoundations.ValueTypeName.token.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCopyToken();
  *a1 = result;
  return result;
}

unint64_t SceneDescriptionFoundations.ValueTypeName.debugDescription.getter()
{
  _StringGuts.grow(_:)(19);

  v0 = RIOPxrSdfValueTypeNameCopyToken();
  v1 = RIOPxrTfTokenCopyString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x26670F080](v2, v4);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t SceneDescriptionFoundations.ValueTypeName.hash(into:)(uint64_t a1)
{
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SceneDescriptionFoundations.ValueTypeName(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneDescriptionFoundations.ValueTypeName()
{
  v0 = RIOPxrSdfValueTypeNameCopyToken();
  v1 = RIOPxrTfTokenCopyString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef()
{
  result = lazy protocol witness table cache variable for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef;
  if (!lazy protocol witness table cache variable for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef)
  {
    type metadata accessor for RIOPxrSdfValueTypeNameRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName);
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SceneDescriptionFoundations.ValueTypeName(uint64_t a1)
{
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneDescriptionFoundations.ValueTypeName()
{
  Hasher.init(_seed:)();
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

void RIOPxrSdfValueTypeNameRef.type.getter()
{
  Bool = RIOPxrSdfValueTypeNameCreateBool();
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  v1 = static _CFObject.== infix(_:_:)();

  if (v1)
  {
    return;
  }

  Int32 = RIOPxrSdfValueTypeNameCreateInt32();
  v3 = static _CFObject.== infix(_:_:)();

  if (v3)
  {
    return;
  }

  Int64 = RIOPxrSdfValueTypeNameCreateInt64();
  v5 = static _CFObject.== infix(_:_:)();

  if (v5)
  {
    return;
  }

  UInt8 = RIOPxrSdfValueTypeNameCreateUInt8();
  v7 = static _CFObject.== infix(_:_:)();

  if (v7)
  {
    return;
  }

  UInt32 = RIOPxrSdfValueTypeNameCreateUInt32();
  v9 = static _CFObject.== infix(_:_:)();

  if (v9)
  {
    return;
  }

  UInt64 = RIOPxrSdfValueTypeNameCreateUInt64();
  v11 = static _CFObject.== infix(_:_:)();

  if (v11)
  {
    return;
  }

  Int2 = RIOPxrSdfValueTypeNameCreateInt2();
  v13 = static _CFObject.== infix(_:_:)();

  if (v13)
  {
    v14 = &_ss5SIMD2Vys5Int32VGMd;
    v15 = &_ss5SIMD2Vys5Int32VGMR;
LABEL_14:

    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    return;
  }

  Int3 = RIOPxrSdfValueTypeNameCreateInt3();
  v17 = static _CFObject.== infix(_:_:)();

  if (v17)
  {
    v14 = &_ss5SIMD3Vys5Int32VGMd;
    v15 = &_ss5SIMD3Vys5Int32VGMR;
    goto LABEL_14;
  }

  Int4 = RIOPxrSdfValueTypeNameCreateInt4();
  v19 = static _CFObject.== infix(_:_:)();

  if (v19)
  {
    v14 = &_ss5SIMD4Vys5Int32VGMd;
    v15 = &_ss5SIMD4Vys5Int32VGMR;
    goto LABEL_14;
  }

  Half = RIOPxrSdfValueTypeNameCreateHalf();
  v21 = static _CFObject.== infix(_:_:)();

  if (v21)
  {
    return;
  }

  Half2 = RIOPxrSdfValueTypeNameCreateHalf2();
  v23 = static _CFObject.== infix(_:_:)();

  if (v23)
  {
    v14 = &_ss5SIMD2Vy9RealityIO4HalfVGMd;
    v15 = &_ss5SIMD2Vy9RealityIO4HalfVGMR;
    goto LABEL_14;
  }

  Half3 = RIOPxrSdfValueTypeNameCreateHalf3();
  v25 = static _CFObject.== infix(_:_:)();

  if (v25)
  {
    v14 = &_ss5SIMD3Vy9RealityIO4HalfVGMd;
    v15 = &_ss5SIMD3Vy9RealityIO4HalfVGMR;
    goto LABEL_14;
  }

  Half4 = RIOPxrSdfValueTypeNameCreateHalf4();
  v27 = static _CFObject.== infix(_:_:)();

  if (v27)
  {
    v14 = &_ss5SIMD4Vy9RealityIO4HalfVGMd;
    v15 = &_ss5SIMD4Vy9RealityIO4HalfVGMR;
    goto LABEL_14;
  }

  Float = RIOPxrSdfValueTypeNameCreateFloat();
  v29 = static _CFObject.== infix(_:_:)();

  if (v29)
  {
    return;
  }

  Float2 = RIOPxrSdfValueTypeNameCreateFloat2();
  v31 = static _CFObject.== infix(_:_:)();

  if (v31)
  {
    v14 = &_ss5SIMD2VySfGMd;
    v15 = &_ss5SIMD2VySfGMR;
    goto LABEL_14;
  }

  Float3 = RIOPxrSdfValueTypeNameCreateFloat3();
  v33 = static _CFObject.== infix(_:_:)();

  if (v33)
  {
    v14 = &_ss5SIMD3VySfGMd;
    v15 = &_ss5SIMD3VySfGMR;
    goto LABEL_14;
  }

  Float4 = RIOPxrSdfValueTypeNameCreateFloat4();
  v35 = static _CFObject.== infix(_:_:)();

  if (v35)
  {
    v14 = &_ss5SIMD4VySfGMd;
    v15 = &_ss5SIMD4VySfGMR;
    goto LABEL_14;
  }

  Double = RIOPxrSdfValueTypeNameCreateDouble();
  v37 = static _CFObject.== infix(_:_:)();

  if (v37)
  {
    return;
  }

  Double2 = RIOPxrSdfValueTypeNameCreateDouble2();
  v39 = static _CFObject.== infix(_:_:)();

  if (v39)
  {
    v14 = &_ss5SIMD2VySdGMd;
    v15 = &_ss5SIMD2VySdGMR;
    goto LABEL_14;
  }

  Double3 = RIOPxrSdfValueTypeNameCreateDouble3();
  v41 = static _CFObject.== infix(_:_:)();

  if (v41)
  {
    v14 = &_ss5SIMD3VySdGMd;
    v15 = &_ss5SIMD3VySdGMR;
    goto LABEL_14;
  }

  Double4 = RIOPxrSdfValueTypeNameCreateDouble4();
  v43 = static _CFObject.== infix(_:_:)();

  if (v43)
  {
    v14 = &_ss5SIMD4VySdGMd;
    v15 = &_ss5SIMD4VySdGMR;
    goto LABEL_14;
  }

  Color3h = RIOPxrSdfValueTypeNameCreateColor3h();
  v45 = static _CFObject.== infix(_:_:)();

  if (v45)
  {
    v14 = &_s9RealityIO6Color3VyAA4HalfVGMd;
    v15 = &_s9RealityIO6Color3VyAA4HalfVGMR;
    goto LABEL_14;
  }

  Color3f = RIOPxrSdfValueTypeNameCreateColor3f();
  v47 = static _CFObject.== infix(_:_:)();

  if (v47)
  {
    v14 = &_s9RealityIO6Color3VySfGMd;
    v15 = &_s9RealityIO6Color3VySfGMR;
    goto LABEL_14;
  }

  Color3d = RIOPxrSdfValueTypeNameCreateColor3d();
  v49 = static _CFObject.== infix(_:_:)();

  if (v49)
  {
    v14 = &_s9RealityIO6Color3VySdGMd;
    v15 = &_s9RealityIO6Color3VySdGMR;
    goto LABEL_14;
  }

  Point3h = RIOPxrSdfValueTypeNameCreatePoint3h();
  v51 = static _CFObject.== infix(_:_:)();

  if (v51)
  {
    v14 = &_s9RealityIO6Point3VyAA4HalfVGMd;
    v15 = &_s9RealityIO6Point3VyAA4HalfVGMR;
    goto LABEL_14;
  }

  Point3f = RIOPxrSdfValueTypeNameCreatePoint3f();
  v53 = static _CFObject.== infix(_:_:)();

  if (v53)
  {
    v14 = &_s9RealityIO6Point3VySfGMd;
    v15 = &_s9RealityIO6Point3VySfGMR;
    goto LABEL_14;
  }

  Point3d = RIOPxrSdfValueTypeNameCreatePoint3d();
  v55 = static _CFObject.== infix(_:_:)();

  if (v55)
  {
    v14 = &_s9RealityIO6Point3VySdGMd;
    v15 = &_s9RealityIO6Point3VySdGMR;
    goto LABEL_14;
  }

  Normal3h = RIOPxrSdfValueTypeNameCreateNormal3h();
  v57 = static _CFObject.== infix(_:_:)();

  if (v57)
  {
    v14 = &_s9RealityIO7Normal3VyAA4HalfVGMd;
    v15 = &_s9RealityIO7Normal3VyAA4HalfVGMR;
    goto LABEL_14;
  }

  Normal3f = RIOPxrSdfValueTypeNameCreateNormal3f();
  v59 = static _CFObject.== infix(_:_:)();

  if (v59)
  {
    v14 = &_s9RealityIO7Normal3VySfGMd;
    v15 = &_s9RealityIO7Normal3VySfGMR;
    goto LABEL_14;
  }

  Normal3d = RIOPxrSdfValueTypeNameCreateNormal3d();
  v61 = static _CFObject.== infix(_:_:)();

  if (v61)
  {
    v14 = &_s9RealityIO7Normal3VySdGMd;
    v15 = &_s9RealityIO7Normal3VySdGMR;
    goto LABEL_14;
  }

  Vector3h = RIOPxrSdfValueTypeNameCreateVector3h();
  v63 = static _CFObject.== infix(_:_:)();

  if (v63)
  {
    v14 = &_s9RealityIO7Vector3VyAA4HalfVGMd;
    v15 = &_s9RealityIO7Vector3VyAA4HalfVGMR;
    goto LABEL_14;
  }

  Vector3f = RIOPxrSdfValueTypeNameCreateVector3f();
  v65 = static _CFObject.== infix(_:_:)();

  if (v65)
  {
    v14 = &_s9RealityIO7Vector3VySfGMd;
    v15 = &_s9RealityIO7Vector3VySfGMR;
    goto LABEL_14;
  }

  Vector3d = RIOPxrSdfValueTypeNameCreateVector3d();
  v67 = static _CFObject.== infix(_:_:)();

  if (v67)
  {
    v14 = &_s9RealityIO7Vector3VySdGMd;
    v15 = &_s9RealityIO7Vector3VySdGMR;
    goto LABEL_14;
  }

  Color4h = RIOPxrSdfValueTypeNameCreateColor4h();
  v69 = static _CFObject.== infix(_:_:)();

  if (v69)
  {
    v14 = &_s9RealityIO6Color4VyAA4HalfVGMd;
    v15 = &_s9RealityIO6Color4VyAA4HalfVGMR;
    goto LABEL_14;
  }

  Color4f = RIOPxrSdfValueTypeNameCreateColor4f();
  v71 = static _CFObject.== infix(_:_:)();

  if (v71)
  {
    v14 = &_s9RealityIO6Color4VySfGMd;
    v15 = &_s9RealityIO6Color4VySfGMR;
    goto LABEL_14;
  }

  Color4d = RIOPxrSdfValueTypeNameCreateColor4d();
  v73 = static _CFObject.== infix(_:_:)();

  if (v73)
  {
    v14 = &_s9RealityIO6Color4VySdGMd;
    v15 = &_s9RealityIO6Color4VySdGMR;
    goto LABEL_14;
  }

  Quath = RIOPxrSdfValueTypeNameCreateQuath();
  v75 = static _CFObject.== infix(_:_:)();

  if (v75 & 1) != 0 || (Quatf = RIOPxrSdfValueTypeNameCreateQuatf(), v77 = static _CFObject.== infix(_:_:)(), Quatf, (v77))
  {
    type metadata accessor for simd_quatf(0);
    return;
  }

  Quatd = RIOPxrSdfValueTypeNameCreateQuatd();
  v79 = static _CFObject.== infix(_:_:)();

  if (v79)
  {
    type metadata accessor for simd_quatd(0);
    return;
  }

  Matrix2d = RIOPxrSdfValueTypeNameCreateMatrix2d();
  v81 = static _CFObject.== infix(_:_:)();

  if (v81)
  {
    type metadata accessor for simd_double2x2(0);
    return;
  }

  Matrix3d = RIOPxrSdfValueTypeNameCreateMatrix3d();
  v83 = static _CFObject.== infix(_:_:)();

  if (v83)
  {
    type metadata accessor for simd_double3x3(0);
    return;
  }

  Matrix4d = RIOPxrSdfValueTypeNameCreateMatrix4d();
  v85 = static _CFObject.== infix(_:_:)();

  if (v85)
  {
    type metadata accessor for simd_double4x4(0);
    return;
  }

  Frame4d = RIOPxrSdfValueTypeNameCreateFrame4d();
  v87 = static _CFObject.== infix(_:_:)();

  if ((v87 & 1) == 0)
  {
    String = RIOPxrSdfValueTypeNameCreateString();
    v89 = static _CFObject.== infix(_:_:)();

    if ((v89 & 1) == 0)
    {
      TexCoord2h = RIOPxrSdfValueTypeNameCreateTexCoord2h();
      v91 = static _CFObject.== infix(_:_:)();

      if (v91)
      {
        v14 = &_s9RealityIO9TexCoord2VyAA4HalfVGMd;
        v15 = &_s9RealityIO9TexCoord2VyAA4HalfVGMR;
      }

      else
      {
        TexCoord2f = RIOPxrSdfValueTypeNameCreateTexCoord2f();
        v93 = static _CFObject.== infix(_:_:)();

        if (v93)
        {
          v14 = &_s9RealityIO9TexCoord2VySfGMd;
          v15 = &_s9RealityIO9TexCoord2VySfGMR;
        }

        else
        {
          TexCoord2d = RIOPxrSdfValueTypeNameCreateTexCoord2d();
          v95 = static _CFObject.== infix(_:_:)();

          if (v95)
          {
            v14 = &_s9RealityIO9TexCoord2VySdGMd;
            v15 = &_s9RealityIO9TexCoord2VySdGMR;
          }

          else
          {
            TexCoord3h = RIOPxrSdfValueTypeNameCreateTexCoord3h();
            v97 = static _CFObject.== infix(_:_:)();

            if (v97)
            {
              v14 = &_s9RealityIO9TexCoord3VyAA4HalfVGMd;
              v15 = &_s9RealityIO9TexCoord3VyAA4HalfVGMR;
            }

            else
            {
              TexCoord3f = RIOPxrSdfValueTypeNameCreateTexCoord3f();
              v99 = static _CFObject.== infix(_:_:)();

              if (v99)
              {
                v14 = &_s9RealityIO9TexCoord3VySfGMd;
                v15 = &_s9RealityIO9TexCoord3VySfGMR;
              }

              else
              {
                TexCoord3d = RIOPxrSdfValueTypeNameCreateTexCoord3d();
                v101 = static _CFObject.== infix(_:_:)();

                if (v101)
                {
                  v14 = &_s9RealityIO9TexCoord3VySdGMd;
                  v15 = &_s9RealityIO9TexCoord3VySdGMR;
                }

                else
                {
                  AssetPath = RIOPxrSdfValueTypeNameCreateAssetPath();
                  v103 = static _CFObject.== infix(_:_:)();

                  if (v103)
                  {
                    return;
                  }

                  Token = RIOPxrSdfValueTypeNameCreateToken();
                  v105 = static _CFObject.== infix(_:_:)();

                  if (v105)
                  {
                    return;
                  }

                  BoolArray = RIOPxrSdfValueTypeNameCreateBoolArray();
                  v107 = static _CFObject.== infix(_:_:)();

                  if (v107)
                  {
                    v14 = &_sSaySbGMd;
                    v15 = &_sSaySbGMR;
                  }

                  else
                  {
                    Int32Array = RIOPxrSdfValueTypeNameCreateInt32Array();
                    v109 = static _CFObject.== infix(_:_:)();

                    if (v109)
                    {
                      v14 = &_sSays5Int32VGMd;
                      v15 = &_sSays5Int32VGMR;
                    }

                    else
                    {
                      UInt8Array = RIOPxrSdfValueTypeNameCreateUInt8Array();
                      v111 = static _CFObject.== infix(_:_:)();

                      if (v111)
                      {
                        v14 = &_sSays5UInt8VGMd;
                        v15 = &_sSays5UInt8VGMR;
                      }

                      else
                      {
                        UInt32Array = RIOPxrSdfValueTypeNameCreateUInt32Array();
                        v113 = static _CFObject.== infix(_:_:)();

                        if (v113)
                        {
                          v14 = &_sSays6UInt32VGMd;
                          v15 = &_sSays6UInt32VGMR;
                        }

                        else
                        {
                          Int64Array = RIOPxrSdfValueTypeNameCreateInt64Array();
                          v115 = static _CFObject.== infix(_:_:)();

                          if (v115)
                          {
                            v14 = &_sSays5Int64VGMd;
                            v15 = &_sSays5Int64VGMR;
                          }

                          else
                          {
                            UInt64Array = RIOPxrSdfValueTypeNameCreateUInt64Array();
                            v117 = static _CFObject.== infix(_:_:)();

                            if (v117)
                            {
                              v14 = &_sSays6UInt64VGMd;
                              v15 = &_sSays6UInt64VGMR;
                            }

                            else
                            {
                              Int2Array = RIOPxrSdfValueTypeNameCreateInt2Array();
                              v119 = static _CFObject.== infix(_:_:)();

                              if (v119)
                              {
                                v14 = &_sSays5SIMD2Vys5Int32VGGMd;
                                v15 = &_sSays5SIMD2Vys5Int32VGGMR;
                              }

                              else
                              {
                                Int3Array = RIOPxrSdfValueTypeNameCreateInt3Array();
                                v121 = static _CFObject.== infix(_:_:)();

                                if (v121)
                                {
                                  v14 = &_sSays5SIMD3Vys5Int32VGGMd;
                                  v15 = &_sSays5SIMD3Vys5Int32VGGMR;
                                }

                                else
                                {
                                  Int4Array = RIOPxrSdfValueTypeNameCreateInt4Array();
                                  v123 = static _CFObject.== infix(_:_:)();

                                  if (v123)
                                  {
                                    v14 = &_sSays5SIMD4Vys5Int32VGGMd;
                                    v15 = &_sSays5SIMD4Vys5Int32VGGMR;
                                  }

                                  else
                                  {
                                    HalfArray = RIOPxrSdfValueTypeNameCreateHalfArray();
                                    v125 = static _CFObject.== infix(_:_:)();

                                    if (v125)
                                    {
                                      v14 = &_sSay9RealityIO4HalfVGMd;
                                      v15 = &_sSay9RealityIO4HalfVGMR;
                                    }

                                    else
                                    {
                                      Half2Array = RIOPxrSdfValueTypeNameCreateHalf2Array();
                                      v127 = static _CFObject.== infix(_:_:)();

                                      if (v127)
                                      {
                                        v14 = &_sSays5SIMD2Vy9RealityIO4HalfVGGMd;
                                        v15 = &_sSays5SIMD2Vy9RealityIO4HalfVGGMR;
                                      }

                                      else
                                      {
                                        Half3Array = RIOPxrSdfValueTypeNameCreateHalf3Array();
                                        v129 = static _CFObject.== infix(_:_:)();

                                        if (v129)
                                        {
                                          v14 = &_sSays5SIMD3Vy9RealityIO4HalfVGGMd;
                                          v15 = &_sSays5SIMD3Vy9RealityIO4HalfVGGMR;
                                        }

                                        else
                                        {
                                          Half4Array = RIOPxrSdfValueTypeNameCreateHalf4Array();
                                          v131 = static _CFObject.== infix(_:_:)();

                                          if (v131)
                                          {
                                            v14 = &_sSays5SIMD4Vy9RealityIO4HalfVGGMd;
                                            v15 = &_sSays5SIMD4Vy9RealityIO4HalfVGGMR;
                                          }

                                          else
                                          {
                                            FloatArray = RIOPxrSdfValueTypeNameCreateFloatArray();
                                            v133 = static _CFObject.== infix(_:_:)();

                                            if (v133)
                                            {
                                              v14 = &_sSaySfGMd;
                                              v15 = &_sSaySfGMR;
                                            }

                                            else
                                            {
                                              Float2Array = RIOPxrSdfValueTypeNameCreateFloat2Array();
                                              v135 = static _CFObject.== infix(_:_:)();

                                              if (v135)
                                              {
                                                v14 = &_sSays5SIMD2VySfGGMd;
                                                v15 = &_sSays5SIMD2VySfGGMR;
                                              }

                                              else
                                              {
                                                Float3Array = RIOPxrSdfValueTypeNameCreateFloat3Array();
                                                v137 = static _CFObject.== infix(_:_:)();

                                                if (v137)
                                                {
                                                  v14 = &_sSays5SIMD3VySfGGMd;
                                                  v15 = &_sSays5SIMD3VySfGGMR;
                                                }

                                                else
                                                {
                                                  Float4Array = RIOPxrSdfValueTypeNameCreateFloat4Array();
                                                  v139 = static _CFObject.== infix(_:_:)();

                                                  if (v139)
                                                  {
                                                    v14 = &_sSays5SIMD4VySfGGMd;
                                                    v15 = &_sSays5SIMD4VySfGGMR;
                                                  }

                                                  else
                                                  {
                                                    DoubleArray = RIOPxrSdfValueTypeNameCreateDoubleArray();
                                                    v141 = static _CFObject.== infix(_:_:)();

                                                    if (v141)
                                                    {
                                                      v14 = &_sSaySdGMd;
                                                      v15 = &_sSaySdGMR;
                                                    }

                                                    else
                                                    {
                                                      Double2Array = RIOPxrSdfValueTypeNameCreateDouble2Array();
                                                      v143 = static _CFObject.== infix(_:_:)();

                                                      if (v143)
                                                      {
                                                        v14 = &_sSays5SIMD2VySdGGMd;
                                                        v15 = &_sSays5SIMD2VySdGGMR;
                                                      }

                                                      else
                                                      {
                                                        Double3Array = RIOPxrSdfValueTypeNameCreateDouble3Array();
                                                        v145 = static _CFObject.== infix(_:_:)();

                                                        if (v145)
                                                        {
                                                          v14 = &_sSays5SIMD3VySdGGMd;
                                                          v15 = &_sSays5SIMD3VySdGGMR;
                                                        }

                                                        else
                                                        {
                                                          Double4Array = RIOPxrSdfValueTypeNameCreateDouble4Array();
                                                          v147 = static _CFObject.== infix(_:_:)();

                                                          if (v147)
                                                          {
                                                            v14 = &_sSays5SIMD4VySdGGMd;
                                                            v15 = &_sSays5SIMD4VySdGGMR;
                                                          }

                                                          else
                                                          {
                                                            Vector3hArray = RIOPxrSdfValueTypeNameCreateVector3hArray();
                                                            v149 = static _CFObject.== infix(_:_:)();

                                                            if (v149)
                                                            {
                                                              v14 = &_sSay9RealityIO7Vector3VyAA4HalfVGGMd;
                                                              v15 = &_sSay9RealityIO7Vector3VyAA4HalfVGGMR;
                                                            }

                                                            else
                                                            {
                                                              Vector3fArray = RIOPxrSdfValueTypeNameCreateVector3fArray();
                                                              v151 = static _CFObject.== infix(_:_:)();

                                                              if (v151)
                                                              {
                                                                v14 = &_sSay9RealityIO7Vector3VySfGGMd;
                                                                v15 = &_sSay9RealityIO7Vector3VySfGGMR;
                                                              }

                                                              else
                                                              {
                                                                Vector3dArray = RIOPxrSdfValueTypeNameCreateVector3dArray();
                                                                v153 = static _CFObject.== infix(_:_:)();

                                                                if (v153)
                                                                {
                                                                  v14 = &_sSay9RealityIO7Vector3VySdGGMd;
                                                                  v15 = &_sSay9RealityIO7Vector3VySdGGMR;
                                                                }

                                                                else
                                                                {
                                                                  TexCoord2hArray = RIOPxrSdfValueTypeNameCreateTexCoord2hArray();
                                                                  v155 = static _CFObject.== infix(_:_:)();

                                                                  if (v155)
                                                                  {
                                                                    v14 = &_sSay9RealityIO9TexCoord2VyAA4HalfVGGMd;
                                                                    v15 = &_sSay9RealityIO9TexCoord2VyAA4HalfVGGMR;
                                                                  }

                                                                  else
                                                                  {
                                                                    TexCoord2fArray = RIOPxrSdfValueTypeNameCreateTexCoord2fArray();
                                                                    v157 = static _CFObject.== infix(_:_:)();

                                                                    if (v157)
                                                                    {
                                                                      v14 = &_sSay9RealityIO9TexCoord2VySfGGMd;
                                                                      v15 = &_sSay9RealityIO9TexCoord2VySfGGMR;
                                                                    }

                                                                    else
                                                                    {
                                                                      TexCoord2dArray = RIOPxrSdfValueTypeNameCreateTexCoord2dArray();
                                                                      v159 = static _CFObject.== infix(_:_:)();

                                                                      if (v159)
                                                                      {
                                                                        v14 = &_sSay9RealityIO9TexCoord2VySdGGMd;
                                                                        v15 = &_sSay9RealityIO9TexCoord2VySdGGMR;
                                                                      }

                                                                      else
                                                                      {
                                                                        TexCoord3hArray = RIOPxrSdfValueTypeNameCreateTexCoord3hArray();
                                                                        v161 = static _CFObject.== infix(_:_:)();

                                                                        if (v161)
                                                                        {
                                                                          v14 = &_sSay9RealityIO9TexCoord3VyAA4HalfVGGMd;
                                                                          v15 = &_sSay9RealityIO9TexCoord3VyAA4HalfVGGMR;
                                                                        }

                                                                        else
                                                                        {
                                                                          TexCoord3fArray = RIOPxrSdfValueTypeNameCreateTexCoord3fArray();
                                                                          v163 = static _CFObject.== infix(_:_:)();

                                                                          if (v163)
                                                                          {
                                                                            v14 = &_sSay9RealityIO9TexCoord3VySfGGMd;
                                                                            v15 = &_sSay9RealityIO9TexCoord3VySfGGMR;
                                                                          }

                                                                          else
                                                                          {
                                                                            TexCoord3dArray = RIOPxrSdfValueTypeNameCreateTexCoord3dArray();
                                                                            v165 = static _CFObject.== infix(_:_:)();

                                                                            if (v165)
                                                                            {
                                                                              v14 = &_sSay9RealityIO9TexCoord3VySdGGMd;
                                                                              v15 = &_sSay9RealityIO9TexCoord3VySdGGMR;
                                                                            }

                                                                            else
                                                                            {
                                                                              Normal3hArray = RIOPxrSdfValueTypeNameCreateNormal3hArray();
                                                                              v167 = static _CFObject.== infix(_:_:)();

                                                                              if (v167)
                                                                              {
                                                                                v14 = &_sSay9RealityIO7Normal3VyAA4HalfVGGMd;
                                                                                v15 = &_sSay9RealityIO7Normal3VyAA4HalfVGGMR;
                                                                              }

                                                                              else
                                                                              {
                                                                                Normal3fArray = RIOPxrSdfValueTypeNameCreateNormal3fArray();
                                                                                v169 = static _CFObject.== infix(_:_:)();

                                                                                if (v169)
                                                                                {
                                                                                  v14 = &_sSay9RealityIO7Normal3VySfGGMd;
                                                                                  v15 = &_sSay9RealityIO7Normal3VySfGGMR;
                                                                                }

                                                                                else
                                                                                {
                                                                                  Normal3dArray = RIOPxrSdfValueTypeNameCreateNormal3dArray();
                                                                                  v171 = static _CFObject.== infix(_:_:)();

                                                                                  if (v171)
                                                                                  {
                                                                                    v14 = &_sSay9RealityIO7Normal3VySdGGMd;
                                                                                    v15 = &_sSay9RealityIO7Normal3VySdGGMR;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    Point3hArray = RIOPxrSdfValueTypeNameCreatePoint3hArray();
                                                                                    v173 = static _CFObject.== infix(_:_:)();

                                                                                    if (v173)
                                                                                    {
                                                                                      v14 = &_sSay9RealityIO6Point3VyAA4HalfVGGMd;
                                                                                      v15 = &_sSay9RealityIO6Point3VyAA4HalfVGGMR;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      Point3fArray = RIOPxrSdfValueTypeNameCreatePoint3fArray();
                                                                                      v175 = static _CFObject.== infix(_:_:)();

                                                                                      if (v175)
                                                                                      {
                                                                                        v14 = &_sSay9RealityIO6Point3VySfGGMd;
                                                                                        v15 = &_sSay9RealityIO6Point3VySfGGMR;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        Point3dArray = RIOPxrSdfValueTypeNameCreatePoint3dArray();
                                                                                        v177 = static _CFObject.== infix(_:_:)();

                                                                                        if (v177)
                                                                                        {
                                                                                          v14 = &_sSay9RealityIO6Point3VySdGGMd;
                                                                                          v15 = &_sSay9RealityIO6Point3VySdGGMR;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          Color3hArray = RIOPxrSdfValueTypeNameCreateColor3hArray();
                                                                                          v179 = static _CFObject.== infix(_:_:)();

                                                                                          if (v179)
                                                                                          {
                                                                                            v14 = &_sSay9RealityIO6Color3VyAA4HalfVGGMd;
                                                                                            v15 = &_sSay9RealityIO6Color3VyAA4HalfVGGMR;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            Color3fArray = RIOPxrSdfValueTypeNameCreateColor3fArray();
                                                                                            v181 = static _CFObject.== infix(_:_:)();

                                                                                            if (v181)
                                                                                            {
                                                                                              v14 = &_sSay9RealityIO6Color3VySfGGMd;
                                                                                              v15 = &_sSay9RealityIO6Color3VySfGGMR;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              Color3dArray = RIOPxrSdfValueTypeNameCreateColor3dArray();
                                                                                              v183 = static _CFObject.== infix(_:_:)();

                                                                                              if (v183)
                                                                                              {
                                                                                                v14 = &_sSay9RealityIO6Color3VySdGGMd;
                                                                                                v15 = &_sSay9RealityIO6Color3VySdGGMR;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                Color4hArray = RIOPxrSdfValueTypeNameCreateColor4hArray();
                                                                                                v185 = static _CFObject.== infix(_:_:)();

                                                                                                if (v185)
                                                                                                {
                                                                                                  v14 = &_sSay9RealityIO6Color4VyAA4HalfVGGMd;
                                                                                                  v15 = &_sSay9RealityIO6Color4VyAA4HalfVGGMR;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  Color4fArray = RIOPxrSdfValueTypeNameCreateColor4fArray();
                                                                                                  v187 = static _CFObject.== infix(_:_:)();

                                                                                                  if (v187)
                                                                                                  {
                                                                                                    v14 = &_sSay9RealityIO6Color4VySfGGMd;
                                                                                                    v15 = &_sSay9RealityIO6Color4VySfGGMR;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    Color4dArray = RIOPxrSdfValueTypeNameCreateColor4dArray();
                                                                                                    v189 = static _CFObject.== infix(_:_:)();

                                                                                                    if (v189)
                                                                                                    {
                                                                                                      v14 = &_sSay9RealityIO6Color4VySdGGMd;
                                                                                                      v15 = &_sSay9RealityIO6Color4VySdGGMR;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      QuathArray = RIOPxrSdfValueTypeNameCreateQuathArray();
                                                                                                      v191 = static _CFObject.== infix(_:_:)();

                                                                                                      if (v191 & 1) != 0 || (QuatfArray = RIOPxrSdfValueTypeNameCreateQuatfArray(), v193 = static _CFObject.== infix(_:_:)(), QuatfArray, (v193))
                                                                                                      {
                                                                                                        v14 = &_sSaySo10simd_quatfaGMd;
                                                                                                        v15 = &_sSaySo10simd_quatfaGMR;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        QuatdArray = RIOPxrSdfValueTypeNameCreateQuatdArray();
                                                                                                        v195 = static _CFObject.== infix(_:_:)();

                                                                                                        if (v195)
                                                                                                        {
                                                                                                          v14 = &_sSaySo10simd_quatdaGMd;
                                                                                                          v15 = &_sSaySo10simd_quatdaGMR;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          Matrix2dArray = RIOPxrSdfValueTypeNameCreateMatrix2dArray();
                                                                                                          v197 = static _CFObject.== infix(_:_:)();

                                                                                                          if (v197)
                                                                                                          {
                                                                                                            v14 = &_sSaySo14simd_double2x2aGMd;
                                                                                                            v15 = &_sSaySo14simd_double2x2aGMR;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            Matrix3dArray = RIOPxrSdfValueTypeNameCreateMatrix3dArray();
                                                                                                            v199 = static _CFObject.== infix(_:_:)();

                                                                                                            if (v199)
                                                                                                            {
                                                                                                              v14 = &_sSaySo14simd_double3x3aGMd;
                                                                                                              v15 = &_sSaySo14simd_double3x3aGMR;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              Matrix4dArray = RIOPxrSdfValueTypeNameCreateMatrix4dArray();
                                                                                                              v201 = static _CFObject.== infix(_:_:)();

                                                                                                              if (v201)
                                                                                                              {
                                                                                                                v14 = &_sSaySo14simd_double4x4aGMd;
                                                                                                                v15 = &_sSaySo14simd_double4x4aGMR;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                Frame4dArray = RIOPxrSdfValueTypeNameCreateFrame4dArray();
                                                                                                                v203 = static _CFObject.== infix(_:_:)();

                                                                                                                if (v203)
                                                                                                                {
                                                                                                                  v14 = &_sSay9RealityIO7Frame4DVGMd;
                                                                                                                  v15 = &_sSay9RealityIO7Frame4DVGMR;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  StringArray = RIOPxrSdfValueTypeNameCreateStringArray();
                                                                                                                  v205 = static _CFObject.== infix(_:_:)();

                                                                                                                  if (v205)
                                                                                                                  {
                                                                                                                    v14 = &_sSaySSGMd;
                                                                                                                    v15 = &_sSaySSGMR;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    TokenArray = RIOPxrSdfValueTypeNameCreateTokenArray();
                                                                                                                    v207 = static _CFObject.== infix(_:_:)();

                                                                                                                    if (v207)
                                                                                                                    {
                                                                                                                      v14 = &_sSay9RealityIO16ToolsFoundationsO5TokenVGMd;
                                                                                                                      v15 = &_sSay9RealityIO16ToolsFoundationsO5TokenVGMR;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      AssetPathArray = RIOPxrSdfValueTypeNameCreateAssetPathArray();
                                                                                                                      v209 = static _CFObject.== infix(_:_:)();

                                                                                                                      if ((v209 & 1) == 0)
                                                                                                                      {
                                                                                                                        return;
                                                                                                                      }

                                                                                                                      v14 = &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMd;
                                                                                                                      v15 = &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMR;
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_14;
    }
  }
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Bool.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBool();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt32();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int64.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt32();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt8.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt64.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int2.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt2();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int3.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt3();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int4.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt4();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half2.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half3.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half4.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float2.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float3.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float4.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double2.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double3.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double4.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Quath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuath();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Quatf.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatf();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Quatd.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatd();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix2d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix2d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix4d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix4d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Frame4d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.String.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateString();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Token.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateToken();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.AssetPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPath();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.BoolArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBoolArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int32Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt32Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int64Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt32Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt32Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt8Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt64Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int2Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt2Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int3Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt3Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int4Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt4Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.HalfArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalfArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half2Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half3Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half4Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.FloatArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloatArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float2Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float3Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float4Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.DoubleArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDoubleArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double2Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double3Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double4Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.QuathArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuathArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.QuatfArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatfArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.QuatdArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatdArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix2dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix2dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix4dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix4dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Frame4dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.StringArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateStringArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TokenArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTokenArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.AssetPathArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPathArray();
  *a1 = result;
  return result;
}

uint64_t specialized closure #3 in TriggerBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v12 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v12);
  if (!v2)
  {
    return MEMORY[0x277D84FA0];
  }

  v5 = v2;
  v6 = v3;
  v7 = v4;
  if (one-time initialization token for actionTypesUsingAffectedObjects != -1)
  {
    swift_once();
  }

  v8 = static TriggerBuilder.actionTypesUsingAffectedObjects;

  v9 = specialized Set.contains(_:)(v6, v7, v8);

  if (v9)
  {
    v10 = closure #1 in ActionBuilder.inputDescriptors()(0x6465746365666661, 0xEF737463656A624FLL, v5);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t specialized closure #4 in TriggerBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v9 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v9);
  if (v2)
  {
    v5 = v2;
    if (v3 == 0x6564696C6C6F43 && v4 == 0xE700000000000000)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        v6 = MEMORY[0x277D84FA0];
        goto LABEL_9;
      }
    }

    v6 = closure #1 in ActionBuilder.inputDescriptors()(0x726564696C6C6F63, 0xE900000000000073, v5);
LABEL_9:

    return v6;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized closure #5 in TriggerBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v9 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v9);
  if (v2)
  {
    v5 = v2;
    if (v3 == 0x7574736547706154 && v4 == 0xEA00000000006572)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        v6 = MEMORY[0x277D84FA0];
        goto LABEL_9;
      }
    }

    v6 = closure #1 in ActionBuilder.inputDescriptors()(0x6465746365666661, 0xEF737463656A624FLL, v5);
LABEL_9:

    return v6;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t TriggerBuilder.run(inputs:)(uint64_t a1)
{
  v2 = v1;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v18);
  v5 = v18;
  v6 = RIOPxrTfTokenCopyString();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (one-time initialization token for triggerTypeToTriggerSpecificationsGenerator != -1)
  {
    swift_once();
  }

  v10 = static TriggerBuilder.triggerTypeToTriggerSpecificationsGenerator;
  if (*(static TriggerBuilder.triggerTypeToTriggerSpecificationsGenerator + 2))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
    v13 = v12;

    if (v13)
    {
      v14 = *(v10[7] + 16 * v11);
      *&v18 = a1;

      v14(v17, &v18);

      v15 = *&v17[0];
      swift_beginAccess();
      v16 = objc_getAssociatedObject(v2, &static BuilderAssociatedKeys.OutputsReference);
      result = swift_endAccess();
      if (v16)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined init with take of Any(v17, &v18);
        type metadata accessor for Outputs();
        swift_dynamicCast();
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
        *&v18 = v15;
        Outputs.subscript.setter(&v18, 0x7372656767697254, 0xE800000000000000);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else
  {
  }

  return specialized TriggerBuilder.clear(inputs:)();
}

uint64_t one-time initialization function for triggerTypeToTriggerSpecificationsGenerator()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say10RealityKit30__RKEntityTriggerSpecificationOG0C2IO6InputsCcTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for triggerTypeToTriggerSpecificationsGenerator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yyctMd, &_sSS_yyctMR);
  result = swift_arrayDestroy();
  static TriggerBuilder.triggerTypeToTriggerSpecificationsGenerator = v0;
  return result;
}

Swift::Int protocol witness for Builder.outputDescriptors() in conformance TriggerBuilder()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance TriggerBuilder);
  outlined destroy of OutputDescriptor(&unk_2874107E0);
  return v0;
}

uint64_t specialized TriggerBuilder.stageSubscription.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v20[0] = v0;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v20[0] = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = v20[0];
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v5 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v4, 0);

  if (String.count.getter() < 1)
  {
    v6 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v6 = RIOPxrTfTokenCreateWithCString();
  }

  v7 = v6;
  type metadata accessor for NamedPropertyDirtyState();
  v8 = swift_allocObject();
  v8[4] = v7;
  v9 = v7;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v8[2] = v3;
  v8[3] = v11;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_26198A640;
  *(v12 + 32) = v8;
  v20[0] = v3;

  specialized Sequence.forEach(_:)(v12);

  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = v20[0];
  type metadata accessor for PrimDirtyState();
  swift_allocObject();
  v14 = PrimDirtyState.init(primMetadataContainsAnyOf:propertiesContainAnyOf:core:)(v3, v13, 0);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_26198A640;
  *(v15 + 32) = v14;
  v20[0] = v3;

  specialized Sequence.forEach(_:)(v15);

  swift_setDeallocating();
  swift_arrayDestroy();
  v16 = v20[0];
  swift_allocObject();
  v17 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v16, 0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_26198A9D0;
  *(v18 + 32) = v5;
  *(v18 + 40) = v17;
  v20[0] = v3;

  specialized Sequence.forEach(_:)(v18);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v20[0];
}

uint64_t specialized TriggerBuilder.inputDescriptors()()
{
  v7 = MEMORY[0x277D84FA0];
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v0 = static EntityBuilder.OutputName;
  v1 = one-time initialization token for OutputIdentifier;

  if (v1 != -1)
  {
    swift_once();
  }

  v3 = static EntityBuilder.OutputIdentifier;
  v2 = *algn_27FEC8E68;
  v20 = v0;
  v21 = static EntityBuilder.OutputIdentifier;
  v22 = *algn_27FEC8E68;
  v23 = specialized closure #3 in TriggerBuilder.inputDescriptors();
  v24 = 0;
  v25 = -127;
  swift_bridgeObjectRetain_n();
  specialized Set._Variant.insert(_:)(&v14, &v20);
  outlined consume of InputDescriptor(v14, *(&v14 + 1), v15, v16, v17, v18, v19);
  v14 = xmmword_26198AF90;
  v15 = v3;
  v16 = v2;
  v17 = specialized closure #4 in TriggerBuilder.inputDescriptors();
  v18 = 0;
  v19 = -127;
  specialized Set._Variant.insert(_:)(&v8, &v14);
  outlined consume of InputDescriptor(v8, *(&v8 + 1), v9, v10, v11, v12, v13);
  *&v8 = 0xD00000000000001ALL;
  *(&v8 + 1) = 0x8000000261994F30;
  v9 = 0xD00000000000001ALL;
  v10 = 0x8000000261994F30;
  v11 = specialized closure #5 in TriggerBuilder.inputDescriptors();
  v12 = 0;
  v13 = -127;
  specialized Set._Variant.insert(_:)(v5, &v8);
  outlined consume of InputDescriptor(v5[0], v5[1], v5[2], v5[3], v5[4], v5[5], v6);
  return v7;
}

uint64_t specialized TriggerBuilder.clear(inputs:)()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v3, v4);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    memset(v4, 0, sizeof(v4));
    Outputs.subscript.setter(v4, 0x7372656767697254, 0xE800000000000000);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AttributeMetadata.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AttributeMetadata.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static AttributeMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int AttributeMetadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributeMetadata<A>()
{
  Hasher.init(_seed:)();
  AttributeMetadata.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t RelationshipMetadata.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static RelationshipMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int RelationshipMetadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RelationshipMetadata(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RelationshipMetadata()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RelationshipMetadata()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type RelationshipMetadata and conformance RelationshipMetadata()
{
  result = lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata;
  if (!lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata;
  if (!lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata;
  if (!lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata);
  }

  return result;
}

uint64_t type metadata instantiation function for AttributeMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for AttributeMetadata(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AttributeMetadata(uint64_t result, int a2, int a3)
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

uint64_t static PrimDirtyStateBuilder.buildBlock(_:)(unint64_t a1)
{
  v2 = MEMORY[0x277D84FA0];
  specialized Sequence.forEach(_:)(a1);
  return v2;
}

void *StageDirtyState.__allocating_init(primsContainAnyOf:)(uint64_t (*a1)(void))
{
  v1 = a1();
  type metadata accessor for StageDirtyState();
  v2 = swift_allocObject();
  v2[2] = MEMORY[0x277D84FA0];
  v2[3] = v1;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO14PrimDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d9IO15Stagegh122C26stageMetadataContainsAnyOf012primsContainiJ04coreACShyAA16ToolsFoundationsO5TokenVG_ShyAA04PrimdE0CGSo010RIOBuilderdC13J73RefaSgtcfcSo0rdqsT0aAMcfu_32f3b6550bcda465057a28ab83a1317178AmSTf3nnnpk_nTf1cn_n(v3);

  type metadata accessor for RIOBuilderDirtyPrimDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v5 = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOBuilderDirtyStageDescriptorCreateWithPrimDescriptorsAndMetadataDescriptors();

  v2[4] = v6;
  return v2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO14PrimDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d9IO15Stagegh122C26stageMetadataContainsAnyOf012primsContainiJ04coreACShyAA16ToolsFoundationsO5TokenVG_ShyAA04PrimdE0CGSo010RIOBuilderdC13J73RefaSgtcfcSo0rdqsT0aAMcfu_32f3b6550bcda465057a28ab83a1317178AmSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v22 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v24 = result;
    v25 = v4;
    v26 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v24 = result;
  v25 = v5;
  v26 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v24;
    v9 = v25;
    v11 = v26;
    v12 = *(specialized Set.subscript.getter(v24, v25, v26, a1) + 32);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v22)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy9RealityIO14PrimDirtyStateC_GMd, &_sSh5IndexVy9RealityIO14PrimDirtyStateC_GMR);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v23, 0);
      if (v6 == v2)
      {
LABEL_28:
        outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v24, v25, v26);
        return v27;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_32;
      }

      v14 = v10 >> 6;
      v15 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v15 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v16 = v15 & (-2 << (v10 & 0x3F));
      if (v16)
      {
        v13 = __clz(__rbit64(v16)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v14 << 6;
        v18 = v14 + 1;
        v19 = (a1 + 64 + 8 * v14);
        while (v18 < (v13 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v10, v9, 0);
            v13 = __clz(__rbit64(v20)) + v17;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v10, v9, 0);
      }

LABEL_27:
      v24 = v13;
      v25 = v9;
      v26 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v20 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v17 = v1 + 64;
    v18 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v19 = v6;
      RIOBuilderDirtyMetadataDescriptorCreateWithMetadata();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v18;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v18 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v10 = *(v4 + 8 * v9);
      if ((v10 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v18 + 36))
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v5 & 0x3F));
      if (v11)
      {
        v8 = __clz(__rbit64(v11)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (v17 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v5, v7, 0);
            v8 = __clz(__rbit64(v15)) + v12;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v5, v7, 0);
      }

LABEL_4:
      v6 = v19 + 1;
      v5 = v8;
      if (v19 + 1 == v2)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_21:
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

  return result;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26670F670](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:

        specialized Set._Variant.insert(_:)(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = __CocoaSet.count.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26670F670](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:

        specialized Set._Variant.insert(_:)(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = __CocoaSet.count.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26670F670](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:

        specialized Set._Variant.insert(_:)(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = __CocoaSet.count.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

void *StageDirtyState.__allocating_init(stageMetadataContainsAnyOf:)(uint64_t a1)
{
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO14PrimDirtyStateC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  type metadata accessor for StageDirtyState();
  v3 = swift_allocObject();
  v3[2] = a1;
  v3[3] = v2;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO14PrimDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d9IO15Stagegh122C26stageMetadataContainsAnyOf012primsContainiJ04coreACShyAA16ToolsFoundationsO5TokenVG_ShyAA04PrimdE0CGSo010RIOBuilderdC13J73RefaSgtcfcSo0rdqsT0aAMcfu_32f3b6550bcda465057a28ab83a1317178AmSTf3nnnpk_nTf1cn_n(v2);

  type metadata accessor for RIOBuilderDirtyPrimDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a1);

  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v5 = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOBuilderDirtyStageDescriptorCreateWithPrimDescriptorsAndMetadataDescriptors();

  v3[4] = v6;
  return v3;
}

void *StageDirtyState.__allocating_init(stageMetadataContainsAnyOf:primsContainAnyOf:)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  type metadata accessor for StageDirtyState();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v3;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO14PrimDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d9IO15Stagegh122C26stageMetadataContainsAnyOf012primsContainiJ04coreACShyAA16ToolsFoundationsO5TokenVG_ShyAA04PrimdE0CGSo010RIOBuilderdC13J73RefaSgtcfcSo0rdqsT0aAMcfu_32f3b6550bcda465057a28ab83a1317178AmSTf3nnnpk_nTf1cn_n(v3);

  type metadata accessor for RIOBuilderDirtyPrimDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a1);

  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v6 = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOBuilderDirtyStageDescriptorCreateWithPrimDescriptorsAndMetadataDescriptors();

  v4[4] = v7;
  return v4;
}

void StageDirtyState.hash(into:)(__int128 *a1)
{
  specialized Set.hash(into:)(a1, *(v1 + 24));
  v3 = *(v1 + 16);

  specialized Set.hash(into:)(a1, v3);
}

uint64_t static StageDirtyState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO14PrimDirtyStateC_Tt1g5(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v4, v5);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v21 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v22 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      v24 = v13;
      Hasher.init(_seed:)();
      type metadata accessor for RIOPxrTfTokenRef(0);
      lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
      v14 = v13;
      _CFObject.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v18 = ~v16;
      lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
      while (1)
      {
        v23 = *(*(a2 + 48) + 8 * v17);
        v19 = v23;
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v20)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = v21;
      v7 = v22;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

LABEL_21:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v22 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9RealityIO18PropertyDirtyStateC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v3)
    {
      v4 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v4 = a2;
      }

      v5 = specialized _NativeSet.isEqual(to:)(v4, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v5 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v6 = 0;
        v7 = a1 + 56;
        v8 = 1 << *(a1 + 32);
        if (v8 < 64)
        {
          v9 = ~(-1 << v8);
        }

        else
        {
          v9 = -1;
        }

        v10 = v9 & *(a1 + 56);
        v11 = (v8 + 63) >> 6;
        v12 = a2 + 56;
        v24 = v11;
        v25 = a1;
        if (!v10)
        {
LABEL_24:
          v14 = v6;
          while (1)
          {
            v6 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v6 >= v11)
            {
              goto LABEL_36;
            }

            v15 = *(v7 + 8 * v6);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v26 = (v15 - 1) & v15;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

        while (1)
        {
          v13 = __clz(__rbit64(v10));
          v26 = (v10 - 1) & v10;
LABEL_29:
          v16 = *(*(a1 + 48) + 8 * (v13 | (v6 << 6)));
          Hasher.init(_seed:)();
          v17 = *(*v16 + 120);

          v17(v27);
          v18 = Hasher._finalize()();
          v19 = -1 << *(v2 + 32);
          v20 = v18 & ~v19;
          if (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            break;
          }

          v21 = ~v19;
          while (1)
          {
            v22 = *(**(*(v2 + 48) + 8 * v20) + 128);

            LOBYTE(v22) = v22(v16);

            if (v22)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v11 = v24;
          a1 = v25;
          v10 = v26;
          if (!v26)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v5 = 0;
    }

    return v5 & 1;
  }

  if (a1 < 0)
  {
    a2 = a1;
  }

  else
  {
    a2 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v3)
  {
    v5 = specialized _NativeSet.isEqual(to:)(a2, v2);
    return v5 & 1;
  }

  if (v2 < 0)
  {
    a1 = v2;
  }

  else
  {
    a1 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](a1, a2);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9RealityIO6InputsC13PropertyDeltaV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v34 = result + 56;
  v35 = result;
  v33 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v36 = (v7 - 1) & v7;
LABEL_13:
    v37 = v3;
    v13 = (*(result + 48) + 24 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    Hasher.init(_seed:)();

    v17 = v14;
    v38 = v16;
    specialized Set.hash(into:)(v40, v15);
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
    v39 = v17;
    _CFObject.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_22:

      return 0;
    }

    v21 = ~v19;
    while (1)
    {
      v22 = (*(v2 + 48) + 24 * v20);
      v24 = *v22;
      v23 = v22[1];
      v25 = v22[2];

      v26 = v23;
      v27 = v25;
      if (_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v24, v15))
      {
        break;
      }

LABEL_16:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v28 = v9;
    v29 = v2;
    v30 = v26;
    v31 = v39;
    v32 = static _CFObject.== infix(_:_:)();

    v2 = v29;
    v9 = v28;

    if ((v32 & 1) == 0)
    {
      goto LABEL_16;
    }

    v4 = v34;
    result = v35;
    v8 = v33;
    v7 = v36;
    v3 = v37;
  }

  while (v36);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9RealityIO14PrimDirtyStateC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v3)
    {
      v4 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v4 = a2;
      }

      v5 = specialized _NativeSet.isEqual(to:)(v4, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v5 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v6 = 0;
        v7 = a1 + 56;
        v8 = 1 << *(a1 + 32);
        if (v8 < 64)
        {
          v9 = ~(-1 << v8);
        }

        else
        {
          v9 = -1;
        }

        v10 = v9 & *(a1 + 56);
        v11 = (v8 + 63) >> 6;
        v12 = a2 + 56;
        v24 = v11;
        v25 = a1;
        if (!v10)
        {
LABEL_24:
          v14 = v6;
          while (1)
          {
            v6 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v6 >= v11)
            {
              goto LABEL_36;
            }

            v15 = *(v7 + 8 * v6);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v26 = (v15 - 1) & v15;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

        while (1)
        {
          v13 = __clz(__rbit64(v10));
          v26 = (v10 - 1) & v10;
LABEL_29:
          v16 = *(*(a1 + 48) + 8 * (v13 | (v6 << 6)));
          Hasher.init(_seed:)();
          v17 = *(*v16 + 128);

          v17(v27);
          v18 = Hasher._finalize()();
          v19 = -1 << *(v2 + 32);
          v20 = v18 & ~v19;
          if (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            break;
          }

          v21 = ~v19;
          while (1)
          {
            v22 = *(**(*(v2 + 48) + 8 * v20) + 136);

            LOBYTE(v22) = v22(v16);

            if (v22)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v11 = v24;
          a1 = v25;
          v10 = v26;
          if (!v26)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v5 = 0;
    }

    return v5 & 1;
  }

  if (a1 < 0)
  {
    a2 = a1;
  }

  else
  {
    a2 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v3)
  {
    v5 = specialized _NativeSet.isEqual(to:)(a2, v2);
    return v5 & 1;
  }

  if (v2 < 0)
  {
    a1 = v2;
  }

  else
  {
    a1 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](a1, a2);
}

uint64_t StageDirtyState.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO15StageDirtyStateCmMd, &_s9RealityIO15StageDirtyStateCmMR);
  v0 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(24);

  type metadata accessor for PrimDirtyState();
  lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type PrimDirtyState and conformance PrimDirtyState, 255, type metadata accessor for PrimDirtyState, &protocol conformance descriptor for PrimDirtyState);
  v1 = Set.description.getter();
  MEMORY[0x26670F080](v1);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000014, 0x8000000261994F70);

  _StringGuts.grow(_:)(31);

  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v2 = Set.description.getter();
  MEMORY[0x26670F080](v2);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD00000000000001CLL, 0x8000000261994F90);

  return v0;
}

void *StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  if (!a3)
  {

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO14PrimDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d9IO15Stagegh122C26stageMetadataContainsAnyOf012primsContainiJ04coreACShyAA16ToolsFoundationsO5TokenVG_ShyAA04PrimdE0CGSo010RIOBuilderdC13J73RefaSgtcfcSo0rdqsT0aAMcfu_32f3b6550bcda465057a28ab83a1317178AmSTf3nnnpk_nTf1cn_n(a2);

    type metadata accessor for RIOBuilderDirtyPrimDescriptorRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a1);

    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    v7 = Array._bridgeToObjectiveC()().super.isa;

    v8 = RIOBuilderDirtyStageDescriptorCreateWithPrimDescriptorsAndMetadataDescriptors();

    a3 = v8;
  }

  v3[4] = a3;
  return v3;
}

uint64_t StageDirtyState.deinit()
{

  return v0;
}

uint64_t StageDirtyState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int StageDirtyState.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v2, *(v0 + 24));
  specialized Set.hash(into:)(v2, *(v0 + 16));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StageDirtyState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, *(v1 + 24));
  specialized Set.hash(into:)(v3, *(v1 + 16));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance StageDirtyState(__int128 *a1)
{
  v3 = *v1;
  specialized Set.hash(into:)(a1, *(v3 + 24));
  v4 = *(v3 + 16);

  specialized Set.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StageDirtyState()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  specialized Set.hash(into:)(v4, *(*v0 + 24));
  v2 = *(v1 + 16);

  specialized Set.hash(into:)(v4, v2);

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StageDirtyState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO14PrimDirtyStateC_Tt1g5(*(*a1 + 24), *(*a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  v5 = *(v3 + 16);

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v4, v5);
}

uint64_t specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = __CocoaSet.contains(_:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v13)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    Hasher.init(_seed:)();
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
    v12 = v11;
    _CFObject.hash(into:)();
    v13 = Hasher._finalize()();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x26670FA20](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t specialized Set.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v21[13] = *(a1 + 32);
  *&v21[15] = v3;
  v21[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v21[9] = *a1;
  *&v21[11] = v4;
  Hasher._finalize()();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v20)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(a2 + 48) + 24 * (v13 | (v12 << 6)));
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    Hasher.init(_seed:)();

    v18 = v15;
    v19 = v17;
    specialized Set.hash(into:)(v21, v16);
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
    _CFObject.hash(into:)();
    v20 = Hasher._finalize()();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x26670FA20](v10);
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v27 = *(a1 + 8);
  v4 = a1[1];
  v23 = *a1;
  v24 = v4;
  Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for PrimDirtyState();
    lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type PrimDirtyState and conformance PrimDirtyState, 255, type metadata accessor for PrimDirtyState, &protocol conformance descriptor for PrimDirtyState);
    result = Set.Iterator.init(_cocoa:)();
    a2 = v28;
    v6 = v29;
    v7 = v30;
    v8 = v31;
    v9 = v32;
  }

  else
  {
    v10 = -1 << *(a2 + 32);
    v6 = a2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a2 + 56);

    v8 = 0;
  }

  v13 = 0;
  v14 = (v7 + 64) >> 6;
  while (a2 < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20)
    {
LABEL_20:
      outlined consume of Set<PropertyDirtyState>.Iterator._Variant(a2);
      return MEMORY[0x26670FA20](v13);
    }

    v21[0] = v20;
    type metadata accessor for PrimDirtyState();
    swift_dynamicCast();
    v17 = v22;
LABEL_10:
    Hasher.init(_seed:)();
    (*(*v17 + 128))(v21);
    v18 = Hasher._finalize()();

    v13 ^= v18;
  }

  if (v9)
  {
    v15 = v8;
LABEL_9:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = *(*(a2 + 48) + ((v15 << 9) | (8 * v16)));
    v22 = v17;

    goto LABEL_10;
  }

  v19 = v8;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      goto LABEL_20;
    }

    v9 = *(v6 + 8 * v15);
    ++v19;
    if (v9)
    {
      v8 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v27 = *(a1 + 8);
  v4 = a1[1];
  v23 = *a1;
  v24 = v4;
  Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for PropertyDirtyState();
    lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type PropertyDirtyState and conformance PropertyDirtyState, 255, type metadata accessor for PropertyDirtyState, &protocol conformance descriptor for PropertyDirtyState);
    result = Set.Iterator.init(_cocoa:)();
    a2 = v28;
    v6 = v29;
    v7 = v30;
    v8 = v31;
    v9 = v32;
  }

  else
  {
    v10 = -1 << *(a2 + 32);
    v6 = a2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a2 + 56);

    v8 = 0;
  }

  v13 = 0;
  v14 = (v7 + 64) >> 6;
  while (a2 < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20)
    {
LABEL_20:
      outlined consume of Set<PropertyDirtyState>.Iterator._Variant(a2);
      return MEMORY[0x26670FA20](v13);
    }

    v21[0] = v20;
    type metadata accessor for PropertyDirtyState();
    swift_dynamicCast();
    v17 = v22;
LABEL_10:
    Hasher.init(_seed:)();
    (*(*v17 + 120))(v21);
    v18 = Hasher._finalize()();

    v13 ^= v18;
  }

  if (v9)
  {
    v15 = v8;
LABEL_9:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = *(*(a2 + 48) + ((v15 << 9) | (8 * v16)));
    v22 = v17;

    goto LABEL_10;
  }

  v19 = v8;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      goto LABEL_20;
    }

    v9 = *(v6 + 8 * v15);
    ++v19;
    if (v9)
    {
      v8 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *specialized StageDirtyState.__allocating_init(core:)(uint64_t a1)
{
  v2 = RIOBuilderDirtyStageDescriptorCopyPrimDescriptors();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOBuilderDirtyPrimDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }

LABEL_15:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_16:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v5 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_15;
  }

LABEL_3:
  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26670F670](v8, v5);
    }

    else
    {
      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    if (RIOBuilderDirtyPrimDescriptorCopyType() == 2)
    {
      specialized TypeNamePrimDirtyState.__allocating_init(core:)(v10);
    }

    else
    {
      type metadata accessor for PrimDirtyState();
      PrimDirtyState.__allocating_init(core:)(v10);
    }

    ++v8;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v6 != v8);

  v11 = v4;
LABEL_17:
  v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO14PrimDirtyStateC_SayAFGTt0g5Tf4g_n(v11);

  v13 = RIOBuilderDirtyStageDescriptorCopyMetadataDescriptors();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v14 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_19;
    }
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_19:
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_20;
      }

LABEL_29:

      v16 = MEMORY[0x277D84F90];
LABEL_35:
      v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v16);

      type metadata accessor for StageDirtyState();
      result = swift_allocObject();
      result[2] = v26;
      result[3] = v12;
      result[4] = a1;
      return result;
    }
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_20:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = v4;
    if ((v14 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        MEMORY[0x26670F670](i, v14);
        v18 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        swift_unknownObjectRelease();
        v20 = *(v4 + 16);
        v19 = *(v4 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        }

        *(v4 + 16) = v20 + 1;
        *(v4 + 8 * v20 + 32) = v18;
      }
    }

    else
    {
      v21 = 32;
      do
      {
        v22 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        v24 = *(v16 + 16);
        v23 = *(v16 + 24);
        if (v24 >= v23 >> 1)
        {
          v25 = v22;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          v22 = v25;
        }

        *(v16 + 16) = v24 + 1;
        *(v16 + 8 * v24 + 32) = v22;
        v21 += 8;
        --v15;
      }

      while (v15);
    }

    goto LABEL_35;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Set<ToolsFoundations.Token>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void *static ActionBuilder.generateGroupActionSpecifications(inputs:)(uint64_t a1)
{
  v1 = type metadata accessor for __RKEntityActionSpecification();
  v60 = *(v1 - 8);
  v3.n128_f32[0] = MEMORY[0x28223BE20](v1, v2);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v3);
  v8 = v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKEntityGroupActionOrderOSgMd, &_s10RealityKit26__RKEntityGroupActionOrderOSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v53 - v11;
  v13 = type metadata accessor for __RKEntityGroupActionOrder();
  v14 = *(v13 - 8);
  v16.n128_f32[0] = MEMORY[0x28223BE20](v13, v15);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19, v16);
  v22 = v53 - v21;
  v23 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n(0x73706F6F6CLL, 0xE500000000000000, v20);
  v54 = v5;
  v55 = v13;
  v59 = v18;
  v61 = v22;
  v62 = v14;
  v53[1] = v23;
  v53[0] = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFs6UInt32V_Tt1g5Tf4ndn_n(0x436D726F66726570, 0xEC000000746E756FLL, v24);

  __RKEntityGroupActionOrder.init(inputs:)(v12);
  v25 = v62;
  v26 = v55;
  (*(v62 + 56))(v12, 0, 1, v55);
  (*(v25 + 32))(v61, v12, v26);
  v27 = Inputs.accumulatedValues(forKey:)(0x736E6F69746361, 0xE700000000000000);
  v28 = specialized _arrayConditionalCast<A, B>(_:)(v27);

  if (!v28)
  {
LABEL_23:
    (*(v25 + 8))(v61, v26);
    return MEMORY[0x277D84F90];
  }

  result = v28;
  v58 = v28[2];
  if (!v58)
  {
    v31 = MEMORY[0x277D84F90];
    v32 = v60;
    v36 = v61;
    v35 = v59;
    v33 = v1;
    v34 = v54;
LABEL_20:
    v49 = v31;

    if (v49[2])
    {
      v50 = v55;
      (*(v25 + 16))(v35, v36, v55);
      __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
      (*(v32 + 104))(v8, *MEMORY[0x277CDAFA0], v33);
      static ActionBuilder.collapseAndReturnGroupActionSpecification(_:)(v8, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v51 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2619891C0;
      (*(v32 + 32))(v52 + v51, v34, v33);
      (*(v32 + 8))(v8, v33);
      (*(v25 + 8))(v36, v50);
      return v52;
    }

    v26 = v55;
    goto LABEL_23;
  }

  v30 = 0;
  v57 = v28 + 4;
  v31 = MEMORY[0x277D84F90];
  v32 = v60;
  v33 = v1;
  v34 = v54;
  v56 = result;
  while (v30 < result[2])
  {
    v37 = v8;
    v38 = v34;
    v39 = v32;
    v40 = v57[v30];
    v41 = *(v40 + 16);
    v42 = v31[2];
    v43 = v42 + v41;
    if (__OFADD__(v42, v41))
    {
      goto LABEL_25;
    }

    v44 = v31;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v43 > v44[3] >> 1)
    {
      if (v42 <= v43)
      {
        v45 = v42 + v41;
      }

      else
      {
        v45 = v42;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v45, 1, v44);
      v44 = result;
    }

    v32 = v39;
    if (*(v40 + 16))
    {
      if ((v44[3] >> 1) - v44[2] < v41)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      v31 = v44;
      v34 = v38;
      v8 = v37;
      v25 = v62;
      v35 = v59;
      result = v56;
      if (v41)
      {
        v46 = v44[2];
        v47 = __OFADD__(v46, v41);
        v48 = v46 + v41;
        if (v47)
        {
          goto LABEL_28;
        }

        v44[2] = v48;
      }
    }

    else
    {

      v31 = v44;
      v34 = v38;
      v8 = v37;
      v25 = v62;
      v35 = v59;
      result = v56;
      if (v41)
      {
        goto LABEL_26;
      }
    }

    ++v30;
    v36 = v61;
    if (v58 == v30)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t static ActionBuilder.collapseAndReturnGroupActionSpecification(_:)@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v118 = a2;
  started = type metadata accessor for __RKEntityStartAnimateActionArguments();
  v108 = *(started - 8);
  v109 = started;
  MEMORY[0x28223BE20](started, v4);
  v107 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v105 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __RKAudioSpatialModeSelection();
  type metadata accessor for __RKEntityAudioActionType();
  v9 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v106 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for __RKEntityAudioActionArguments();
  v113 = *(v12 - 8);
  v114 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v112 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for __RKEntityOrbitEntityActionArguments();
  v111 = *(v104 - 8);
  v16.n128_f32[0] = MEMORY[0x28223BE20](v104, v15);
  v103 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v16);
  v110 = &v89 - v19;
  type metadata accessor for __RKEntityGroupActionOrder();
  v100 = type metadata accessor for __RKEntitySpinActionArguments();
  v102 = *(v100 - 8);
  v21.n128_f32[0] = MEMORY[0x28223BE20](v100, v20);
  v99 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v21);
  v101 = &v89 - v24;
  v25 = type metadata accessor for __RKEntityActionSpecification();
  v26 = *(v25 - 8);
  v28.n128_f32[0] = MEMORY[0x28223BE20](v25, v27);
  v97 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31.n128_f32[0] = MEMORY[0x28223BE20](v30, v28);
  v116 = &v89 - v32;
  v34.n128_f32[0] = MEMORY[0x28223BE20](v33, v31);
  v117 = &v89 - v35;
  MEMORY[0x28223BE20](v36, v34);
  v38 = &v89 - v37;
  v39 = type metadata accessor for __RKEntityActionGroupArguments();
  v40 = *(v39 - 8);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = &v89 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v26 + 16);
  v45(v38, a1, v25, v42);
  v115 = *(v26 + 88);
  if (v115(v38, v25) != *MEMORY[0x277CDAFA0])
  {
    (*(v26 + 8))(v38, v25);
    return (v45)(v118, a1, v25);
  }

  v98 = v45;
  v96 = a1;
  v95 = v26;
  v46 = *(v26 + 96);
  v46(v38, v25);
  (*(v40 + 32))(v44, v38, v39);
  v47 = *(__RKEntityActionGroupArguments.actions.getter() + 16);

  v48 = v47 == 1;
  v49 = v25;
  if (!v48)
  {
    (*(v40 + 8))(v44, v39);
    return (v98)(v118, v96, v49);
  }

  v93 = v40;
  v94 = __RKEntityActionGroupArguments.loopCount.getter();
  if (v50)
  {
    v94 = 1;
    v51 = v116;
    v52 = v117;
  }

  else
  {
    v51 = v116;
    v52 = v117;
    if (v94 < 1)
    {
      (*(v93 + 8))(v44, v39);
      return (v98)(v118, v96, v49);
    }
  }

  v91 = v39;
  v92 = v44;
  result = __RKEntityActionGroupArguments.actions.getter();
  if (!*(result + 16))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v54 = v95;
  v90 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v55 = v98;
  (v98)(v52, result + v90, v49);

  (v55)(v51, v52, v49);
  v56 = v115(v51, v49);
  if (v56 == *MEMORY[0x277CDAF90])
  {
    v46(v51, v49);
    v58 = v112;
    v57 = v113;
    v59 = v114;
    (*(v113 + 32))(v112, v51, v114);
    (*(v57 + 8))(v58, v59);
    (*(v54 + 8))(v52, v49);
    (*(v93 + 8))(v92, v91);
    return (v55)(v118, v96, v49);
  }

  if (v56 == *MEMORY[0x277CDAF68])
  {
    LODWORD(v116) = v56;
    v46(v51, v49);
    v60 = v107;
    v61 = v108;
    v62 = v94;
    v63 = v109;
    v64 = (*(v108 + 32))(v107, v51, v109);
    MEMORY[0x26670E5D0](v64);
    result = __RKEntityStartAnimateActionArguments.loopCount.getter();
    if ((result * v62) >> 64 == (result * v62) >> 63)
    {
      v65 = v49;
      __RKEntityStartAnimateActionArguments.multiplePerformBehavior.getter();
      __RKEntityStartAnimateActionArguments.clipStart.getter();
      __RKEntityStartAnimateActionArguments.clipDuration.getter();
      __RKEntityStartAnimateActionArguments.clipReversed.getter();
      __RKEntityStartAnimateActionArguments.animationSpeed.getter();
      __RKEntityStartAnimateActionArguments.clipReverses.getter();
      v66 = v118;
      __RKEntityStartAnimateActionArguments.init(target:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:)();
      (*(v61 + 8))(v60, v63);
      (*(v54 + 8))(v117, v65);
      (*(v93 + 8))(v92, v91);
      return (*(v54 + 104))(v66, v116, v65);
    }

    goto LABEL_28;
  }

  if (v56 == *MEMORY[0x277CDAF50])
  {
    LODWORD(v116) = v56;
    v115 = v49;
    v46(v51, v49);
    v67 = v104;
    v114 = *(v111 + 32);
    v114(v110, v51, v104);
    v68 = __RKEntityOrbitEntityActionArguments.duration.getter();
    v69 = __RKEntityOrbitEntityActionArguments.rotations.getter();
    specialized static ActionBuilder.calculateMaximumMultiplier(lhs:rhs:)(v68 | ((HIDWORD(v68) & 1) << 32), v69 | ((HIDWORD(v69) & 1) << 32));
    v70 = v118;
    v71 = v93;
    v72 = v91;
    v73 = v92;
    v76 = v103;
    v77 = v110;
    static ActionBuilder.copyOrbitActionArguments(_:multiplier:)(v103);
    v78 = v111;
LABEL_24:
    (*(v78 + 8))(v77, v67);
    v87 = v115;
    (*(v54 + 8))(v117, v115);
    (*(v71 + 8))(v73, v72);
    v114(v70, v76, v67);
    return (*(v54 + 104))(v70, v116, v87);
  }

  if (v56 == *MEMORY[0x277CDAF80])
  {
    LODWORD(v116) = v56;
    v115 = v49;
    v46(v51, v49);
    v67 = v100;
    v114 = *(v102 + 32);
    v114(v101, v51, v100);
    v74 = __RKEntitySpinActionArguments.duration.getter();
    v75 = __RKEntitySpinActionArguments.iterations.getter();
    specialized static ActionBuilder.calculateMaximumMultiplier(lhs:rhs:)(v74 | ((HIDWORD(v74) & 1) << 32), v75 | ((HIDWORD(v75) & 1) << 32));
    v70 = v118;
    v71 = v93;
    v72 = v91;
    v73 = v92;
    v76 = v99;
    v77 = v101;
    static ActionBuilder.copySpinActionArguments(_:multiplier:)(v99);
    v78 = v102;
    goto LABEL_24;
  }

  v79 = v118;
  v80 = v96;
  v81 = v98;
  if (v94 == 1)
  {
    v82 = *(__RKEntityActionGroupArguments.actions.getter() + 16);

    if (v82 == 1)
    {
      v83 = v92;
      v84 = __RKEntityActionGroupArguments.actions.getter();
      if (*(v84 + 16))
      {
        v85 = v97;
        (v81)(v97, v84 + v90, v49);

        v86 = *(v54 + 8);
        v86(v52, v49);
        (*(v93 + 8))(v83, v91);
        (*(v54 + 32))(v79, v85, v49);
        return v86(v116, v49);
      }
    }
  }

  v88 = *(v54 + 8);
  v88(v52, v49);
  (*(v93 + 8))(v92, v91);
  (v81)(v79, v80, v49);
  return v88(v116, v49);
}

uint64_t static ActionBuilder.copySpinActionArguments(_:multiplier:)@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v16 - v4;
  v6 = type metadata accessor for __RKEntitySpinDirectionType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  MEMORY[0x26670E0D0](v13);
  __RKEntitySpinActionArguments.duration.getter();
  __RKEntitySpinActionArguments.iterations.getter();
  __RKEntitySpinActionArguments.direction.getter();
  v14 = *(v7 + 48);
  if (v14(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v10, *MEMORY[0x277CDAF28], v6);
    if (v14(v5, 1, v6) != 1)
    {
      outlined destroy of Any?(v5, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  __RKEntitySpinActionArguments.axis.getter();
  return __RKEntitySpinActionArguments.init(target:duration:iterations:direction:axis:)();
}

uint64_t static ActionBuilder.copyOrbitActionArguments(_:multiplier:)@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v20 - v4;
  v6 = type metadata accessor for __RKEntitySpinDirectionType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v13.n128_f32[0] = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = MEMORY[0x28223BE20](v14, v13);
  MEMORY[0x26670E4C0](v15);
  __RKEntityOrbitEntityActionArguments.pivotTarget.getter();
  __RKEntityOrbitEntityActionArguments.duration.getter();
  __RKEntityOrbitEntityActionArguments.rotations.getter();
  v20[0] = __RKEntityOrbitEntityActionArguments.orbitalAxis.getter();
  v20[1] = v16;
  v21 = v17;
  v22 = __RKEntityOrbitEntityActionArguments.orientToPath.getter();
  __RKEntityOrbitEntityActionArguments.spinDirection.getter();
  v18 = *(v7 + 48);
  if (v18(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v10, *MEMORY[0x277CDAF28], v6);
    if (v18(v5, 1, v6) != 1)
    {
      outlined destroy of Any?(v5, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  return __RKEntityOrbitEntityActionArguments.init(target:pivotTarget:duration:rotations:orbitalAxis:orientToPath:spinDirection:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:)();
}

float specialized static ActionBuilder.calculateMaximumMultiplier(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  v2 = *&a1;
  v3 = 1.0;
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 1.0;
  }

  if ((a2 & 0x100000000) == 0)
  {
    v3 = *&a2;
  }

  if (v2 <= v3)
  {
    if ((LODWORD(v3) & 0x7FFFFF) == 0)
    {
      v2 = v3;
    }

    if ((~LODWORD(v3) & 0x7F800000) != 0)
    {
      v2 = v3;
    }
  }

  return roundf(3.4028e38 / v2);
}

uint64_t one-time initialization function for lightComponent()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.lightComponent = result;
  return result;
}

id one-time initialization function for attenuationRadiusAttributeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static SpotLightComponentBuilder.attenuationRadiusAttributeName = result;
  return result;
}

id one-time initialization function for attenuationFalloffExponentAttributeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static SpotLightComponentBuilder.attenuationFalloffExponentAttributeName = result;
  return result;
}

uint64_t closure #1 in SpotLightComponentBuilder.run(inputs:)(void (*a1)(int8x16_t *, void), _BYTE *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18SpotLightComponentV6ShadowVSgMd, &_s10RealityKit18SpotLightComponentV6ShadowVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v139 = v125 - v5;
  v6 = type metadata accessor for SpotLightComponent.Shadow();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v133 = v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for SpotLightComponent.Shadow.ShadowClippingPlane();
  v135 = *(v136 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v136, v10);
  v132 = v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f32[0] = MEMORY[0x28223BE20](v13, v11);
  v130 = (v125 - v15);
  v17.n128_f32[0] = MEMORY[0x28223BE20](v16, v14);
  v134 = v125 - v18;
  v20.n128_f32[0] = MEMORY[0x28223BE20](v19, v17);
  v129 = (v125 - v21);
  MEMORY[0x28223BE20](v22, v20);
  v138 = v125 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
  v26.n128_f32[0] = MEMORY[0x28223BE20](v24 - 8, v25);
  v131 = v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v26);
  v137 = v125 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18SpotLightComponentVSgMd, &_s10RealityKit18SpotLightComponentVSgMR);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v142 = v125 - v32;
  v33 = type metadata accessor for SpotLightComponent();
  v144 = *(v33 - 8);
  v145 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v143 = v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for __EntityRef();
  v140 = *(v36 - 8);
  v141 = v36;
  MEMORY[0x28223BE20](v36, v37);
  v39 = v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = Inputs.prim.getter();
  v41 = RIOPxrUsdObjectCopyName();
  v42 = RIOPxrTfTokenCopyString();
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  v146 = v40;
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_50;
  }

  v46 = RIOPxrUsdPrimCopyAttribute();
  v47 = RIOPxrUsdAttributeCopyValue();
  if (!v47)
  {

LABEL_51:
    SpotLightComponentBuilder.clear(inputs:)();
  }

  v127 = v7;
  v128 = a2;
  v48 = v47;
  v49 = RIOPxrVtValueCopyToken();

  if (!v49)
  {
LABEL_50:

    goto LABEL_51;
  }

  v126 = v6;
  v50 = RIOPxrTfTokenCopyString();
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  if (v51 != 0xD000000000000014 || 0x8000000261995070 != v53)
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v54 = v128;
    if (v55)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

  v54 = v128;
LABEL_13:
  if (one-time initialization token for OutputName != -1)
  {
LABEL_76:
    swift_once();
  }

  Inputs.subscript.getter(&v148, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (v149)
  {
    type metadata accessor for EntityProxy(0);
    if (swift_dynamicCast())
    {

      v56 = v147;
      if ((RIOPxrUsdPrimIsActive() & 1) == 0)
      {
        SpotLightComponentBuilder.clear(inputs:)();
      }

      Inputs.prim.getter();
      if (one-time initialization token for colorAttributeName != -1)
      {
        swift_once();
      }

      v57 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5(static SpotLightComponentBuilder.colorAttributeName);
      v59 = v58;
      v61 = v60;

      v62.i64[0] = v57;
      v62.i64[1] = v59;
      if (v61)
      {
        v63 = -1;
      }

      else
      {
        v63 = 0;
      }

      v148 = vbslq_s8(vdupq_n_s32(v63), xmmword_26198AAA0, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      lazy protocol witness table accessor for type Float and conformance Float();
      v64 = SIMD3<>.cgColor.getter();
      Inputs.prim.getter();
      if (one-time initialization token for intensityAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static SpotLightComponentBuilder.intensityAttributeName);

      Inputs.prim.getter();
      if (one-time initialization token for innerAngleAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static SpotLightComponentBuilder.innerAngleAttributeName);

      Inputs.prim.getter();
      if (one-time initialization token for outerAngleAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static SpotLightComponentBuilder.outerAngleAttributeName);

      Inputs.prim.getter();
      if (one-time initialization token for attenuationRadiusAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static SpotLightComponentBuilder.attenuationRadiusAttributeName);

      Inputs.prim.getter();
      if (one-time initialization token for attenuationFalloffExponentAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static SpotLightComponentBuilder.attenuationFalloffExponentAttributeName);

      v54[17] = 1;
      type metadata accessor for Entity();
      v65 = MEMORY[0x277D841D8];
      v125[1] = v56;
      __AssetRef.__as<A>(_:)();
      v149 = v65;
      static __AssetRef.__fromCore(_:)();
      __swift_destroy_boxed_opaque_existential_0(&v148);
      v66 = static Entity.__fromCore(_:)();
      (v140)[1](v39, v141);
      v67 = v64;
      v68 = v143;
      v140 = v67;
      SpotLightComponent.init(cgColor:intensity:innerAngleInDegrees:outerAngleInDegrees:attenuationRadius:attenuationFalloffExponent:)();
      v70 = v144;
      v69 = v145;
      v43 = v142;
      (*(v144 + 16))(v142, v68, v145);
      (*(v70 + 56))(v43, 0, 1, v69);
      v141 = v66;
      v71 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v71(&v148, 0);
      specialized Builder.addComponent<A>(component:)(v68);
      v72 = Prim.children.getter();
      v73 = v72;
      if (v72 >> 62)
      {
        v39 = __CocoaSet.count.getter();
        if (v39)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v39 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
LABEL_34:
          v45 = 0;
          v142 = (v73 & 0xC000000000000001);
          while (1)
          {
            if (v142)
            {
              v74 = MEMORY[0x26670F670](v45, v73);
              v43 = v45 + 1;
              if (__OFADD__(v45, 1))
              {
                goto LABEL_74;
              }
            }

            else
            {
              if (v45 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_75;
              }

              v43 = v45 + 1;
              if (__OFADD__(v45, 1))
              {
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
                goto LABEL_76;
              }
            }

            v75 = v74;
            v54 = RIOPxrUsdObjectCopyName();
            if (one-time initialization token for shadowStructName != -1)
            {
              swift_once();
            }

            v76 = static SpotLightComponentBuilder.shadowStructName;
            type metadata accessor for RIOPxrTfTokenRef(0);
            lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
            v77 = v76;
            v78 = static _CFObject.== infix(_:_:)();

            if (v78)
            {
              break;
            }

            ++v45;
            if (v43 == v39)
            {
              goto LABEL_111;
            }
          }

          v83 = v75;
          if (one-time initialization token for shadowEnabledAttributeName != -1)
          {
            swift_once();
          }

          v84 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(static SpotLightComponentBuilder.shadowEnabledAttributeName);
          v85 = v126;
          v86 = v127;
          if (v84 == 2 || (v84 & 1) == 0)
          {

            goto LABEL_112;
          }

          if (one-time initialization token for shadowDepthBiasAttributeName != -1)
          {
            swift_once();
          }

          _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static SpotLightComponentBuilder.shadowDepthBiasAttributeName);
          if (one-time initialization token for shadowCullModeAttributeName != -1)
          {
            swift_once();
          }

          v87 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(static SpotLightComponentBuilder.shadowCullModeAttributeName);
          if (v88)
          {
            v89 = v87;
            v90 = v88;
            if (v87 == 1801675074 && v88 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v91 = MEMORY[0x277CDB488];
LABEL_68:
              v92 = *v91;
              v93 = type metadata accessor for MaterialParameterTypes.FaceCulling();
              v94 = *(v93 - 8);
              v95 = v137;
              (*(v94 + 104))(v137, v92, v93);
              (*(v94 + 56))(v95, 0, 1, v93);
              goto LABEL_83;
            }

            if (v89 == 0x746E6F7246 && v90 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v91 = MEMORY[0x277CDB498];
              goto LABEL_68;
            }

            if (v89 == 1701736270 && v90 == 0xE400000000000000)
            {

LABEL_81:
              v91 = MEMORY[0x277CDB490];
              goto LABEL_68;
            }

            v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v96)
            {
              goto LABEL_81;
            }
          }

          v97 = type metadata accessor for MaterialParameterTypes.FaceCulling();
          (*(*(v97 - 8) + 56))(v137, 1, 1, v97);
LABEL_83:
          if (one-time initialization token for shadowZNearAttributeName != -1)
          {
            swift_once();
          }

          v98 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(static SpotLightComponentBuilder.shadowZNearAttributeName);
          v100 = MEMORY[0x277CDADE8];
          if (v99)
          {
            if (v98 == 0x6465786946 && v99 == 0xE500000000000000)
            {

LABEL_90:
              if (one-time initialization token for shadowZNearValueAttributeName != -1)
              {
                swift_once();
              }

              v102 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static SpotLightComponentBuilder.shadowZNearValueAttributeName);
              v103 = *&v102;
              if ((v102 & 0x100000000) != 0)
              {
                v103 = 0.01;
              }

              v104 = v129;
              *v129 = v103;
              v105 = v135;
              v106 = *(v135 + 104);
              v107 = v136;
              v106(v104, *MEMORY[0x277CDADE0], v136);
              (*(v105 + 32))(v138, v104, v107);
LABEL_96:
              if (one-time initialization token for shadowZFarAttributeName != -1)
              {
                swift_once();
              }

              v108 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(static SpotLightComponentBuilder.shadowZFarAttributeName);
              v125[0] = v83;
              if (v109)
              {
                if (v108 == 0x6465786946 && v109 == 0xE500000000000000)
                {

LABEL_103:
                  if (one-time initialization token for shadowZFarValueAttributeName != -1)
                  {
                    swift_once();
                  }

                  v111 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static SpotLightComponentBuilder.shadowZFarValueAttributeName);
                  v112 = *&v111;
                  if ((v111 & 0x100000000) != 0)
                  {
                    v112 = 10.0;
                  }

                  v113 = v130;
                  *v130 = v112;
                  v114 = v135;
                  v115 = v136;
                  v106(v113, *MEMORY[0x277CDADE0], v136);
                  v116 = v134;
                  (*(v114 + 32))(v134, v113, v115);
                  goto LABEL_109;
                }

                v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v110)
                {
                  goto LABEL_103;
                }
              }

              v114 = v135;
              v116 = v134;
              v115 = v136;
              v106(v134, *v100, v136);
LABEL_109:
              v117 = v133;
              SpotLightComponent.Shadow.init()();
              SpotLightComponent.Shadow.depthBias.setter();
              outlined init with copy of MaterialParameterTypes.FaceCulling?(v137, v131);
              SpotLightComponent.Shadow.cullModeOverride.setter();
              v118 = *(v114 + 16);
              v119 = v132;
              v118(v132, v138, v115);
              SpotLightComponent.Shadow.zNear.setter();
              v118(v119, v116, v115);
              SpotLightComponent.Shadow.zFar.setter();
              v120 = v139;
              v121 = v126;
              (*(v86 + 16))(v139, v117, v126);
              (*(v86 + 56))(v120, 0, 1, v121);
              v122 = dispatch thunk of Entity.components.modify();
              Entity.ComponentSet.subscript.setter();
              v122(&v148, 0);
              specialized Builder.addComponent<A>(component:)(v117);

              (*(v86 + 8))(v117, v121);
              v123 = *(v114 + 8);
              v123(v134, v115);
              v123(v138, v115);
              outlined destroy of Any?(v137, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
              return (*(v144 + 8))(v143, v145);
            }

            v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v101)
            {
              goto LABEL_90;
            }
          }

          v106 = *(v135 + 104);
          v106(v138, *v100, v136);
          goto LABEL_96;
        }
      }

LABEL_111:

      v85 = v126;
      v86 = v127;
LABEL_112:
      (*(v86 + 56))(v139, 1, 1, v85);
      v124 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v124(&v148, 0);

      return (*(v144 + 8))(v143, v145);
    }
  }

  else
  {
    outlined destroy of Any?(&v148, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for lightComponent != -1)
  {
    swift_once();
  }

  v79 = static OS_os_log.lightComponent;
  v80 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_2619891C0;
  *(v81 + 56) = MEMORY[0x277D837D0];
  *(v81 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v81 + 32) = v43;
  *(v81 + 40) = v45;
  os_log(_:dso:log:type:_:)("Input is not an entity %{public}s.", 36, 2, &dword_26187B000, v79, v80, v81);
}

uint64_t SpotLightComponentBuilder.clear(inputs:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18SpotLightComponentV6ShadowVSgMd, &_s10RealityKit18SpotLightComponentV6ShadowVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18SpotLightComponentVSgMd, &_s10RealityKit18SpotLightComponentVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for __EntityRef();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(v21, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (!v22)
  {
    return outlined destroy of Any?(v21, &_sypSgMd, &_sypSgMR);
  }

  type metadata accessor for EntityProxy(0);
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v0 + 17) == 1)
    {
      type metadata accessor for Entity();
      v15 = MEMORY[0x277D841D8];
      __AssetRef.__as<A>(_:)();
      v22 = v15;
      static __AssetRef.__fromCore(_:)();
      __swift_destroy_boxed_opaque_existential_0(v21);
      static Entity.__fromCore(_:)();
      (*(v10 + 8))(v13, v9);
      v16 = type metadata accessor for SpotLightComponent();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      v17 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v17(v21, 0);
      v18 = type metadata accessor for SpotLightComponent.Shadow();
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
      v19 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v19(v21, 0);

      *(v0 + 17) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance SpotLightComponentBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in SpotLightComponentBuilder.run(inputs:);
  *(v3 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_3;
  v4 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized SpotLightComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v8 = static SpotLightComponentBuilder.realityKitComponentTypeName;
  v0 = static SpotLightComponentBuilder.realityKitComponentTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = v8;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v5 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v4, 0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26198A640;
  *(v6 + 32) = v5;
  v8 = v3;

  specialized Sequence.forEach(_:)(v6);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v8;
}

id SafeSceneUUIDTable.lookup(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  [v7 lock];
  swift_beginAccess();
  v8 = *(v3 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = type metadata accessor for UUID();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);
    (*(v14 + 56))(a3, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  swift_endAccess();
  return [v7 unlock];
}

uint64_t SafeSceneUUIDTable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SceneAssetKeepAlive.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized static ActionBuilder.findSceneRoot(from:)(uint64_t a1)
{
  if (RIOPxrUsdObjectIsValid())
  {

    v2 = 0;
    while (1)
    {
      v3 = a1;
      v4 = Object.authoredMetadata()();
      if (String.count.getter() < 1)
      {
        v5 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v5 = RIOPxrTfTokenCreateWithCString();
      }

      v6 = v5;
      if (*(v4 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v8 & 1) != 0))
      {
        v9 = *(*(v4 + 56) + 8 * v7);

        v10 = RIOPxrVtValueCopyString();
        if (v10)
        {
          v11 = v10;
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;

          if (v12 == 0x62694C656E656373 && v14 == 0xEC00000079726172)
          {

            return v2;
          }

          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v16)
          {

            return v2;
          }
        }

        else
        {
        }
      }

      else
      {
      }

      v17 = RIOPxrUsdObjectCopyName();
      if (String.count.getter() < 1)
      {
        v18 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v18 = RIOPxrTfTokenCreateWithCString();
      }

      v19 = v18;
      type metadata accessor for RIOPxrTfTokenRef(0);
      lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
      v20 = static _CFObject.== infix(_:_:)();

      if ((v20 & 1) == 0)
      {
        v21 = RIOPxrUsdPrimCopyParent();
        if (v21)
        {
          v22 = v21;
          type metadata accessor for Prim();
          a1 = swift_allocObject();
          *(a1 + 16) = v22;

          v2 = v3;
          if (RIOPxrUsdObjectIsValid())
          {
            continue;
          }
        }
      }

      return 0;
    }
  }

  return 0;
}

void specialized static ActionBuilder.generateChangeSceneActionSpecifications(inputs:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3.n128_f32[0] = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v3);
  v8 = &v62 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v12.n128_f32[0] = MEMORY[0x28223BE20](v9, v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f32[0] = MEMORY[0x28223BE20](v15, v12);
  v71 = &v62 - v17;
  v19.n128_f32[0] = MEMORY[0x28223BE20](v18, v16);
  v21 = &v62 - v20;
  MEMORY[0x28223BE20](v22, v19);
  v24 = &v62 - v23;
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v25 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v25 = RIOPxrTfTokenCreateWithCString();
  }

  v26 = v25;
  if (!RIOPxrUsdPrimHasRelationship())
  {

    v72 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v72);
    return;
  }

  v68 = v5;
  v66 = v14;
  v27 = RIOPxrUsdPrimCopyRelationship();

  type metadata accessor for Relationship();
  v28 = swift_allocObject();
  v28[2] = v27;
  v29 = Relationship.targets.getter();
  if (*(v29 + 16))
  {
    EmptyPath = *(v29 + 32);
  }

  else
  {

    EmptyPath = RIOPxrSdfPathCreateEmptyPath();
  }

  outlined consume of Result<AnyAttribute, Object.Error>(v28, 0);
  v31 = Inputs.prim.getter();
  v32 = specialized static ActionBuilder.findSceneRoot(from:)(v31);

  if (!v32)
  {

    return;
  }

  v70 = EmptyPath;
  v33 = RIOBuilderInputsGetImportSession();
  if (!v33)
  {
    __break(1u);
    goto LABEL_22;
  }

  v34 = v33;
  v69 = v32;
  v65 = v21;
  v67 = v24;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v36 = v70;
  v37 = RIOPxrSdfPathCopyString();
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v72 = 10867;
  v73 = 0xE200000000000000;
  MEMORY[0x26670F080](v38, v40);

  SafeSceneUUIDTable.lookup(_:)(v72, v73, v8);

  v41 = v10;
  v42 = *(v10 + 48);
  if (v42(v8, 1, v9) == 1)
  {

    v43 = v8;
LABEL_19:
    outlined destroy of UUID?(v43);
    return;
  }

  v64 = v41;
  v44 = *(v41 + 32);
  v44(v67, v8, v9);
  v45 = RIOBuilderInputsGetImportSession();
  if (!v45)
  {
    goto LABEL_23;
  }

  v46 = v45;
  v63 = v44;
  v47 = RIOImportSessionGetSwiftObject();

  v48 = v68;
  if (!v47)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v49 = RIOPxrUsdObjectCopyPath();
  v50 = RIOPxrSdfPathCopyString();
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  SafeSceneUUIDTable.lookup(_:)(v51, v53, v48);

  if (v42(v48, 1, v9) == 1)
  {
    (*(v64 + 8))(v67, v9);

    v43 = v48;
    goto LABEL_19;
  }

  v54 = v65;
  v63(v65, v48, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
  v68 = type metadata accessor for __RKEntityActionSpecification();
  v55 = *(v68 - 8);
  v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_2619891C0;
  v58 = v64;
  v59 = *(v64 + 16);
  v59(v71, v54, v9);
  v60 = v67;
  v59(v66, v67, v9);
  __RKChangeSceneActionArguments.init(sceneRoot:targetSceneIdentifier:)();
  (*(v55 + 104))(v57 + v56, *MEMORY[0x277CDAF48], v68);

  v61 = *(v58 + 8);
  v61(v65, v9);
  v61(v60, v9);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 64;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 48) + 8 * v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_21:
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

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v22 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v24 = result;
    v25 = v4;
    v26 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v24 = result;
  v25 = v5;
  v26 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v24;
    v9 = v25;
    v11 = v26;
    v12 = *(specialized Set.subscript.getter(v24, v25, v26, a1) + 24);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v22)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy9RealityIO18PropertyDirtyStateC_GMd, &_sSh5IndexVy9RealityIO18PropertyDirtyStateC_GMR);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v23, 0);
      if (v6 == v2)
      {
LABEL_28:
        outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v24, v25, v26);
        return v27;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_32;
      }

      v14 = v10 >> 6;
      v15 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v15 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v16 = v15 & (-2 << (v10 & 0x3F));
      if (v16)
      {
        v13 = __clz(__rbit64(v16)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v14 << 6;
        v18 = v14 + 1;
        v19 = (a1 + 64 + 8 * v14);
        while (v18 < (v13 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v10, v9, 0);
            v13 = __clz(__rbit64(v20)) + v17;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v10, v9, 0);
      }

LABEL_27:
      v24 = v13;
      v25 = v9;
      v26 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t static PropertyDirtyStateBuilder.buildBlock(_:)(unint64_t a1)
{
  v2 = MEMORY[0x277D84FA0];
  specialized Sequence.forEach(_:)(a1);
  return v2;
}

void *TypeNamePrimDirtyState.__allocating_init(typeName:primMetadataContainsAnyOf:propertiesContainAnyOf:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v5;
  v7 = inited + 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v9 = v8;
  swift_setDeallocating();
  v10 = outlined destroy of ToolsFoundations.Token(v7);
  v11 = a3(v10);
  type metadata accessor for TypeNamePrimDirtyState();
  v12 = swift_allocObject();
  v12[5] = v9;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v13);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v11);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v15 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  v17 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v12[2] = a2;
  v12[3] = v11;
  v12[4] = v17;
  return v12;
}

uint64_t PrimDirtyState.__allocating_init(propertiesContainAnyOf:)(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 152);
  v4 = MEMORY[0x277D84FA0];

  return v3(v4, v2, 0);
}

uint64_t PrimDirtyState.__allocating_init(metadata:propertiesContainAnyOf:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2();
  v5 = *(v2 + 152);

  return v5(a1, v4, 0);
}

void PrimDirtyState.hash(into:)(__int128 *a1)
{
  specialized Set.hash(into:)(a1, *(v1 + 24));
  v3 = *(v1 + 16);

  specialized Set.hash(into:)(a1, v3);
}

uint64_t PrimDirtyState.isEqual(to:)(uint64_t a1)
{
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO18PropertyDirtyStateC_Tt1g5(*(v1 + 24), *(a1 + 24)) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  v4 = *(a1 + 16);

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v3, v4);
}

uint64_t PrimDirtyState.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO14PrimDirtyStateCmMd, &_s9RealityIO14PrimDirtyStateCmMR);
  v0 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(29);

  type metadata accessor for PropertyDirtyState();
  lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type PropertyDirtyState and conformance PropertyDirtyState, 255, type metadata accessor for PropertyDirtyState, &protocol conformance descriptor for PropertyDirtyState);
  v1 = Set.description.getter();
  MEMORY[0x26670F080](v1);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000019, 0x8000000261995180);

  _StringGuts.grow(_:)(30);

  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v2 = Set.description.getter();
  MEMORY[0x26670F080](v2);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD00000000000001BLL, 0x80000002619951A0);

  return v0;
}

void *PrimDirtyState.__allocating_init(primMetadataContainsAnyOf:propertiesContainAnyOf:core:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  if (!a3)
  {
    v7 = result;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a1);

    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(a2);

    type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
    v9 = Array._bridgeToObjectiveC()().super.isa;

    a3 = RIOBuilderDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

    result = v7;
  }

  result[4] = a3;
  return result;
}

void *PrimDirtyState.init(primMetadataContainsAnyOf:propertiesContainAnyOf:core:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  if (!a3)
  {

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a1);

    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(a2);

    type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
    v7 = Array._bridgeToObjectiveC()().super.isa;

    v8 = RIOBuilderDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

    a3 = v8;
  }

  v3[4] = a3;
  return v3;
}

uint64_t PrimDirtyState.__allocating_init(core:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x266710650]();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v7 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = v6;
  if ((v7 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      MEMORY[0x26670F670](i, v7);
      v12 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
      swift_unknownObjectRelease();
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v10 + 16) = v14 + 1;
      *(v10 + 8 * v14 + 32) = v12;
    }

    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = 32;
    do
    {
      v16 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = v16;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v16 = v19;
        v6 = MEMORY[0x277D84F90];
      }

      *(v10 + 16) = v18 + 1;
      *(v10 + 8 * v18 + 32) = v16;
      v15 += 8;
      --v8;
    }

    while (v8);
  }

LABEL_19:
  v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v10);

  v21 = MEMORY[0x266710660](a1);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v22 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_21;
    }
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_21:
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }
  }

  v23 = __CocoaSet.count.getter();
  if (v23)
  {
LABEL_22:
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v23 & 0x8000000000000000) == 0)
    {
      v24 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x26670F670](v24, v22);
        }

        else
        {
          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = RIOBuilderDirtyPropertyDescriptorCopyType();
        if (v27 == 3)
        {
          specialized NamespacedPropertyDirtyState.__allocating_init(core:)(v26);
        }

        else if (v27 == 2)
        {
          specialized NamedPropertyDirtyState.__allocating_init(core:)(v26);
        }

        else
        {
          type metadata accessor for PropertyDirtyState();
          PropertyDirtyState.__allocating_init(core:)(v26);
        }

        ++v24;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v23 != v24);

      v28 = v6;
      goto LABEL_37;
    }

LABEL_41:
    __break(1u);
    return result;
  }

LABEL_36:

  v28 = MEMORY[0x277D84F90];
LABEL_37:
  v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO18PropertyDirtyStateC_SayAFGTt0g5Tf4g_n(v28);

  v30 = *(v2 + 152);

  return v30(v20, v29, a1);
}

uint64_t PrimDirtyState.deinit()
{

  return v0;
}

uint64_t PrimDirtyState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int PrimDirtyState.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 128))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PrimDirtyState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 128))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PrimDirtyState()
{
  Hasher.init(_seed:)();
  (*(**v0 + 128))(v2);
  return Hasher._finalize()();
}

void *TypeNamePrimDirtyState.__allocating_init(typeName:propertiesContainAnyOf:)(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v3;
  v5 = inited + 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v7 = v6;
  swift_setDeallocating();
  v8 = outlined destroy of ToolsFoundations.Token(v5);
  v9 = a2(v8);
  type metadata accessor for TypeNamePrimDirtyState();
  v10 = swift_allocObject();
  v10[5] = v7;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v11);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v9);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v13 = Array._bridgeToObjectiveC()().super.isa;

  v14 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v15 = Array._bridgeToObjectiveC()().super.isa;

  v16 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v10[2] = v14;
  v10[3] = v9;
  v10[4] = v16;
  return v10;
}

void *TypeNamePrimDirtyState.__allocating_init(typeName:primMetadataContainsAnyOf:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v3;
  v5 = inited + 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v7 = v6;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(v5);
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v8 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO18PropertyDirtyStateC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  type metadata accessor for TypeNamePrimDirtyState();
  v9 = swift_allocObject();
  v9[5] = v7;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v10);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v8);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v13 = Array._bridgeToObjectiveC()().super.isa;

  v14 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v9[2] = a2;
  v9[3] = v8;
  v9[4] = v14;
  return v9;
}

void *TypeNamePrimDirtyState.__allocating_init(typeNameIsAnyOf:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84FA0];
  v3 = MEMORY[0x277D84FA0];
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO18PropertyDirtyStateC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v3 = MEMORY[0x277D84FA0];
    }
  }

  type metadata accessor for TypeNamePrimDirtyState();
  v4 = swift_allocObject();
  v4[5] = a1;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v5);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v3);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v7 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(v2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v9;
  return v4;
}

void *TypeNamePrimDirtyState.__allocating_init(typeNameIsAnyOf:primMetadataContainsAnyOf:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO18PropertyDirtyStateC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  type metadata accessor for TypeNamePrimDirtyState();
  v5 = swift_allocObject();
  v5[5] = a1;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v6);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v4);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v5[2] = a2;
  v5[3] = v4;
  v5[4] = v10;
  return v5;
}

void *TypeNamePrimDirtyState.__allocating_init(typeNameIsAnyOf:primMetadataContainsAnyOf:propertiesContainAnyOf:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  type metadata accessor for TypeNamePrimDirtyState();
  v6 = swift_allocObject();
  v6[5] = a1;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v7);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v5);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v6[2] = a2;
  v6[3] = v5;
  v6[4] = v11;
  return v6;
}

void TypeNamePrimDirtyState.hash(into:)(__int128 *a1)
{
  specialized Set.hash(into:)(a1, v1[5]);
  specialized Set.hash(into:)(a1, v1[3]);
  v3 = v1[2];

  specialized Set.hash(into:)(a1, v3);
}

uint64_t TypeNamePrimDirtyState.isEqual(to:)(uint64_t a1)
{
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1[5];
    v5 = *(v2 + 40);

    LOBYTE(v4) = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v4, v5);

    if (v4 & 1) != 0 && (v6 = v1[3], v7 = *(v3 + 24), , LOBYTE(v6) = _sSh2eeoiySbShyxG_ABtFZ9RealityIO18PropertyDirtyStateC_Tt1g5(v6, v7), , (v6))
    {
      v8 = v1[2];
      v9 = *(v3 + 16);

      v10 = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v8, v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t TypeNamePrimDirtyState.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO22TypeNamePrimDirtyStateCmMd, &_s9RealityIO22TypeNamePrimDirtyStateCmMR);
  v0 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(22);

  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v1 = Set.description.getter();
  MEMORY[0x26670F080](v1);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000012, 0x80000002619951C0);

  _StringGuts.grow(_:)(28);

  type metadata accessor for PropertyDirtyState();
  lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type PropertyDirtyState and conformance PropertyDirtyState, 255, type metadata accessor for PropertyDirtyState, &protocol conformance descriptor for PropertyDirtyState);
  v2 = Set.description.getter();
  MEMORY[0x26670F080](v2);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000018, 0x80000002619951E0);

  _StringGuts.grow(_:)(30);

  v3 = Set.description.getter();
  MEMORY[0x26670F080](v3);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD00000000000001BLL, 0x80000002619951A0);

  return v0;
}

uint64_t TypeNamePrimDirtyState.deinit()
{

  return v0;
}

uint64_t TypeNamePrimDirtyState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t specialized Set.subscript.getter(unint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = __CocoaSet.Index.age.getter();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      v13 = __CocoaSet.Index.element.getter();
      type metadata accessor for PrimDirtyState();
      swift_dynamicCast();
      v7 = v12[0];
      Hasher.init(_seed:)();
      (*(*v12[0] + 128))(v12);
      v8 = Hasher._finalize()();
      v9 = -1 << *(a4 + 32);
      v5 = v8 & ~v9;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v10 = ~v9;
        do
        {
          v11 = *(**(*(a4 + 48) + 8 * v5) + 136);

          LOBYTE(v11) = v11(v7);

          if (v11)
          {
            goto LABEL_19;
          }

          v5 = (v5 + 1) & v10;
        }

        while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
      }

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
        }

        __break(1u);
LABEL_19:
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = MEMORY[0x26670F570](result, a2, v6);
  type metadata accessor for PrimDirtyState();
  swift_dynamicCast();
  return v12[0];
}

{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = __CocoaSet.Index.age.getter();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      v13 = __CocoaSet.Index.element.getter();
      type metadata accessor for PropertyDirtyState();
      swift_dynamicCast();
      v7 = v12[0];
      Hasher.init(_seed:)();
      (*(*v12[0] + 120))(v12);
      v8 = Hasher._finalize()();
      v9 = -1 << *(a4 + 32);
      v5 = v8 & ~v9;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v10 = ~v9;
        do
        {
          v11 = *(**(*(a4 + 48) + 8 * v5) + 128);

          LOBYTE(v11) = v11(v7);

          if (v11)
          {
            goto LABEL_19;
          }

          v5 = (v5 + 1) & v10;
        }

        while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
      }

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
        }

        __break(1u);
LABEL_19:
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = MEMORY[0x26670F570](result, a2, v6);
  type metadata accessor for PropertyDirtyState();
  swift_dynamicCast();
  return v12[0];
}

uint64_t specialized Set.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a4, v11, v8);
}

uint64_t specialized Set.subscript.getter(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      if (__CocoaSet.Index.age.getter() == *(a4 + 36))
      {
        v16 = __CocoaSet.Index.element.getter();
        type metadata accessor for StageDirtyState();
        swift_dynamicCast();
        v6 = *&v15[0];
        Hasher.init(_seed:)();
        specialized Set.hash(into:)(v15, *(*&v15[0] + 24));
        specialized Set.hash(into:)(v15, *(v6 + 16));
        v7 = Hasher._finalize()();
        v8 = -1 << *(a4 + 32);
        v9 = v7 & ~v8;
        if ((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v10 = ~v8;
          while (1)
          {
            v11 = *(*(a4 + 48) + 8 * v9);
            v12 = *(v11 + 24);
            v13 = *(v6 + 24);

            if (_sSh2eeoiySbShyxG_ABtFZ9RealityIO14PrimDirtyStateC_Tt1g5(v12, v13))
            {
              v14 = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*(v11 + 16), *(v6 + 16));

              if (v14)
              {
              }
            }

            else
            {
            }

            v9 = (v9 + 1) & v10;
            if (((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        goto LABEL_26;
      }

      __break(1u);
    }

    else if ((result & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > result)
    {
      if ((*(a4 + 8 * (result >> 6) + 56) >> result))
      {
        if (*(a4 + 36) == a2)
        {
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:

      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v5 = a4;
  }

  else
  {
    v5 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  v16 = MEMORY[0x26670F570](result, a2, v5);
  type metadata accessor for StageDirtyState();
  swift_dynamicCast();
  return *&v15[0];
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss11_SetStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = v3 + 56;
    v20 = a1 + 32;
    lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
    v5 = 0;
    while (1)
    {
      v22 = *(v20 + 8 * v5);
      v6 = v22;
      v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v8 = -1 << *(v3 + 32);
      v9 = v7 & ~v8;
      v10 = v9 >> 6;
      v11 = *(v4 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) != 0)
      {
        v13 = v1;
        v14 = ~v8;
        lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
        do
        {
          v21 = *(*(v3 + 48) + 8 * v9);
          v15 = v21;
          v16 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v16)
          {

            v1 = v13;
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v14;
          v10 = v9 >> 6;
          v11 = *(v4 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while (((1 << v9) & v11) != 0);
        v1 = v13;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v22;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      *(v3 + 16) = v19;
LABEL_4:
      if (++v5 == v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO18PropertyDirtyStateC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = __CocoaSet.count.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1;
  v22 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v5;
  while (v22)
  {
    result = MEMORY[0x26670F670](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_24;
    }

LABEL_17:
    Hasher.init(_seed:)();
    (*(*v8 + 120))(v23);
    result = Hasher._finalize()();
    v10 = ~(-1 << *(v3 + 32));
    v11 = result & v10;
    v12 = (result & v10) >> 6;
    v13 = *(v7 + 8 * v12);
    v14 = 1 << (result & v10);
    if ((v14 & v13) != 0)
    {
      while (1)
      {
        v15 = *(**(*(v3 + 48) + 8 * v11) + 128);

        LOBYTE(v15) = v15(v8);

        if (v15)
        {
          break;
        }

        v11 = (v11 + 1) & v10;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          v5 = v20;
          v1 = v21;
          goto LABEL_21;
        }
      }

      v5 = v20;
      v1 = v21;
      if (v6 == v20)
      {
        return v3;
      }
    }

    else
    {
LABEL_21:
      *(v7 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v8;
      v16 = *(v3 + 16);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_25;
      }

      *(v3 + 16) = v17;
      if (v6 == v5)
      {
        return v3;
      }
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_26;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v1;
  v3 = inited + 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v5 = v4;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(v3);
  v6 = MEMORY[0x277D84FA0];
  v7 = MEMORY[0x277D84FA0];
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO18PropertyDirtyStateC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v7 = MEMORY[0x277D84FA0];
    }
  }

  type metadata accessor for TypeNamePrimDirtyState();
  v8 = swift_allocObject();
  v8[5] = v5;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v9);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v7);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(v6);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v13;
  return v8;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss11_SetStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = v3 + 56;
    v20 = a1 + 32;
    lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
    v5 = 0;
    while (1)
    {
      v22 = *(v20 + 8 * v5);
      v6 = v22;
      v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v8 = -1 << *(v3 + 32);
      v9 = v7 & ~v8;
      v10 = v9 >> 6;
      v11 = *(v4 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) != 0)
      {
        v13 = v1;
        v14 = ~v8;
        lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
        do
        {
          v21 = *(*(v3 + 48) + 8 * v9);
          v15 = v21;
          v16 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v16)
          {

            v1 = v13;
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v14;
          v10 = v9 >> 6;
          v11 = *(v4 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while (((1 << v9) & v11) != 0);
        v1 = v13;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v22;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      *(v3 + 16) = v19;
LABEL_4:
      if (++v5 == v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO16OutputDescriptorOGMd, &_ss11_SetStorageCy9RealityIO16OutputDescriptorOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v33 = v3 + 56;
    v29 = v1;
    v30 = a1 + 32;
    v28 = v3;
    while (1)
    {
      v31 = v4;
      v5 = (v30 + 40 * v4);
      v7 = *v5;
      v6 = v5[1];
      v9 = v5[2];
      v8 = v5[3];
      v10 = *(v5 + 32);
      Hasher.init(_seed:)();
      MEMORY[0x26670FA20](0);

      String.hash(into:)();
      String.hash(into:)();
      v32 = v10;
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v33 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        do
        {
          v18 = v17 + 40 * v13;
          result = *v18;
          v19 = *(v18 + 16);
          v20 = *(v18 + 24);
          v21 = *(v18 + 32);
          v22 = *v18 == v7 && *(v18 + 8) == v6;
          if (v22 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
            if (v19 == v9 && v20 == v8)
            {
              if (v32 == v21)
              {
                goto LABEL_3;
              }
            }

            else
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((result & 1) != 0 && ((v32 ^ v21) & 1) == 0)
              {
LABEL_3:

                v3 = v28;
                v1 = v29;
                goto LABEL_4;
              }
            }
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v33 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while ((v15 & (1 << v13)) != 0);
        v3 = v28;
        v1 = v29;
        v17 = *(v28 + 48);
      }

      *(v33 + 8 * v14) = v15 | v16;
      v24 = v17 + 40 * v13;
      *v24 = v7;
      *(v24 + 8) = v6;
      *(v24 + 16) = v9;
      *(v24 + 24) = v8;
      *(v24 + 32) = v32;
      v25 = *(v3 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v3 + 16) = v27;
LABEL_4:
      v4 = v31 + 1;
      if (v31 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}