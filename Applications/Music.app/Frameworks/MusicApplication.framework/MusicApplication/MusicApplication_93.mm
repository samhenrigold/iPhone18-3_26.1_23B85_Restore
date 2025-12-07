uint64_t sub_877148(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_877334(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_8773C0(v3);
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

char *sub_8773D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D278, &unk_B32B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_8774D8@<X0>(_BYTE *a1@<X8>)
{
  sub_877574();
  result = sub_AB6250();
  *a1 = v3;
  return result;
}

unint64_t sub_877574()
{
  result = qword_E1D180;
  if (!qword_E1D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D180);
  }

  return result;
}

uint64_t sub_8775C8()
{
  if (*(v0 + 24))
  {
  }

  sub_83315C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_877614()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1(*(v0 + 16));
  }

  return result;
}

uint64_t sub_87764C(uint64_t a1, double *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v39 = sub_AB5C00();
  v36 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB5A60();
  v35 = *(v15 - 8);
  __chkstk_darwin();
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB5B30();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D1F0, &qword_B32AD0) - 8;
  __chkstk_darwin();
  v24 = &v35 - v23;
  v43.origin.x = a3;
  v43.origin.y = a4;
  v43.size.width = a5;
  v43.size.height = a6;
  CGRectGetWidth(v43);
  v40 = a2;
  sub_878A18(&qword_E1D1F8, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_AB9C60();
  sub_AB9CA0();
  v37 = sub_AB9C90();
  (*(v19 + 16))(v21, a1, v18);
  sub_878A18(&qword_E1D200, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_AB95A0();
  v25 = *(v22 + 44);
  sub_AB9CA0();
  if (*&v24[v25] != v41[0])
  {
    ++v36;
    v37 = (v35 + 2);
    ++v35;
    v26 = a3;
    do
    {
      v27 = sub_AB9D80();
      (*v37)(v17);
      v27(v41, 0);
      sub_AB9CB0();
      v44.origin.x = a3;
      v44.origin.y = a4;
      v44.size.width = a5;
      v44.size.height = a6;
      CGRectGetHeight(v44);
      sub_AB7B60();
      LOBYTE(v41[0]) = 0;
      v42[0] = 0;
      sub_AB5A50();
      LOBYTE(v41[0]) = 0;
      v42[0] = 0;
      v28 = v18;
      v29 = v15;
      v30 = v38;
      sub_AB5A30();
      sub_AB5BF0();
      v32 = v31;
      v33 = v30;
      v15 = v29;
      v18 = v28;
      (*v36)(v33, v39);
      (*v35)(v17, v15);
      v26 = v26 + v32 + a7;
      sub_AB9CA0();
    }

    while (*&v24[v25] != v41[0]);
  }

  return sub_12E1C(v24, &qword_E1D1F0, &qword_B32AD0);
}

void _s11MusicCoreUI22PlayIntentLayoutHelperV6layout_2in4rect13configurationySayAA12SymbolButtonCG_So6UIViewCSo6CGRectVSgAC13ConfigurationVtFZ_0(unint64_t a1, void *a2, double *a3, int a4, double a5)
{
  v76 = a5;
  LODWORD(v74) = a4;
  v5 = a3;
  v81 = a2;
  v8 = *a3;
  v7 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v14 = 0;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v79 = *&v5;
    v80 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = sub_ABAE20();
      }

      else
      {
        if (v14 >= *(v15 + 16))
        {
          goto LABEL_15;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v5 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ([v16 isHidden])
      {
      }

      else
      {
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
        v15 = v80;
      }

      ++v14;
      if (v5 == i)
      {
        v18 = v82;
        *&v5 = v79;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_18:
  v19 = v81;
  [v81 bounds];
  v79 = v21;
  v80 = v20;
  v77 = v23;
  v78 = v22;
  v24 = [v19 traitCollection];
  [v24 displayScale];

  v75 = [v19 effectiveUserInterfaceLayoutDirection];
  [v19 layoutMargins];
  v26 = v25;
  Width = v27;
  v30 = v29;
  LODWORD(v31) = v18 < 0 || (v18 & 0x4000000000000000) != 0;
  if (v31 == 1)
  {
    goto LABEL_90;
  }

  v32 = *(v18 + 16);
  v33 = v32 - 1;
  if (!__OFSUB__(v32, 1))
  {
    while (1)
    {
      v72 = v33;
      if (v5[4])
      {
        v8 = UIEdgeInsetsInsetRect(*&v80, v79, v78, v77, v26, Width);
        v7 = v34;
        v10 = v35;
        v9 = v36;
      }

      if (v31)
      {
        *&v5 = COERCE_DOUBLE(sub_ABB060());
      }

      else
      {
        v5 = *(v18 + 16);
      }

      v73 = v32;
      if (*&v5 == 0.0)
      {
        break;
      }

      v37 = 0;
      Width = 0.0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v38 = sub_ABAE20();
        }

        else
        {
          if (v37 >= *(v18 + 16))
          {
            goto LABEL_85;
          }

          v38 = *(v18 + 8 * v37 + 32);
        }

        v31 = v38;
        v39 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v40 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
        swift_beginAccess();
        sub_BD494(v31 + v40, v12);
        v12[184] = 0;
        SymbolButton.setConfiguration(_:animation:updates:)(v12, 0, 0, 0, 1, _swiftEmptyArrayStorage);
        sub_878C28(v12, type metadata accessor for SymbolButton.Configuration);
        [v31 intrinsicContentSize];
        v26 = v41;
        sub_AB3A10();
        Width = Width + v42;
        sub_AB3A10();
        v44 = v43;

        ++v37;
        if (v39 == v5)
        {
          goto LABEL_38;
        }
      }

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
      v73 = v30;
      v70 = sub_ABB060();
      v30 = v73;
      v32 = v70;
      v33 = v70 - 1;
      if (__OFSUB__(v70, 1))
      {
        goto LABEL_92;
      }
    }

    Width = 0.0;
    v44 = 0.0;
LABEL_38:
    v45 = LOBYTE(v74);
    v46 = BYTE1(v74);
    v47 = (v72 & ~(v72 >> 63)) * v76;
    if (BYTE1(v74))
    {
      v48 = v73;
      if (BYTE1(v74) == 1)
      {
        v49 = 0;
        Width = v47 + v44 * v73;
      }

      else
      {
        v83.origin.x = v8;
        v83.origin.y = v7;
        v83.size.width = v10;
        v83.size.height = v9;
        CGRectGetWidth(v83);
        sub_AB3A10();
        v44 = v50;
        v84.origin.x = v8;
        v84.origin.y = v7;
        v84.size.width = v10;
        v84.size.height = v9;
        Width = CGRectGetWidth(v84);
        v49 = 0;
      }
    }

    else
    {
      Width = v47 + Width;
      v49 = 1;
      v44 = 0.0;
      v48 = v73;
    }

    v85.origin.x = v8;
    v85.origin.y = v7;
    v85.size.width = v10;
    v85.size.height = v9;
    v51 = Width - CGRectGetWidth(v85);
    if (v51 < 0.0)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v51;
    }

    if ((v49 & 1) == 0 && v26 > 0.0)
    {
      sub_AB3A10();
      v44 = v44 - v52;
      v86.origin.x = v8;
      v86.origin.y = v7;
      v86.size.width = v10;
      v86.size.height = v9;
      Width = CGRectGetWidth(v86);
    }

    if (v46 != 2 && v45)
    {
      if (v45 != 1)
      {
        v91.origin.x = v8;
        v91.origin.y = v7;
        v91.size.width = v10;
        v91.size.height = v9;
        v8 = CGRectGetMaxX(v91) - Width;
        if (*&v5 != 0.0)
        {
          goto LABEL_54;
        }

LABEL_83:

        return;
      }

      v87.origin.x = v8;
      v87.origin.y = v7;
      v87.size.width = v10;
      v87.size.height = v9;
      CGRectGetWidth(v87);
      sub_AB39F0();
      v8 = v8 + v53;
    }

    if (*&v5 != 0.0)
    {
LABEL_54:
      v31 = 0;
      v54 = v48;
      v55 = 0;
      v56 = v18 & 0xC000000000000001;
      v74 = v26 / v54;
      while (1)
      {
        if (v56)
        {
          v58 = sub_ABAE20();
        }

        else
        {
          if (v31 >= *(v18 + 16))
          {
            goto LABEL_87;
          }

          v58 = *(v18 + 8 * v31 + 32);
        }

        v59 = v58;
        v60 = (v31 + 1);
        if (__OFADD__(v31, 1))
        {
          goto LABEL_86;
        }

        v61 = [v58 superview];
        if (!v61 || (v62 = v61, v61, v62 != v81))
        {
          [v81 addSubview:v59];
        }

        v26 = v44;
        if (v49)
        {
          [v59 intrinsicContentSize];
          v64 = v63;
          sub_AB3A10();
          v26 = v64 - v65;
        }

        sub_ABA490();
        [v59 setFrame:?];
        v89.origin.x = v8;
        v89.origin.y = v7;
        v89.size.width = v26;
        v89.size.height = v9;
        CGRectGetWidth(v89);
        v90.origin.x = v8;
        v90.origin.y = v7;
        v90.size.width = v26;
        v90.size.height = v9;
        v10 = CGRectGetWidth(v90);
        if (v55)
        {

          if (v60 == v5)
          {
            if (v73 < 2)
            {
              goto LABEL_83;
            }

LABEL_74:
            v66 = 0;
            while (1)
            {
              if (v56)
              {
                v67 = sub_ABAE20();
              }

              else
              {
                if (v66 >= *(v18 + 16))
                {
                  goto LABEL_89;
                }

                v67 = *(v18 + 8 * v66 + 32);
              }

              v31 = v67;
              v68 = (v66 + 1);
              if (__OFADD__(v66, 1))
              {
                goto LABEL_88;
              }

              v69 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
              swift_beginAccess();
              sub_BD494(v31 + v69, v12);
              v12[184] = 1;
              SymbolButton.setConfiguration(_:animation:updates:)(v12, 0, 0, 0, 1, _swiftEmptyArrayStorage);

              sub_878C28(v12, type metadata accessor for SymbolButton.Configuration);
              ++v66;
              if (v68 == v5)
              {
                goto LABEL_83;
              }
            }
          }

          v55 = 1;
        }

        else
        {
          [v59 intrinsicContentSize];
          Width = v57;
          v88.origin.x = v8;
          v88.origin.y = v7;
          v88.size.width = v26;
          v88.size.height = v9;
          v26 = CGRectGetWidth(v88);

          v55 = v26 < Width;
          if (v60 == v5)
          {
            if (v26 >= Width || v73 <= 1)
            {
              goto LABEL_83;
            }

            goto LABEL_74;
          }
        }

        v8 = v8 + v10 + v76;
        ++v31;
      }
    }

    goto LABEL_83;
  }

LABEL_92:
  __break(1u);
}

unint64_t sub_878368()
{
  result = qword_E1D190;
  if (!qword_E1D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D190);
  }

  return result;
}

unint64_t sub_8783C0()
{
  result = qword_E1D198;
  if (!qword_E1D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D198);
  }

  return result;
}

unint64_t sub_878434()
{
  result = qword_E1D1A0;
  if (!qword_E1D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D1A0);
  }

  return result;
}

unint64_t sub_87848C()
{
  result = qword_E1D1A8;
  if (!qword_E1D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D1A8);
  }

  return result;
}

unint64_t sub_8784E4()
{
  result = qword_E1D1B0;
  if (!qword_E1D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D1B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI12SymbolButtonC6IntentOIegy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_87858C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_8785E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayIntentLayoutHelper.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_878718(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D1C8, &unk_B32970);
  sub_AB5D50();
  sub_36A00(&qword_E1D1D0, &qword_E1D1C8, &unk_B32970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

unint64_t sub_8787E8()
{
  result = qword_E1D1D8;
  if (!qword_E1D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D1D8);
  }

  return result;
}

unint64_t sub_87883C()
{
  result = qword_E1D1E0;
  if (!qword_E1D1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D1E8, &qword_B32AC8);
    sub_8783C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D1E0);
  }

  return result;
}

unint64_t sub_8788C0()
{
  result = qword_E1D208;
  if (!qword_E1D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D208);
  }

  return result;
}

uint64_t sub_878914()
{

  return swift_deallocObject();
}

double sub_878954@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *a1;
  KeyPath = swift_getKeyPath();
  *a2 = v7;
  *(a2 + 1) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;

  return result;
}

unint64_t sub_8789C4()
{
  result = qword_E1D240;
  if (!qword_E1D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D240);
  }

  return result;
}

uint64_t sub_878A18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_878A60()
{
  result = qword_E1D248;
  if (!qword_E1D248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D228, &qword_B32AF0);
    sub_878AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D248);
  }

  return result;
}

unint64_t sub_878AEC()
{
  result = qword_E1D250;
  if (!qword_E1D250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D220, &qword_B32AE8);
    sub_36A00(&qword_E1D258, &qword_E1D260, &qword_B32B00, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_878BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D250);
  }

  return result;
}

unint64_t sub_878BA4()
{
  result = qword_E1D268;
  if (!qword_E1D268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D270, &qword_B32B08);
    sub_878434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D268);
  }

  return result;
}

uint64_t sub_878C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *PlaylistCovers.CarouselItem.pageIndicatorImage.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

__n128 PlaylistCovers.CarouselItem.init(itemType:pageIndicatorImage:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = a1[5];
  v25 = a1[4];
  v26 = v4;
  v5 = a1[7];
  v27 = a1[6];
  v28 = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = a1[3];
  v23 = a1[2];
  v24 = v7;
  v13 = v22[0];
  v14 = v6;
  v15 = v23;
  v16 = v7;
  v17 = v25;
  v18 = v4;
  v19 = v27;
  v20 = v5;
  v21 = a2;
  v29 = a2;
  sub_85C360(&v13, v12);
  sub_878EE4(v22);
  v8 = v20;
  a3[6] = v19;
  a3[7] = v8;
  a3[8].n128_u64[0] = v21;
  v9 = v16;
  a3[2] = v15;
  a3[3] = v9;
  v10 = v18;
  a3[4] = v17;
  a3[5] = v10;
  result = v14;
  *a3 = v13;
  a3[1] = result;
  return result;
}

uint64_t static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v39 = a1[4];
  v40 = v3;
  v4 = a1[7];
  v41 = a1[6];
  v42 = v4;
  v5 = a1[1];
  v35 = *a1;
  v36 = v5;
  v6 = a1[3];
  v37 = a1[2];
  v38 = v6;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v35) == 1)
  {
    v7 = a2[5];
    v47 = a2[4];
    v48 = v7;
    v8 = a2[7];
    v49 = a2[6];
    v50 = v8;
    v9 = a2[1];
    v43 = *a2;
    v44 = v9;
    v10 = a2[3];
    v45 = a2[2];
    v46 = v10;
    v11 = get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v43) == 1;
  }

  else
  {
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    v43 = v35;
    v44 = v36;
    v45 = v37;
    v46 = v38;
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v21 = a2[2];
    v22 = v14;
    v19 = v12;
    v20 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v25 = a2[6];
    v26 = v17;
    v23 = v15;
    v24 = v16;
    if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v19) == 1)
    {
      v11 = 0;
    }

    else
    {
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v27 = v19;
      v28 = v20;
      v29 = v21;
      v30 = v22;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

uint64_t sub_879028(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v45 = a1[4];
  v46 = v3;
  v4 = a1[7];
  v47 = a1[6];
  v48 = v4;
  v5 = a1[1];
  v41 = *a1;
  v42 = v5;
  v6 = a1[3];
  v43 = a1[2];
  v44 = v6;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v41) == 1)
  {
    v7 = a2[5];
    v37 = a2[4];
    v38 = v7;
    v8 = a2[7];
    v39 = a2[6];
    v40 = v8;
    v9 = a2[1];
    v33 = *a2;
    v34 = v9;
    v10 = a2[3];
    v35 = a2[2];
    v36 = v10;
    v11 = get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v33) == 1;
  }

  else
  {
    v29 = v45;
    v30 = v46;
    v31 = v47;
    v32 = v48;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    v12 = a2[7];
    v23 = a2[6];
    v24 = v12;
    v13 = a2[5];
    v21 = a2[4];
    v22 = v13;
    v14 = a2[3];
    v19 = a2[2];
    v20 = v14;
    v15 = a2[1];
    v17 = *a2;
    v18 = v15;
    if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v17) == 1)
    {
      v11 = 0;
    }

    else
    {
      v37 = v21;
      v38 = v22;
      v39 = v23;
      v40 = v24;
      v33 = v17;
      v34 = v18;
      v35 = v19;
      v36 = v20;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

uint64_t PlaylistCovers.CarouselItem.id.getter()
{
  v1 = v0[5];
  v7[4] = v0[4];
  v7[5] = v1;
  v2 = v0[7];
  v7[6] = v0[6];
  v7[7] = v2;
  v3 = v0[1];
  v7[0] = *v0;
  v7[1] = v3;
  v4 = v0[3];
  v7[2] = v0[2];
  v7[3] = v4;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v7) == 1)
  {
    return 0x6369506F746F6850;
  }

  v5 = *(&v7[0] + 1);

  return v5;
}

double PlaylistCovers.CarouselItem.hash(into:)(uint64_t a1)
{
  v2 = v1[5];
  v7[4] = v1[4];
  v7[5] = v2;
  v3 = v1[7];
  v7[6] = v1[6];
  v7[7] = v3;
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  v5 = v1[3];
  v7[2] = v1[2];
  v7[3] = v5;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v7) != 1)
  {
  }

  sub_AB93F0();

  return result;
}

uint64_t static PlaylistCovers.CarouselItem.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v3 = a1[5];
  v19[4] = a1[4];
  v19[5] = v3;
  v4 = a1[7];
  v19[6] = a1[6];
  v19[7] = v4;
  v5 = a1[1];
  v19[0] = *a1;
  v19[1] = v5;
  v6 = a1[3];
  v19[2] = a1[2];
  v19[3] = v6;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v19) == 1)
  {
    v7 = a2[5];
    v24 = a2[4];
    v25 = v7;
    v8 = a2[7];
    v26 = a2[6];
    v27 = v8;
    v9 = a2[1];
    v20 = *a2;
    v21 = v9;
    v10 = a2[3];
    v22 = a2[2];
    v23 = v10;
    v11 = get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v20) == 1;
  }

  else
  {
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v22 = a2[2];
    v23 = v14;
    v20 = v12;
    v21 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v26 = a2[6];
    v27 = v17;
    v24 = v15;
    v25 = v16;
    if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v20) == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

