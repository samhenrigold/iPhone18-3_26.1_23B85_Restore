uint64_t mxSignpost(_:dso:log:name:signpostID:_:_:)(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  v46 = a8;
  v44 = a2;
  v45 = a1;
  v15 = type metadata accessor for OSSignpostID();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignpostID.invalid.getter();
  lazy protocol witness table accessor for type OSSignpostID and conformance OSSignpostID();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v16 + 8);
  v20(v18, v15);
  if (v19)
  {
    return OS_os_log.signpostsEnabled.getter();
  }

  static OSSignpostID.null.getter();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20(v18, v15);
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) != 0 && (v22 & 1) == 0)
  {
    v23 = _swift_os_log_return_address();
    if (a6)
    {
      v24 = HIDWORD(a4);
      if (!HIDWORD(a4))
      {
        v24 = a4 & 0xFFFFF800;
        if (v24 == 55296)
        {
          __break(1u);
          goto LABEL_38;
        }

        v24 = a4 >> 16;
        if (a4 >> 16 <= 0x10)
        {
          if (a4 <= 0x7F)
          {
            v29 = a4 + 1;
            goto LABEL_15;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        v32 = (a4 & 0x3F) << 8;
        if (a4 >= 0x800)
        {
          goto LABEL_50;
        }

        v29 = (a4 >> 6) + v32 + 33217;
        goto LABEL_15;
      }
    }

    else
    {
      if (a4)
      {
        if (a10)
        {
          v25 = v46;
          v24 = HIDWORD(v46);
          if (!HIDWORD(v46))
          {
            v24 = v46 & 0xFFFFF800;
            v32 = 55296;
            if (v24 == 55296)
            {
              __break(1u);
              while (1)
              {
                __break(1u);
LABEL_50:
                v40 = (v32 | (a4 >> 6) & 0x3F) << 8;
                v29 = v24 ? (a4 >> 18) + ((v40 | (a4 >> 12) & 0x3F) << 8) - 2122219023 : (a4 >> 12) + v40 + 8487393;
LABEL_15:
                v24 = 0xFEFEFEFEFEFEFFLL;
                v25 = -1 << (32 - (__clz(v29) & 0x18));
                v48 = (v29 + 0xFEFEFEFEFEFEFFLL) & ~v25;
                if ((a10 & 1) == 0)
                {
                  break;
                }

                v35 = v46;
                if (HIDWORD(v46))
                {
                  goto LABEL_42;
                }

                v32 = v46 & 0xFFFFF800;
                if ((v46 & 0xFFFFF800) != 0xD800)
                {
                  if (v46 > 0x10FFFF)
                  {
                    __break(1u);
                  }

                  else if (v46 <= 0x7F)
                  {
                    v36 = v46 + 1;
LABEL_29:
                    v47 = (v36 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v36) & 0x18)));
                    v37 = MEMORY[0x2A1C7C4A8](v23);
                    *(&v43 - 8) = v44;
                    *(&v43 - 7) = v37;
                    *(&v43 - 6) = a3;
                    *(&v43 - 40) = v45;
                    *(&v43 - 4) = &v48;
                    *(&v43 - 3) = a7;
                    *(&v43 - 2) = &v47;
                    v28 = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:);
                    return specialized withVaList<A>(_:_:)(a11, v28);
                  }

                  v39 = (v35 & 0x3F) << 8;
                  if (v35 >= 0x800)
                  {
                    v42 = (v39 | (v46 >> 6) & 0x3F) << 8;
                    if (v46 >> 16)
                    {
                      v36 = (v46 >> 18) + ((v42 | (v46 >> 12) & 0x3F) << 8) - 2122219023;
                    }

                    else
                    {
                      v36 = (v46 >> 12) + v42 + 8487393;
                    }
                  }

                  else
                  {
                    v36 = (v46 >> 6) + v39 + 33217;
                  }

                  goto LABEL_29;
                }
              }

              if (!v46)
              {
                goto LABEL_40;
              }

              v30 = MEMORY[0x2A1C7C4A8](v23);
              *(&v43 - 8) = v44;
              *(&v43 - 7) = v30;
              *(&v43 - 6) = a3;
              *(&v43 - 40) = v45;
              *(&v43 - 4) = &v48;
              *(&v43 - 3) = a7;
              *(&v43 - 2) = v31;
              v28 = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply;
              return specialized withVaList<A>(_:_:)(a11, v28);
            }

            v24 = v46 >> 16;
            if (v46 >> 16 <= 0x10)
            {
              if (v46 <= 0x7F)
              {
                v33 = v46 + 1;
LABEL_23:
                v48 = (v33 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v33) & 0x18)));
                v34 = MEMORY[0x2A1C7C4A8](v23);
                *(&v43 - 8) = v44;
                *(&v43 - 7) = v34;
                *(&v43 - 6) = a3;
                *(&v43 - 40) = v45;
                *(&v43 - 4) = a4;
                *(&v43 - 3) = a7;
                *(&v43 - 2) = &v48;
                v28 = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply;
                return specialized withVaList<A>(_:_:)(a11, v28);
              }

LABEL_43:
              v38 = (v25 & 0x3F) << 8;
              if (v25 >= 0x800)
              {
                v41 = (v38 | (v46 >> 6) & 0x3F) << 8;
                if (v24)
                {
                  v33 = (v46 >> 18) + ((v41 | (v46 >> 12) & 0x3F) << 8) - 2122219023;
                }

                else
                {
                  v33 = (v46 >> 12) + v41 + 8487393;
                }
              }

              else
              {
                v33 = (v46 >> 6) + v38 + 33217;
              }

              goto LABEL_23;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v46)
        {
          v26 = MEMORY[0x2A1C7C4A8](v23);
          *(&v43 - 8) = v44;
          *(&v43 - 7) = v26;
          *(&v43 - 6) = a3;
          *(&v43 - 40) = v45;
          *(&v43 - 4) = a4;
          *(&v43 - 3) = a7;
          *(&v43 - 2) = v27;
          v28 = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply;
          return specialized withVaList<A>(_:_:)(a11, v28);
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSSignpostID and conformance OSSignpostID()
{
  result = lazy protocol witness table cache variable for type OSSignpostID and conformance OSSignpostID;
  if (!lazy protocol witness table cache variable for type OSSignpostID and conformance OSSignpostID)
  {
    type metadata accessor for OSSignpostID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSSignpostID and conformance OSSignpostID);
  }

  return result;
}