double PlaylistCovers.CarouselItem.cover.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v23 = v1[4];
  v24 = v3;
  v4 = v1[7];
  v25 = v1[6];
  v26 = v4;
  v5 = v1[1];
  v20[0] = *v1;
  v20[1] = v5;
  v6 = v1[3];
  v21 = v1[2];
  v22 = v6;
  v33 = v25;
  v34 = v4;
  v31 = v23;
  v32 = v3;
  v29 = v21;
  v30 = v6;
  v27 = v20[0];
  v28 = v5;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(&v27) == 1)
  {
    sub_11F44(&v35);
  }

  else
  {
    v16 = v31;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    UIScreen.Dimensions.size.getter();
    v39 = v16;
    v40 = v17;
    v41 = v18;
    v42 = v19;
    v35 = v12;
    v36 = v13;
    v37 = v14;
    v38 = v15;
  }

  sub_878D50(v20, &v12);
  v7 = v40;
  a1[4] = v39;
  a1[5] = v7;
  v8 = v42;
  a1[6] = v41;
  a1[7] = v8;
  v9 = v36;
  *a1 = v35;
  a1[1] = v9;
  result = *&v37;
  v11 = v38;
  a1[2] = v37;
  a1[3] = v11;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.picker.getter@<Q0>(__n128 *a1@<X8>)
{
  sub_11F44(&v9);
  v2 = sub_AB9260();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v26[4] = v13;
  v26[5] = v14;
  v26[6] = v15;
  v26[7] = v16;
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  v26[3] = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v3;
  v27 = v3;
  sub_85C360(&v17, v8);
  sub_878EE4(v26);
  v4 = v24;
  a1[6] = v23;
  a1[7] = v4;
  a1[8].n128_u64[0] = v25;
  v5 = v20;
  a1[2] = v19;
  a1[3] = v5;
  v6 = v22;
  a1[4] = v21;
  a1[5] = v6;
  result = v18;
  *a1 = v17;
  a1[1] = result;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.tracksTiled(image:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_AB35C0();
  __chkstk_darwin();
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v20[-v8];
  v10 = a1;
  sub_AB91E0();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v11 = qword_E73660;
  sub_AB3550();
  v12 = sub_AB9320();
  v14 = v13;
  (*(v5 + 8))(v9, v4);
  v15 = AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.unsafeMutableAddressor();
  PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)(v10, 0x6954736B63617254, 0xEB0000000064656CLL, v12, v14, *v15, v15[1], v15[2], &v21, v15[3]);
  UIScreen.Dimensions.size.getter();
  v38[4] = v25;
  v38[5] = v26;
  v38[6] = v27;
  v38[7] = v28;
  v38[0] = v21;
  v38[1] = v22;
  v38[2] = v23;
  v38[3] = v24;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = 0;
  v39 = 0;

  sub_85C360(&v29, v20);
  sub_878EE4(v38);
  v16 = v36;
  *(a2 + 96) = v35;
  *(a2 + 112) = v16;
  *(a2 + 128) = v37;
  v17 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v17;
  v18 = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = v18;
  result = v30;
  *a2 = v29;
  *(a2 + 16) = result;
  return result;
}

Swift::Int PlaylistCovers.CarouselItem.hashValue.getter()
{
  sub_ABB5C0();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v6) != 1)
  {
  }

  sub_AB93F0();

  return sub_ABB610();
}

void sub_8798EC(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v9[5] = v3;
  v4 = v1[7];
  v9[6] = v1[6];
  v9[7] = v4;
  v5 = v1[1];
  v9[0] = *v1;
  v9[1] = v5;
  v6 = v1[3];
  v9[2] = v1[2];
  v9[3] = v6;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v9) == 1)
  {
    v7 = 0xEB0000000072656BLL;
    v8 = 0x6369506F746F6850;
  }

  else
  {
    v8 = *(&v9[0] + 1);
  }

  *a1 = v8;
  a1[1] = v7;
}

Swift::Int sub_879970(uint64_t a1)
{
  sub_ABB5C0();
  v2 = v1[5];
  v7[4] = v1[4];
  v7[5] = v2;
  v3 = v1[7];
  v7[6] = v1[6];
  v7[7] = v3;
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  v5 = v1[3];
  v7[2] = v1[2];
  v7[3] = v5;
  if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v7) != 1)
  {
  }

  sub_AB93F0();

  return sub_ABB610();
}

uint64_t static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  return _swift_task_switch(sub_879A44, 0, 0);
}

uint64_t sub_879A44()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D280, &qword_B32B98);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v5;
  v7[3] = v2;
  v7[4] = v1;
  v7[5] = v4;
  v7[6] = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D288, &qword_B32BB0);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_879B80;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v6, v8, 0, 0, &unk_B32BA8, v7, v6);
}

uint64_t sub_879B80()
{

  return _swift_task_switch(sub_710670, 0, 0);
}

uint64_t sub_879C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 1728) = a5;
  *(v7 + 1720) = a4;
  *(v7 + 1712) = a7;
  *(v7 + 1704) = a6;
  *(v7 + 1696) = a3;
  *(v7 + 1688) = a2;
  *(v7 + 1680) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  *(v7 + 1736) = swift_task_alloc();
  *(v7 + 1744) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D298, &qword_B32E40);
  *(v7 + 1752) = v8;
  *(v7 + 1760) = *(v8 - 8);
  *(v7 + 1768) = swift_task_alloc();

  return _swift_task_switch(sub_879DC0, 0, 0);
}

uint64_t sub_879DC0()
{
  v1 = *(v0 + 1696);
  v2 = *(v1 + 16);
  *(v0 + 1776) = v2;
  if (v2)
  {
    v3 = (v0 + 1280);
    v36 = **(v0 + 1688);
    v4 = (v1 + 32);
    v5 = sub_AB9990();
    v6 = *(v5 - 8);
    v35 = *(v6 + 56);
    v34 = (v6 + 48);
    v33 = (v6 + 8);
    while (1)
    {
      v7 = *(v0 + 1744);
      v8 = *(v0 + 1728);
      v9 = *(v0 + 1720);
      v10 = *(v0 + 1712);
      v11 = *(v0 + 1704);
      v13 = v4[1];
      v12 = v4[2];
      v14 = *v4;
      *(v0 + 1328) = *(v4 + 6);
      *(v0 + 1296) = v13;
      *(v0 + 1312) = v12;
      *v3 = v14;
      v35(v7, 1, 1, v5);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      v17 = *(v0 + 1296);
      *(v15 + 32) = *v3;
      *(v15 + 48) = v17;
      *(v15 + 64) = *(v0 + 1312);
      *(v15 + 80) = *(v0 + 1328);
      *(v15 + 88) = v11;
      *(v15 + 96) = v10;
      *(v15 + 104) = v9;
      *(v15 + 112) = v8;
      sub_70B8A0(v0 + 1280, v0 + 1448);
      sub_70B8A0(v0 + 1280, v0 + 1504);

      v18 = swift_taskGroup_addPending();
      v19 = *(v0 + 1744);
      if (v18)
      {
        break;
      }

      sub_12E1C(v19, &qword_E1C720, &qword_B309B0);

      sub_85C600(v0 + 1280);
LABEL_4:
      v4 = (v4 + 56);
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    v20 = *(v0 + 1736);
    sub_87B07C(v19, v20);
    v21 = (*v34)(v20, 1, v5);
    v22 = *(v0 + 1736);
    if (v21 == 1)
    {
      sub_12E1C(*(v0 + 1736), &qword_E1C720, &qword_B309B0);
      if (*v16)
      {
LABEL_8:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_AB98B0();
        v25 = v24;
        swift_unknownObjectRelease();
LABEL_11:
        v26 = swift_allocObject();
        *(v26 + 16) = &unk_B32E50;
        *(v26 + 24) = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D280, &qword_B32B98);
        v27 = v25 | v23;
        if (v25 | v23)
        {
          v27 = v0 + 1616;
          *(v0 + 1616) = 0;
          *(v0 + 1624) = 0;
          *(v0 + 1632) = v23;
          *(v0 + 1640) = v25;
        }

        v28 = *(v0 + 1744);
        *(v0 + 1648) = 1;
        *(v0 + 1656) = v27;
        *(v0 + 1664) = v36;
        swift_task_create();

        sub_85C600(v0 + 1280);
        sub_12E1C(v28, &qword_E1C720, &qword_B309B0);
        goto LABEL_4;
      }
    }

    else
    {
      sub_AB9980();
      (*v33)(v22, v5);
      if (*v16)
      {
        goto LABEL_8;
      }
    }

    v23 = 0;
    v25 = 0;
    goto LABEL_11;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D280, &qword_B32B98);
  sub_AB98F0();
  *(v0 + 1784) = _swiftEmptyDictionarySingleton;
  v29 = sub_87B018();
  v30 = swift_task_alloc();
  *(v0 + 1792) = v30;
  *v30 = v0;
  v30[1] = sub_87A1DC;
  v31 = *(v0 + 1752);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 1088, v31, v29);
}

uint64_t sub_87A1DC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[221];
    v4 = v2[220];
    v5 = v2[219];

    (*(v4 + 8))(v3, v5);

    v6 = UIScreen.Dimensions.size.getter;
  }

  else
  {
    v6 = sub_87A334;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_87A334()
{
  v1 = (v0 + 1088);
  if (*(v0 + 1096))
  {
    v2 = v0 + 424;
    v3 = (v0 + 960);
    v114 = *(v0 + 1784);
    v4 = *(v0 + 1136);
    *(v0 + 1248) = *(v0 + 1120);
    *(v0 + 1264) = v4;
    v5 = *(v0 + 1104);
    v108 = v0 + 1088;
    v109 = v0 + 1216;
    *(v0 + 1216) = *v1;
    *(v0 + 1232) = v5;
    v6 = *(v0 + 1224);
    v7 = *(v0 + 1232);
    v8 = *(v0 + 1240);
    v9 = *(v0 + 1248);
    v10 = *(v0 + 1256);
    v11 = *(v0 + 1264);
    v113 = *(v0 + 1272);
    *(v0 + 1392) = *(v0 + 1216);
    *(v0 + 1400) = v6;
    *(v0 + 1408) = v7;
    *(v0 + 1416) = v8;
    *(v0 + 1424) = v9;
    *(v0 + 1432) = v10;
    *(v0 + 1440) = v11;
    v12 = v6;
    v13 = v7;
    v111 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v113;
    v112 = v12;
    v107 = v13;
    v110 = v111;
    v18 = v14;
    v19 = v0 + 1392;
    v106 = v18;
    v20 = v15;
    v21 = v16;
    PlaylistCovers.Cover.init(image:representation:)(v17, (v0 + 1392), v0 + 960);
    v22 = *(v0 + 1040);
    *(v0 + 896) = *(v0 + 1024);
    *(v0 + 912) = v22;
    v23 = *(v0 + 1072);
    *(v0 + 928) = *(v0 + 1056);
    *(v0 + 944) = v23;
    v24 = *(v0 + 976);
    *(v0 + 832) = *(v0 + 960);
    *(v0 + 848) = v24;
    v25 = *(v0 + 1008);
    *(v0 + 864) = *(v0 + 992);
    *(v0 + 880) = v25;
    UIScreen.Dimensions.size.getter();
    v26 = *(v0 + 896);
    v27 = *(v0 + 912);
    *(v0 + 352) = v26;
    *(v0 + 368) = v27;
    v28 = *(v0 + 928);
    v29 = *(v0 + 944);
    *(v0 + 384) = v28;
    *(v0 + 400) = v29;
    v30 = *(v0 + 832);
    v31 = *(v0 + 848);
    *(v0 + 288) = v30;
    *(v0 + 304) = v31;
    v32 = *(v0 + 864);
    v33 = *(v0 + 880);
    *(v0 + 320) = v32;
    *(v0 + 336) = v33;
    *(v0 + 424) = v30;
    *(v0 + 440) = v31;
    *(v0 + 456) = v32;
    *(v0 + 472) = v33;
    *(v0 + 488) = v26;
    *(v0 + 504) = v27;
    *(v0 + 520) = v28;
    *(v0 + 536) = v29;
    *(v0 + 552) = 0;
    *(v0 + 416) = 0;
    sub_85C360(v0 + 424, v0 + 560);
    sub_878EE4(v0 + 288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 1672) = v114;
    v35 = sub_85A87C(v0 + 1392);
    v37 = *(v114 + 16);
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      LOBYTE(v12) = v36;
      v3 = (v0 + 1672);
      if (*(*(v0 + 1784) + 24) < v40)
      {
        sub_85B17C(v40, isUniquelyReferenced_nonNull_native);
        v35 = sub_85A87C(v19);
        if ((v12 & 1) != (v41 & 1))
        {

          return sub_ABB4C0();
        }

LABEL_24:
        if (v12)
        {
LABEL_25:
          v70 = *v3;
          v71 = *(*v3 + 56) + 136 * v35;
          *(v0 + 696) = *v71;
          v72 = *(v71 + 64);
          v74 = *(v71 + 16);
          v73 = *(v71 + 32);
          *(v0 + 744) = *(v71 + 48);
          *(v0 + 760) = v72;
          *(v0 + 712) = v74;
          *(v0 + 728) = v73;
          v76 = *(v71 + 96);
          v75 = *(v71 + 112);
          v77 = *(v71 + 80);
          *(v0 + 824) = *(v71 + 128);
          *(v0 + 792) = v76;
          *(v0 + 808) = v75;
          *(v0 + 776) = v77;
          *v71 = *v2;
          v78 = *(v2 + 16);
          v79 = *(v2 + 32);
          v80 = *(v2 + 64);
          *(v71 + 48) = *(v2 + 48);
          *(v71 + 64) = v80;
          *(v71 + 16) = v78;
          *(v71 + 32) = v79;
          v81 = *(v2 + 80);
          v82 = *(v2 + 96);
          v83 = *(v2 + 112);
          *(v71 + 128) = *(v2 + 128);
          *(v71 + 96) = v82;
          *(v71 + 112) = v83;
          *(v71 + 80) = v81;
          sub_878EE4(v0 + 696);

          sub_12E1C(v109, &qword_E1D2A8, &qword_B32E58);
          goto LABEL_36;
        }

LABEL_34:
        v70 = *v3;
        *(*v3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
        v88 = v70[6] + 56 * v35;
        v89 = *v19;
        v90 = *(v19 + 16);
        v91 = *(v19 + 32);
        *(v88 + 48) = *(v19 + 48);
        *(v88 + 16) = v90;
        *(v88 + 32) = v91;
        *v88 = v89;
        v92 = v70[7] + 136 * v35;
        *v92 = *v2;
        v93 = *(v2 + 16);
        v94 = *(v2 + 32);
        v95 = *(v2 + 64);
        *(v92 + 48) = *(v2 + 48);
        *(v92 + 64) = v95;
        *(v92 + 16) = v93;
        *(v92 + 32) = v94;
        v96 = *(v2 + 80);
        v97 = *(v2 + 96);
        v98 = *(v2 + 112);
        *(v92 + 128) = *(v2 + 128);
        *(v92 + 96) = v97;
        *(v92 + 112) = v98;
        *(v92 + 80) = v96;

        v99 = sub_12E1C(v109, &qword_E1D2A8, &qword_B32E58);
        v102 = v70[2];
        v39 = __OFADD__(v102, 1);
        v103 = v102 + 1;
        if (v39)
        {
          __break(1u);
          return dispatch thunk of AsyncIteratorProtocol.next()(v99, v100, v101);
        }

        v70[2] = v103;
LABEL_36:
        *(v0 + 1784) = v70;
        v104 = sub_87B018();
        v105 = swift_task_alloc();
        *(v0 + 1792) = v105;
        *v105 = v0;
        v105[1] = sub_87A1DC;
        v100 = *(v0 + 1752);
        v99 = v108;
        v101 = v104;

        return dispatch thunk of AsyncIteratorProtocol.next()(v99, v100, v101);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }
    }

    v86 = v21;
    v87 = v35;
    sub_85C3BC();
    v35 = v87;
    v21 = v86;
    if (v12)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v43 = *(v0 + 1776);
  (*(*(v0 + 1760) + 8))(*(v0 + 1768), *(v0 + 1752));
  v44 = *(v0 + 1104);
  *(v0 + 1152) = *v1;
  *(v0 + 1168) = v44;
  v45 = *(v0 + 1136);
  *(v0 + 1184) = *(v0 + 1120);
  *(v0 + 1200) = v45;
  v35 = sub_12E1C(v0 + 1152, &qword_E1D2A8, &qword_B32E58);
  if (!v43)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v3 = 0;
  v19 = v0 + 1336;
  v2 = *(v0 + 1784);
  v17 = (*(v0 + 1696) + 32);
  v21 = _swiftEmptyArrayStorage;
  v20 = &stru_20 + 24;
  do
  {
    v46 = *(v0 + 1776);
    v47 = &v17[56 * v3];
    v12 = v3;
    while (1)
    {
      if (v12 >= v46)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v48 = *v47;
      v49 = *(v47 + 1);
      v50 = *(v47 + 2);
      *(v0 + 1384) = *(v47 + 6);
      *(v0 + 1352) = v49;
      *(v0 + 1368) = v50;
      *v19 = v48;
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_31;
      }

      if (*(v2 + 16))
      {
        break;
      }

LABEL_11:
      ++v12;
      v47 += 56;
      if (v3 == v46)
      {
        goto LABEL_27;
      }
    }

    sub_70B8A0(v0 + 1336, v0 + 1560);
    v51 = sub_85A87C(v0 + 1336);
    if ((v52 & 1) == 0)
    {
      v35 = sub_85C600(v0 + 1336);
      v46 = *(v0 + 1776);
      goto LABEL_11;
    }

    v53 = *(v2 + 56) + 136 * v51;
    *(v0 + 16) = *v53;
    v54 = *(v53 + 16);
    v55 = *(v53 + 32);
    v56 = *(v53 + 64);
    *(v0 + 64) = *(v53 + 48);
    *(v0 + 80) = v56;
    *(v0 + 32) = v54;
    *(v0 + 48) = v55;
    v57 = *(v53 + 80);
    v58 = *(v53 + 96);
    v59 = *(v53 + 112);
    *(v0 + 144) = *(v53 + 128);
    *(v0 + 112) = v58;
    *(v0 + 128) = v59;
    *(v0 + 96) = v57;
    sub_85C360(v0 + 16, v0 + 152);
    sub_85C600(v0 + 1336);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    if ((v35 & 1) == 0)
    {
      v35 = sub_8A5080(0, v21[2] + 1, 1, v21);
      v21 = v35;
    }

    v61 = v21[2];
    v60 = v21[3];
    if (v61 >= v60 >> 1)
    {
      v35 = sub_8A5080((v60 > 1), v61 + 1, 1, v21);
      v21 = v35;
    }

    v62 = *(v0 + 1776);
    v21[2] = v61 + 1;
    v63 = &v21[17 * v61];
    *(v63 + 2) = *(v0 + 16);
    v64 = *(v0 + 32);
    v65 = *(v0 + 48);
    v66 = *(v0 + 80);
    *(v63 + 5) = *(v0 + 64);
    *(v63 + 6) = v66;
    *(v63 + 3) = v64;
    *(v63 + 4) = v65;
    v67 = *(v0 + 96);
    v68 = *(v0 + 112);
    v69 = *(v0 + 128);
    v63[20] = *(v0 + 144);
    *(v63 + 8) = v68;
    *(v63 + 9) = v69;
    *(v63 + 7) = v67;
  }

  while (v3 != v62);
LABEL_27:
  v84 = *(v0 + 1680);

  *v84 = v21;

  v85 = *(v0 + 8);

  return v85();
}

uint64_t sub_87AA28(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v10 = *(v2 + 5);
  v9 = *(v2 + 6);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_17CF8;

  return sub_879C98(a1, a2, v6, v10, v9, v7, v8);
}

unint64_t sub_87AB04()
{
  result = qword_E1D290;
  if (!qword_E1D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D290);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14PlaylistCoversO5CoverV14RepresentationVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_87ABBC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_87AC18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_87AC9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
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

uint64_t sub_87ACEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_87AD50(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_87ADA0(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 72) = a1;
  *(v8 + 80) = a6;
  return _swift_task_switch(sub_87ADC8, 0, 0);
}

uint64_t sub_87ADC8()
{
  v1 = *(v0 + 13);
  v2 = *(v0 + 14);
  v4 = v0[11];
  v3 = v0[12];
  v6 = *(v0 + 9);
  v5 = *(v0 + 10);
  v7 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 32);
  *(v6 + 48) = *(v5 + 48);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  v10 = *(v5 + 8);
  v11 = *(v5 + 48);
  sub_87B1DC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_70B8A0(v5, (v0 + 2));
  v13 = [ObjCClassFromMetadata preferredFormat];
  static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(v10, v11, v1, v2, v13, v4, v3);
  v15 = v14;

  *(v6 + 56) = v15;
  v16 = *(v0 + 1);

  return v16();
}

uint64_t sub_87AED0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_87AF40(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[11];
  v7 = v1[12];
  v8 = *(v1 + 13);
  v9 = *(v1 + 14);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17BD0;

  return sub_87ADA0(a1, v6, v7, v4, v5, (v1 + 4), v8, v9);
}

unint64_t sub_87B018()
{
  result = qword_E1D2A0;
  if (!qword_E1D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D298, &qword_B32E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D2A0);
  }

  return result;
}

uint64_t sub_87B07C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_87B0EC()
{

  return swift_deallocObject();
}

uint64_t sub_87B124(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_E046C(a1, v4);
}

unint64_t sub_87B1DC()
{
  result = qword_E1D2B0;
  if (!qword_E1D2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E1D2B0);
  }

  return result;
}

void ProgressiveBlur.makeUIView(context:)(double a1, uint64_t a2, char a3)
{
  v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  v6 = type metadata accessor for ProgressiveBlurView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a1;
  v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a3;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = 0x3FD3333333333333;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = v5;
  v8 = v5;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  if (CGRectIsEmpty(v24))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a3;
  *(v11 + 56) = 0x3FD3333333333333;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_87C45C;
  *(v17 + 24) = v11;
  aBlock[4] = sub_57B84;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_224;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v21 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a1 scale:1.0];

LABEL_6:
      v22.receiver = v7;
      v22.super_class = v6;
      objc_msgSendSuper2(&v22, "initWithEffect:", v21);

      return;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void ProgressiveBlurView.__allocating_init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v10 = a2;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  if (CGRectIsEmpty(v26))
  {
    goto LABEL_5;
  }

  v11 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v11 setScale:1.0];
  [v11 setPreferredRange:2];
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v11 format:{0.0, 0.0, 1.0, 1.0}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v13 + 32) = _Q0;
  *(v13 + 48) = a1;
  *(v13 + 56) = a4;
  *(v13 + 64) = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_87C7B0;
  *(v19 + 24) = v13;
  aBlock[4] = sub_C3FB8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_14_1;
  v20 = _Block_copy(aBlock);
  v21 = v10;

  v22 = [v12 imageWithActions:v20];

  _Block_release(v20);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v22)
    {
      v23 = [objc_opt_self() _effectWithVariableBlurRadius:v22 imageMask:a3 scale:1.0];

LABEL_6:
      v24.receiver = v9;
      v24.super_class = v4;
      objc_msgSendSuper2(&v24, "initWithEffect:", v23);

      return;
    }

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void ProgressiveBlur.updateUIView(_:context:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = a2;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = a4;
  ProgressiveBlurView.updateEffect()();
}

void sub_87B84C(uint64_t a1)
{
  v2 = *(v1 + 8);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = *v1;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = v2;
  ProgressiveBlurView.updateEffect()();
}

uint64_t sub_87B890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_87C6E0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_87B8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_87C6E0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_87B958(uint64_t a1)
{
  sub_87C6E0();
  sub_AB65B0();
  __break(1u);
}

double sub_87B980(unsigned __int8 a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = a4();
    }

    else
    {
      v5 = a5();
    }
  }

  else if (a1)
  {
    v5 = a3();
  }

  else
  {
    v5 = a2();
  }

  v6 = v5;
  swift_beginAccess();
  return *v6;
}

void ProgressiveBlurView.init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v8 = a2;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  if (CGRectIsEmpty(v24))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a1;
  *(v11 + 56) = a4;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_87C7B0;
  *(v17 + 24) = v11;
  aBlock[4] = sub_C3FB8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_25_1;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v21 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a3 scale:1.0];

LABEL_6:
      v22.receiver = v4;
      v22.super_class = type metadata accessor for ProgressiveBlurView();
      objc_msgSendSuper2(&v22, "initWithEffect:", v21);

      return;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Void __swiftcall ProgressiveBlurView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ProgressiveBlurView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  ProgressiveBlurView.updateEffect()();
}

Swift::Void __swiftcall ProgressiveBlurView.updateEffect()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius];
  v10 = v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff];
  v12 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation];
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  if (CGRectIsEmpty(v21))
  {
    goto LABEL_5;
  }

  v13 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v13 setScale:1.0];
  [v13 setPreferredRange:2];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v13 format:{v2, v4, v6, v8}];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v4;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = v10;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_87C7B0;
  *(v16 + 24) = v15;
  v20[4] = sub_C3FB8;
  v20[5] = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_41A314;
  v20[3] = &block_descriptor_36_6;
  v17 = _Block_copy(v20);
  v12 = v12;

  v18 = [v14 imageWithActions:v17];

  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    if (v18)
    {
      v19 = [objc_opt_self() _effectWithVariableBlurRadius:v18 imageMask:v9 scale:1.0];

LABEL_6:
      [v0 setEffect:v19];

      return;
    }

LABEL_5:

    v19 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void sub_87C0A8(void *a1, unsigned __int8 a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = [objc_allocWithZone(CAGradientLayer) init];
  [v16 setBounds:{a4, a5, a6, a7}];
  [v16 setStartPoint:{sub_87B980(a2, CGPoint.topCenter.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.bottomCenter.unsafeMutableAddressor)}];
  [v16 setEndPoint:{sub_87B980(a2, CGPoint.bottomCenter.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.topCenter.unsafeMutableAddressor)}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185F0, &unk_B33020);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF85F0;
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  v20 = [v19 colorWithAlphaComponent:a8];

  v21 = [v20 CGColor];
  _s3__C7CGColorCMa_1(0);
  v23 = v22;
  *(v17 + 56) = v22;
  *(v17 + 32) = v21;
  v24 = [v18 whiteColor];
  v25 = [v24 colorWithAlphaComponent:0.0];

  v26 = [v25 CGColor];
  *(v17 + 88) = v23;
  *(v17 + 64) = v26;
  isa = sub_AB9740().super.isa;

  [v16 setColors:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_AF82B0;
  *(v28 + 32) = a3;
  sub_87C734();
  v29 = a3;
  v30 = sub_AB9740().super.isa;

  [v16 setInterpolations:v30];

  v31 = [a1 CGContext];
  [v16 renderInContext:v31];
}

uint64_t sub_87C424()
{

  return swift_deallocObject();
}

double block_copy_helper_224(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id ProgressiveBlurView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect:a1];

  return v3;
}

id ProgressiveBlurView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressiveBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_87C57C()
{
  result = qword_E1D2D8;
  if (!qword_E1D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D2D8);
  }

  return result;
}

unint64_t sub_87C5D4()
{
  result = qword_E1D2E0;
  if (!qword_E1D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D2E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProgressiveBlur(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgressiveBlur(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_87C6E0()
{
  result = qword_E1D310;
  if (!qword_E1D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D310);
  }

  return result;
}

unint64_t sub_87C734()
{
  result = qword_E1AD88;
  if (!qword_E1AD88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E1AD88);
  }

  return result;
}

id sub_87C97C(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

char *QRCodeOverlayViewController.init(qrCode:title:subtitle:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *&v6[v8] = [objc_allocWithZone(UIVisualEffectView) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *&v6[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *&v6[v10] = [objc_allocWithZone(CAShapeLayer) init];
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v12 = sub_AB9260();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  v14 = [objc_allocWithZone(UIImageView) initWithImage:v13];
  *&v6[v11] = v14;
  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *&v6[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_E16B98 != -1)
  {
    swift_once();
  }

  v17 = [objc_opt_self() effectForBlurEffect:qword_E73C68];
  v18 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v17];

  *&v6[v16] = v18;
  v19 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *&v6[v19] = [objc_allocWithZone(UILabel) init];
  *&v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = 0;
  v20 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *&v6[v20] = [objc_allocWithZone(UIScrollView) init];
  v21 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *&v6[v21] = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager] = 0;
  if (a1[4] == 76)
  {
    QRCode.with(errorCorrectionLevel:)(77, v42);
    v22 = v43;
    if (v43)
    {
      v23 = v44;
      v25 = v42[1];
      v24 = v42[2];
      v26 = v42[0];
    }

    else
    {
      v24 = a1[2];
      v22 = a1[3];
      v26 = *a1;
      v25 = a1[1];
      sub_880048(a1, v40);
      v23 = 76;
    }

    v29 = &v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    *v29 = v26;
    *(v29 + 1) = v25;
    *(v29 + 2) = v24;
    *(v29 + 3) = v22;
    *(v29 + 4) = v23;
  }

  else
  {
    v27 = &v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v28 = *(a1 + 1);
    *v27 = *a1;
    *(v27 + 1) = v28;
    *(v27 + 4) = a1[4];
    sub_880048(a1, v42);
  }

  v30 = type metadata accessor for QRCodeOverlayViewController();
  v41.receiver = v6;
  v41.super_class = v30;
  v31 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  v32 = *(v31 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel);
  v33 = v31;
  v34 = v32;
  v35 = sub_AB9260();

  [v34 setText:v35];

  v36 = *(v33 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel);
  v37 = sub_AB9260();

  [v36 setText:v37];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_E19B00, &unk_B33030);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_AF4EC0;
  *(v38 + 32) = sub_AB5330();
  *(v38 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_ABA080();
  swift_unknownObjectRelease();

  sub_880124(a1);

  return v33;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLoad()()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == &dword_0 + 3)
  {
    v4 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] text];
    [v1 setTitle:v4];
  }

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v6 setBackgroundColor:v8];

  v9 = [v1 navigationItem];
  sub_13C80(0, &qword_E179F8, UIBarButtonItem_ptr);
  sub_13C80(0, &qword_E17A80, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44.value.super.super.isa = sub_ABA7D0();
  v44.is_nil = 0;
  isa = sub_AB9F90(UIBarButtonSystemItemDone, v44, v45).super.super.isa;
  [v9 setLeftBarButtonItem:{isa, 0, 0, 0, sub_8801B0, v10}];

  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"dismissAnimated"];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v41 = v12;
  [v13 addGestureRecognizer:v12];

  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v16 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v42 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v17 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 24];
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = v17;
  v19 = v17;
  v20 = v16;

  [*&v20[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v19];
  v40 = v15;
  [*&v1[v15] setAlpha:0.0];
  v39 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setContentMode:1];
  v21 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel];
  sub_13C80(0, &qword_E1C960, UIFont_ptr);
  v23 = v22;
  v24 = sub_ABA550();
  [v23 setFont:v24];

  v25 = *&v1[v21];
  v26 = [v7 whiteColor];
  [v25 setTextColor:v26];

  [*&v1[v21] setTextAlignment:1];
  [*&v1[v21] setNumberOfLines:0];
  [*&v1[v21] setAlpha:0.0];
  [*&v1[v21] setAdjustsFontForContentSizeCategory:1];
  v27 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  v28 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 preferredFontForTextStyle:UIFontTextStyleBody];
  [v30 setFont:v31];

  [*&v1[v27] setTextAlignment:1];
  [*&v1[v27] setNumberOfLines:0];
  [*&v1[v27] setAlpha:0.0];
  [*&v1[v27] setAdjustsFontForContentSizeCategory:1];
  v32 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  v33 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer];
  v34 = [v7 blackColor];
  v35 = [v34 CGColor];

  [v33 setFillColor:v35];
  [*&v1[v32] setFillRule:kCAFillRuleNonZero];
  [*&v1[v32] setCompositingFilter:kCAFilterDestOut];
  if (*(v42 + 4) != 76)
  {
    v36 = [*&v1[v40] layer];
    [v36 addSublayer:*&v1[v32]];

    [*&v1[v40] addSubview:*&v1[v39]];
  }

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    [v37 addSubview:*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView]];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_87D454(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    QRCodeOverlayViewController.dismissAnimated()();
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v5 = aBlock - v4;
  v6 = type metadata accessor for QRCodeOverlayViewController();
  v45.receiver = v2;
  v45.super_class = v6;
  objc_msgSendSuper2(&v45, "viewIsAppearing:", a1);
  v7 = [objc_allocWithZone(UIView) init];
  v8 = [v2 traitCollection];
  [v8 userInterfaceIdiom];

  sub_ABA600();
  v9 = sub_ABA680();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  sub_ABA6A0();
  v10 = [v7 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  [v7 setClipsToBounds:1];
  [v7 setAlpha:0.0];
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  [v7 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView]];
  v12 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = v7;
  v13 = v7;

  v14 = [v2 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != &dword_0 + 3)
  {
    v32 = objc_opt_self();
    v33 = [v32 whiteColor];
    [v13 setBackgroundColor:v33];

    v34 = [*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView] contentView];
    v35 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [v34 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView]];

    v36 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v2[v35] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView]];
    [*&v2[v36] addSubview:v13];
    [*&v2[v36] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel]];
    v37 = *&v2[v36];
    v38 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
    [v37 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView]];
    v39 = [*&v2[v38] contentView];
    [v39 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel]];

    v40 = *&v2[v11];
    v41 = [v32 blackColor];
    v42 = *&v40[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v40[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v41;
    v43 = v41;

    sub_87F828();
    v30 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
    v31 = [v32 blackColor];
    [v30 setTintColor:v31];
    goto LABEL_6;
  }

  v16 = *&v2[v11];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 labelColor];
  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v19;
  v21 = v19;

  sub_87F828();
  v22 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
  v23 = [v17 labelColor];
  [v22 setTintColor:v23];

  v24 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_87DA74;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_119878;
  aBlock[3] = &block_descriptor_225;
  v25 = _Block_copy(aBlock);
  v26 = [v24 initWithDynamicProvider:v25];
  _Block_release(v25);

  [v13 setBackgroundColor:v26];

  v27 = [v2 view];
  if (v27)
  {
    v28 = v27;
    [v27 addSubview:v13];

    v29 = [v2 view];
    if (v29)
    {
      v30 = v29;
      v31 = *&v2[v11];
      [v30 addSubview:v31];
LABEL_6:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_87DA74(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != &dword_0 + 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent:0.1];

  return v5;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1);
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager;
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {
LABEL_2:
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v12[4] = sub_8801D0;
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1B5EB4;
    v12[3] = &block_descriptor_6_3;
    v6 = _Block_copy(v12);
    v7 = v1;

    [v4 animateWithDuration:v6 animations:0.25];
    _Block_release(v6);
    return;
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 window];

    if (v10)
    {
      v11 = [v10 windowScene];

      if (v11)
      {
        type metadata accessor for BrightnessManager();
        swift_allocObject();
        *&v1[v3] = BrightnessManager.init(windowScene:)(v11);
      }
    }

    goto LABEL_2;
  }

  __break(1u);
}