uint64_t specialized withVaList<A>(_:_:)(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for __VaListBuilder();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v23 = __VaListBuilder.va_list()();
    a2(v23);
    v8 = v3;

    return MEMORY[0x2A1C735A8](v8);
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v7 + 40 * v6), *(v7 + 40 * v6 + 24));
    v8 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v9 = *v4;
    v10 = *(v8 + 16);
    v11 = __OFADD__(*v4, v10);
    v12 = *v4 + v10;
    if (v11)
    {
      break;
    }

    v13 = v3[4];
    if (v13 >= v12)
    {
      goto LABEL_18;
    }

    if (v13 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v14 = v3[5];
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    v3[4] = v12;
    if ((v12 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v15 = v8;
    v16 = swift_slowAlloc();
    v17 = v16;
    v3[5] = v16;
    if (v14)
    {
      if (v16 != v14 || v16 >= &v14[8 * v9])
      {
        memmove(v16, v14, 8 * v9);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v8 = v15;
LABEL_18:
      v17 = v3[5];
      if (!v17)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v8 = v15;
    if (!v17)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v19 = *(v8 + 16);
    if (v19)
    {
      v20 = (v8 + 32);
      v21 = *v4;
      while (1)
      {
        v22 = *v20++;
        *&v17[8 * v21] = v22;
        v21 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v21;
        if (!--v19)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return MEMORY[0x2A1C735A8](v8);
}

uint64_t mxSignpostAnimationIntervalBegin(dso:log:name:signpostID:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v43 = a1;
  v44 = a7;
  v14 = type metadata accessor for OSSignpostID();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = static os_signpost_type_t.begin.getter();
  static OSSignpostID.invalid.getter();
  lazy protocol witness table accessor for type OSSignpostID and conformance OSSignpostID();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v15 + 8);
  v19(v17, v14);
  if (v18)
  {
    return OS_os_log.signpostsEnabled.getter();
  }

  static OSSignpostID.null.getter();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19(v17, v14);
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) != 0 && (v21 & 1) == 0)
  {
    v22 = _swift_os_log_return_address();
    if (a5)
    {
      v23 = HIDWORD(a3);
      if (!HIDWORD(a3))
      {
        v23 = a3 & 0xFFFFF800;
        if (v23 == 55296)
        {
          __break(1u);
          goto LABEL_38;
        }

        v23 = a3 >> 16;
        if (a3 >> 16 <= 0x10)
        {
          if (a3 <= 0x7F)
          {
            v27 = a3 + 1;
            goto LABEL_15;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        v30 = (a3 & 0x3F) << 8;
        if (a3 >= 0x800)
        {
          goto LABEL_50;
        }

        v27 = (a3 >> 6) + v30 + 33217;
        goto LABEL_15;
      }
    }

    else
    {
      if (a3)
      {
        if (a9)
        {
          v24 = v44;
          v23 = HIDWORD(v44);
          if (!HIDWORD(v44))
          {
            v23 = v44 & 0xFFFFF800;
            v30 = 55296;
            if (v23 == 55296)
            {
              __break(1u);
              while (1)
              {
                __break(1u);
LABEL_50:
                v38 = (v30 | (a3 >> 6) & 0x3F) << 8;
                v27 = v23 ? (a3 >> 18) + ((v38 | (a3 >> 12) & 0x3F) << 8) - 2122219023 : (a3 >> 12) + v38 + 8487393;
LABEL_15:
                v23 = 0xFEFEFEFEFEFEFFLL;
                v24 = -1 << (32 - (__clz(v27) & 0x18));
                v46 = (v27 + 0xFEFEFEFEFEFEFFLL) & ~v24;
                if ((a9 & 1) == 0)
                {
                  break;
                }

                v33 = v44;
                if (HIDWORD(v44))
                {
                  goto LABEL_42;
                }

                v30 = v44 & 0xFFFFF800;
                if ((v44 & 0xFFFFF800) != 0xD800)
                {
                  if (v44 > 0x10FFFF)
                  {
                    __break(1u);
                  }

                  else if (v44 <= 0x7F)
                  {
                    v34 = v44 + 1;
LABEL_29:
                    v45 = (v34 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v34) & 0x18)));
                    v35 = MEMORY[0x2A1C7C4A8](v22);
                    *&v41[-64] = v43;
                    *&v41[-56] = v35;
                    *&v41[-48] = a2;
                    v41[-40] = v42;
                    *&v41[-32] = &v46;
                    *&v41[-24] = a6;
                    *&v41[-16] = &v45;
                    return specialized withVaList<A>(_:_:)(a10, closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply);
                  }

                  v37 = (v33 & 0x3F) << 8;
                  if (v33 >= 0x800)
                  {
                    v40 = (v37 | (v44 >> 6) & 0x3F) << 8;
                    if (v44 >> 16)
                    {
                      v34 = (v44 >> 18) + ((v40 | (v44 >> 12) & 0x3F) << 8) - 2122219023;
                    }

                    else
                    {
                      v34 = (v44 >> 12) + v40 + 8487393;
                    }
                  }

                  else
                  {
                    v34 = (v44 >> 6) + v37 + 33217;
                  }

                  goto LABEL_29;
                }
              }

              if (!v44)
              {
                goto LABEL_40;
              }

              v28 = MEMORY[0x2A1C7C4A8](v22);
              *&v41[-64] = v43;
              *&v41[-56] = v28;
              *&v41[-48] = a2;
              v41[-40] = v42;
              *&v41[-32] = &v46;
              *&v41[-24] = a6;
              *&v41[-16] = v29;
              return specialized withVaList<A>(_:_:)(a10, closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply);
            }

            v23 = v44 >> 16;
            if (v44 >> 16 <= 0x10)
            {
              if (v44 <= 0x7F)
              {
                v31 = v44 + 1;
LABEL_23:
                v46 = (v31 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v31) & 0x18)));
                v32 = MEMORY[0x2A1C7C4A8](v22);
                *&v41[-64] = v43;
                *&v41[-56] = v32;
                *&v41[-48] = a2;
                v41[-40] = v42;
                *&v41[-32] = a3;
                *&v41[-24] = a6;
                *&v41[-16] = &v46;
                return specialized withVaList<A>(_:_:)(a10, closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply);
              }

LABEL_43:
              v36 = (v24 & 0x3F) << 8;
              if (v24 >= 0x800)
              {
                v39 = (v36 | (v44 >> 6) & 0x3F) << 8;
                if (v23)
                {
                  v31 = (v44 >> 18) + ((v39 | (v44 >> 12) & 0x3F) << 8) - 2122219023;
                }

                else
                {
                  v31 = (v44 >> 12) + v39 + 8487393;
                }
              }

              else
              {
                v31 = (v44 >> 6) + v36 + 33217;
              }

              goto LABEL_23;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v44)
        {
          v25 = MEMORY[0x2A1C7C4A8](v22);
          *&v41[-64] = v43;
          *&v41[-56] = v25;
          *&v41[-48] = a2;
          v41[-40] = v42;
          *&v41[-32] = a3;
          *&v41[-24] = a6;
          *&v41[-16] = v26;
          return specialized withVaList<A>(_:_:)(a10, closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)partial apply);
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in mxSignpost(_:dso:log:name:signpostID:_:_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  v9 = OSSignpostID.rawValue.getter();

  return MEMORY[0x2A1C73E98](v3, v4, v5, v6, v7, v9, v8, a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}