double sub_87DD14(char *a1)
{
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] setAlpha:1.0];
  v2 = *&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_0 + 3)
  {
    if (qword_E16BA0 != -1)
    {
      swift_once();
    }

    v5 = &qword_E73C70;
  }

  else
  {
    if (qword_E16B98 != -1)
    {
      swift_once();
    }

    v5 = &qword_E73C68;
  }

  [v2 setEffect:*v5];

  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {

    BrightnessManager.increaseBrightnessIfNeeded()();
  }

  return result;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v219.receiver = v0;
  v219.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v219, "viewDidLayoutSubviews");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = [v1 view];
  v5 = v4;
  if (v3 != &dword_0 + 3)
  {
    if (!v4)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    [v4 bounds];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    if (qword_E16B58 != -1)
    {
      swift_once();
    }

    v56 = *&qword_E73C28;
    if (qword_E16B60 != -1)
    {
      swift_once();
    }

    v57 = *&qword_E73C30;
    v58 = v56 + *&qword_E73C30;
    v59 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
    v222 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v223 = v59;
    v224 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
    sub_880048(&v222, &v218);
    if (qword_E16B70 != -1)
    {
      swift_once();
    }

    v60 = *&qword_E73C40;
    v239.origin.x = v49;
    v239.origin.y = v51;
    v239.size.width = v53;
    v239.size.height = v55;
    Width = CGRectGetWidth(v239);
    v240.origin.x = v49;
    v240.origin.y = v51;
    v240.size.width = v53;
    v240.size.height = v55;
    Height = CGRectGetHeight(v240);
    if (Height >= Width)
    {
      Height = Width;
    }

    v63 = Height - (v58 + v58);
    if (v63 >= v60)
    {
      v64 = v60;
    }

    else
    {
      v64 = v63;
    }

    v65 = [v1 traitCollection];
    [v65 displayScale];
    v67 = v66;

    v68 = QRCode.dotAdjustedWidth(with:scale:)(v64, v67);
    sub_880124(&v222);
    v241.origin.x = v49;
    v241.origin.y = v51;
    v241.size.width = v53;
    v241.size.height = v55;
    v69 = CGRectGetWidth(v241);
    v70 = [v1 view];
    if (!v70)
    {
      goto LABEL_57;
    }

    v71 = v70;
    [v70 safeAreaInsets];
    v73 = v72;

    v74 = [v1 view];
    if (!v74)
    {
LABEL_58:
      __break(1u);
      return;
    }

    v75 = v74;
    v217 = v68;
    v76 = v57 + v57 + v68;
    [v74 safeAreaInsets];

    v77 = UIEdgeInsetsInsetRect(v49, v51, v53, v55, v73, (v69 - v76) * 0.5);
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v212 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] sizeThatFits:{v80, v82}];
    v213 = v84;
    v86 = v85;
    v87 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] sizeThatFits:{v81, v83}];
    v216 = v89;
    if (qword_E16B80 != -1)
    {
      v207 = v88;
      swift_once();
      v88 = v207;
    }

    v209 = v76 + *&qword_E73C50;
    v90 = v86 + v76 + *&qword_E73C50;
    if (qword_E16B88 != -1)
    {
      v208 = v88;
      swift_once();
      v88 = v208;
    }

    v214 = v86;
    v215 = v88;
    v211 = *&qword_E73C58;
    v91 = v88 + v90 + *&qword_E73C58;
    if (qword_E16B90 != -1)
    {
      swift_once();
    }

    v92 = *&qword_E73C60;
    v93 = v91 + v92 + v92;
    v242.origin.x = v77;
    v242.origin.y = v79;
    v242.size.width = v81;
    v242.size.height = v83;
    v94 = CGRectGetWidth(v242);
    v95 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView] setFrame:{v77, v79, v81, v83}];
    [*&v1[v95] setContentSize:{v94, v93}];
    v243.origin.x = v77;
    v243.origin.y = v79;
    v243.size.width = v81;
    v243.size.height = v83;
    v96 = CGRectGetHeight(v243);
    v97 = *&v1[v95];
    v98 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView];
    v99 = v97;
    if (v96 >= v93)
    {
      v100 = 0.0;
    }

    else
    {
      v100 = v92;
    }

    v101 = sub_ABA460(0.0, v100, v94, v93);
    v103 = v102;
    v105 = v104;
    v107 = v106;

    [v98 setFrame:{v101, v103, v105, v107}];
    v108 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView] bounds];
    v112 = v111;
    v113 = v109;
    v114 = v110;
    v115 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView;
    v116 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
    v210 = v117;
    if (v116)
    {
      v118 = *&v1[v108];
      v119 = v116;
      v120 = v118;
      v121 = sub_ABA460(0.0, 0.0, v76, v76);
      v123 = v122;
      v125 = v124;
      v127 = v126;

      [v119 setFrame:{v121, v123, v125, v127}];
      v128 = *&v1[v115];
      v129 = v114 - v209;
      v130 = v209 + v113;
      v131 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
      if (v128)
      {
        v132 = v131;
        [v128 bounds];
LABEL_44:
        v133 = v87;
        v134 = [v1 traitCollection];
        [v134 displayScale];

        sub_ABA470();
        [v132 setFrame:*&v217];

        v135 = *&v1[v212];
        v244.origin.x = v112;
        v244.origin.y = v130;
        v244.size.width = v210;
        v244.size.height = v129;
        MinY = CGRectGetMinY(v244);
        v137 = *&v1[v108];
        v138 = sub_ABA460(0.0, MinY, v213, v214);
        v140 = v139;
        v142 = v141;
        v144 = v143;

        [v135 setFrame:{v138, v140, v142, v144}];
        v145 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
        v146 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView];
        v245.origin.x = v112;
        v245.origin.y = v214 + v211 + v130;
        v245.size.width = v210;
        v245.size.height = v129 - (v214 + v211);
        v147 = CGRectGetMinY(v245);
        v148 = *&v1[v108];
        v149 = sub_ABA460(0.0, v147, v216, v215);
        v151 = v150;
        v153 = v152;
        v155 = v154;

        [v146 setFrame:{v149, v151, v153, v155}];
        v156 = *&v1[v145];
        v33 = *&v1[v133];
        [v156 bounds];
        goto LABEL_45;
      }
    }

    else
    {
      v129 = v110 - v209;
      v130 = v209 + v109;
      v131 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
    }

    v132 = v131;
    goto LABEL_44;
  }

  if (!v4)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v6 = [v4 safeAreaLayoutGuide];

  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (qword_E16B50 != -1)
  {
    swift_once();
  }

  v15 = *&qword_E73C20;
  if (qword_E16B68 != -1)
  {
    swift_once();
  }

  v16 = *&qword_E73C38;
  v17 = v15 + *&qword_E73C38;
  v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
  v222 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v223 = v18;
  v224 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
  sub_880048(&v222, &v218);
  if (qword_E16B70 != -1)
  {
    swift_once();
  }

  v19 = *&qword_E73C40;
  v237.origin.x = v8;
  v237.origin.y = v10;
  v237.size.width = v12;
  v237.size.height = v14;
  v20 = CGRectGetWidth(v237);
  v238.origin.x = v8;
  v238.origin.y = v10;
  v238.size.width = v12;
  v238.size.height = v14;
  v21 = CGRectGetHeight(v238);
  if (v21 >= v20)
  {
    v21 = v20;
  }

  v22 = v21 - (v17 + v17);
  if (v22 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v1 traitCollection];
  [v24 displayScale];
  v26 = v25;

  v27 = QRCode.dotAdjustedWidth(with:scale:)(v23, v26);
  sub_880124(&v222);
  v28 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v30 = [v1 traitCollection];
  [v30 displayScale];

  sub_ABA470();
  [v29 setFrame:*&v27];

  v31 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  if (v31)
  {
    v32 = *&v1[v28];
    v33 = v31;
    [v32 frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    v43 = NSDirectionalEdgeInsets.init(edge:length:)(v42, v16);
    v47 = CGRect.outset(by:for:)(0, v43, v44, v45, v46, v35, v37, v39, v41);
LABEL_45:
    [v33 setFrame:v47];
  }

  v157 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v158 = [v1 view];
  if (!v158)
  {
    __break(1u);
    goto LABEL_55;
  }

  v159 = v158;
  [v158 bounds];
  v161 = v160;
  v163 = v162;
  v165 = v164;
  v167 = v166;

  [v157 setFrame:{v161, v163, v165, v167}];
  v168 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32] != 76)
  {
    v169 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] frame];
    v170 = CGRectGetWidth(v246) * 0.3;
    if (qword_E16B78 != -1)
    {
      swift_once();
    }

    v171 = *&qword_E73C48;
    if (*&qword_E73C48 < v170)
    {
      v170 = *&qword_E73C48;
    }

    v172 = *&v1[v169];
    v173 = sub_ABA460(0.0, 0.0, v170, v170);
    v175 = v174;
    v177 = v176;
    v179 = v178;

    v180 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setFrame:{v173, v175, v177, v179}];
    CGAffineTransformMakeScale(&v218, v170 / v171, v170 / v171);
    a = v218.a;
    b = v218.b;
    c = v218.c;
    d = v218.d;
    tx = v218.tx;
    ty = v218.ty;
    v187 = *(v168 + 1);
    v220[0] = *v168;
    v220[1] = v187;
    v221 = *(v168 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D390, &qword_B33040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B10840;
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v225.x = 12.0;
    v225.y = 15.0;
    *(inited + 32) = CGPointApplyAffineTransform(v225, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v226.x = 12.0;
    v226.y = 6.0;
    *(inited + 48) = CGPointApplyAffineTransform(v226, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v227.y = 6.0;
    v227.x = 36.0;
    *(inited + 64) = CGPointApplyAffineTransform(v227, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v228.y = 0.0;
    v228.x = 36.0;
    *(inited + 80) = CGPointApplyAffineTransform(v228, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v229.y = 0.0;
    v229.x = 85.0;
    *(inited + 96) = CGPointApplyAffineTransform(v229, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v230.x = 85.0;
    v230.y = 90.0;
    *(inited + 112) = CGPointApplyAffineTransform(v230, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v231.x = 36.0;
    v231.y = 90.0;
    *(inited + 128) = CGPointApplyAffineTransform(v231, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v232.x = 36.0;
    v232.y = 95.0;
    *(inited + 144) = CGPointApplyAffineTransform(v232, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v233.x = 0.0;
    v233.y = 95.0;
    *(inited + 160) = CGPointApplyAffineTransform(v233, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v234.x = 0.0;
    v234.y = 57.0;
    *(inited + 176) = CGPointApplyAffineTransform(v234, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v235.x = 12.0;
    v235.y = 57.0;
    *(inited + 192) = CGPointApplyAffineTransform(v235, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v236.x = 12.0;
    v236.y = 15.0;
    *(inited + 208) = CGPointApplyAffineTransform(v236, &v218);
    v189 = *&v1[v180];
    sub_880048(v220, &v218);
    [v189 frame];
    v191 = v190;
    v193 = v192;
    v195 = v194;
    v197 = v196;
    [*&v1[v169] bounds];
    v202 = QRCode.dotAlignedPath(with:in:imageBounds:)(inited, v191, v193, v195, v197, v198, v199, v200, v201);
    sub_880124(v220);
    swift_setDeallocating();
    v203 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer] setPath:v202];
    v204 = *&v1[v203];
    v205 = *&v1[v169];
    v206 = v204;
    [v205 bounds];
    [v206 setFrame:?];
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.dismissAnimated()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_8801D8;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1B5EB4;
  v11 = &block_descriptor_12_2;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_880218;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1811AC;
  v11 = &block_descriptor_18_3;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.25];
  _Block_release(v6);
  _Block_release(v3);
}

double sub_87EFD8(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView) setEffect:0];
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager))
  {

    BrightnessManager.resetBrightnessToSystemDefault()();
  }

  return result;
}

char *sub_87F26C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = 0;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = 0;
  v10 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v11 = [objc_allocWithZone(UIImageView) init];
  v12 = UIView.forAutolayout.getter();

  *&v5[v10] = v12;
  v13 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *&v5[v13] = [objc_allocWithZone(CALayer) init];
  v14 = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v36.receiver = v5;
  v36.super_class = v14;
  v15 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v17 = *&v15[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView];
  v18 = v15;
  [v18 addSubview:v17];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF93E0;
  v21 = [*&v15[v16] leadingAnchor];
  v22 = [v18 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [*&v15[v16] trailingAnchor];
  v25 = [v18 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v20 + 40) = v26;
  v27 = [*&v15[v16] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v20 + 48) = v29;
  v30 = [*&v15[v16] bottomAnchor];
  v31 = [v18 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  sub_13C80(0, qword_E18600, NSLayoutConstraint_ptr);
  isa = sub_AB9740().super.isa;

  [v19 activateConstraints:isa];

  sub_13C80(0, &unk_E1DF00, UITraitCollection_ptr);
  sub_ABA1A0();
  v35[3] = v14;
  v35[0] = v18;
  sub_ABA6E0();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v18;
}

Swift::Void __swiftcall QRCodeOverlayViewController.ContainerView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_13C80(0, &qword_E1D398, CATransaction_ptr);
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  static CATransaction.performWithoutAnimation(_:)(sub_880230);
}

void sub_87F6F4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView);
  v2 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer);
  [v1 bounds];
  [v2 setFrame:?];
}

void sub_87F828()
{
  v1 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  if (v1)
  {
    v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];
    v4 = kCAFilterSourceIn;
    v15 = v1;
    [v3 setCompositingFilter:v4];
    v5 = *&v0[v2];
    v6 = [v0 traitCollection];
    v7 = [v15 resolvedColorWithTraitCollection:v6];

    v8 = [v7 CGColor];
    [v5 setBackgroundColor:v8];

    v9 = [*&v0[v2] superlayer];
    if (v9)
    {
      v14 = v9;

      v10 = v14;
    }

    else
    {
      v12 = [*&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] layer];
      v13 = *&v0[v2];
      [v12 addSublayer:v13];

      v10 = v15;
    }
  }

  else
  {
    v11 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];

    [v11 removeFromSuperlayer];
  }
}

id sub_87FA54(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *QRCodeOverlayViewController.ImageViewRepresentable.makeUIView(context:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = sub_AB6240();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = a4;
  v13 = a4;

  [*&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v13];

  if ((a3 & 1) == 0)
  {
    v14 = sub_AB9F40();
    v15 = sub_AB6A40();
    sub_AB4A90(v14, &dword_0, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();
    v16 = j__swift_release(a2);
    (*(v8 + 8))(v10, v7, v16);
    a2 = v21[1];
  }

  if (a2)
  {
    sub_13C80(0, &qword_E1AD80, UIColor_ptr);

    v17 = sub_ABA740();
    v18 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v17;
    v19 = v17;

    sub_87F828();
  }

  return v11;
}

void QRCodeOverlayViewController.ImageViewRepresentable.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = sub_AB6240();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image);
  *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = a5;
  v14 = a5;

  [*(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView) setImage:v14];

  if ((a4 & 1) == 0)
  {
    v15 = sub_AB9F40();
    v16 = sub_AB6A40();
    sub_AB4A90(v15, &dword_0, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();
    v17 = j__swift_release(a3);
    (*(v10 + 8))(v12, v9, v17);
    a3 = v21[1];
  }

  if (a3)
  {
    sub_13C80(0, &qword_E1AD80, UIColor_ptr);

    v18 = sub_ABA740();
    v19 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor);
    *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = v18;
    v20 = v18;

    sub_87F828();
  }
}

uint64_t sub_87FF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8805EC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_87FFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8805EC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_880020(uint64_t a1)
{
  sub_8805EC();
  sub_AB65B0();
  __break(1u);
}

void sub_8800C8(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_880178()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_225(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_8801E0()
{

  return swift_deallocObject();
}

unint64_t sub_880244()
{
  result = qword_E1D3A0;
  if (!qword_E1D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D3A0);
  }

  return result;
}

void sub_8802B4()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v5 = sub_AB9260();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_E16B98 != -1)
  {
    swift_once();
  }

  v10 = [objc_opt_self() effectForBlurEffect:qword_E73C68];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *(v0 + v9) = v11;
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *(v0 + v13) = [objc_allocWithZone(UIScrollView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *(v0 + v14) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_880514()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = 0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = 0;
  v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *(v1 + v5) = [objc_allocWithZone(CALayer) init];
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_8805EC()
{
  result = qword_E1D400;
  if (!qword_E1D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D400);
  }

  return result;
}

uint64_t Radiosity.ViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[0] = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7640();
  v6 = v26[0];
  v7 = v3[5];
  v26[4] = v3[4];
  v26[5] = v7;
  v8 = v3[7];
  v26[6] = v3[6];
  v26[7] = v8;
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v26[2] = v3[2];
  v26[3] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D408, &qword_B33228);
  *(a2 + *(v11 + 40)) = v6;
  v12 = (a2 + *(v11 + 36));
  v13 = v3[5];
  v12[4] = v3[4];
  v12[5] = v13;
  v14 = v3[7];
  v12[6] = v3[6];
  v12[7] = v14;
  v15 = v3[1];
  *v12 = *v3;
  v12[1] = v15;
  v16 = v3[3];
  v12[2] = v3[2];
  v12[3] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D410, &qword_B33230);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = swift_allocObject();
  v19 = v3[7];
  v18[7] = v3[6];
  v18[8] = v19;
  v18[9] = v3[8];
  v20 = v3[3];
  v18[3] = v3[2];
  v18[4] = v20;
  v21 = v3[5];
  v18[5] = v3[4];
  v18[6] = v21;
  v22 = v3[1];
  v18[1] = *v3;
  v18[2] = v22;
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D418, &unk_B33238) + 36));
  *v23 = sub_880810;
  v23[1] = v18;
  sub_880814(v26, v25);
  return sub_88084C(v3, v25);
}

uint64_t sub_880884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v31 = v2[6];
  v32 = v5;
  v33 = v2[8];
  v6 = v2[3];
  v27 = v2[2];
  v28 = v6;
  v7 = v2[5];
  v29 = v2[4];
  v30 = v7;
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v24[0] = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7640();
  v9 = v34[0];
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v34[7] = v32;
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  v34[3] = v28;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D408, &qword_B33228);
  *(a2 + *(v10 + 40)) = v9;
  v11 = (a2 + *(v10 + 36));
  v12 = v30;
  v11[4] = v29;
  v11[5] = v12;
  v13 = v32;
  v11[6] = v31;
  v11[7] = v13;
  v14 = v26;
  *v11 = v25;
  v11[1] = v14;
  v15 = v28;
  v11[2] = v27;
  v11[3] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D410, &qword_B33230);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = swift_allocObject();
  v18 = v32;
  v17[7] = v31;
  v17[8] = v18;
  v17[9] = v33;
  v19 = v28;
  v17[3] = v27;
  v17[4] = v19;
  v20 = v30;
  v17[5] = v29;
  v17[6] = v20;
  v21 = v26;
  v17[1] = v25;
  v17[2] = v21;
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D418, &unk_B33238) + 36));
  *v22 = sub_883DB4;
  v22[1] = v17;
  sub_880814(v34, v24);
  return sub_88084C(&v25, v24);
}

id Radiosity.UIView.__allocating_init(content:isRadiosityEnabled:specs:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(a1, v5, a3);
}

uint64_t sub_880ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_880B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_880BB4(uint64_t a1)
{
  swift_getWitnessTable();
  sub_AB65B0();
  __break(1u);
}

void sub_880C04(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      [v1 addSubview:*&v1[qword_E1D438]];
      [v1 addSubview:*&v1[qword_E1D440]];
    }

    else
    {
      [*&v1[qword_E1D438] removeFromSuperview];
      [*&v1[qword_E1D440] removeFromSuperview];
    }
  }
}

uint64_t Radiosity.UIView.isRadiosityEnabled.getter()
{
  v1 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void Radiosity.UIView.isRadiosityEnabled.setter(char a1)
{
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_880C04(v4);
}

void (*Radiosity.UIView.isRadiosityEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_880DEC;
}

void sub_880DEC(uint64_t a1)
{
  v1 = *a1;
  Radiosity.UIView.isRadiosityEnabled.setter(*(*a1 + 32));

  free(v1);
}

void sub_880E2C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 72);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:
  sub_881610(v5);
  sub_881C88();
}

double Radiosity.UIView.specs.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_882D74(v8);
  sub_880814(v8, v7);
  v2 = v12;
  a1[4] = v11;
  a1[5] = v2;
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  v4 = v8[1];
  *a1 = v8[0];
  a1[1] = v4;
  result = *&v9;
  v6 = v10;
  a1[2] = v9;
  a1[3] = v6;
  return result;
}

uint64_t Radiosity.UIView.specs.setter(_OWORD *a1)
{
  sub_882F44(a1);

  return sub_883018(a1);
}

void (*Radiosity.UIView.specs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x320uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 792) = v1;
  v5 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  v4[6] = v5[6];
  v4[7] = v11;
  v4[4] = v9;
  v4[5] = v10;
  v12 = v5[7];
  v14 = v5[4];
  v13 = v5[5];
  v4[30] = v5[6];
  v4[31] = v12;
  v4[28] = v14;
  v4[29] = v13;
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[3];
  v4[26] = v5[2];
  v4[27] = v17;
  v4[24] = v15;
  v4[25] = v16;
  sub_880814(v4, (v4 + 32));
  return sub_881020;
}

void sub_881020(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 464);
  if (a2)
  {
    v2[12] = v2[28];
    v2[13] = v3;
    v4 = v2[31];
    v2[14] = v2[30];
    v2[15] = v4;
    v5 = v2[25];
    v2[8] = v2[24];
    v2[9] = v5;
    v6 = v2[27];
    v2[10] = v2[26];
    v2[11] = v6;
    sub_880814((v2 + 8), (v2 + 40));
    sub_882F44(v2 + 8);
    sub_883018((v2 + 8));
    v7 = v2[29];
    v2[36] = v2[28];
    v2[37] = v7;
    v8 = v2[31];
    v2[38] = v2[30];
    v2[39] = v8;
    v9 = v2[25];
    v2[32] = v2[24];
    v2[33] = v9;
    v10 = v2[27];
    v2[34] = v2[26];
    v2[35] = v10;
    v11 = (v2 + 32);
  }

  else
  {
    v2[20] = v2[28];
    v2[21] = v3;
    v12 = v2[31];
    v2[22] = v2[30];
    v2[23] = v12;
    v13 = v2[25];
    v2[16] = v2[24];
    v2[17] = v13;
    v14 = v2[27];
    v2[18] = v2[26];
    v2[19] = v14;
    sub_882F44(v2 + 16);
    v11 = (v2 + 16);
  }

  sub_883018(v11);

  free(v2);
}

__int128 *Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_E16BA8 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.containerDetailHeaderArtwork;
}

id Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = swift_isaMask & *v4;
  *(v4 + direct field offset for Radiosity.UIView.content) = a1;
  v10 = (v4 + direct field offset for Radiosity.UIView.specs);
  v11 = *(a3 + 80);
  v10[4] = *(a3 + 64);
  v10[5] = v11;
  v12 = *(a3 + 112);
  v10[6] = *(a3 + 96);
  v10[7] = v12;
  v13 = *(a3 + 16);
  *v10 = *a3;
  v10[1] = v13;
  v14 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v14;
  *(v4 + direct field offset for Radiosity.UIView.isRadiosityEnabled) = a2;
  if (*(a3 + 72))
  {
    v15 = objc_allocWithZone(UIView);
    v16 = a1;
    sub_880814(a3, v35);
    v17 = [v15 init];
  }

  else
  {
    v18 = objc_allocWithZone(_UIPortalView);
    v19 = a1;
    sub_880814(a3, v35);
    v17 = [v18 initWithSourceView:v19];
  }

  v20 = v17;
  *(v4 + qword_E1D438) = v17;
  v21 = objc_allocWithZone(_UIPortalView);
  v22 = a1;
  v23 = v20;
  v24 = [v21 initWithSourceView:v22];
  *(v4 + qword_E1D440) = v24;
  v27 = type metadata accessor for Radiosity.UIView(0, *(v9 + 80), v25, v26);
  v34.receiver = v4;
  v34.super_class = v27;
  v28 = v24;
  v29 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v29 addSubview:{v22, v34.receiver, v34.super_class}];
  if (a2)
  {
    [v29 addSubview:v23];
    [v29 addSubview:v28];
  }

  [v29 bounds];
  [v22 setFrame:?];
  [v22 setAutoresizingMask:18];

  sub_881610(0);
  sub_881C88();
  v30 = [v29 traitCollection];
  v31 = [v30 userInterfaceStyle];

  sub_88218C(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_E19B00, &unk_B33030);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_AF4EC0;
  *(v32 + 32) = sub_AB4F60();
  *(v32 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(swift_allocObject() + 16) = ObjectType;
  sub_ABA6F0();

  swift_unknownObjectRelease();

  sub_883018(a3);

  return v29;
}

double sub_8814F0(void *a1)
{
  v1 = a1;
  Radiosity.UIView.intrinsicContentSize.getter();
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall Radiosity.UIView.layoutSubviews()()
{
  v3 = type metadata accessor for Radiosity.UIView(0, *(&stru_20.filesize + (swift_isaMask & *v2)), v0, v1);
  v4.receiver = v2;
  v4.super_class = v3;
  objc_msgSendSuper2(&v4, "layoutSubviews");
  sub_881610(0);
  sub_881C88();
}

void sub_8815B4(void *a1)
{
  v1 = a1;
  Radiosity.UIView.layoutSubviews()();
}

void sub_8815FC(uint64_t a1)
{
  v2 = *(v1 + qword_E1D438);
  *(v1 + qword_E1D438) = a1;
}

void sub_881610(char a1)
{
  v2 = v1;
  if (a1)
  {
    [*&v1[qword_E1D438] removeFromSuperview];
    v3 = &v1[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    if (*(v3 + 9))
    {
      v4 = [objc_allocWithZone(UIView) init];
    }

    else
    {
      v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView:*&v2[direct field offset for Radiosity.UIView.content]];
    }

    v5 = *&v2[qword_E1D438];
    *&v2[qword_E1D438] = v4;
    v6 = v4;

    v7 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
    swift_beginAccess();
    if (v2[v7] == 1)
    {
      [v2 addSubview:v6];
    }
  }

  v8 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v9 = *(v8 + 5);
  v52 = *(v8 + 4);
  v53 = v9;
  v10 = *(v8 + 7);
  v54 = *(v8 + 6);
  v55 = v10;
  v11 = *(v8 + 1);
  *&v50.a = *v8;
  *&v50.c = v11;
  v12 = *(v8 + 3);
  *&v50.tx = *(v8 + 2);
  v51 = v12;
  sub_880814(&v50, &v49);
  [v2 bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  v49 = v50;
  v59 = CGRectApplyAffineTransform(v58, &v49);
  v17 = v59.origin.x;
  v18 = v59.origin.y;
  v19 = v59.size.width;
  v20 = v59.size.height;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v46 = CGRectGetWidth(v60);
  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v19;
  v61.size.height = v20;
  v45 = CGRectGetWidth(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v21 = CGRectGetHeight(v62);
  v63.origin.x = v17;
  v63.origin.y = v18;
  v63.size.width = v19;
  v63.size.height = v20;
  v22 = CGRectGetHeight(v63);
  sub_883018(&v50);
  v23 = *&v2[qword_E1D438];
  [v2 bounds];
  [v23 setFrame:?];

  v24 = [*&v2[qword_E1D438] layer];
  v25 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v24 setShadowColor:*(v25 + 7)];

  v26 = [*&v2[qword_E1D438] layer];
  v27 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  LODWORD(v28) = *(v27 + 12);
  [v26 setShadowOpacity:v28];

  v29 = [*&v2[qword_E1D438] layer];
  v30 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v29 setShadowRadius:v30[8]];

  v31 = [*&v2[qword_E1D438] layer];
  v32 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v57 = *(v32 + 72);
  v33 = v57;
  if (v57)
  {
    v34 = &v2[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    v35 = v34[8];
    v36 = sub_883D78(&v57, &v49);
    v37 = v33(v36, MinX + (v46 - v45) * 0.5, v21 - v22, v19, v20, v35);
    v39 = v38;
    sub_88333C(&v57);
  }

  else
  {
    v37 = 0;
  }

  [v31 setShadowPath:v37];

  v40 = [*&v2[qword_E1D438] layer];
  v41 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v56 = *(v41 + 72);
  v42 = v56;
  if (v56)
  {
    v43 = *(&v56 + 1);
    sub_883D78(&v56, v48);
    v44 = sub_881B14(v42, v43, v2);
    sub_88333C(&v56);
  }

  else
  {
    v44 = 0;
  }

  [v40 setMask:v44];
}

id sub_881B14(uint64_t (*a1)(uint64_t, double, double, double, double, double), uint64_t a2, char *a3)
{
  v5 = [objc_allocWithZone(CAShapeLayer) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 blackColor];
  v9 = [v8 CGColor];

  [v7 setBackgroundColor:v9];
  [a3 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &a3[direct field offset for Radiosity.UIView.specs];
  v19 = swift_beginAccess();
  v20 = a1(v19, v11, v13, v15, v17, *(v18 + 8));
  v22 = v21;

  [v7 setPath:v22];
  [v7 setFillRule:kCAFillRuleEvenOdd];

  return v7;
}

void sub_881C88()
{
  v1 = v0;
  v2 = &v0[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v46 = *(v2 + 4);
  v47 = v3;
  v4 = *(v2 + 7);
  v48 = *(v2 + 6);
  v49 = v4;
  v5 = *(v2 + 1);
  v42 = *v2;
  v43 = v5;
  v6 = *(v2 + 3);
  v44 = *(v2 + 2);
  v45 = v6;
  sub_880814(&v42, &rect[3]);
  [v1 bounds];
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  *&rect[3] = v42;
  *&rect[5] = v43;
  *&rect[7] = v44;
  v51 = CGRectApplyAffineTransform(v50, &rect[3]);
  v11 = v51.origin.x;
  rect[0] = *&v51.origin.x;
  rect[2] = *&v51.origin.y;
  v12 = v51.size.width;
  v13 = v51.size.height;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  rect[1] = COERCE_ID(CGRectGetMinX(v51));
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v14 = CGRectGetWidth(v52);
  v53.origin.x = v11;
  *&v53.origin.y = rect[2];
  v53.size.width = v12;
  v53.size.height = v13;
  v15 = *&rect[1] + (v14 - CGRectGetWidth(v53)) * 0.5;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v16 = CGRectGetHeight(v54);
  *&v55.origin.x = rect[0];
  *&v55.origin.y = rect[2];
  v55.size.width = v12;
  v55.size.height = v13;
  v17 = CGRectGetHeight(v55);
  sub_883018(&v42);
  v18 = *&v1[qword_E1D440];
  [v18 setFrame:{v15, v16 - v17, v12, v13}];
  v19 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v20 = *(v19 + 1);
  *&rect[3] = *v19;
  *&rect[5] = v20;
  *&rect[7] = *(v19 + 2);
  [v18 setTransform:&rect[3]];
  rect[2] = [v18 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185F0, &unk_B33020);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_AF85F0;
  v22 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v23 = *(v22 + 13);

  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceStyle];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v23(v25);
  isa = sub_AB9A80().super.super.isa;
  [v26 setValue:isa forKey:kCAFilterInputAmount];

  v28 = sub_883D2C();
  *(v21 + 56) = v28;
  *(v21 + 32) = v26;
  swift_beginAccess();
  v29 = kCAFilterGaussianBlur;
  v30 = objc_allocWithZone(CAFilter);

  v31 = [v30 initWithType:v29];
  v32 = sub_AB9A80().super.super.isa;
  [v31 setValue:v32 forKey:kCAFilterInputRadius];

  v33 = sub_AB9890().super.super.isa;
  [v31 setValue:v33 forKey:kCAFilterInputNormalizeEdges];

  *(v21 + 88) = v28;
  *(v21 + 64) = v31;
  v34 = sub_AB9740().super.isa;

  [rect[2] setFilters:v34];

  v35 = [v18 layer];
  v36 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v37 = *(v36 + 11);

  v38 = [v1 traitCollection];
  v39 = [v38 userInterfaceStyle];

  LODWORD(v16) = v37(v39);

  LODWORD(v40) = LODWORD(v16);
  [v35 setOpacity:v40];
}

void sub_88218C(uint64_t a1)
{
  sub_881C88();
  v3 = [*(v1 + qword_E1D438) layer];
  v4 = v3;
  if (a1 == 2)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -2.0;
  }

  if (a1 == 2)
  {
    v6 = -2.0;
  }

  else
  {
    v6 = -1.0;
  }

  [v3 setZPosition:v5];

  v7 = [*(v1 + qword_E1D440) layer];
  [v7 setZPosition:v6];
}

id Radiosity.UIView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Radiosity.UIView(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_8822FC(uint64_t a1)
{
  v2 = *(a1 + direct field offset for Radiosity.UIView.specs + 80);
  v6[4] = *(a1 + direct field offset for Radiosity.UIView.specs + 64);
  v6[5] = v2;
  v3 = *(a1 + direct field offset for Radiosity.UIView.specs + 112);
  v6[6] = *(a1 + direct field offset for Radiosity.UIView.specs + 96);
  v6[7] = v3;
  v4 = *(a1 + direct field offset for Radiosity.UIView.specs + 16);
  v6[0] = *(a1 + direct field offset for Radiosity.UIView.specs);
  v6[1] = v4;
  v5 = *(a1 + direct field offset for Radiosity.UIView.specs + 48);
  v6[2] = *(a1 + direct field offset for Radiosity.UIView.specs + 32);
  v6[3] = v5;
  sub_883018(v6);
}

__n128 Radiosity.Specs.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 Radiosity.Specs.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t Radiosity.Specs.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = v4;
  result = sub_307CC(v7, v6);
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  return result;
}

__n128 Radiosity.Specs.shadow.setter(uint64_t a1)
{
  sub_17654(*(v1 + 72), *(v1 + 80));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsManager.Configuration.animationDuration.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Whitetail.Binding.configurationBlock.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double Radiosity.Specs.radiosity.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = *(v1 + 96);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;

  return result;
}

__n128 Radiosity.Specs.radiosity.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v4;
  *(v1 + 120) = *(a1 + 32);
  return result;
}

uint64_t View.radiosity(specs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  sub_AB7630();
  LOBYTE(v5) = v14[0];
  *(&v5 + 1) = *(&v14[0] + 1);
  sub_880814(a1, v14);
  sub_AB7310();
  v14[6] = v12;
  v14[7] = v13;
  v14[8] = v5;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v11;
  v14[0] = v6;
  v14[1] = v7;
  return sub_8832F0(v14);
}

double Radiosity.Specs.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  v20 = v5;
  v6 = v2[7];
  v21 = v2[6];
  v22 = v6;
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  v8 = v2[3];
  v17 = v2[2];
  v18 = v8;
  sub_880814(v2, &v14);
  a1(&v15);
  v9 = v20;
  a2[4] = v19;
  a2[5] = v9;
  v10 = v22;
  a2[6] = v21;
  a2[7] = v10;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  result = *&v17;
  v13 = v18;
  a2[2] = v17;
  a2[3] = v13;
  return result;
}

__n128 sub_882704()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.85, 0.85);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.containerDetailHeaderArtwork = v6;
  *algn_E73C90 = v5;
  qword_E73CA0 = *&tx;
  unk_E73CA8 = *&ty;
  dword_E73CB0 = 1050253722;
  qword_E73CB8 = v3;
  unk_E73CC0 = 0x402E000000000000;
  qword_E73CC8 = 0;
  unk_E73CD0 = 0;
  qword_E73CD8 = sub_882804;
  unk_E73CE0 = 0;
  qword_E73CE8 = sub_88282C;
  unk_E73CF0 = 0;
  qword_E73CF8 = 0x4040000000000000;
  return result;
}

float sub_882804(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0.42;
  }

  else
  {
    return flt_B33614[a1];
  }
}

double sub_88282C(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1.8;
  }

  else
  {
    return dbl_B33620[a1];
  }
}

__n128 sub_882874()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.94, 0.94);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.nowPlaying = v6;
  *algn_E73D10 = v5;
  qword_E73D20 = *&tx;
  unk_E73D28 = *&ty;
  dword_E73D30 = 1053609165;
  qword_E73D38 = v3;
  unk_E73D40 = 0x402E000000000000;
  qword_E73D48 = 0;
  unk_E73D50 = 0;
  qword_E73D58 = variable initialization expression of VerticalToggleSlider._maxValue;
  unk_E73D60 = 0;
  qword_E73D68 = sub_882970;
  unk_E73D70 = 0;
  qword_E73D78 = 0x4049000000000000;
  return result;
}

__int128 *Radiosity.Specs.nowPlaying.unsafeMutableAddressor()
{
  if (qword_E16BB0 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.nowPlaying;
}

uint64_t sub_8829EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_880814(a2, v5);
}

double Radiosity.Specs.pathShadow(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 48);
  v25 = *(v4 + 32);
  v26 = v7;
  v27 = *(v4 + 64);
  v8 = *(v4 + 16);
  v23 = *v4;
  v24 = v8;
  v9 = (v4 + 72);
  v10 = *(v4 + 72);
  v22 = *(v4 + 120);
  v11 = *(v4 + 80);
  v12 = *(v5 + 104);
  v20 = *(v5 + 88);
  v21 = v12;
  if (a3)
  {
    sub_880814(v5, v19);
  }

  else
  {
    v28 = *v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    sub_880814(v5, v19);
    sub_88333C(&v28);
    v10 = sub_883330;
  }

  v15 = v26;
  *(a4 + 32) = v25;
  *(a4 + 48) = v15;
  v16 = v24;
  *a4 = v23;
  *(a4 + 16) = v16;
  result = *&v20;
  v18 = v21;
  *(a4 + 88) = v20;
  *(a4 + 64) = v27;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 104) = v18;
  *(a4 + 120) = v22;
  return result;
}

id sub_882B5C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRoundedRect:a1 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, a7, a7}];
  v15 = [v14 CGPath];

  v16 = [v13 bezierPathWithRoundedRect:a2 cornerRadius:{a3, a4, a5, a7}];
  sub_AB9EA0();
  v19 = [v13 bezierPathWithRoundedRect:UIEdgeInsetsInsetRect(a2 cornerRadius:{a3, a4, a5, v17, v18)}];
  CGPathCreateMutable();
  v20 = [v16 CGPath];
  sub_AB9FE0();

  v21 = [v19 CGPath];
  sub_AB9FE0();

  return v15;
}

_BYTE *sub_882D18(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

__n128 sub_882D74@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v4;
  v5 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v5;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  result = *(v3 + 32);
  v8 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

id sub_882DDC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_AB5C50();
  v11 = type metadata accessor for Radiosity.UIView(0, v8, v9, v10);
  (*(v5 + 16))(v7, v2, v4);
  v12 = sub_AB5C20();
  v13 = *(v3 + 36);
  LOBYTE(v3) = *(v2 + *(v3 + 40));
  v14 = *(v2 + v13 + 80);
  v21[4] = *(v2 + v13 + 64);
  v21[5] = v14;
  v15 = *(v2 + v13 + 112);
  v21[6] = *(v2 + v13 + 96);
  v21[7] = v15;
  v16 = *(v2 + v13 + 16);
  v21[0] = *(v2 + v13);
  v21[1] = v16;
  v17 = *(v2 + v13 + 48);
  v21[2] = *(v2 + v13 + 32);
  v21[3] = v17;
  sub_880814(v21, v20);
  v18 = objc_allocWithZone(v11);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(v12, v3, v21);
}

double sub_882F44(_OWORD *a1)
{
  v3 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v4 = v3[5];
  v17 = v3[4];
  v18 = v4;
  v5 = v3[7];
  v19 = v3[6];
  v20 = v5;
  v6 = v3[1];
  v14[0] = *v3;
  v14[1] = v6;
  v7 = v3[3];
  v15 = v3[2];
  v16 = v7;
  v21[0] = v14[0];
  v21[1] = v6;
  v21[2] = v15;
  v21[3] = v7;
  v21[4] = v17;
  v21[5] = v4;
  v21[6] = v19;
  v21[7] = v5;
  v8 = a1[3];
  v3[2] = a1[2];
  v3[3] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  v10 = a1[7];
  v3[6] = a1[6];
  v3[7] = v10;
  v11 = a1[5];
  v3[4] = a1[4];
  v3[5] = v11;
  sub_880814(v14, v13);
  sub_880814(a1, v13);
  sub_883018(v21);
  sub_880E2C(v14);
  sub_883018(v14);
  return result;
}

void sub_883074(void *a1, uint64_t a2)
{
  v5 = __chkstk_darwin();
  (*(v7 + 16))(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  sub_AB5C40();
  [a1 invalidateIntrinsicContentSize];
  v8 = (v2 + *(a2 + 36));
  v9 = v8[5];
  v14[4] = v8[4];
  v14[5] = v9;
  v10 = v8[7];
  v14[6] = v8[6];
  v14[7] = v10;
  v11 = v8[1];
  v14[0] = *v8;
  v14[1] = v11;
  v12 = v8[3];
  v14[2] = v8[2];
  v14[3] = v12;
  sub_880814(v14, v13);
  sub_882F44(v14);
  sub_883018(v14);
  Radiosity.UIView.isRadiosityEnabled.setter(*(v2 + *(a2 + 40)));
}

void sub_883208(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle];

  sub_88218C(v2);
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI9RadiosityO5SpecsV6ShadowV8DrawModeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_8833DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_883424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_883500(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_883548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_8835C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_883618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_88366C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_8836B0()
{
  result = qword_E1D4C8;
  if (!qword_E1D4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D418, &unk_B33238);
    sub_36A00(&qword_E1D4D0, &qword_E1D408, &qword_B33228, &unk_B335B8);
    sub_36A00(&qword_E1D4D8, &qword_E1D4E0, &qword_B334A0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D4C8);
  }

  return result;
}

uint64_t sub_883794(void *a1)
{
  sub_AB5D50();
  sub_8837F8();
  return swift_getWitnessTable();
}

unint64_t sub_8837F8()
{
  result = qword_E1D4E8[0];
  if (!qword_E1D4E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E1D4E8);
  }

  return result;
}

uint64_t sub_88384C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_8838D4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((v6 + 7) & 0xF8) - 127));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_883A28(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 120) = 0;
          result = 0.0;
          *(v19 + 104) = 0u;
          *(v19 + 88) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t objectdestroyTm_24()
{
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_883D2C()
{
  result = qword_E185F8;
  if (!qword_E185F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E185F8);
  }

  return result;
}

uint64_t sub_883DDC(uint64_t a1)
{
  sub_AB5790();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_AB5FB0();
}

uint64_t Reactions.StackView.Model.reaction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

double sub_883F68@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_883FEC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t Reactions.StackView.Model.reaction.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

void (*Reactions.StackView.Model.reaction.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t Reactions.StackView.Model.$reaction.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D580, &qword_B33688);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578, &qword_B33680);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$reaction.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D580, &qword_B33688);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578, &qword_B33680);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t Reactions.StackView.Model.count.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_8844CC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_884550(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t Reactions.StackView.Model.count.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

void (*Reactions.StackView.Model.count.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t Reactions.StackView.Model.$count.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D598, &qword_B336E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D590, &qword_B336D8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$count.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D598, &qword_B336E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D590, &qword_B336D8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t Reactions.StackView.Model.userImage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_884A14(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_884A98(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_AB5520();
}

uint64_t Reactions.StackView.Model.userImage.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

void (*Reactions.StackView.Model.userImage.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t Reactions.StackView.Model.$userImage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5A8, &qword_B33730);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40, &qword_B30AC0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$userImage.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5A8, &qword_B33730);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40, &qword_B30AC0);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD154;
}

void (*Reactions.StackView.Model.isReacting.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BCE8C;
}

uint64_t Reactions.StackView.Model.$isReacting.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8, &qword_B33780);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$isReacting.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8, &qword_B33780);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t sub_885344(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

void (*Reactions.StackView.Model.hasAnimatedBackground.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t Reactions.StackView.Model.$hasAnimatedBackground.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8, &qword_B33780);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$hasAnimatedBackground.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8, &qword_B33780);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t Reactions.StackView.Model.__allocating_init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  v5 = *(v26 - 8);
  __chkstk_darwin();
  v7 = v24 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40, &qword_B30AC0);
  v8 = *(v25 - 8);
  __chkstk_darwin();
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578, &qword_B33680);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
  sub_AB54D0();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C0, &qword_B2A1E8);
  sub_AB54D0();
  (*(v8 + 32))(v15 + v17, v10, v25);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_AB54D0();
  v19 = *(v5 + 32);
  v20 = v26;
  v19(v15 + v18, v7, v26);
  v21 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_AB54D0();
  v19(v15 + v21, v7, v20);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v15 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v12 + 8))(v15 + v16, v11);
  v32 = v27;
  v33 = v28;
  sub_AB54D0();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_AB54D0();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_AB5520();
  *(v15 + v22) = v31;
  return v15;
}

uint64_t Reactions.StackView.Model.init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  v6 = *(v26 - 8);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40, &qword_B30AC0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578, &qword_B33680);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
  sub_AB54D0();
  (*(v14 + 32))(v5 + v17, v16, v13);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C0, &qword_B2A1E8);
  sub_AB54D0();
  (*(v10 + 32))(v5 + v18, v12, v9);
  v19 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_AB54D0();
  v20 = *(v6 + 32);
  v21 = v26;
  v20(v5 + v19, v8, v26);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_AB54D0();
  v20(v5 + v22, v8, v21);
  v23 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v5 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v14 + 8))(v5 + v17, v13);
  v32 = v27;
  v33 = v28;
  sub_AB54D0();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_AB54D0();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_AB5520();
  *(v5 + v23) = v31;
  return v5;
}

uint64_t Reactions.StackView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578, &qword_B33680);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D590, &qword_B336D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40, &qword_B30AC0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);
  return v0;
}

uint64_t Reactions.StackView.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D578, &qword_B33680);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D590, &qword_B336D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40, &qword_B30AC0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_886214@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Reactions.StackView.Model(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of Reactions.StackView.model(uint64_t a1)
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_8899FC(&qword_E1D5C8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return sub_AB5B50();
}

uint64_t Reactions.StackView.$model.getter()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_8899FC(&qword_E1D5C8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return sub_AB5B60();
}

double Reactions.StackView.specs.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 Reactions.StackView.init(model:specs:)@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Reactions.StackView(0);
  v6 = v5[6];
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC60, &qword_B287C8);
  swift_storeEnumTagMultiPayload();
  v7 = v5[7];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CC0, &unk_B2D4C0);
  swift_storeEnumTagMultiPayload();
  v8 = v5[8];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190, &qword_B28630);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Reactions.StackView.Model(0);
  sub_8899FC(&qword_E1D5C8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);
  *a3 = sub_AB5B50();
  *(a3 + 8) = v9;
  result = *a2;
  v11 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v11;
  *(a3 + 48) = *(a2 + 32);
  return result;
}

void Reactions.StackView.body.getter(uint64_t a1@<X8>)
{
  v106 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5D0, &qword_B33860);
  __chkstk_darwin();
  v92 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = (&v83 - v3);
  v96 = *(type metadata accessor for Reactions.StackView(0) - 8);
  __chkstk_darwin();
  v97 = v4;
  v98 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5D8, &qword_B33868);
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin();
  v100 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v83 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E178B8, &qword_B2A8D8);
  __chkstk_darwin();
  v9 = &v83 - v8;
  v91 = sub_AB5C70();
  v10 = *(v91 - 8);
  __chkstk_darwin();
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7AC0();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v95 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v15;
  v16 = __chkstk_darwin();
  v17 = *(v14 + 104);
  v105 = &v83 - v18;
  v17(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v107);

  v19 = *&v107[0];
  v20 = *(v1 + 16);
  if (v20 < *&v107[0])
  {
    v19 = *(v1 + 16);
  }

  v21 = __OFSUB__(v19, 1);
  v22 = v19 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v90 = v1;
    v88 = *(v1 + 48);
    v23 = *(v1 + 24);
    v24 = *(v1 + 32);
    v25 = *(v1 + 40);
    KeyPath = v22;
    v85 = v12;
    v87 = v20;
    sub_7EF870(v12);
    v103 = v14;
    v86 = *(v10 + 16);
    v26 = v12;
    v27 = v91;
    v86(v9, v26, v91);
    v104 = v13;
    v84 = *(v10 + 56);
    v84(v9, 0, 1, v27);
    v28 = sub_ABA370();
    v29 = objc_opt_self();
    v30 = [v29 traitCollectionWithPreferredContentSizeCategory:v28];
    v31 = objc_opt_self();
    v32 = [v31 defaultMetrics];
    [v32 scaledValueForValue:v30 compatibleWithTraitCollection:v23];
    v34 = v33;

    v35 = v9;
    v36 = v9;
    v37 = v85;
    v86(v35, v85, v27);
    v38 = v103;
    v39 = v106;
    v84(v36, 0, 1, v27);
    v40 = v104;
    v41 = sub_ABA370();
    v42 = [v29 traitCollectionWithPreferredContentSizeCategory:v41];
    v43 = [v31 defaultMetrics];
    [v43 scaledValueForValue:v42 compatibleWithTraitCollection:v25];
    v45 = v44;

    (*(v10 + 8))(v37, v27);
    v46 = v87;
    *&v108 = v87;
    *(&v108 + 1) = v34;
    *&v109 = v24;
    *(&v109 + 1) = v45;
    LODWORD(v42) = v88;
    v110 = v88;
    *v39 = sub_AB62E0();
    *(v39 + 8) = v24 - v34;
    *(v39 + 16) = 0;
    v86 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5E0, &unk_B33870) + 44));
    if (v42)
    {
      v47 = KeyPath & ~(KeyPath >> 63);
    }

    else
    {
      v47 = v46;
    }

    v91 = v47;
    *&v107[0] = 0;
    *(&v107[0] + 1) = KeyPath & ~(KeyPath >> 63);
    KeyPath = swift_getKeyPath();
    v48 = v90;
    v49 = v98;
    sub_888958(v90, v98);
    v50 = v95;
    v51 = v105;
    (*(v38 + 16))(v95, v105, v40);
    v52 = (*(v96 + 80) + 49) & ~*(v96 + 80);
    v53 = (v97 + *(v38 + 80) + v52) & ~*(v38 + 80);
    v54 = swift_allocObject();
    v55 = v109;
    *(v54 + 16) = v108;
    *(v54 + 32) = v55;
    *(v54 + 48) = v110;
    sub_888C58(v49, v54 + v52);
    (*(v38 + 32))(v54 + v53, v50, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5E8, &qword_B33898);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5F0, &qword_B338A0);
    sub_888DA4();
    sub_888F08();
    v56 = v99;
    sub_AB78B0();
    v57 = sub_AB7A30();
    v58 = v93;
    *v93 = v57;
    *(v58 + 8) = v59;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D630, &qword_B338B8);
    sub_887AB4(&v108, v48, v51, v58 + *(v60 + 44));
    v62 = v101;
    v61 = v102;
    v63 = *(v101 + 16);
    v64 = v100;
    v63(v100, v56, v102);
    v65 = v92;
    sub_15F84(v58, v92, &qword_E1D5D0, &qword_B33860);
    v66 = v86;
    *v86 = 0;
    *(v66 + 8) = 1;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D638, &qword_B338C0);
    v63(v66 + *(v67 + 48), v64, v61);
    sub_15F84(v65, v66 + *(v67 + 64), &qword_E1D5D0, &qword_B33860);
    sub_12E1C(v58, &qword_E1D5D0, &qword_B33860);
    v68 = *(v62 + 8);
    v68(v56, v61);
    sub_12E1C(v65, &qword_E1D5D0, &qword_B33860);
    v68(v64, v61);
    if (!__OFADD__(v91, 1))
    {
      Int.seconds.getter(v91 + 1);
      sub_AB7A30();
      sub_AB5970();
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D640, &qword_B338C8);
      v70 = v106;
      v71 = (v106 + *(v69 + 36));
      v72 = v107[1];
      *v71 = v107[0];
      v71[1] = v72;
      v71[2] = v107[2];
      v73 = sub_AB6AA0();
      sub_AB5690();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v82 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D648, &qword_B338D0) + 36);
      *v82 = v73;
      *(v82 + 8) = v75;
      *(v82 + 16) = v77;
      *(v82 + 24) = v79;
      *(v82 + 32) = v81;
      *(v82 + 40) = 0;
      (*(v103 + 8))(v105, v104);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_886FC8@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v22 = a3;
  v6 = sub_AB5D80();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D920, &qword_B33A50);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v21 - v14;
  *a4 = sub_AB7A30();
  a4[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D9C8, &qword_B33AF8);
  sub_887294(a2, v22, a4 + *(v17 + 44));
  sub_AB7BB0();
  sub_AB5D90();
  sub_AB7AA0();
  v18 = sub_8899FC(&qword_E1D968, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  sub_AB5750();

  (*(v7 + 8))(v9, v6);
  (*(v11 + 16))(v13, v15, v10);
  v23 = v6;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_AB59E0();
  (*(v11 + 8))(v15, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5F0, &qword_B338A0);
  *(a4 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_887294@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v43 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D9D0, &qword_B33B00) - 8;
  __chkstk_darwin();
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D930, &qword_B33A60) - 8;
  __chkstk_darwin();
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v38 = sub_AB7490();
  sub_AB7A30();
  sub_AB5970();
  v37 = v44[1];
  LODWORD(v36) = v45;
  v12 = v46;
  v35 = v47;
  v34 = v48;
  v33 = v49;
  v13 = sub_AB74B0();
  v14 = &v11[*(v8 + 44)];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D938, &qword_B33A68) + 36);
  v16 = enum case for BlendMode.destinationOut(_:);
  v17 = sub_AB7AC0();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14 + v15, v16, v17);
  *v14 = v13;
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D940, &qword_B33A70) + 56)) = 256;
  v19 = v37;
  *v11 = v38;
  *(v11 + 1) = v19;
  v11[16] = v36;
  *(v11 + 3) = v12;
  v11[32] = v35;
  v20 = v33;
  *(v11 + 5) = v34;
  *(v11 + 6) = v20;
  v38 = sub_AB7490();
  sub_AB7A30();
  sub_AB5970();
  v21 = v50;
  LOBYTE(v12) = v51;
  v22 = v52;
  LOBYTE(v16) = v53;
  v37 = v54;
  v36 = v55;
  sub_8876FC(v44);
  v23 = v44[0];
  v24 = &v7[*(v4 + 44)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D948, &qword_B33AA8);
  (*(v18 + 16))(v24 + *(v25 + 36), v41, v17);
  *v24 = v23;
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D950, &qword_B33AB0) + 56)) = 256;
  v26 = v39;
  *v7 = v38;
  *(v7 + 1) = v21;
  v7[16] = v12;
  *(v7 + 3) = v22;
  v7[32] = v16;
  v27 = v36;
  *(v7 + 5) = v37;
  *(v7 + 6) = v27;
  sub_15F84(v11, v26, &qword_E1D930, &qword_B33A60);
  v28 = v42;
  sub_15F84(v7, v42, &qword_E1D9D0, &qword_B33B00);
  v29 = v43;
  sub_15F84(v26, v43, &qword_E1D930, &qword_B33A60);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D9D8, &qword_B33B08);
  sub_15F84(v28, v29 + *(v30 + 48), &qword_E1D9D0, &qword_B33B00);
  sub_12E1C(v7, &qword_E1D9D0, &qword_B33B00);
  sub_12E1C(v11, &qword_E1D930, &qword_B33A60);
  sub_12E1C(v28, &qword_E1D9D0, &qword_B33B00);
  return sub_12E1C(v26, &qword_E1D930, &qword_B33A60);
}

uint64_t sub_8876FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D970, &qword_B33AC8) - 8;
  __chkstk_darwin();
  v21 = &v20 - v4;
  v5 = sub_AB63D0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB5790();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Reactions.StackView(0);
  sub_7EFCF0(v12);
  sub_7EFCA0(v8);
  v13 = *(v3 + 56);
  v14 = v10;
  v15 = v21;
  (*(v14 + 32))(v21, v12, v9);
  (*(v6 + 32))(v15 + v13, v8, v5);
  v16 = (*(v14 + 88))(v15, v9);
  if (v16 == enum case for ColorScheme.light(_:))
  {
    if ((*(v6 + 88))(v15 + v13, v5) == enum case for ColorSchemeContrast.increased(_:))
    {
      v17 = [objc_opt_self() secondarySystemFillColor];
      v23 = sub_AB7510();
LABEL_7:
      *v22 = sub_AB5980();
      return (*(v14 + 8))(v15, v9);
    }
  }

  else if (v16 == enum case for ColorScheme.dark(_:) && (*(v6 + 88))(v15 + v13, v5) == enum case for ColorSchemeContrast.increased(_:))
  {
    LODWORD(v23) = sub_AB6740();
    goto LABEL_7;
  }

  if (*(*(v2 + 8) + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) == 1)
  {
    LODWORD(v23) = sub_AB6720();
  }

  else
  {
    v19 = [objc_opt_self() secondarySystemFillColor];
    v23 = sub_AB7510();
  }

  *v22 = sub_AB5980();
  return sub_12E1C(v15, &qword_E1D970, &qword_B33AC8);
}

uint64_t sub_887AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a2;
  v85 = a3;
  v79 = a1;
  v88 = a4;
  v75 = sub_AB5D80();
  v72 = *(v75 - 8);
  __chkstk_darwin();
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D920, &qword_B33A50);
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin();
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v65 - v8;
  v9 = sub_AB7540();
  v67 = *(v9 - 8);
  v68 = v9;
  __chkstk_darwin();
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADB0, &qword_B2E350);
  __chkstk_darwin();
  v82 = &v65 - v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D928, &qword_B33A58) - 8;
  __chkstk_darwin();
  v87 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D930, &qword_B33A60) - 8;
  __chkstk_darwin();
  v89 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v65 - v17;
  v86 = sub_AB7490();
  v19 = *(a1 + 8);
  sub_AB7A30();
  sub_AB5970();
  v20 = v117;
  LODWORD(v81) = v118;
  v80 = v119;
  LODWORD(v78) = v120;
  v76 = v122;
  *&v77 = v121;
  v21 = sub_AB74B0();
  v22 = &v18[*(v15 + 44)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D938, &qword_B33A68) + 36);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = sub_AB7AC0();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v22 + v23, v24, v25);
  *v22 = v21;
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D940, &qword_B33A70) + 56)) = 256;
  *v18 = v86;
  *(v18 + 1) = v20;
  v18[16] = v81;
  *(v18 + 3) = v80;
  v18[32] = v78;
  v27 = v76;
  *(v18 + 5) = v77;
  *(v18 + 6) = v27;
  v86 = v18;
  sub_8885FC(&v123);
  v80 = *(&v125 + 1);
  v81 = v125;
  LOBYTE(v22) = v126;
  v28 = sub_AB6BC0();
  v77 = v124;
  v78 = v123;
  v29 = v82;
  (*(*(v28 - 8) + 56))(v82, 1, 1, v28);
  v30 = sub_AB6C20();
  sub_12E1C(v29, &qword_E1ADB0, &qword_B2E350);
  KeyPath = swift_getKeyPath();
  LOBYTE(v123) = v22;
  sub_AB7A30();
  v82 = v19;
  sub_AB5970();
  sub_8876FC(&v123);
  v32 = v123;
  v33 = &v14[*(v83 + 44)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D948, &qword_B33AA8);
  (*(v26 + 16))(&v33[*(v34 + 36)], v85, v25);
  *v33 = v32;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D950, &qword_B33AB0) + 56)] = 256;
  v35 = v77;
  *v14 = v78;
  *(v14 + 1) = v35;
  v36 = v80;
  *(v14 + 4) = v81;
  *(v14 + 5) = v36;
  v14[48] = v22;
  *(v14 + 7) = KeyPath;
  *(v14 + 8) = v30;
  v37 = v133[1];
  *(v14 + 72) = v133[0];
  *(v14 + 88) = v37;
  v38 = v14;
  *(v14 + 104) = v133[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v123);

  v39 = v123;
  if (!v123)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v123);

  if (v123 != 1)
  {

LABEL_5:
    sub_C32A0(&v123);
    goto LABEL_6;
  }

  v40 = v39;
  sub_AB7520();
  v42 = v66;
  v41 = v67;
  v43 = v68;
  (*(v67 + 104))(v66, enum case for Image.ResizingMode.stretch(_:), v68);
  v85 = sub_AB7590();

  (*(v41 + 8))(v42, v43);
  v44 = sub_AB7A30();
  v83 = v45;
  v84 = v44;
  sub_AB7480();
  v81 = sub_AB74C0();

  sub_AB7BB0();
  v46 = v69;
  sub_AB5D90();
  sub_AB7AA0();
  v47 = sub_8899FC(&qword_E1D968, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  v48 = v71;
  v49 = v75;
  sub_AB5750();

  (*(v72 + 8))(v46, v49);
  v50 = v73;
  v51 = v74;
  (*(v73 + 16))(v70, v48, v74);
  *&v123 = v49;
  *(&v123 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  v52 = sub_AB59E0();
  (*(v50 + 8))(v48, v51);
  sub_AB7A30();
  sub_AB5970();

  *(v116 + 8) = v100;
  v110 = v85;
  LOWORD(v111) = 257;
  *(&v111 + 1) = v84;
  *&v112 = v83;
  *(&v112 + 1) = v81;
  *&v113 = 0x3FE0000000000000;
  BYTE8(v113) = 0;
  v114 = 0uLL;
  LOBYTE(v115) = 2;
  *(&v115 + 1) = 0x3FF0000000000000;
  *&v116[0] = v52;
  *(&v116[1] + 8) = v101;
  *(&v116[2] + 8) = v102;
  UIScreen.Dimensions.size.getter();
  v129 = v116[0];
  v130 = v116[1];
  v131 = v116[2];
  v132 = *&v116[3];
  v125 = v112;
  v126 = v113;
  v127 = v114;
  v128 = v115;
  v123 = v110;
  v124 = v111;
LABEL_6:
  v53 = v86;
  v54 = v89;
  sub_15F84(v86, v89, &qword_E1D930, &qword_B33A60);
  v55 = v87;
  sub_15F84(v38, v87, &qword_E1D928, &qword_B33A58);
  v96 = v129;
  v97 = v130;
  v98 = v131;
  v99 = v132;
  v92 = v125;
  v93 = v126;
  v94 = v127;
  v95 = v128;
  v90 = v123;
  v91 = v124;
  v56 = v54;
  v57 = v88;
  sub_15F84(v56, v88, &qword_E1D930, &qword_B33A60);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D958, &qword_B33AB8);
  sub_15F84(v55, v57 + *(v58 + 48), &qword_E1D928, &qword_B33A58);
  v59 = v57 + *(v58 + 64);
  v106 = v96;
  v107 = v97;
  v108 = v98;
  v109 = v99;
  v104 = v94;
  v105 = v95;
  v102 = v92;
  v103 = v93;
  v100 = v90;
  v101 = v91;
  sub_15F84(&v100, &v110, &qword_E1D960, &qword_B33AC0);
  sub_12E1C(v38, &qword_E1D928, &qword_B33A58);
  sub_12E1C(v53, &qword_E1D930, &qword_B33A60);
  v60 = v107;
  *(v59 + 96) = v106;
  *(v59 + 112) = v60;
  *(v59 + 128) = v108;
  *(v59 + 144) = v109;
  v61 = v103;
  *(v59 + 32) = v102;
  *(v59 + 48) = v61;
  v62 = v105;
  *(v59 + 64) = v104;
  *(v59 + 80) = v62;
  v63 = v101;
  *v59 = v100;
  *(v59 + 16) = v63;
  v116[0] = v96;
  v116[1] = v97;
  v116[2] = v98;
  *&v116[3] = v99;
  v112 = v92;
  v113 = v93;
  v114 = v94;
  v115 = v95;
  v110 = v90;
  v111 = v91;
  sub_12E1C(&v110, &qword_E1D960, &qword_B33AC0);
  sub_12E1C(v55, &qword_E1D928, &qword_B33A58);
  return sub_12E1C(v89, &qword_E1D930, &qword_B33A60);
}

double sub_8885FC@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_AB5D80();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v27 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v35);

  if (*(&v35[0] + 1))
  {
    sub_7ABE60();
    v9 = sub_AB6F20();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = sub_AB7AA0();
    sub_AB7BB0();
    sub_AB5D90();
    (*(v4 + 16))(v6, v8, v3);
    sub_8899FC(&qword_E1D968, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
    v17 = sub_AB59E0();
    (*(v4 + 8))(v8, v3);
    v28 = v9;
    v29 = v11;
    v30 = v13 & 1;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = 0;
  }

  else
  {
    v18 = sub_AB7550();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v35);

    if (LOBYTE(v35[0]) == 1)
    {
      v19 = sub_AB74D0();
    }

    else
    {
      v19 = sub_AB7430();
    }

    v20 = v19;
    v21 = sub_AB6C80();
    KeyPath = swift_getKeyPath();
    v28 = v18;
    v29 = v20;
    v30 = KeyPath;
    v31 = v21;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D978, &qword_B33AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D980, &qword_B33AD8);
  sub_889A44();
  sub_889B28();
  sub_AB6610();
  result = *v35;
  v24 = v35[1];
  v25 = v35[2];
  v26 = v36;
  *a2 = v35[0];
  *(a2 + 16) = v24;
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  return result;
}

uint64_t Reactions.StackView.Specs.init(maxItemCount:platterLength:stackSpacing:fontSize:sizingMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_888958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8889BC()
{
  v1 = type metadata accessor for Reactions.StackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 49) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = sub_AB7AC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC60, &qword_B287C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_AB5790();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CC0, &unk_B2D4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_AB63D0();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190, &qword_B28630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_AB5C70();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v15 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_888C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_888CBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Reactions.StackView(0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_AB7AC0() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_886FC8(v1 + v4, v7, a1);
}

unint64_t sub_888DA4()
{
  result = qword_E1D5F8;
  if (!qword_E1D5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D5E8, &qword_B33898);
    sub_888E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D5F8);
  }

  return result;
}

unint64_t sub_888E28()
{
  result = qword_E1D600;
  if (!qword_E1D600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D608, &qword_B338A8);
    sub_888EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D600);
  }

  return result;
}

unint64_t sub_888EB4()
{
  result = qword_E1D610;
  if (!qword_E1D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D610);
  }

  return result;
}

unint64_t sub_888F08()
{
  result = qword_E1D618;
  if (!qword_E1D618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D5F0, &qword_B338A0);
    sub_36A00(&qword_E1D620, &qword_E1D628, &qword_B338B0, &protocol conformance descriptor for ZStack<A>);
    sub_36A00(&qword_E1C318, &qword_E1C320, &unk_B31540, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D618);
  }

  return result;
}

unint64_t sub_88900C()
{
  result = qword_E1D650;
  if (!qword_E1D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D650);
  }

  return result;
}

uint64_t sub_8890A4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A9C0, &qword_B2F400);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195F0, &qword_B2D838);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028, &qword_B2D160);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_889248(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A9C0, &qword_B2F400);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195F0, &qword_B2D838);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028, &qword_B2D160);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_8893D8(uint64_t a1)
{
  sub_8894E8(319);
  if (v1 <= 0x3F)
  {
    sub_88957C(319, &qword_E1AA38, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_88957C(319, &unk_E19668, &type metadata accessor for ColorSchemeContrast);
      if (v3 <= 0x3F)
      {
        sub_88957C(319, &qword_E1A6A0, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_8894E8(uint64_t a1)
{
  if (!qword_E1D6C0)
  {
    type metadata accessor for Reactions.StackView.Model(255);
    sub_8899FC(&qword_E1D5C8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);
    v1 = sub_AB5B80();
    if (!v2)
    {
      atomic_store(v1, &qword_E1D6C0);
    }
  }
}

void sub_88957C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_AB57D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_8895D8(uint64_t a1)
{
  sub_3641C(319, &qword_E1D738, &qword_E1DBB0, &qword_B32B20);
  if (v1 <= 0x3F)
  {
    sub_299798(319, &unk_E1D740, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_3641C(319, &unk_E1BB80, &qword_E175C0, &qword_B2A1E8);
      if (v3 <= 0x3F)
      {
        sub_299798(319, &qword_E1A2B8, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_889774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_8897B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_889824()
{
  result = qword_E1D8F0;
  if (!qword_E1D8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D8F8, &qword_B33A40);
    sub_8898B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D8F0);
  }

  return result;
}

unint64_t sub_8898B0()
{
  result = qword_E1D900;
  if (!qword_E1D900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D648, &qword_B338D0);
    sub_88993C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D900);
  }

  return result;
}

unint64_t sub_88993C()
{
  result = qword_E1D908;
  if (!qword_E1D908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D640, &qword_B338C8);
    sub_36A00(&qword_E1D910, &qword_E1D918, &qword_B33A48, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D908);
  }

  return result;
}

uint64_t sub_8899FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_889A44()
{
  result = qword_E1D988;
  if (!qword_E1D988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D978, &qword_B33AD0);
    sub_36A00(&qword_E1D990, &qword_E1D998, &qword_B33AE0, &protocol conformance descriptor for _AnimationView<A>);
    sub_36A00(&qword_E1C318, &qword_E1C320, &unk_B31540, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D988);
  }

  return result;
}

unint64_t sub_889B28()
{
  result = qword_E1D9A0;
  if (!qword_E1D9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D980, &qword_B33AD8);
    sub_889BE0();
    sub_36A00(&unk_E1ACF0, &qword_E19188, &qword_B2E3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D9A0);
  }

  return result;
}

unint64_t sub_889BE0()
{
  result = qword_E1D9A8;
  if (!qword_E1D9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1D9B0, &qword_B33AE8);
    sub_36A00(&qword_E1D9B8, &qword_E1D9C0, &qword_B33AF0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D9A8);
  }

  return result;
}

id sub_889D80(uint64_t a1, uint64_t a2)
{
  sub_88E068(a1, v15);
  v5 = v16;
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = *(v5 - 8);
    v7 = __chkstk_darwin();
    v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_ABB3A0();
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for SliderView.PanGestureRecognizer();
  v14.receiver = v2;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, "initWithTarget:action:", v10, a2);
  swift_unknownObjectRelease();
  sub_7A5268(a1);
  return v12;
}

uint64_t *SliderView.Specs.barHeight.unsafeMutableAddressor()
{
  if (qword_E16BB8 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.barHeight;
}

uint64_t *SliderView.Specs.expandedBarHeight.unsafeMutableAddressor()
{
  if (qword_E16BC0 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.expandedBarHeight;
}

CGFloat sub_88A0A0()
{
  CGAffineTransformMakeScale(&v1, 1.05, 1.05);
  result = v1.a;
  *static SliderView.Specs.expandedTransform = v1;
  return result;
}

char *SliderView.Specs.expandedTransform.unsafeMutableAddressor()
{
  if (qword_E16BC8 != -1)
  {
    swift_once();
  }

  return static SliderView.Specs.expandedTransform;
}

double static SliderView.Specs.expandedTransform.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_E16BC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&static SliderView.Specs.expandedTransform[16];
  *a1 = *static SliderView.Specs.expandedTransform;
  a1[1] = v1;
  result = *&static SliderView.Specs.expandedTransform[32];
  a1[2] = *&static SliderView.Specs.expandedTransform[32];
  return result;
}

uint64_t *SliderView.Specs.stretchLimit.unsafeMutableAddressor()
{
  if (qword_E16BD0 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.stretchLimit;
}

uint64_t *SliderView.Specs.escapeHeight.unsafeMutableAddressor()
{
  if (qword_E16BD8 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.escapeHeight;
}

id sub_88A2D8()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_E73DE0 = result;
  return result;
}

double sub_88A32C()
{
  v0 = Int.seconds.getter(1);
  result = v0 / Int.seconds.getter(100);
  qword_E73DE8 = *&result;
  return result;
}

id SliderView.panRecognizer.getter(__n128 a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer;
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for SliderView.PanGestureRecognizer()) initWithTarget:v1 action:"panGestureRecognized:"];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void SliderView.panRecognizer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = a1;
}

void (*SliderView.panRecognizer.modify(id *a1, __n128 a2))(uint64_t *a1)
{
  a1[1] = v2;
  *a1 = SliderView.panRecognizer.getter(a2);
  return sub_88A46C;
}

void sub_88A46C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = v2;
}

id SliderView.trackLayoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackLayoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SliderView.elapsedTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.elapsedTrackColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

uint64_t (*SliderView.elapsedTrackColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_88A77C;
}

void sub_88A77C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6))
    {
      v7 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
      swift_beginAccess();
      v8 = v3[9];
    }

    else
    {
      v8 = v3[9];
      v7 = (v8 + v3[10]);
    }

    [v5 setBackgroundColor:*v7];
    v9 = *(v8 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v8 + v10)];
  }

  free(v3);
}

id SliderView.remainingTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.remainingTrackColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v9 = (v1 + v8);
  swift_beginAccess();
  [v6 setBackgroundColor:*v9];
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v1 + v3)];
}

uint64_t (*SliderView.remainingTrackColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_88AA58;
}

void sub_88AA58(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
    if (!*(v4 + v6))
    {
      v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
    }

    v8 = *v7;
    v10 = v3[9];
    v9 = v3[10];
    swift_beginAccess();
    [v5 setBackgroundColor:*(v10 + v8)];
    [*(v10 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v10 + v9)];
  }

  free(v3);
}

id SliderView.trackingColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackingColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if ((*(v1 + v7) & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

uint64_t (*SliderView.trackingColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_88AD30;
}

void sub_88AD30(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6) == 1)
    {
      v7 = v3[9];
      v8 = (v7 + v3[10]);
    }

    else
    {
      v8 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
      swift_beginAccess();
      v7 = v3[9];
    }

    [v5 setBackgroundColor:*v8];
    v9 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v7 + v10)];
  }

  free(v3);
}

double SliderView.value.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void SliderView.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = SliderView.panRecognizer.getter(v4);
  [v5 setEnabled:*(v1 + v3)];
}

uint64_t (*SliderView.isEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_88AFB8;
}

void sub_88AFB8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = SliderView.panRecognizer.getter(v4);
    [v7 setEnabled:*(v5 + v6)];
  }

  free(v3);
}

uint64_t SliderView.isTracking.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.transitionStartValue.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  swift_beginAccess();
  return *v1;
}

void SliderView.transitionStartValue.setter(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = *&a1;
  *(v5 + 8) = a2 & 1;
  if (v7)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v6 == *&a1)
  {
    return;
  }

  sub_88D820();
  if ((v5[1] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v8)
    {
      v9 = *v5;
      v10 = v8;
      [v2 bounds];
      [v10 setConstant:v9 * CGRectGetWidth(v11)];
    }
  }
}

void (*SliderView.transitionStartValue.modify(uint64_t *a1))(uint64_t *a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_88B234;
}

void sub_88B234(uint64_t *a1, char a2, __n128 a3)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(v4 + 32);
  if (a2)
  {
    SliderView.transitionStartValue.setter(*&v5, v6);
    goto LABEL_3;
  }

  v7 = *(v4 + 40) + *(v4 + 48);
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = v5;
  *(v7 + 8) = v6;
  if (v9)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v8 == v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v4 + 40) + *(v4 + 48);
  sub_88D820();
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *(v4 + 40);
    v13 = *&v12[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v13)
    {
      v14 = *&v12[*(v4 + 48)];
      v15 = v13;
      [v12 bounds];
      [v15 setConstant:v14 * CGRectGetWidth(v17)];
    }
  }

LABEL_3:

  free(v4);
}

uint64_t sub_88B3F0(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_88B478(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id SliderView.semanticContentAttribute.getter(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SliderView();
  return objc_msgSendSuper2(&v4, "semanticContentAttribute");
}

id SliderView.semanticContentAttribute.setter(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v5, "setSemanticContentAttribute:", a1);
  return [*&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] setSemanticContentAttribute:{objc_msgSend(v2, "semanticContentAttribute")}];
}

char *sub_88B6B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_ABA620();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v15 = &v95 - v14;
  v16 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v17 = [objc_allocWithZone(UIStackView) init];
  v18 = UIView.forAutolayout.getter();

  *&v5[v16] = v18;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v20 = [objc_allocWithZone(UIView) init];
  v21 = UIView.forAutolayout.getter();

  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v23 = [objc_allocWithZone(UIView) init];
  v24 = UIView.forAutolayout.getter();

  *&v5[v22] = v24;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = 0;
  v25 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *&v5[v25] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v26 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  *v27 = 0u;
  v27[1] = 0u;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer] = 0;
  v28 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *&v5[v28] = [objc_allocWithZone(UILayoutGuide) init];
  v29 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v30 = objc_opt_self();
  *&v5[v29] = [v30 whiteColor];
  v31 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *&v5[v31] = [v30 systemFillColor];
  v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_E16910 != -1)
  {
    swift_once();
  }

  v33 = static UIColor.MusicTint.normal;
  *&v5[v32] = static UIColor.MusicTint.normal;
  v34 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *&v5[v34] = Int.seconds.getter(0);
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled] = 1;
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking] = 0;
  v35 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  *v36 = 0;
  v36[1] = 0;
  v37 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler];
  *v37 = 0;
  v37[1] = 0;
  v38 = type metadata accessor for SliderView();
  v96.receiver = v5;
  v96.super_class = v38;
  v39 = v33;
  v40 = objc_msgSendSuper2(&v96, "initWithFrame:", a1, a2, a3, a4);
  v42 = SliderView.panRecognizer.getter(v41);
  [v42 _setRequiresSystemGesturesToFail:0];

  v43 = *&v40[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer];
  v44 = v40;
  [v44 addGestureRecognizer:v43];
  v45 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  [v44 addLayoutGuide:*&v44[v45]];
  [v44 setExclusiveTouch:1];
  v46 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v47 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  [*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack]];
  [*&v44[v46] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack]];
  [*&v44[v46] setAxis:0];
  v48 = qword_E16BB8;
  v49 = *&v44[v46];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = *&static SliderView.Specs.barHeight;
  *v13 = *&static SliderView.Specs.barHeight * 0.5;
  *(v13 + 8) = 1;
  (*(v11 + 104))(v13, enum case for UIView.Corner.Radius.value(_:), v10);
  sub_AB9E10();
  sub_ABA640();
  v51 = sub_ABA680();
  (*(*(v51 - 8) + 56))(v15, 0, 1, v51);
  sub_ABA6A0();

  v52 = [*&v44[v46] layer];
  [v52 setMasksToBounds:1];

  [v44 addSubview:*&v44[v46]];
  v53 = [*&v44[v47] widthAnchor];
  v54 = [v53 constraintEqualToConstant:0.0];

  v55 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint;
  v56 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = v54;

  v57 = [*&v44[v46] heightAnchor];
  v58 = [v57 constraintEqualToConstant:v50];

  v59 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint;
  v60 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = v58;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  result = swift_allocObject();
  *(result + 1) = xmmword_B283D0;
  v62 = *&v44[v55];
  if (v62)
  {
    v63 = result;
    *(result + 4) = v62;
    v64 = *&v44[v59];
    if (v64)
    {
      v95 = objc_opt_self();
      v63[5] = v64;
      v65 = *&v44[v46];
      v66 = v62;
      v67 = v64;
      v68 = [v65 leadingAnchor];
      v69 = [v44 leadingAnchor];

      v70 = [v68 constraintEqualToAnchor:v69];
      v63[6] = v70;
      v71 = [*&v44[v46] trailingAnchor];
      v72 = [v44 trailingAnchor];

      v73 = [v71 constraintEqualToAnchor:v72];
      v63[7] = v73;
      v74 = [*&v44[v46] topAnchor];
      v75 = [v44 topAnchor];

      v76 = [v74 constraintEqualToAnchor:v75];
      v63[8] = v76;
      v77 = [*&v44[v46] bottomAnchor];
      v78 = [v44 bottomAnchor];

      v79 = [v77 constraintEqualToAnchor:v78];
      v63[9] = v79;
      v80 = [*&v44[v46] centerYAnchor];
      v81 = [v44 centerYAnchor];

      v82 = [v80 constraintEqualToAnchor:v81];
      v63[10] = v82;
      v83 = [*&v44[v45] leadingAnchor];
      v84 = [v44 leadingAnchor];

      v85 = [v83 constraintEqualToAnchor:v84];
      v63[11] = v85;
      v86 = [*&v44[v45] trailingAnchor];
      v87 = [v44 trailingAnchor];

      v88 = [v86 constraintEqualToAnchor:v87];
      v63[12] = v88;
      v89 = [*&v44[v45] centerYAnchor];
      v90 = [v44 centerYAnchor];

      v91 = [v89 constraintEqualToAnchor:v90];
      v63[13] = v91;
      v92 = [*&v44[v45] heightAnchor];
      v93 = [v92 constraintEqualToConstant:v50];

      v63[14] = v93;
      sub_13C80(0, qword_E18600, NSLayoutConstraint_ptr);
      isa = sub_AB9740().super.isa;

      [v95 activateConstraints:isa];

      return v44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SliderView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  if (!CGRectEqualToRect(v11, *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds]))
  {
    v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      Width = CGRectGetWidth(v12);
      v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
      swift_beginAccess();
      [v3 setConstant:Width * *&v0[v5]];

      [v0 bounds];
      *v1 = v6;
      *(v1 + 1) = v7;
      *(v1 + 2) = v8;
      *(v1 + 3) = v9;
    }

    else
    {
      __break(1u);
    }
  }
}

void SliderView.setValue(_:animated:)(char a1, double a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 <= 1.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v4 != *&v2[v5])
  {
    v6 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v6)
    {
      v7 = v6;
      [v2 bounds];
      [v7 setConstant:v4 * CGRectGetWidth(v16)];

      sub_88D0D4();
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = v4;
      if (a1)
      {
        v9 = vabdd_f64(*&v2[v5], v4) * 0.25;
        if (v9 > 0.1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0.1;
        }

        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = sub_88DC30;
        *(v12 + 24) = v8;
        aBlock[4] = sub_70638;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B5EB4;
        aBlock[3] = &block_descriptor_226;
        v13 = _Block_copy(aBlock);
        v14 = v2;

        [v11 animateWithDuration:4 delay:v13 options:0 animations:v10 completion:0.0];

        _Block_release(v13);
      }

      else
      {
        *&v2[v5] = v4;
        [v2 layoutIfNeeded];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_88C4AC(void *a1)
{
  v3 = [a1 state];
  if (v3 > 2)
  {
    if (v3 == (&dword_0 + 3))
    {
      v34 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v34] != 1)
      {
        return;
      }

      v35 = swift_allocObject();
      *(v35 + 16) = v1;
      v1[v34] = 0;
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = v1;
      *(v36 + 32) = sub_88E15C;
      *(v36 + 40) = v35;
      v26 = objc_opt_self();
      v55 = sub_88E4C8;
      v56 = v36;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v27 = &block_descriptor_66;
    }

    else
    {
      if (v3 != &dword_4)
      {
        return;
      }

      v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v23] != 1)
      {
        return;
      }

      v24 = swift_allocObject();
      *(v24 + 16) = v1;
      v1[v23] = 0;
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = v1;
      *(v25 + 32) = sub_88E140;
      *(v25 + 40) = v24;
      v26 = objc_opt_self();
      v55 = sub_88E14C;
      v56 = v25;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v27 = &block_descriptor_56_3;
    }

    v53 = sub_1B5EB4;
    v54 = v27;
    v37 = _Block_copy(&aBlock);
    v38 = v1;

    [v26 _animateUsingSpringWithDuration:2 delay:v37 options:0 mass:1.0 stiffness:0.0 damping:2.0 initialVelocity:500.0 animations:40.0 completion:0.0];
    goto LABEL_39;
  }

  if (v3 == (&dword_0 + 1))
  {
    v28 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (!v28)
    {
      goto LABEL_54;
    }

    [v28 constant];
    v29 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
    *v29 = v30;
    v29[8] = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v1;
    v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (v1[v32] == 1)
    {
      v33 = v1;

      return;
    }

    v1[v32] = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = 1;
    *(v39 + 24) = v1;
    *(v39 + 32) = sub_88E17C;
    *(v39 + 40) = v31;
    v40 = objc_opt_self();
    v55 = sub_88E4C8;
    v56 = v39;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_1B5EB4;
    v54 = &block_descriptor_76_2;
    v37 = _Block_copy(&aBlock);
    v41 = v1;

    [v40 _animateUsingSpringWithDuration:2 delay:v37 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:288.0 animations:26.5 completion:0.0];
LABEL_39:

    _Block_release(v37);
    return;
  }

  if (v3 != (&dword_0 + 2))
  {
    return;
  }

  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (v1[v4] != 1 || (v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth + 8] & 1) != 0)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  [a1 translationInView:v1];
  v6 = v8.n128_f64[0];
  v8.n128_f64[0] = fabs(v7);
  if (qword_E16BD8 != -1)
  {
    v50 = v8.n128_u64[0];
    swift_once();
    v8.n128_u64[0] = v50;
  }

  if (v8.n128_f64[0] >= *&static SliderView.Specs.escapeHeight)
  {
    v42 = SliderView.panRecognizer.getter(v8);
    [v42 setState:4];

    return;
  }

  v9 = [v1 effectiveUserInterfaceLayoutDirection];
  v10 = -v6;
  if (v9 != &dword_0 + 1)
  {
    v10 = v6;
  }

  v11 = v5 + v10;
  [v1 bounds];
  Width = CGRectGetWidth(v58);
  if (Width >= v11)
  {
    Width = v11;
  }

  if (Width < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = Width;
  }

  v14 = v1;
  [v1 bounds];
  v15 = v13 / CGRectGetWidth(v59);
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  v57 = 14;
  v17 = sub_7C40E0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v17) & 1) == 0)
  {
    v22 = 0;
    v18 = v14;
    goto LABEL_43;
  }

  v18 = v1;
  v19 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  if ((v19[1] & 1) == 0)
  {
    v20 = *v19;
    if (qword_E16BE8 != -1)
    {
      swift_once();
    }

    v21 = v20 + *&qword_E73DE8;
    if (v20 - *&qword_E73DE8 <= v20 + *&qword_E73DE8)
    {
      if (v20 - *&qword_E73DE8 <= v16)
      {
        v22 = v16 <= v21;
        if (v16 <= v21)
        {
          v16 = v20;
        }

        goto LABEL_43;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

LABEL_27:
  v22 = 0;
LABEL_43:
  v43 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v16 != *&v18[v43])
  {
    v44 = v16 == 1.0;
    if (v16 == 0.0)
    {
      v44 = 1;
    }

    if (v44 || v22)
    {
      [*&v18[OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator] impactOccurred];
    }
  }

  SliderView.setValue(_:animated:)(0, v16);
  v45 = v14;
  v46 = &v14[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  swift_beginAccess();
  v47 = *v46;
  if (*v46)
  {
    v48 = *(v46 + 1);
    v49 = *&v45[v43];

    v47(1, v49);
    sub_17654(v47, v48);
  }
}

void sub_88CBC0(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_17654(v2, v3);
  }
}

void sub_88CC34(uint64_t a1, char a2)
{
  v4 = a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
    swift_beginAccess();
    v8 = *(a1 + v7);

    v5(a2 & 1, v8);
    sub_17654(v5, v6);
  }
}

void sub_88CD54(char a1, _BYTE *a2, void (*a3)(id))
{
  v6 = sub_ABA620();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  if ((a1 & 1) == 0)
  {
    if (v12)
    {
      v16 = qword_E16BB8;
      v14 = v12;
      if (v16 != -1)
      {
        swift_once();
      }

      v15 = &static SliderView.Specs.barHeight;
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
    return;
  }

  if (!v12)
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = qword_E16BC0;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = &static SliderView.Specs.expandedBarHeight;
LABEL_10:
  v17 = *v15;
  [v14 setConstant:*v15];

  *v9 = v17 * 0.5;
  *(v9 + 8) = 1;
  (*(v7 + 104))(v9, enum case for UIView.Corner.Radius.value(_:), v6);
  sub_AB9E10();
  sub_ABA640();
  v18 = sub_ABA680();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  sub_ABA6A0();
  v19 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
  if (v19)
  {
    v20 = 0.0;
    if (a1)
    {
      v20 = 1.0;
    }

    v19 = [v19 setAlpha:v20];
  }

  if (a3)
  {
    a3(v19);
  }

  v21 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack];
  v22 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (a2[v22] == 1)
  {
    v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v24 = &a2[v23];
  swift_beginAccess();
  [v21 setBackgroundColor:*v24];
  v25 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack];
  v26 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v25 setBackgroundColor:*&a2[v26]];
  sub_88D0D4();
  [a2 layoutIfNeeded];
}

void sub_88D0D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v1;
  [v2 constant];
  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint);
  if (!v5)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v6 = v4;
  v7 = v4 * 0.5;
  [v5 constant];
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView) frame];
  Width = CGRectGetWidth(v24);
  v11 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v6 * 0.5 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{1.57079633, 4.71238898}];
  v12 = v11;
  v13 = Width - v7;
  if (v9 <= Width - v7)
  {
    [v11 addLineToPoint:{v9, 0.0}];
    [v12 addLineToPoint:{v9, v6}];
  }

  else if (v9 >= Width)
  {
    [v11 addLineToPoint:{Width - v7, 0.0}];
    [v12 addArcWithCenter:1 radius:Width - v7 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{4.71238898, 1.57079633}];
  }

  else
  {
    v14 = v7 - (Width - v9);
    v15 = 1.57079633 - acos(v14 / v7);
    v16 = sqrt(v7 * v7 - v14 * v14);
    v17 = v16 + v16;
    [v12 addLineToPoint:{v13, 0.0}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{4.71238898, (v15 + 4.71238898)}];
    [v12 currentPoint];
    v19 = v18;
    [v12 currentPoint];
    [v12 addLineToPoint:{v19, v17 + v20}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{(1.57079633 - v15), 1.57079633}];
  }

  [v12 closePath];
  v21 = [v3 layer];
  v22 = [v12 CGPath];
  [v21 setShadowPath:v22];
}

Swift::Void __swiftcall SliderView.addGlowIfNeeded()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow;
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow])
  {
    v2 = [objc_allocWithZone(UIView) init];
    v3 = v0;
    v4 = UIView.forAutolayout.getter();

    v5 = [v4 layer];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 CGColor];

    [v5 setShadowColor:v7];
    v8 = [v4 layer];
    [v8 setShadowOpacity:0.0];

    v9 = [v4 layer];
    [v9 setShadowOffset:{0.0, 0.0}];

    v10 = [v4 layer];
    [v10 setShadowRadius:4.0];

    v11 = *&v3[v1];
    *&v3[v1] = v4;
    v12 = v4;

    [v3 addSubview:v12];
    sub_88D0D4();
    sub_13C80(0, &qword_E1E050, UIView_ptr);
    if (qword_E16BE0 != -1)
    {
      swift_once();
    }

    v13 = qword_E73DE0;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v15 = v12;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v13, 0, sub_88DE68, v14, 0, 0, 0.65, 0.0);
  }
}

Swift::Void __swiftcall SliderView.removeGlowIfNeeded()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow];
  if (v1)
  {
    sub_13C80(0, &qword_E1E050, UIView_ptr);
    v2 = qword_E16BE0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_E73DE0;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v3;
    v8 = v0;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v4, 0, sub_88DEC8, v5, sub_88DEE8, v6, 0.65, 0.0);
  }
}

void sub_88D7BC(void *a1, float a2)
{
  v4 = [a1 layer];
  *&v3 = a2;
  [v4 setShadowOpacity:v3];
}

void sub_88D820()
{
  v1 = v0;
  v2 = sub_7C40E0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
    swift_beginAccess();
    v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark;
    v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
    if (v3[1])
    {
      [v5 removeFromSuperview];
      v6 = *&v1[v4];
      *&v1[v4] = 0;

      isa = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
    }

    else
    {
      if (v5)
      {
        return;
      }

      v8 = *v3;
      v9 = [objc_allocWithZone(UIView) init];
      v10 = UIView.forAutolayout.getter();

      v11 = [objc_opt_self() blackColor];
      [v10 setBackgroundColor:v11];

      v12 = [v10 layer];
      [v12 setCompositingFilter:kCAFilterDestOut];

      v13 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      v14 = 0.0;
      if (v1[v13])
      {
        v14 = 1.0;
      }

      [v10 setAlpha:v14];
      [v1 addSubview:v10];
      v15 = *&v1[v4];
      *&v1[v4] = v10;
      v16 = v10;

      v17 = [v16 leadingAnchor];
      v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView];
      v19 = [v18 leadingAnchor];
      [v1 bounds];
      v20 = [v17 constraintEqualToAnchor:v19 constant:v8 * CGRectGetWidth(v32)];

      v21 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint;
      v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_AF82E0;
      v24 = [v16 widthAnchor];
      v25 = [v24 constraintEqualToConstant:2.0];

      *(v23 + 32) = v25;
      v26 = [v16 heightAnchor];
      v27 = [v18 heightAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v23 + 40) = v28;
      v29 = *&v1[v21];
      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = objc_opt_self();
      *(v23 + 48) = v29;
      sub_13C80(0, qword_E18600, NSLayoutConstraint_ptr);
      v31 = v29;
      isa = sub_AB9740().super.isa;

      [v30 activateConstraints:isa];
    }
  }
}