unint64_t sub_1B0C3A488(unint64_t a1, NSObject *a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UnauthenticatedState(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0xFFFFFFFF00000000;
  if (((1 << (a1 >> 60)) & 0x1F5) == 0)
  {
    if (a1 >> 60 != 1)
    {
      v20 = swift_projectBox();
      sub_1B0433BE8(v20, v12, type metadata accessor for UntaggedResponse);
      v21 = sub_1B0C384B8(v12, a2, a3, a4, a5);
      sub_1B04479C4(v12, type metadata accessor for UntaggedResponse);
      return v21;
    }

    sub_1B0C3A6F0(a3, v15, type metadata accessor for UnauthenticatedState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 10)
    {
      if ((EnumCaseMultiPayload - 11) < 4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 3) < 8 || EnumCaseMultiPayload < 2)
      {
        sub_1B04479C4(v15, type metadata accessor for UnauthenticatedState);
LABEL_12:
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = 1;
        *(a3 + 24) = -64;
LABEL_13:
        swift_storeEnumTagMultiPayload();
        return 0xFFFFFFFF00000000;
      }

      sub_1B04479C4(v15, type metadata accessor for UnauthenticatedState);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    *(a3 + 24) = 0;
    goto LABEL_13;
  }

  return v16;
}

uint64_t sub_1B0C3A6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection20UnauthenticatedStateO6UpdateO(uint64_t a1)
{
  if ((*(a1 + 176) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 176) & 7;
  }
}

uint64_t sub_1B0C3A774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 177))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 176);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C3A7BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0C3A830(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    LOBYTE(a2) = 7;
    *(result + 168) = 0;
  }

  *(result + 176) = a2;
  return result;
}

uint64_t sub_1B0C3A888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C3A8D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 2) << 32;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_1B0C3A924(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B0C3A99C(uint64_t a1, unint64_t a2, char a3, void (*a4)(unint64_t, uint64_t, uint64_t, uint64_t, double), uint64_t a5, uint64_t a6)
{
  v8 = v7;
  sub_1B0BD30C8(a1, a2, a3 & 1);
  sub_1B0C3BC64(v6, a1, a2, a3 & 1, &v38);
  if (!v7)
  {
    v53 = 0;
    v8 = v38;
    v24[8] = v47;
    v24[9] = v48;
    v24[10] = v49;
    v25 = v50;
    v24[4] = v43;
    v24[5] = v44;
    v24[6] = v45;
    v24[7] = v46;
    v24[0] = v39;
    v24[1] = v40;
    v24[2] = v41;
    v24[3] = v42;
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    if (sub_1B0C3C354(&v26) != 1)
    {
      v22 = v8;
      v51[8] = v34;
      v51[9] = v35;
      v51[10] = v36;
      v52 = v37;
      v51[4] = v30;
      v51[5] = v31;
      v51[6] = v32;
      v51[7] = v33;
      v51[0] = v26;
      v51[1] = v27;
      v51[2] = v28;
      v51[3] = v29;
      type metadata accessor for UnauthenticatedStateWithTasks(0);
      v23 = sub_1B0C33814(v51, a6);
      v14 = *(v23 + 2);
      if (v14)
      {
        v15 = v23 + 7;
        do
        {
          v16 = *(v15 - 3);
          v17 = *(v15 - 2);
          v18 = *(v15 - 1);
          v19 = *v15;
          v20 = sub_1B0BE2C30(v16);
          a4(v16, v17, v18, v19, v20);
          sub_1B044B428(v16, v17, v18, v19);
          v15 += 4;
          --v14;
        }

        while (v14);
      }

      sub_1B0398EFC(v24, &qword_1EB6E5A08, &unk_1B0EDBD58);
      return v22;
    }
  }

  return v8;
}

uint64_t sub_1B0C3ABE0(unint64_t *a1, uint64_t a2)
{
  v132 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v132);
  v6 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v118 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v118 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v118 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v125 = (&v118 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v118 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v118 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v122 = &v118 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v123 = (&v118 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v124 = (&v118 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v118 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v118 - v30;
  v32 = type metadata accessor for UnauthenticatedState(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v2 + *(type metadata accessor for UnauthenticatedStateWithTasks(0) + 24);
  sub_1B044D768(v130, v34, type metadata accessor for UnauthenticatedState);
  v131 = v32;
  LODWORD(v32) = swift_getEnumCaseMultiPayload();
  sub_1B044D830(v34, type metadata accessor for UnauthenticatedState);
  if (v32 == 14)
  {
    v129 = a2;
    v35 = *a1;
    v36 = a1[1];
    v37 = a1[2];
    v38 = *a1 >> 62;
    v39 = a1;
    if (v38)
    {
      if (v38 != 1)
      {
        v88 = v129;
        sub_1B044D768(v129, v31, _s6LoggerVMa_0);
        sub_1B044D768(v88, v28, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v89 = sub_1B0E43988();
        v90 = sub_1B0E458F8();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v133 = v92;
          *v91 = 68158210;
          *(v91 + 4) = 2;
          *(v91 + 8) = 256;
          v93 = v132;
          v94 = v28[*(v132 + 20)];
          sub_1B044D830(v28, _s6LoggerVMa_0);
          *(v91 + 10) = v94;
          *(v91 + 11) = 2082;
          v95 = *&v31[*(v93 + 20) + 4];
          sub_1B044D830(v31, _s6LoggerVMa_0);
          v96 = ConnectionID.debugDescription.getter(v95);
          v98 = sub_1B0399D64(v96, v97, &v133);

          *(v91 + 13) = v98;
          _os_log_impl(&dword_1B0389000, v89, v90, "[%.*hhx-%{public}s] We ran STARTTLS, but the connection is not using TLS.", v91, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v92);
          MEMORY[0x1B272C230](v92, -1, -1);
          MEMORY[0x1B272C230](v91, -1, -1);
        }

        else
        {
          sub_1B044D830(v28, _s6LoggerVMa_0);

          sub_1B044D830(v31, _s6LoggerVMa_0);
        }

        v104 = v130;
        sub_1B044D830(v130, type metadata accessor for UnauthenticatedState);
        v105 = 4;
        goto LABEL_41;
      }

      LODWORD(v127) = *a1;
      v40 = v129;
      v41 = v126;
      sub_1B044D768(v129, v126, _s6LoggerVMa_0);
      v42 = v125;
      sub_1B044D768(v40, v125, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B044A64C(v35, v36, v37);
      sub_1B044A64C(v35, v36, v37);
      sub_1B044A64C(v35, v36, v37);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v43 = sub_1B0E43988();
      v44 = sub_1B0E45908();
      v124 = v43;
      if (os_log_type_enabled(v43, v44))
      {
        v119 = v35 >> 16;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v123 = v39;
        v120 = v46;
        v133 = v46;
        *v45 = 68158722;
        *(v45 + 4) = 2;
        *(v45 + 8) = 256;
        v47 = v132;
        v48 = *(v132 + 20);
        v122 = v36;
        v49 = *(&v42->isa + v48);
        sub_1B044D830(v42, _s6LoggerVMa_0);
        *(v45 + 10) = v49;
        *(v45 + 11) = 2082;
        v50 = v127;
        v51 = *(v41 + *(v47 + 20) + 4);
        sub_1B044D830(v41, _s6LoggerVMa_0);
        v52 = ConnectionID.debugDescription.getter(v51);
        v54 = sub_1B0399D64(v52, v53, &v133);

        *(v45 + 13) = v54;
        v36 = v122;
        *(v45 + 21) = 512;
        sub_1B044A65C(v35, v36, v37);
        *(v45 + 23) = v50;
        sub_1B044A65C(v35, v36, v37);
        *(v45 + 25) = 512;
        sub_1B044A65C(v35, v36, v37);
        *(v45 + 27) = v119;
        sub_1B044A65C(v35, v36, v37);
        v55 = v44;
        v56 = v124;
        _os_log_impl(&dword_1B0389000, v124, v55, "[%.*hhx-%{public}s] STARTTLS completed: %hu / %hu", v45, 0x1Du);
        v57 = v120;
        __swift_destroy_boxed_opaque_existential_0Tm(v120);
        v39 = v123;
        MEMORY[0x1B272C230](v57, -1, -1);
        v58 = v45;
        v40 = v129;
        MEMORY[0x1B272C230](v58, -1, -1);
      }

      else
      {
        sub_1B044A65C(v35, v36, v37);
        sub_1B044A65C(v35, v36, v37);
        sub_1B044D830(v42, _s6LoggerVMa_0);
        sub_1B044A65C(v35, v36, v37);
        sub_1B044A65C(v35, v36, v37);

        sub_1B044D830(v41, _s6LoggerVMa_0);
      }

      v99 = *(v39 + 24);
      v100 = v39[5];
      v101 = v128;
      if (v100)
      {
        if (v100 != 1)
        {
          if (v99 == 1)
          {
            if (v127 != 772)
            {
              goto LABEL_36;
            }
          }

          else if ((v127 - 773) < 0xFFFFFFFE)
          {
LABEL_36:
            v102 = v40;
            v103 = v121;
            goto LABEL_37;
          }

          if (!v37 || (v39[4] != v36 || v100 != v37) && (sub_1B0E46A78() & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else if (v99 == 1)
      {
        if (v127 != 772)
        {
          goto LABEL_36;
        }
      }

      else if ((v127 - 771) >= 2)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v40 = v129;
      v70 = v124;
      sub_1B044D768(v129, v124, _s6LoggerVMa_0);
      v71 = v123;
      sub_1B044D768(v40, v123, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B044A64C(v35, v36, v37);
      sub_1B044A64C(v35, v36, v37);
      sub_1B044A64C(v35, v36, v37);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v72 = sub_1B0E43988();
      v73 = sub_1B0E45908();
      if (os_log_type_enabled(v72, v73))
      {
        v126 = v35 >> 16;
        v74 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v133 = v128;
        *v74 = 68158722;
        *(v74 + 4) = 2;
        *(v74 + 8) = 256;
        v125 = v72;
        v75 = v132;
        v76 = *(v132 + 20);
        LODWORD(v121) = v73;
        v77 = v36;
        v78 = *(v71 + v76);
        sub_1B044D830(v71, _s6LoggerVMa_0);
        *(v74 + 10) = v78;
        *(v74 + 11) = 2082;
        v79 = v70;
        v80 = *(&v70->isa + *(v75 + 20) + 4);
        sub_1B044D830(v79, _s6LoggerVMa_0);
        v81 = ConnectionID.debugDescription.getter(v80);
        v83 = v39;
        v84 = sub_1B0399D64(v81, v82, &v133);

        *(v74 + 13) = v84;
        v39 = v83;
        *(v74 + 21) = 512;
        sub_1B044A65C(v35, v77, v37);
        *(v74 + 23) = v35;
        sub_1B044A65C(v35, v77, v37);
        *(v74 + 25) = 512;
        sub_1B044A65C(v35, v77, v37);
        *(v74 + 27) = v126;
        sub_1B044A65C(v35, v77, v37);
        v85 = v125;
        _os_log_impl(&dword_1B0389000, v125, v121, "[%.*hhx-%{public}s] Opportunistic STARTTLS completed: %hu / %hu", v74, 0x1Du);
        v86 = v128;
        __swift_destroy_boxed_opaque_existential_0Tm(v128);
        MEMORY[0x1B272C230](v86, -1, -1);
        v87 = v74;
        v40 = v129;
        MEMORY[0x1B272C230](v87, -1, -1);
      }

      else
      {
        sub_1B044A65C(v35, v36, v37);
        sub_1B044A65C(v35, v36, v37);
        sub_1B044D830(v71, _s6LoggerVMa_0);
        sub_1B044A65C(v35, v36, v37);
        sub_1B044A65C(v35, v36, v37);

        sub_1B044D830(v70, _s6LoggerVMa_0);
      }

      v101 = v127;
      if (v39[5] != 1)
      {
        v102 = v40;
        v103 = v122;
LABEL_37:
        sub_1B044D768(v102, v103, _s6LoggerVMa_0);
        sub_1B044D768(v40, v101, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v106 = sub_1B0E43988();
        v107 = sub_1B0E458E8();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v110 = v101;
          v111 = v109;
          v133 = v109;
          *v108 = 68158210;
          *(v108 + 4) = 2;
          *(v108 + 8) = 256;
          v112 = v132;
          v113 = *(v110 + *(v132 + 20));
          sub_1B044D830(v110, _s6LoggerVMa_0);
          *(v108 + 10) = v113;
          *(v108 + 11) = 2082;
          v114 = *(v103 + *(v112 + 20) + 4);
          sub_1B044D830(v103, _s6LoggerVMa_0);
          v115 = ConnectionID.debugDescription.getter(v114);
          v117 = sub_1B0399D64(v115, v116, &v133);

          *(v108 + 13) = v117;
          _os_log_impl(&dword_1B0389000, v106, v107, "[%.*hhx-%{public}s] We ran STARTTLS, but the connection is not secure.", v108, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v111);
          MEMORY[0x1B272C230](v111, -1, -1);
          MEMORY[0x1B272C230](v108, -1, -1);
        }

        else
        {
          sub_1B044D830(v101, _s6LoggerVMa_0);

          sub_1B044D830(v103, _s6LoggerVMa_0);
        }

        v104 = v130;
        sub_1B044D830(v130, type metadata accessor for UnauthenticatedState);
        v105 = 6;
LABEL_41:
        *(v104 + 8) = 0;
        *(v104 + 16) = 0;
        *v104 = v105;
        *(v104 + 24) = -64;
        return swift_storeEnumTagMultiPayload();
      }
    }

    sub_1B044D830(v130, type metadata accessor for UnauthenticatedState);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1B044D768(a2, v9, _s6LoggerVMa_0);
  sub_1B044D768(a2, v6, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v59 = sub_1B0E43988();
  v60 = sub_1B0E458F8();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v133 = v62;
    *v61 = 68158210;
    *(v61 + 4) = 2;
    *(v61 + 8) = 256;
    v63 = v132;
    v64 = v6[*(v132 + 20)];
    sub_1B044D830(v6, _s6LoggerVMa_0);
    *(v61 + 10) = v64;
    *(v61 + 11) = 2082;
    v65 = *&v9[*(v63 + 20) + 4];
    sub_1B044D830(v9, _s6LoggerVMa_0);
    v66 = ConnectionID.debugDescription.getter(v65);
    v68 = sub_1B0399D64(v66, v67, &v133);

    *(v61 + 13) = v68;
    _os_log_impl(&dword_1B0389000, v59, v60, "[%.*hhx-%{public}s] Received did-start-TLS from network, but we’re in the wrong state.", v61, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    MEMORY[0x1B272C230](v62, -1, -1);
    MEMORY[0x1B272C230](v61, -1, -1);
  }

  else
  {
    sub_1B044D830(v6, _s6LoggerVMa_0);

    sub_1B044D830(v9, _s6LoggerVMa_0);
  }

  sub_1B0C3C3BC();
  swift_allocError();
  return swift_willThrow();
}

_OWORD *sub_1B0C3BAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B0C3C1B4(a5, &v32);
  if (!*(&v33 + 1))
  {
    sub_1B0398EFC(&v32, &qword_1EB6E5A20, &qword_1B0EDBD70);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B0450C74(&v32, v15);
  v11 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_0(v15, v16);
  (*(v12 + 32))(v18, a1, a2, a3, a4, v11, v12);
  v28 = v18[8];
  v29 = v18[9];
  v30 = v18[10];
  v31 = v19;
  v24 = v18[4];
  v25 = v18[5];
  v26 = v18[6];
  v27 = v18[7];
  v20 = v18[0];
  v21 = v18[1];
  v22 = v18[2];
  v23 = v18[3];
  if (sub_1B0C3C354(&v20) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    return MEMORY[0x1E69E7CC0];
  }

  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  type metadata accessor for UnauthenticatedStateWithTasks(0);
  v14 = sub_1B0C33814(&v32, a6);
  sub_1B0398EFC(v18, &qword_1EB6E5A08, &unk_1B0EDBD58);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return v14;
}

uint64_t sub_1B0C3BC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v37 = a4;
  v36 = a3;
  v38 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v29 - v9;
  v35 = type metadata accessor for AuthenticationTask(0);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(type metadata accessor for UnauthenticatedStateWithTasks(0) + 28);
  v30 = a1;
  v11 = *(a1 + v29);
  v12 = v11[2];
  if (!v12)
  {
LABEL_14:
    sub_1B0C3C368();
    swift_allocError();
    swift_willThrow();
    return sub_1B0BCDEB0(v38, v36, v37 & 1);
  }

  v13 = 0;
  v14 = 4;
  v15 = ",w\b";
  while (1)
  {
    if (v13 >= v11[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_1B0C3C2E4(&v11[v14], &v39);
    v16 = *(v41 + 15);
    v5 = *(&v41[1] + 7);
    __swift_project_boxed_opaque_existential_0(&v39 + 1, *(v41 + 15));
    a1 = (*(v5 + 8))(v16, v5);
    sub_1B0398EFC(&v39, &qword_1EB6E5708, ",w\b");
    if (a1 == 2)
    {
      break;
    }

    ++v13;
    v14 += 6;
    if (v12 == v13)
    {
      goto LABEL_14;
    }
  }

  if (v13 >= v11[2])
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1B0C3C2E4(&v11[v14], v47);
  sub_1B0450C74(v48, v46);
  sub_1B0450C74(v46, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A10, &qword_1B0EDBD68);
  v18 = v34;
  v17 = v35;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v33 + 56))(v18, 1, 1, v17);
    sub_1B0398EFC(v18, &qword_1EB6E53F8, &qword_1B0ECFF80);
    goto LABEL_14;
  }

  (*(v33 + 56))(v18, 0, 1, v17);
  v19 = v18;
  v20 = v17;
  a1 = v32;
  sub_1B0BD6580(v19, v32);
  v12 = v36;
  sub_1B0BD208C(v38, v36, v37 & 1, &v39);
  v5 = *(&v39 + 1);
  v34 = v39;
  LOBYTE(v15) = v40;
  *&v44[128] = v41[8];
  *&v44[144] = v41[9];
  *&v44[160] = v41[10];
  *&v44[176] = v42;
  *&v44[64] = v41[4];
  *&v44[80] = v41[5];
  *&v44[96] = v41[6];
  *&v44[112] = v41[7];
  *v44 = v41[0];
  *&v44[16] = v41[1];
  *&v44[32] = v41[2];
  *&v44[48] = v41[3];
  *&v43[135] = *&v44[135];
  *&v43[151] = *&v44[151];
  *&v43[167] = *&v44[167];
  v43[183] = HIBYTE(v42);
  *&v43[71] = *&v44[71];
  *&v43[87] = *&v44[87];
  *&v43[103] = *&v44[103];
  *&v43[119] = *&v44[119];
  *&v43[7] = *&v44[7];
  *&v43[23] = *&v44[23];
  *&v43[39] = *&v44[39];
  *&v43[55] = *&v44[55];
  if (v13 >= v11[2])
  {
    goto LABEL_17;
  }

  v6 = v11[v14];
  *(v41 + 7) = v20;
  *(v41 + 15) = &off_1F271C380;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  sub_1B044D768(a1, boxed_opaque_existential_1, type metadata accessor for AuthenticationTask);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_18:
  v11 = sub_1B0C0DFC8(v11);
LABEL_11:
  result = sub_1B044D830(a1, type metadata accessor for AuthenticationTask);
  if (v13 >= v11[2])
  {
    __break(1u);
  }

  else
  {
    v11[v14] = v6;
    __swift_destroy_boxed_opaque_existential_0Tm(&v11[v14 + 1]);
    sub_1B0450C74(&v39, &v11[v14 + 1]);
    result = sub_1B0BCDEB0(v38, v12, v37 & 1);
    v23 = *&v43[144];
    v24 = v31;
    *(v31 + 145) = *&v43[128];
    *(v24 + 161) = v23;
    *(v24 + 177) = *&v43[160];
    v25 = *&v43[80];
    *(v24 + 81) = *&v43[64];
    *(v24 + 97) = v25;
    v26 = *&v43[112];
    *(v24 + 113) = *&v43[96];
    *(v24 + 129) = v26;
    v27 = *&v43[16];
    *(v24 + 17) = *v43;
    *(v24 + 33) = v27;
    v28 = *&v43[48];
    *(v24 + 49) = *&v43[32];
    *(v30 + v29) = v11;
    *v24 = v34;
    *(v24 + 8) = v5;
    *(v24 + 16) = v15;
    *(v24 + 193) = *&v43[176];
    *(v24 + 65) = v28;
  }

  return result;
}

uint64_t sub_1B0C3C1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for UnauthenticatedStateWithTasks(0);
  v5 = *(v2 + *(result + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_1B0C3C2E4(v8, v13);
      v10 = v13[0];
      v9 = DWORD1(v13[0]);
      result = sub_1B0398EFC(v13, &qword_1EB6E5708, ",w\b");
      if (v10 == a1 && v9 == HIDWORD(a1))
      {
        sub_1B0C0B6DC(v7, v13);
        return sub_1B0450C74((v13 + 8), a2);
      }

      ++v7;
      v8 += 48;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B0C3C2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5708, ",w\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C3C354(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B0C3C368()
{
  result = qword_1EB6E5A18;
  if (!qword_1EB6E5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5A18);
  }

  return result;
}

unint64_t sub_1B0C3C3BC()
{
  result = qword_1EB6E5A30;
  if (!qword_1EB6E5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5A30);
  }

  return result;
}

unint64_t sub_1B0C3C444()
{
  result = qword_1EB6E5A38;
  if (!qword_1EB6E5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5A38);
  }

  return result;
}

uint64_t sub_1B0C3C498(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 17) ^ *(a2 + 17) ^ 1u;
}

int64_t sub_1B0C3C4F0(char a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  result = static MonotonicTime.now()();
  if ((v5 & 1) == 0 && v4 >= result)
  {
    goto LABEL_9;
  }

  if (a1)
  {
    v6 = a1 != 1;
    v8 = __OFADD__(v3, 4);
    v3 += 4;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = 0;
  v8 = __OFADD__(v3++, 1);
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v3 <= 1000)
  {
    if (v3 >= 1)
    {
      goto LABEL_8;
    }

LABEL_14:
    v4 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  v3 = 1000;
LABEL_8:
  v9 = sub_1B0C3C6F8(0x20000000000001uLL);
  v10 = sub_1B0C3C784(v3, vcvtd_n_f64_u64(v9, 0x35uLL) + 0.0);
  result = MonotonicTime.init(secondsSinceNow:)(v10);
  v4 = result;
LABEL_9:
  v11 = 0;
LABEL_10:
  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v11;
  *(v1 + 17) = v6;
  return result;
}

uint64_t variable initialization expression of Engine.externalState@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Activity(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for ExternalState(0);
  *(a1 + *(result + 20)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t variable initialization expression of Engine.didTearDown()
{
  type metadata accessor for AtomicFlag.Storage(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

unint64_t sub_1B0C3C6F8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B272C250](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B272C250](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1B0C3C784(uint64_t a1, double a2)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  v3 = exp2((a1 - 1)) * 4.0;
  if (v3 < 80.0)
  {
    v4 = 0.5;
    v5 = v3 * 0.5;
    if (a2 >= 1.0)
    {
      return v5 + v4 * v3;
    }

    v4 = 0.0;
    if (a2 < 0.0)
    {
      return v5 + v4 * v3;
    }

LABEL_9:
    v4 = a2 * 0.5;
    return v5 + v4 * v3;
  }

  if (a2 >= 1.0)
  {
    v4 = 0.5;
    v5 = 40.0;
    v3 = 80.0;
    return v5 + v4 * v3;
  }

  v4 = 0.0;
  v5 = 40.0;
  v3 = 80.0;
  if (a2 >= 0.0)
  {
    goto LABEL_9;
  }

  return v5 + v4 * v3;
}

unint64_t sub_1B0C3C84C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A80, &unk_1B0EDBF50);
  v3 = sub_1B0E466A8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = *(a1 + 48);
  result = sub_1B03A2724();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v9 = v3[7] + 24 * result;
    *v9 = v5;
    *(v9 + 8) = v15;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v13 = v8 + 2;
    v4 = *(v8 - 4);
    v5 = *(v8 - 2);
    v15 = *v8;

    result = sub_1B03A2724();
    v8 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0C3C978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A78, &qword_1B0EDBF48);
  v3 = sub_1B0E466A8();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1B03A2724();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 2);
    v13 = *v7;

    result = sub_1B03A2724();
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for Backoff(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageToDownload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B0C3CB30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A70, &qword_1B0EDBF40);
    v3 = sub_1B0E466A8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_1B03A2724();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B0C3CC10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A48, &qword_1B0EDBF18);
    v3 = sub_1B0E466A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B03B5C80(v4, &v13, &unk_1EB6E5A50, &unk_1B0EDBF20);
      v5 = v13;
      v6 = v14;
      result = sub_1B0441038(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B0450C74(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B0C3CD48()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DC1C0);
  __swift_project_value_buffer(v0, qword_1EB6DC1C0);
  return sub_1B0E43998();
}

uint64_t sub_1B0C3CDD0()
{
  if (*(v0 + 72))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B0E45A98();
    swift_unknownObjectRelease();
  }

  sub_1B0BE2890(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B0C3CE9C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B0C3CEF4();
  }

  return result;
}

void sub_1B0C3CEF4()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  v7 = *MEMORY[0x1E69E8020];
  v8 = *(v2 + 104);
  v8(v5, v7, v1, v3);
  v9 = v6;
  v10 = sub_1B0E44488();
  v11 = *(v2 + 8);
  v11(v5, v1);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = static MonotonicTime.now()();
  swift_beginAccess();
  if (*(v0 + 64) != 1)
  {
LABEL_11:
    *v5 = v9;
    (v8)(v5, v7, v1);
    v16 = sub_1B0E44488();
    v11(v5, v1);
    if (v16)
    {
      sub_1B044E4C4();
      sub_1B044E8FC();
      return;
    }

    goto LABEL_14;
  }

  v13 = *(v0 + 56);
  v14 = __OFSUB__(v12, v13);
  v15 = v12 - v13;
  if (v12 < v13)
  {
    if (__OFSUB__(v13, v12))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v14 = __OFSUB__(0, v13 - v12);
    v15 = v12 - v13;
    if (!v14)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (!v14)
  {
LABEL_9:
    if (v15 / 1000000000.0 > 2.0)
    {
      *(v0 + 56) = 0;
      *(v0 + 64) = 2;
    }

    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1B0C3D0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v35 = a1;
  v3 = sub_1B0E443F8();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v30 - v6;
  v7 = sub_1B0E44208();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_1B0E44238();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B0E44288();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B0E45A38();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0421E38();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B0C3E204(&qword_1EB6DAA70, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B03CFB8C(&qword_1EB6DAFA0, &qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B0E460A8();
  v18 = sub_1B0E45A48();
  (*(v15 + 8))(v17, v14);
  ObjectType = swift_getObjectType();
  aBlock[4] = v37;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_30;
  v20 = _Block_copy(aBlock);

  sub_1B0E44258();
  v21 = v31;
  sub_1B06D2870(ObjectType);
  sub_1B0E45A58();
  _Block_release(v20);
  (*(v34 + 8))(v21, v36);
  (*(v32 + 8))(v13, v33);

  *v9 = 250;
  v23 = v39;
  v22 = v40;
  (*(v39 + 104))(v9, *MEMORY[0x1E69E7F38], v40);
  v24 = v42;
  sub_1B0E443D8();
  v25 = v41;
  sub_1B0E443E8();
  v26 = *(v43 + 8);
  v27 = v24;
  v28 = v44;
  v26(v27, v44);
  MEMORY[0x1B2727D90](v25, v9, v9, ObjectType);
  v26(v25, v28);
  (*(v23 + 8))(v9, v22);
  return v18;
}

uint64_t sub_1B0C3D620(uint64_t a1, char *a2)
{
  v3 = v2;
  v93 = a2;
  v5 = sub_1B0E441D8();
  v88 = *(v5 - 8);
  v89 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v85 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v86 = v83 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v83 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v92 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v87 = (v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = v83 - v15;
  v17 = _s5StateO6ActionOMa(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v91 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v83 - v20;
  v22 = sub_1B0E44468();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v2 + 16);
  *v26 = v27;
  v28 = *(v23 + 104);
  v96 = *MEMORY[0x1E69E8020];
  v97 = v28;
  v98 = v23 + 104;
  v28(v26, v24);
  v95 = v27;
  LOBYTE(v27) = sub_1B0E44488();
  v30 = *(v23 + 8);
  v29 = (v23 + 8);
  v94 = v30;
  v30(v26, v22);
  if (v27)
  {
    v99 = v11;
    if (qword_1EB6DC1B0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v31 = sub_1B0E439A8();
  v32 = __swift_project_value_buffer(v31, qword_1EB6DC1C0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v90 = v32;
  v33 = sub_1B0E43988();
  v34 = sub_1B0E458C8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v84 = v26;
    v36 = v29;
    v37 = v22;
    v38 = v21;
    v39 = v35;
    *v35 = 68158208;
    *(v35 + 4) = 2;
    *(v35 + 8) = 256;
    *(v35 + 10) = *(v3 + 24);

    *(v39 + 11) = 2048;
    *(v39 + 13) = a1;
    _os_log_impl(&dword_1B0389000, v33, v34, "[%.*hhx] Connection generation %ld state did change.", v39, 0x15u);
    v40 = v39;
    v21 = v38;
    v22 = v37;
    v29 = v36;
    v26 = v84;
    MEMORY[0x1B272C230](v40, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  sub_1B044E010(a1, v93, v21);
  swift_endAccess();
  v41 = v91;
  sub_1B044E460(v21, v91);
  v42 = (*(v92 + 48))(v41, 2, v12);
  v43 = v99;
  if (v42)
  {
    if (v42 == 1)
    {
      goto LABEL_33;
    }

    v44 = *(v3 + 80);
    if (v44)
    {
      v92 = v22;
      *(v3 + 80) = 0;
      *(v3 + 88) = 0;

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v45 = sub_1B0E43988();
      v46 = sub_1B0E45908();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 68158208;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        *(v47 + 10) = *(v3 + 24);

        *(v47 + 11) = 2048;
        *(v47 + 13) = a1;
        _os_log_impl(&dword_1B0389000, v45, v46, "[%.*hhx] Promoting connection generation %ld.", v47, 0x15u);
        MEMORY[0x1B272C230](v47, -1, -1);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

LABEL_32:
        v22 = v92;
        goto LABEL_33;
      }

      if (*(Strong + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
      {

        sub_1B0C4C0B4(v44);

LABEL_31:
        swift_unknownObjectRelease();
        goto LABEL_32;
      }
    }

    else
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v70 = sub_1B0E43988();
      v71 = sub_1B0E45908();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = a1;
        v73 = v22;
        v74 = swift_slowAlloc();
        *v74 = 68158208;
        *(v74 + 4) = 2;
        *(v74 + 8) = 256;
        *(v74 + 10) = *(v3 + 24);

        *(v74 + 11) = 2048;
        *(v74 + 13) = v72;
        _os_log_impl(&dword_1B0389000, v70, v71, "[%.*hhx] Trying to promote connection generation %ld, but there’s no connection.", v74, 0x15u);
        v75 = v74;
        v22 = v73;
        MEMORY[0x1B272C230](v75, -1, -1);
      }

      else
      {
      }

      v78 = v95;
      *v26 = v95;
      v97(v26, v96, v22);
      v79 = v78;
      LOBYTE(v78) = sub_1B0E44488();
      v94(v26, v22);
      if (v78)
      {
        goto LABEL_34;
      }

      __break(1u);
    }

    goto LABEL_31;
  }

  sub_1B0C3E124(v41, v16);
  v93 = v16;
  v48 = v87;
  sub_1B0C25AD4(v16, v87);
  v49 = v88;
  v50 = v89;
  if ((*(v88 + 48))(v48, 1, v89) == 1)
  {
    sub_1B0C3E194(v48);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v51 = sub_1B0E43988();
    v52 = sub_1B0E45908();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = a1;
      v54 = v22;
      v55 = swift_slowAlloc();
      *v55 = 68158208;
      *(v55 + 4) = 2;
      *(v55 + 8) = 256;
      *(v55 + 10) = *(v3 + 24);

      *(v55 + 11) = 2048;
      *(v55 + 13) = v53;
      _os_log_impl(&dword_1B0389000, v51, v52, "[%.*hhx] Cancelling connection generation %ld", v55, 0x15u);
      v56 = v55;
      v22 = v54;
      MEMORY[0x1B272C230](v56, -1, -1);
    }

    else
    {
    }

    sub_1B0C3E194(v93);
  }

  else
  {
    v84 = a1;
    v91 = v21;
    (*(v49 + 32))(v43, v48, v50);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v57 = v86;
    v87 = *(v49 + 16);
    (v87)(v86, v43, v50);
    v58 = v43;
    v59 = v49;
    v60 = sub_1B0E43988();
    LODWORD(v90) = sub_1B0E45908();
    if (os_log_type_enabled(v60, v90))
    {
      v61 = swift_slowAlloc();
      v92 = v22;
      v62 = v61;
      v83[0] = swift_slowAlloc();
      v83[1] = v29;
      v100[0] = v83[0];
      *v62 = 68158466;
      *(v62 + 4) = 2;
      *(v62 + 8) = 256;
      *(v62 + 10) = *(v3 + 24);

      *(v62 + 11) = 2048;
      v63 = v85;
      *(v62 + 13) = v84;
      *(v62 + 21) = 2082;
      (v87)(v63, v57, v50);
      v64 = sub_1B0E44B88();
      v66 = v65;
      v88 = *(v59 + 8);
      (v88)(v57, v50);
      v67 = sub_1B0399D64(v64, v66, v100);

      *(v62 + 23) = v67;
      _os_log_impl(&dword_1B0389000, v60, v90, "[%.*hhx] Cancelling connection generation %ld: %{public}s", v62, 0x1Fu);
      v68 = v83[0];
      __swift_destroy_boxed_opaque_existential_0(v83[0]);
      MEMORY[0x1B272C230](v68, -1, -1);
      v69 = v62;
      v22 = v92;
      MEMORY[0x1B272C230](v69, -1, -1);

      (v88)(v99, v50);
    }

    else
    {

      v77 = *(v59 + 8);
      v77(v57, v50);
      v77(v58, v50);
    }

    sub_1B0C3E194(v93);
    v21 = v91;
  }

LABEL_33:
  v80 = v95;
  *v26 = v95;
  v97(v26, v96, v22);
  v81 = v80;
  LOBYTE(v80) = sub_1B0E44488();
  result = (v94)(v26, v22);
  if (v80)
  {
LABEL_34:
    sub_1B044E4C4();
    sub_1B044E8FC();
    return sub_1B038C7C4(v21, _s5StateO6ActionOMa);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C3E124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C3E194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0C3E204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_1B0C3E280(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v8 = a6 == 1 && a1 == a4 && a2 == a5;
    v10 = a6 == 2 && a1 == a4;
    if (a3 == 1)
    {
      return v8;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    return !a6 && a1 == a4;
  }
}

uint64_t sub_1B0C3E2EC(uint64_t a1)
{
  sub_1B0C263C8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B0C3E354@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v344 = a2;
  v369 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v343 = *(v369 - 8);
  MEMORY[0x1EEE9AC00](v369);
  v328 = &v321 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v323 = &v321 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v327 = &v321 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v329 = &v321 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v359 = &v321 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v333 = &v321 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v363 = &v321 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v336 = &v321 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v370 = &v321 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v334 = &v321 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v335 = &v321 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v371 = &v321 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v375 = (&v321 - v27);
  v345 = type metadata accessor for ConnectionStatus.Error(0);
  v372 = *(v345 - 8);
  MEMORY[0x1EEE9AC00](v345);
  v337 = &v321 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v374 = (&v321 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v339 = &v321 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v340 = &v321 - v34;
  v35 = sub_1B0E441D8();
  v364 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v322 = &v321 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v324 = &v321 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v332 = &v321 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v338 = &v321 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v354 = &v321 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v325 = &v321 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v326 = &v321 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v360 = &v321 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v349 = &v321 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v351 = &v321 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v350 = &v321 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v362 = &v321 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v356 = &v321 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v357 = &v321 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v387 = &v321 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v365 = &v321 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v383 = &v321 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v321 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v321 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v368 = &v321 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v381 = &v321 - v78;
  v396 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v396);
  v352 = &v321 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v353 = &v321 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v377 = &v321 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v380 = &v321 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v384 = (&v321 - v87);
  MEMORY[0x1EEE9AC00](v88);
  v373 = &v321 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v321 - v91;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v321 - v94;
  v395 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  MEMORY[0x1EEE9AC00](v395);
  v331 = &v321 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v97);
  v330 = &v321 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v348 = &v321 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v347 = &v321 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v382 = &v321 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v358 = &v321 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v385 = &v321 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v361 = &v321 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v321 - v112;
  MEMORY[0x1EEE9AC00](v114);
  v386 = (&v321 - v115);
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v321 - v117;
  MEMORY[0x1EEE9AC00](v119);
  *&v379 = &v321 - v120;
  v123.n128_f64[0] = MEMORY[0x1EEE9AC00](v121);
  v376 = &v321 - v124;
  v355 = a1;
  v394 = *(a1 + 16);
  if (!v394)
  {
    return (*(v372 + 56))(v344, 1, 1, v345, v123);
  }

  v125 = v95;
  v126 = v394;
  v393 = (v364 + 32);
  v392 = (v364 + 88);
  v391 = *MEMORY[0x1E6977D68];
  v389 = (v364 + 16);
  v388 = (v364 + 96);
  v390 = (v364 + 8);
  v127 = (*(v122 + 80) + 32) & ~*(v122 + 80);
  v128 = *(v122 + 72);
  v346 = v394 - 1;
  v341 = v127;
  v321 = v127 + v128 * (v394 - 1);
  v129 = v355 + v321;
  v378 = v128;
  v366 = -v128;
  v342 = v394;
  v367 = v125;
  while (1)
  {
    v130 = v376;
    sub_1B0C41D78(v129, v376, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B0C41DE0(v130 + *(v395 + 20), v125, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      break;
    }

    v131 = v381;
    (*v393)(v381, v125, v35);
    v132 = (*v392)(v131, v35);
    if (v132 != v391 || (v133 = v368, (*v389)(v368, v381, v35), (*v388)(v133, v35), v125 = v367, v134 = *v133 - 52, v134 > 0x2C) || ((1 << v134) & 0x100000000107) == 0)
    {
      (*v390)(v381, v35);
      goto LABEL_11;
    }

    --v126;
    (*v390)(v381, v35);
    v129 += v366;
    if (!v126)
    {
      return (*(v372 + 56))(v344, 1, 1, v345, v123);
    }
  }

  sub_1B0439010(v125, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_11:
  v368 = (v343 + 56);
  v376 = v355 + v341;
  v136 = -v378;
  v137 = MEMORY[0x1E69E7CC0];
  v138 = v342;
  do
  {
    v381 = v137;
    --v138;
    v139 = v376 + v378 * v138;
    while (1)
    {
      if (v138 >= v394)
      {
        __break(1u);
LABEL_34:
        v137 = v381;
        goto LABEL_35;
      }

      sub_1B0C41D78(v139, v118, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0C41D78(&v118[*(v395 + 20)], v92, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      (*v393)(v74, v92, v35);
      v140 = (*v392)(v74, v35);
      if (v140 != v391 || ((*v389)(v71, v74, v35), (*v388)(v71, v35), v141 = *v71 - 52, v141 > 0x2C) || ((1 << v141) & 0x100000000107) == 0)
      {
        (*v390)(v74, v35);
        goto LABEL_24;
      }

      (*v390)(v74, v35);
      sub_1B0439010(v118, type metadata accessor for CommandConnection.RecentErrors.Error);
      --v138;
      v139 += v136;
      if (v138 == -1)
      {
        goto LABEL_34;
      }
    }

    sub_1B0439010(v92, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_24:
    v142 = v379;
    sub_1B0C41DE0(v118, v379, type metadata accessor for CommandConnection.RecentErrors.Error);
    v143 = v373;
    sub_1B0C41D78(v142 + *(v395 + 20), v373, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v144 = *(v143 + 8);
      v145 = v143;
      v146 = v375;
      if (v144)
      {
        *v375 = *v145;
        v146[1] = v144;
        v147 = v369;
        swift_storeEnumTagMultiPayload();
        v148 = 0;
      }

      else
      {
        v148 = 1;
        v147 = v369;
      }

      (*v368)(v146, v148, 1, v147);
      v149 = v146;
      v150 = v371;
      sub_1B03B5C80(v149, v371, &qword_1EB6E39C0, &qword_1B0EA35E0);
      v151 = sub_1B0E43108();
      v152 = v370;
      (*(*(v151 - 8) + 56))(v370, 1, 1, v151);
      ConnectionStatus.Error.init(kind:details:backedOffUntil:)(2, v150, v152, v374);
      sub_1B0398EFC(v375, &qword_1EB6E39C0, &qword_1B0EA35E0);
      sub_1B0439010(v379, type metadata accessor for CommandConnection.RecentErrors.Error);
      v153 = v381;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v153 = sub_1B0C49CD0(0, *(v153 + 2) + 1, 1, v153);
      }

      v155 = *(v153 + 2);
      v154 = *(v153 + 3);
      v156 = v153;
      if (v155 >= v154 >> 1)
      {
        v156 = sub_1B0C49CD0((v154 > 1), v155 + 1, 1, v153);
      }

      *(v156 + 2) = v155 + 1;
      v137 = v156;
      sub_1B0C41DE0(v374, &v156[((*(v372 + 80) + 32) & ~*(v372 + 80)) + *(v372 + 72) * v155], type metadata accessor for ConnectionStatus.Error);
    }

    else
    {
      sub_1B0439010(v142, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0439010(v143, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      v137 = v381;
    }
  }

  while (v138);
LABEL_35:
  if (*(v137 + 2))
  {
    v157 = v372;
    v158 = v340;
    sub_1B0C41D78(&v137[(*(v372 + 80) + 32) & ~*(v372 + 80)], v340, type metadata accessor for ConnectionStatus.Error);
    v159 = 0;
    v160 = v345;
  }

  else
  {
    v159 = 1;
    v160 = v345;
    v158 = v340;
    v157 = v372;
  }

  v161 = v339;

  v162 = *(v157 + 56);
  v162(v158, v159, 1, v160);
  sub_1B03B5C80(v158, v161, &qword_1EB6E35A0, &qword_1B0E99850);
  if ((*(v157 + 48))(v161, 1, v160) != 1)
  {
    sub_1B0398EFC(v158, &qword_1EB6E35A0, &qword_1B0E99850);
    v180 = v337;
    sub_1B0C41DE0(v161, v337, type metadata accessor for ConnectionStatus.Error);
    v181 = v180;
    v182 = v344;
    sub_1B0C41DE0(v181, v344, type metadata accessor for ConnectionStatus.Error);
    return (v162)(v182, 0, 1, v160);
  }

  v374 = v162;
  v375 = (v157 + 56);
  sub_1B0398EFC(v161, &qword_1EB6E35A0, &qword_1B0E99850);
  v376 = v355 + v341;
  v163 = -v378;
  v381 = MEMORY[0x1E69E7CC0];
  v164 = v342;
  v165 = v387;
  v166 = v384;
  while (2)
  {
    --v164;
    v167 = v376 + v378 * v164;
    v168 = v365;
    while (1)
    {
      if (v164 >= v394)
      {
        __break(1u);
LABEL_60:
        v177 = *(v381 + 2);
        if (!v177)
        {
LABEL_82:
          v200 = v381 + 32;
          v201 = v177 + 1;
          v202 = v364;
          while (--v201)
          {
            v203 = v200 + 24;
            v204 = *v200;
            v200 += 24;
            if ((~v204 & 0xF000000000000007) == 0)
            {
              v376 = v204;
              v205 = *(v203 - 1);
              v373 = *(v203 - 2);
              *&v379 = v205;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              goto LABEL_87;
            }
          }

          v376 = 0;
          v373 = 0;
          *&v379 = 0;
LABEL_87:
          v366 = 0;
          v367 = 0;
          v372 = 0;
          goto LABEL_90;
        }

        goto LABEL_61;
      }

      sub_1B0C41D78(v167, v113, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0C41D78(&v113[*(v395 + 20)], v166, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v169 = v166;
      v170 = v383;
      (*v393)(v383, v169, v35);
      v171 = (*v392)(v170, v35);
      if (v171 != v391 || ((*v389)(v168, v170, v35), (*v388)(v168, v35), v172 = *v168 - 52, v172 > 0x2C) || ((1 << v172) & 0x100000000107) == 0)
      {
        (*v390)(v170, v35);
        v166 = v384;
        goto LABEL_50;
      }

      (*v390)(v170, v35);
      sub_1B0439010(v113, type metadata accessor for CommandConnection.RecentErrors.Error);
      v166 = v384;
LABEL_42:
      --v164;
      v167 += v163;
      if (v164 == -1)
      {
        goto LABEL_60;
      }
    }

    sub_1B0439010(v166, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_50:
    v173 = v386;
    sub_1B0C41DE0(v113, v386, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B0C4144C(v173, &v397);
    sub_1B0439010(v173, type metadata accessor for CommandConnection.RecentErrors.Error);
    v174 = v398;
    if (!v398)
    {
      v165 = v387;
      goto LABEL_42;
    }

    v379 = v397;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v381 = sub_1B0C49BB0(0, *(v381 + 2) + 1, 1, v381);
    }

    v176 = *(v381 + 2);
    v175 = *(v381 + 3);
    v177 = v176 + 1;
    if (v176 >= v175 >> 1)
    {
      v381 = sub_1B0C49BB0((v175 > 1), v176 + 1, 1, v381);
    }

    v178 = v381;
    *(v381 + 2) = v177;
    v179 = &v178[24 * v176];
    *(v179 + 2) = v379;
    *(v179 + 6) = v174;
    v165 = v387;
    if (v164)
    {
      continue;
    }

    break;
  }

LABEL_61:
  v183 = (v381 + 48);
  v184 = v177;
  while (2)
  {
    v187 = *(v183 - 2);
    if ((~v187 & 0xF000000000000007) == 0)
    {
      goto LABEL_69;
    }

    v188 = (v187 >> 59) & 0x1E | (v187 >> 2) & 1;
    if (v188 <= 16)
    {
      if (v188)
      {
        v185 = v188 == 9;
      }

      else
      {
        v185 = 1;
      }

      if (v185 || v188 == 13)
      {
        v193 = *(v183 - 1);
        v194 = *v183;
        goto LABEL_89;
      }

      goto LABEL_69;
    }

    v185 = v188 == 17;
    v189 = __ROR8__(v187 + 0x7FFFFFFFFFFFFFFCLL, 3);
    v190 = !v185 || v189 > 0x1E;
    v191 = (1 << v189) & 0x5FDFF9A7;
    if (v190 || v191 == 0)
    {
LABEL_69:
      v183 += 3;
      if (!--v184)
      {
        goto LABEL_82;
      }

      continue;
    }

    break;
  }

  v193 = *(v183 - 1);
  v194 = *v183;
  if (v187 == 0x80000000000000DCLL || v187 == 0x800000000000006CLL)
  {
    sub_1B04420D8(v187);
    swift_bridgeObjectRetain_n();
    sub_1B04420D8(v187);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B04420D8(v187);
    v195 = v371;
    sub_1B0C41550(v187, v193, v194, v371);
    v196 = v335;
    sub_1B03B5C80(v195, v335, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v197 = sub_1B0E43108();
    v198 = v370;
    (*(*(v197 - 8) + 56))(v370, 1, 1, v197);
    v199 = v344;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(2, v196, v198, v344);
    sub_1B0447F00(v187);

    sub_1B0447F00(v187);

    sub_1B0398EFC(v195, &qword_1EB6E39C0, &qword_1B0EA35E0);
    sub_1B0398EFC(v340, &qword_1EB6E35A0, &qword_1B0E99850);
    return (v374)(v199, 0, 1, v345);
  }

LABEL_89:
  sub_1B04420D8(v187);
  swift_bridgeObjectRetain_n();
  sub_1B04420D8(v187);
  v376 = v187;
  v366 = v187;
  v373 = v193;
  v367 = v193;
  *&v379 = v194;
  v372 = v194;
  v202 = v364;
LABEL_90:

  v386 = (v202 + 48);
  v383 = (v355 + v341);
  v206 = -v378;
  v384 = MEMORY[0x1E69E7CC0];
  v207 = v342;
  v208 = v357;
  while (2)
  {
    while (1)
    {
      --v207;
      v209 = &v383[v378 * v207];
      while (1)
      {
        if (v207 >= v394)
        {
          __break(1u);
          goto LABEL_111;
        }

        v210 = v385;
        sub_1B0C41D78(v209, v385, type metadata accessor for CommandConnection.RecentErrors.Error);
        v211 = v210 + *(v395 + 20);
        v212 = v380;
        sub_1B0C41D78(v211, v380, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        (*v393)(v165, v212, v35);
        v213 = (*v392)(v165, v35);
        if (v213 != v391 || ((*v389)(v208, v165, v35), (*v388)(v208, v35), v214 = *v208 - 52, v214 > 0x2C) || ((1 << v214) & 0x100000000107) == 0)
        {
          (*v390)(v165, v35);
          goto LABEL_102;
        }

        (*v390)(v165, v35);
        sub_1B0439010(v385, type metadata accessor for CommandConnection.RecentErrors.Error);
        --v207;
        v209 += v206;
        if (v207 == -1)
        {
          goto LABEL_108;
        }
      }

      sub_1B0439010(v212, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_102:
      v215 = v361;
      sub_1B0C41DE0(v385, v361, type metadata accessor for CommandConnection.RecentErrors.Error);
      v216 = v363;
      sub_1B0C41854(v215, v363);
      sub_1B0439010(v215, type metadata accessor for CommandConnection.RecentErrors.Error);
      if ((*v386)(v216, 1, v35) == 1)
      {
        break;
      }

      v217 = v216;
      v218 = *v393;
      v219 = v356;
      (*v393)(v356, v217, v35);
      v218(v362, v219, v35);
      v220 = v384;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v220 = sub_1B0C49B88(0, v220[2] + 1, 1, v220);
      }

      v222 = v220[2];
      v221 = v220[3];
      v384 = v220;
      v208 = v357;
      if (v222 >= v221 >> 1)
      {
        v384 = sub_1B0C49B88((v221 > 1), v222 + 1, 1, v384);
      }

      v223 = v384;
      v384[2] = v222 + 1;
      v218(&v223[((*(v364 + 80) + 32) & ~*(v364 + 80)) + *(v364 + 72) * v222], v362, v35);
      v165 = v387;
      if (!v207)
      {
        goto LABEL_108;
      }
    }

    sub_1B0398EFC(v216, &unk_1EB6E5A90, &unk_1B0EDC020);
    if (v207)
    {
      continue;
    }

    break;
  }

LABEL_108:
  if (v384[2])
  {
    v224 = v364;
    v225 = v336;
    (*(v364 + 16))(v336, v384 + ((*(v224 + 80) + 32) & ~*(v224 + 80)), v35);
    v226 = 0;
    goto LABEL_112;
  }

LABEL_111:
  v226 = 1;
  v225 = v336;
  v224 = v364;
LABEL_112:

  v383 = *(v224 + 56);
  v384 = (v224 + 56);
  (v383)(v225, v226, 1, v35);
  v385 = v355 + v341;
  v387 = MEMORY[0x1E69E7CC0];
  v227 = -v378;
  v228 = v351;
  v229 = v350;
  v230 = v342;
  while (2)
  {
    while (1)
    {
      v231 = v230 - 1;
      v232 = v385 + v378 * v231;
      while (1)
      {
        if (v231 >= v394)
        {
          __break(1u);
          goto LABEL_133;
        }

        v233 = v231;
        v234 = v382;
        sub_1B0C41D78(v232, v382, type metadata accessor for CommandConnection.RecentErrors.Error);
        v235 = v234 + *(v395 + 20);
        v236 = v377;
        sub_1B0C41D78(v235, v377, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        (*v393)(v229, v236, v35);
        v237 = (*v392)(v229, v35);
        if (v237 != v391 || ((*v389)(v228, v229, v35), (*v388)(v228, v35), v238 = *v228 - 52, v238 > 0x2C) || ((1 << v238) & 0x100000000107) == 0)
        {
          (*v390)(v229, v35);
          goto LABEL_124;
        }

        (*v390)(v229, v35);
        sub_1B0439010(v382, type metadata accessor for CommandConnection.RecentErrors.Error);
        v231 = v233 - 1;
        v232 += v227;
        if (!v233)
        {
          goto LABEL_130;
        }
      }

      sub_1B0439010(v236, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_124:
      v239 = v358;
      sub_1B0C41DE0(v382, v358, type metadata accessor for CommandConnection.RecentErrors.Error);
      v240 = v359;
      sub_1B0C41A0C(v239, v359);
      sub_1B0439010(v239, type metadata accessor for CommandConnection.RecentErrors.Error);
      if ((*v386)(v240, 1, v35) == 1)
      {
        break;
      }

      v241 = v240;
      v242 = *v393;
      v243 = v349;
      (*v393)(v349, v241, v35);
      v242(v360, v243, v35);
      v244 = v387;
      v230 = v233;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v244 = sub_1B0C49B88(0, *(v244 + 2) + 1, 1, v244);
      }

      v246 = *(v244 + 2);
      v245 = *(v244 + 3);
      v387 = v244;
      v229 = v350;
      if (v246 >= v245 >> 1)
      {
        v387 = sub_1B0C49B88((v245 > 1), v246 + 1, 1, v387);
      }

      v247 = v387;
      *(v387 + 2) = v246 + 1;
      v242(&v247[((*(v364 + 80) + 32) & ~*(v364 + 80)) + *(v364 + 72) * v246], v360, v35);
      v228 = v351;
      if (!v230)
      {
        goto LABEL_130;
      }
    }

    sub_1B0398EFC(v240, &unk_1EB6E5A90, &unk_1B0EDC020);
    v230 = v233;
    if (v233)
    {
      continue;
    }

    break;
  }

LABEL_130:
  if (*(v387 + 2))
  {
    v248 = v333;
    (*(v364 + 16))(v333, &v387[(*(v364 + 80) + 32) & ~*(v364 + 80)], v35);
    v249 = 0;
    v250 = v336;
    goto LABEL_134;
  }

LABEL_133:
  v249 = 1;
  v250 = v336;
  v248 = v333;
LABEL_134:
  v251 = v369;
  v252 = v348;
  v253 = v379;
  v254 = v386;

  (v383)(v248, v249, 1, v35);
  if (v253)
  {
    v255 = v376;
    sub_1B04420D8(v376);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C41550(v255, v373, v253, v334);
    goto LABEL_142;
  }

  v249 = v329;
  sub_1B03B5C80(v250, v329, &unk_1EB6E5A90, &unk_1B0EDC020);
  v256 = *v254;
  if ((*v254)(v249, 1, v35) == 1)
  {
    sub_1B0398EFC(v249, &unk_1EB6E5A90, &unk_1B0EDC020);
    v249 = v327;
    sub_1B03B5C80(v248, v327, &unk_1EB6E5A90, &unk_1B0EDC020);
    if (v256(v249, 1, v35) == 1)
    {
      sub_1B0398EFC(v249, &unk_1EB6E5A90, &unk_1B0EDC020);
      (*v368)(v334, 1, 1, v251);
      goto LABEL_142;
    }

    v257 = *v393;
    v258 = &v357;
  }

  else
  {
    v257 = *v393;
    v258 = &v358;
  }

  v259 = *(v258 - 32);
  v257(v259, v249, v35);
  v260 = v328;
  v257(v328, v259, v35);
  swift_storeEnumTagMultiPayload();
  v261 = v334;
  sub_1B0C41DE0(v260, v334, type metadata accessor for ConnectionStatus.Error.Details);
  (*v368)(v261, 0, 1, v251);
LABEL_142:
  v262 = v321;
  v263 = v355 + v321;
  v264 = -v378;
  v265 = v346;
  while (2)
  {
    if (v265 < v394)
    {
      sub_1B0C41D78(v263, v252, type metadata accessor for CommandConnection.RecentErrors.Error);
      v266 = v353;
      sub_1B0C41D78(v252 + *(v395 + 20), v353, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v267 = v266;
        v268 = v354;
        (*v393)(v354, v267, v35);
        v269 = (*v392)(v268, v35);
        if (v269 == v391 && (v270 = v338, (*v389)(v338, v354, v35), (*v388)(v270, v35), v271 = *v270, v268 = v354, v272 = v271 - 52, v272 <= 0x2C) && ((1 << v272) & 0x100000000107) != 0)
        {
          (*v390)(v354, v35);
          sub_1B0439010(v252, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          (*v390)(v268, v35);
LABEL_152:
          v273 = v252;
          v274 = v347;
          sub_1B0C41DE0(v273, v347, type metadata accessor for CommandConnection.RecentErrors.Error);
          v275 = sub_1B0C41BC4(v274);
          sub_1B0439010(v274, type metadata accessor for CommandConnection.RecentErrors.Error);
          v252 = v348;
          if (v275)
          {
            v276 = v334;
            v277 = v371;
            sub_1B03B5C80(v334, v371, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v278 = v335;
            sub_1B03B5C80(v277, v335, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v279 = sub_1B0E43108();
            v280 = v370;
            (*(*(v279 - 8) + 56))(v370, 1, 1, v279);
            v281 = v344;
            v282 = v344;
            v283 = 5;
LABEL_154:
            ConnectionStatus.Error.init(kind:details:backedOffUntil:)(v283, v278, v280, v282);
            sub_1B0B6DCF0(v376, v373, v379);
            sub_1B0B6DCF0(v366, v367, v372);
            sub_1B0398EFC(v277, &qword_1EB6E39C0, &qword_1B0EA35E0);
            sub_1B0398EFC(v276, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v284 = v248;
            goto LABEL_155;
          }
        }

        --v265;
        v263 += v264;
        v249 = v352;
        v262 = v346;
        if (v265 == -1)
        {
          goto LABEL_157;
        }

        continue;
      }

      sub_1B0439010(v266, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      goto LABEL_152;
    }

    break;
  }

  __break(1u);
LABEL_157:
  v285 = v355 + v321;
  v286 = -v378;
  v287 = v324;
  v288 = v331;
  while (2)
  {
    if (v262 < v394)
    {
      v289 = v262;
      sub_1B0C41D78(v285, v288, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0C41D78(v288 + *(v395 + 20), v249, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v291 = v249;
      v292 = v332;
      if (EnumCaseMultiPayload == 4)
      {
        (*v393)(v332, v291, v35);
        v293 = (*v392)(v292, v35);
        if (v293 == v391 && ((*v389)(v287, v292, v35), (*v388)(v287, v35), v294 = *v287 - 52, v294 <= 0x2C) && ((1 << v294) & 0x100000000107) != 0)
        {
          (*v390)(v292, v35);
          sub_1B0439010(v288, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          (*v390)(v292, v35);
LABEL_167:
          v295 = v288;
          v296 = v330;
          sub_1B0C41DE0(v295, v330, type metadata accessor for CommandConnection.RecentErrors.Error);
          v297 = sub_1B0C41C98(v296);
          sub_1B0439010(v296, type metadata accessor for CommandConnection.RecentErrors.Error);
          v288 = v331;
          if (v297)
          {
            v276 = v334;
            v277 = v371;
            sub_1B03B5C80(v334, v371, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v278 = v335;
            sub_1B03B5C80(v277, v335, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v298 = sub_1B0E43108();
            v280 = v370;
            (*(*(v298 - 8) + 56))(v370, 1, 1, v298);
            v281 = v344;
            v282 = v344;
            v283 = 3;
            goto LABEL_154;
          }
        }

        v262 = v289 - 1;
        v285 += v286;
        v249 = v352;
        if (!v289)
        {
          goto LABEL_170;
        }

        continue;
      }

      sub_1B0439010(v291, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      goto LABEL_167;
    }

    break;
  }

  __break(1u);
LABEL_170:
  if (v379)
  {
    v299 = v376;
    v300 = v373;
    v301 = v379;
    sub_1B0B6DCB0(v376, v373, v379);
    sub_1B04420D8(v299);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v302 = v371;
    sub_1B0C41550(v299, v300, v301, v371);
    v303 = v335;
    sub_1B03B5C80(v302, v335, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v304 = sub_1B0E43108();
    v305 = v370;
    (*(*(v304 - 8) + 56))(v370, 1, 1, v304);
    v281 = v344;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(1, v303, v305, v344);
    sub_1B0447F00(v299);

    sub_1B0B6DCF0(v299, v300, v301);
    sub_1B0B6DCF0(v366, v367, v372);
    sub_1B0398EFC(v302, &qword_1EB6E39C0, &qword_1B0EA35E0);
    goto LABEL_172;
  }

  v307 = *v386;
  if ((*v386)(v336, 1, v35) == 1)
  {
    v308 = v323;
    sub_1B03B5C80(v333, v323, &unk_1EB6E5A90, &unk_1B0EDC020);
    if (v307(v308, 1, v35) == 1)
    {
      sub_1B0398EFC(v323, &unk_1EB6E5A90, &unk_1B0EDC020);
      goto LABEL_176;
    }

    v314 = v322;
    (*v393)(v322, v323, v35);
    v315 = v328;
    (*v389)(v328, v314, v35);
    v316 = v369;
    swift_storeEnumTagMultiPayload();
    v317 = v371;
    sub_1B0C41DE0(v315, v371, type metadata accessor for ConnectionStatus.Error.Details);
    (*v368)(v317, 0, 1, v316);
    v318 = v335;
    sub_1B03B5C80(v317, v335, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v319 = sub_1B0E43108();
    v320 = v370;
    (*(*(v319 - 8) + 56))(v370, 1, 1, v319);
    v281 = v344;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(0, v318, v320, v344);
    sub_1B0B6DCF0(v366, v367, v372);
    sub_1B0398EFC(v317, &qword_1EB6E39C0, &qword_1B0EA35E0);
    (*v390)(v314, v35);
LABEL_172:
    v306 = v334;
  }

  else
  {
LABEL_176:
    v309 = v334;
    v310 = v371;
    sub_1B03B5C80(v334, v371, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v311 = v335;
    sub_1B03B5C80(v310, v335, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v312 = sub_1B0E43108();
    v313 = v370;
    (*(*(v312 - 8) + 56))(v370, 1, 1, v312);
    v281 = v344;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(4, v311, v313, v344);
    sub_1B0B6DCF0(v366, v367, v372);
    sub_1B0398EFC(v310, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v306 = v309;
  }

  sub_1B0398EFC(v306, &qword_1EB6E39C0, &qword_1B0EA35E0);
  v284 = v333;
LABEL_155:
  sub_1B0398EFC(v284, &unk_1EB6E5A90, &unk_1B0EDC020);
  sub_1B0398EFC(v340, &qword_1EB6E35A0, &qword_1B0E99850);
  v374(v281, 0, 1, v345);
  return sub_1B0398EFC(v336, &unk_1EB6E5A90, &unk_1B0EDC020);
}

uint64_t sub_1B0C4144C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_1B0C41D78(a1 + *(v7 + 20), v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v9 = *v6;
    v10 = *(v6 + 2);
  }

  else
  {
    result = sub_1B0439010(v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v10 = 0;
    v9 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_1B0C41550@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = sub_1B0E429A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a2;
  v31 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E42988();
  sub_1B07C7F5C();
  v15 = sub_1B0E45F08();
  v17 = v16;
  (*(v8 + 8))(v10, v7);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    v15 = 0;
    v17 = 0;
  }

  if ((~a1 & 0xF000000000000007) != 0)
  {
    v21 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v21 > 12)
    {
      if (v21 != 13)
      {
        if (v21 != 17)
        {
          goto LABEL_22;
        }

        v22 = __ROR8__(a1 + 0x7FFFFFFFFFFFFFFCLL, 3);
        if (v22 > 0x1E || ((1 << v22) & 0x5FDFF9A7) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else if (v21 && v21 != 9)
    {
LABEL_22:
      sub_1B0447F00(a1);
      goto LABEL_6;
    }

    v30 = a1;
    v23 = sub_1B0E44BA8();
    v20 = v24;

    *v14 = v23;
    if (v17)
    {
      v14[1] = v20;
      v19 = 3;
      v20 = v17;
      v14[2] = v15;
    }

    else
    {
      v19 = 1;
    }

    goto LABEL_20;
  }

LABEL_6:

  if (v17)
  {
    *v14 = v15;
    v19 = 1;
    v20 = v17;
LABEL_20:
    v26 = v29;
    v14[v19] = v20;
    swift_storeEnumTagMultiPayload();
    sub_1B0C41DE0(v14, v26, type metadata accessor for ConnectionStatus.Error.Details);
    v25 = 0;
    return (*(v12 + 56))(v26, v25, 1, v11);
  }

  v25 = 1;
  v26 = v29;
  return (*(v12 + 56))(v26, v25, 1, v11);
}

uint64_t sub_1B0C41854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_1B0C41D78(a1 + *(v7 + 20), v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v8 = sub_1B0E441D8();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    sub_1B0439010(v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v11 = sub_1B0E441D8();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_1B0C41A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_1B0C41D78(a1 + *(v7 + 20), v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v8 = sub_1B0E441D8();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    sub_1B0439010(v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v11 = sub_1B0E441D8();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_1B0C41BC4(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a1) = static CommandConnection.RecentErrors.Error.Kind.__derived_enum_equals(_:_:)(a1 + v5, v4);
  sub_1B0439010(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  return a1 & 1;
}

BOOL sub_1B0C41C98(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_1B0C41D78(a1 + *(v5 + 20), v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  v6 = swift_getEnumCaseMultiPayload() == 0;
  sub_1B0439010(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  return v6;
}

uint64_t sub_1B0C41D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C41DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for CredentialsState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CredentialsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1B0C41F18()
{
  v1 = 1685024615;
  v2 = 0x6E6920656279616DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x64696C61766E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0C41F94()
{
  v1 = 0xE400000000000000;
  v2 = 1685024615;
  v3 = 0xED000064696C6176;
  v4 = 0x6E6920656279616DLL;
  if (*v0 != 2)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*v0)
  {
    v2 = 0x64696C61766E69;
    v1 = 0xE700000000000000;
  }

  if (*v0 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*v0 <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1B2726E80](v5, v6);

  return 0;
}

unint64_t sub_1B0C42064()
{
  result = qword_1EB6E5AA8;
  if (!qword_1EB6E5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5AA8);
  }

  return result;
}

uint64_t sub_1B0C420B8()
{
  v1 = v0;
  v2 = sub_1B0E44238();
  v17 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B0E44288();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 16);
  v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer;
  v9 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  aBlock[4] = sub_1B0C425C4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_31;
  v11 = _Block_copy(aBlock);
  swift_retain_n();
  v12 = v8;
  sub_1B0E44258();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1B039B924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B039B9A4();
  sub_1B0E460A8();
  MEMORY[0x1B2727B00](0, v7, v4, v11);
  _Block_release(v11);

  (*(v17 + 8))(v4, v2);
  (*(v5 + 8))(v7, v16);

  v13 = OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_logger;
  v14 = sub_1B0E439A8();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);

  return v1;
}

uint64_t sub_1B0C423C0()
{
  sub_1B0C420B8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataTransferReportAccumulator(uint64_t a1)
{
  result = qword_1EB6DC240;
  if (!qword_1EB6DC240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0C4246C(uint64_t a1)
{
  result = sub_1B0E439A8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0C42538(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C42554(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

BOOL sub_1B0C42584(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    return (*(a2 + 16) & 1) != 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
}

void sub_1B0C425C4()
{
  if (*(v0 + 16))
  {
    RestartableTimer.stop()();
  }
}

uint64_t Engine.__allocating_init(configuration:windowOfInterestSizes:environment:workloop:sendAction:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, const char *a6, int a7, uint64_t (*a8)(uint64_t a1), __int128 a9, uint64_t a10)
{
  v24 = a7;
  v23 = a6;
  v22 = a9;
  v16 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for EngineTracingIDOwner();
  swift_allocObject();
  v19 = EngineTracingIDOwner.init()();
  sub_1B03903A8(a1, v18, type metadata accessor for Configuration);
  v20 = swift_allocObject();
  sub_1B0C42780(v19, v18, a2, a3, a4 & 1, a5 & 0x101FF, v23, v24, a8, v22, *(&v22 + 1), a10);
  sub_1B03C74B8(a1, type metadata accessor for Configuration);
  return v20;
}

uint64_t (**sub_1B0C42780(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, const char *a7, int a8, uint64_t (*a9)(uint64_t a1), uint64_t (*a10)(uint64_t a1), uint64_t a11, uint64_t a12))(uint64_t a1)
{
  v13 = v12;
  LODWORD(v182) = a8;
  v181 = a7;
  LODWORD(v179) = a6;
  v161 = a5;
  v163 = a4;
  v162 = a3;
  v164 = a11;
  v171 = a10;
  v178 = a9;
  v174 = sub_1B0E44208();
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v176 = (&v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v175 = (&v156 - v18);
  v177 = type metadata accessor for ConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v177);
  v172 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1B0E459C8();
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1B0E45C58();
  MEMORY[0x1EEE9AC00](v166);
  v167 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B0E44288();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v165 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for StateWithTasks(0);
  v183 = *(v24 - 8);
  v184 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v185 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v26);
  v157 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v156 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v156 - v32;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator) = 0;
  v34 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didStart;
  type metadata accessor for AtomicFlag.Storage(0);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v12 + v34) = v35;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates) = 0;
  v36 = MEMORY[0x1E69E7CC0];
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingUpdates) = MEMORY[0x1E69E7CC0];
  v37 = v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState;
  v38 = type metadata accessor for Activity(0);
  (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  *&v37[*(type metadata accessor for ExternalState(0) + 20)] = MEMORY[0x1E69E7CD0];
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer) = 0;
  v39 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v12 + v39) = v40;
  v41 = v33;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture) = v36;
  v42 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt;
  *(v13 + v42) = static MonotonicTime.now()();
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection) = 0;
  v43 = (v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry);
  *v43 = 0u;
  v43[1] = 0u;
  v44 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  *(v13 + v44) = sub_1B0C3C84C(v36);
  v45 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  *(v13 + v45) = sub_1B0C3C978(v36);
  v186 = a1;
  LOBYTE(v45) = *(a1 + 16);
  sub_1B0E43998();
  v33[*(v26 + 20)] = v45;
  sub_1B03903A8(v33, v30, type metadata accessor for Engine.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v46 = sub_1B0E43988();
  v47 = sub_1B0E45908();
  v48 = os_log_type_enabled(v46, v47);
  v180 = v41;
  v156 = v26;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = v26;
    v52 = v50;
    v193 = v50;
    *v49 = 68158210;
    *(v49 + 4) = 2;
    *(v49 + 8) = 256;
    v53 = v30[*(v51 + 20)];
    sub_1B03C74B8(v30, type metadata accessor for Engine.Logger);
    *(v49 + 10) = v53;
    *(v49 + 11) = 2082;
    LOWORD(aBlock) = v179 & 0x1FF;
    BYTE2(aBlock) = BYTE2(v179) & 1;
    *(&aBlock + 1) = v181;
    LOBYTE(v188) = v182;
    v189 = v178;
    v54 = sub_1B0E44BA8();
    v56 = sub_1B0399D64(v54, v55, &v193);
    v41 = v180;

    *(v49 + 13) = v56;
    _os_log_impl(&dword_1B0389000, v46, v47, "[%.*hhx] Created with environment %{public}s", v49, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x1B272C230](v52, -1, -1);
    MEMORY[0x1B272C230](v49, -1, -1);
  }

  else
  {
    sub_1B03C74B8(v30, type metadata accessor for Engine.Logger);
  }

  sub_1B03903A8(v41, v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, type metadata accessor for Engine.Logger);
  v57 = *a2;
  v58 = a2[1];
  v59 = (v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName);
  *v59 = *a2;
  v59[1] = v58;
  v60 = v57;
  v159 = v57;
  v160 = v58;
  v61 = v186;
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner) = v186;
  v62 = type metadata accessor for Configuration(0);
  v158 = a2 + v62[5];
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind) = *(v158 + *(v177 + 9));
  v63 = v62[7];
  v64 = *(a2 + v62[6]);
  v177 = a2;
  v65 = *(a2 + v63);
  v66 = *(v61 + 16);
  swift_bridgeObjectRetain_n();

  v155 = v60;
  v67 = v185;
  StateWithTasks.init(windowOfInterestSizes:environment:mailboxFilter:fetchedMessageMetadata:tracingID:logName:)(v162, v163, v161 & 1, v179 & 0x101FF, v181, v182, v178, v64, v185, v65, v66, v155, v58);
  (*(v183 + 16))(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state, v67, v184);
  v13[4] = v164;
  v13[5] = a12;
  v68 = sub_1B06FF124();
  v181 = "";
  v182 = v68;
  v179 = a12;

  sub_1B0E44278();
  *&aBlock = MEMORY[0x1E69E7CC0];
  v163 = sub_1B039E4B4(&qword_1EB6DA880, MEMORY[0x1E69E8120], MEMORY[0x1E69E8128]);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E19E0, &qword_1B0E9ABD0);
  v164 = sub_1B039E3F8(&qword_1EB6DAF00, &qword_1EB6E19E0, &qword_1B0E9ABD0, MEMORY[0x1E69E6328]);
  sub_1B0E460A8();
  v161 = *MEMORY[0x1E69E8098];
  v169 = *(v169 + 104);
  v69 = v168;
  v70 = v170;
  (v169)(v168);
  v178 = v171;
  v13[2] = sub_1B0E45C68();
  v181 = "com.apple.email.imap.engine";
  sub_1B0E44278();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1B0E460A8();
  v71 = v186;
  (v169)(v69, v161, v70);
  v72 = v13;
  v13[3] = sub_1B0E45C68();
  v73 = StateWithTasks.runningSyncRequests.getter();
  RunningSyncRequests.kinds.getter(&aBlock, v73);

  v74 = sub_1B038E498(aBlock, *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind));

  v75 = v172;
  sub_1B03903A8(v158, v172, type metadata accessor for ConnectionConfiguration);
  v76 = v72[2];
  type metadata accessor for ConnectionPool(0);
  v77 = swift_allocObject();
  v78 = v76;

  v79 = sub_1B0C48730(v159, v160, v74, v75, v78, v72, v77);
  *(v72 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections) = v79;

  v80 = v71;
  LOBYTE(v74) = *(v71 + 16);
  v81 = v72[2];
  type metadata accessor for BetterPathEvaluator();
  v82 = swift_allocObject();
  *(v82 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v82 + 48) = xmmword_1B0ECE570;
  *(v82 + 64) = 0;
  *(v82 + 80) = 0;
  *(v82 + 88) = 0;
  *(v82 + 72) = 0;
  *(v82 + 40) = &off_1F2721688;
  swift_unknownObjectWeakAssign();
  *(v82 + 16) = v81;
  *(v82 + 24) = v74;
  *(v82 + 104) = v79;
  *(v82 + 112) = 0x4000000000000000;
  *(v82 + 96) = sub_1B0C49810;
  *(v72 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator) = v82;
  v172 = v79;

  v83 = v81;

  v85 = *(v72 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName);
  v84 = *(v72 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v86 = sub_1B0E44AC8();
  v87 = sub_1B0E44AC8();
  v88 = PPSCreateTelemetryIdentifier();

  if (v88)
  {
    v89 = sub_1B0C496F8(8, v85, v84);
    v91 = v90;
    v93 = v92;
    v95 = v94;

    v96 = MEMORY[0x1B2726D00](v89, v91, v93, v95);
    v98 = v97;
  }

  else
  {

    v99 = v157;
    sub_1B03903A8(v180, v157, type metadata accessor for Engine.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v100 = sub_1B0E43988();
    v101 = sub_1B0E458E8();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 68157952;
      *(v102 + 4) = 2;
      *(v102 + 8) = 256;
      v103 = *(v99 + *(v156 + 20));
      sub_1B03C74B8(v99, type metadata accessor for Engine.Logger);
      *(v102 + 10) = v103;
      _os_log_impl(&dword_1B0389000, v100, v101, "[%.*hhx] Unable to create power telemetry id.", v102, 0xBu);
      MEMORY[0x1B272C230](v102, -1, -1);
    }

    else
    {
      sub_1B03C74B8(v99, type metadata accessor for Engine.Logger);
    }

    v88 = 0;
    v96 = 0;
    v98 = 0;
  }

  v104 = (v72 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry);
  swift_beginAccess();
  v105 = *v104;
  v106 = v104[1];
  v107 = v104[2];
  *v104 = v88;
  v104[1] = v96;
  v104[2] = v98;
  v104[3] = 0;
  sub_1B0C47D58(v105, v106, v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1B0EDC2C0;
  *&aBlock = 0x2D6574617453;
  *(&aBlock + 1) = 0xE600000000000000;
  v192 = *(v80 + 16);
  sub_1B0BA1E94();
  v109 = sub_1B0E44E98();
  v111 = v110;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  type metadata accessor for StateCapture();
  MEMORY[0x1B2726E80](v109, v111);

  v112 = aBlock;
  v113 = v72[2];
  v114 = swift_allocObject();
  swift_weakInit();

  *(v108 + 32) = StateCapture.__allocating_init(title:queue:capture:)(v112, *(&v112 + 1), v113, sub_1B0C49860, v114);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1B0E46298();

  strcpy(&aBlock, "LocalSelected-");
  HIBYTE(aBlock) = -18;
  v192 = *(v80 + 16);
  v115 = sub_1B0E44E98();
  v117 = v116;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  MEMORY[0x1B2726E80](v115, v117);

  v118 = aBlock;
  v119 = v72[2];
  v120 = swift_allocObject();
  swift_weakInit();
  *(v108 + 40) = StateCapture.__allocating_init(title:queue:capture:)(v118, *(&v118 + 1), v119, sub_1B0C49868, v120);
  *&aBlock = 0x2D6C61636F4CLL;
  *(&aBlock + 1) = 0xE600000000000000;
  v192 = *(v80 + 16);
  v121 = sub_1B0E44E98();
  v123 = v122;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  MEMORY[0x1B2726E80](v121, v123);

  v124 = aBlock;
  v125 = v72[2];
  v126 = swift_allocObject();
  swift_weakInit();
  *(v108 + 48) = StateCapture.__allocating_init(title:queue:capture:)(v124, *(&v124 + 1), v125, sub_1B0C49870, v126);
  *&aBlock = 0x2D65746F6D6552;
  *(&aBlock + 1) = 0xE700000000000000;
  v192 = *(v80 + 16);
  v127 = sub_1B0E44E98();
  v129 = v128;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  MEMORY[0x1B2726E80](v127, v129);

  v130 = aBlock;
  v131 = v72[2];
  v132 = swift_allocObject();
  swift_weakInit();
  *(v108 + 56) = StateCapture.__allocating_init(title:queue:capture:)(v130, *(&v130 + 1), v131, sub_1B0C49878, v132);
  *(v72 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture) = v108;

  v133 = v72[2];
  v134 = v175;
  *v175 = 500;
  v135 = *MEMORY[0x1E69E7F38];
  v136 = v173[13];
  v137 = v174;
  (v136)(v134, v135, v174);
  v138 = v176;
  *v176 = 250;
  (v136)(v138, v135, v137);
  v139 = swift_allocObject();
  swift_weakInit();
  v190 = sub_1B0C49880;
  v191 = v139;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v182 = &v188;
  v188 = sub_1B038C908;
  v189 = &block_descriptor_52;
  v140 = _Block_copy(&aBlock);
  v181 = type metadata accessor for RestartableTimer();
  swift_allocObject();
  v141 = v133;

  v142 = RestartableTimer.init(queue:repeating:leeway:closure:)(v141, v134, v138, v140);

  *(v72 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer) = v142;

  v171 = v72[2];
  *v134 = 53;
  v143 = *MEMORY[0x1E69E7F48];
  v173 = v136;
  (v136)(v134, v143, v137);
  *v138 = 2;
  (v136)(v138, v143, v137);
  v144 = swift_allocObject();
  swift_weakInit();
  v190 = sub_1B0C498B0;
  v191 = v144;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v188 = sub_1B038C908;
  v189 = &block_descriptor_56;
  v145 = _Block_copy(&aBlock);
  swift_allocObject();
  v146 = v171;

  v147 = RestartableTimer.init(queue:repeating:leeway:closure:)(v146, v134, v138, v145);

  *(v72 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer) = v147;

  v148 = v72[2];
  *v134 = 300;
  v149 = v173;
  (v173)(v134, v143, v137);
  *v138 = 10;
  v149(v138, v143, v137);
  v150 = swift_allocObject();
  swift_weakInit();
  v151 = v148;

  v190 = sub_1B0C498E0;
  v191 = v150;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v188 = sub_1B038C908;
  v189 = &block_descriptor_60;
  v152 = _Block_copy(&aBlock);
  swift_allocObject();

  v153 = RestartableTimer.init(queue:repeating:leeway:closure:)(v151, v134, v138, v152);

  sub_1B03C74B8(v177, type metadata accessor for Configuration);
  (*(v183 + 8))(v185, v184);
  sub_1B03C74B8(v180, type metadata accessor for Engine.Logger);

  *(v72 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer) = v153;

  return v72;
}

uint64_t Engine.Logger.init(engineID:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1B0E43998();
  result = type metadata accessor for Engine.Logger(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1B0C43EAC@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for StateWithTasks(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B0E44468();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF0, &qword_1B0EDC3D8);
    *(a2 + 32) = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    v14 = *(v12 + 16);
    *v10 = v14;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
    v15 = v14;
    LOBYTE(v14) = sub_1B0E44488();
    result = (*(v8 + 8))(v10, v7);
    if (v14)
    {
      v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v4 + 16))(v6, v12 + v16, v3);
      v17 = StateWithTasks.stateCaptureValue(logName:)(*(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName), *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName + 8), boxed_opaque_existential_1);
      (*(v4 + 8))(v6, v3, v17);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B0C44134@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for StateWithTasks(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E44468();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AE0, &qword_1B0EDC3C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v27 - v15);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v28 = a2;
    v19 = *(Strong + 16);
    *v10 = v19;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
    v20 = v19;
    LOBYTE(v19) = sub_1B0E44488();
    result = (*(v8 + 8))(v10, v7);
    if ((v19 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v22 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v4 + 16))(v6, v18 + v22, v3);
    StateWithTasks.localSelectedMailboxesCaptureValue()(v16);

    (*(v4 + 8))(v6, v3);
    a2 = v28;
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AE8, &qword_1B0EDC3D0);
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  }

  sub_1B0502100(v16, v13);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AE8, &qword_1B0EDC3D0);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v13, 1, v24) == 1)
  {
    sub_1B0502170(v16);
    result = sub_1B0502170(v13);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v24;
    *(a2 + 32) = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(v25 + 32))(boxed_opaque_existential_1, v13, v24);
    return sub_1B0502170(v16);
  }

  return result;
}

uint64_t sub_1B0C44500@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for StateWithTasks(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B0E44468();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + 16);
    *v10 = v13;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
    v14 = v13;
    LOBYTE(v13) = sub_1B0E44488();
    result = (*(v8 + 8))(v10, v7);
    if (v13)
    {
      v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v4 + 16))(v6, v12 + v15, v3);
      StateWithTasks.localDeselectedMailboxesCaptureValue()(a2);

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B0C44738@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for StateWithTasks(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B0E44468();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AD8, &qword_1B0EDC3C0);
    *(a2 + 32) = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    v14 = *(v12 + 16);
    *v10 = v14;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
    v15 = v14;
    LOBYTE(v14) = sub_1B0E44488();
    result = (*(v8 + 8))(v10, v7);
    if (v14)
    {
      v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v4 + 16))(v6, v12 + v16, v3);
      StateWithTasks.remoteMailboxesCaptureValue()(boxed_opaque_existential_1);

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B0C449B0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1B0C44A10(uint64_t a1)
{
  v1 = type metadata accessor for StateWithTasks(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + 16);
    *v8 = v11;
    (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
    v12 = v11;
    LOBYTE(v11) = sub_1B0E44488();
    result = (*(v6 + 8))(v8, v5);
    if (v11)
    {
      v13 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      v14 = *(v2 + 16);
      v14(v4, v10 + v13, v1);
      v15 = static MonotonicTime.now()();
      StateWithTasks.logLongRunningSyncRequests(now:)(v15);
      v16 = *(v2 + 8);
      v16(v4, v1);
      v14(v4, v10 + v13, v1);
      v17 = static MonotonicTime.now()();
      StateWithTasks.logLongRunningTasks(now:)(v17);

      return (v16)(v4, v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall Engine.start()()
{
  v1 = sub_1B0E44238();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E44288();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didStart);
  v10 = atomicFlag_testAndSet.unsafeMutableAddressor();
  if (((*v10)(v9 + 16) & 1) == 0)
  {
    v14 = *(v0 + 16);
    aBlock[4] = sub_1B0C44FFC;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B038C908;
    aBlock[3] = &block_descriptor_32;
    v11 = _Block_copy(aBlock);

    sub_1B0E44258();
    v15 = MEMORY[0x1E69E7CC0];
    sub_1B039E4B4(&qword_1EB6DEE50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
    sub_1B039E3F8(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0, MEMORY[0x1E69E6328]);
    sub_1B0E460A8();
    MEMORY[0x1B2727B00](0, v8, v4, v11);
    _Block_release(v11);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v13);
  }
}

uint64_t sub_1B0C44F34(uint64_t a1)
{
  (*(a1 + 32))(0xB000000000000000);
  result = sub_1B0C458C4(&unk_1F27210B8, &unk_1F27210D8);
  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
  {
    __break(1u);
    goto LABEL_8;
  }

  RestartableTimer.start()();

  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  RestartableTimer.start()();

  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  RestartableTimer.start()();
}

Swift::Void __swiftcall Engine.tearDown()()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown);
  v6 = atomicFlag_testAndSet.unsafeMutableAddressor();
  if (((*v6)(v5 + 16) & 1) == 0)
  {
    v7 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_1B03903A8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v4, type metadata accessor for Engine.Logger);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v8 = sub_1B0E43988();
    v9 = sub_1B0E439A8();
    (*(*(v9 - 8) + 8))(v4, v9);
    v10 = sub_1B0E45908();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 68157952;
      *(v11 + 4) = 2;
      *(v11 + 8) = 256;
      *(v11 + 10) = *(v7 + *(v2 + 20));

      _os_log_impl(&dword_1B0389000, v8, v10, "[%.*hhx] Tearing down.", v11, 0xBu);
      MEMORY[0x1B272C230](v11, -1, -1);
    }

    else
    {
    }

    v12 = *(v1 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1B0C47D50;
    *(v13 + 24) = v1;
    aBlock[4] = sub_1B04020B8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B0402058;
    aBlock[3] = &block_descriptor_3_2;
    v14 = _Block_copy(aBlock);

    dispatch_sync(v12, v14);
    _Block_release(v14);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }
  }
}

void sub_1B0C452CC(uint64_t result)
{
  if (!*(result + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
  {
    __break(1u);
    goto LABEL_6;
  }

  RestartableTimer.stop()();

  if (!*(result + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  RestartableTimer.stop()();

  if (*(result + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer))
  {

    RestartableTimer.stop()();

    sub_1B0C4536C();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1B0C4536C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture);
  if (v1 >> 62)
  {
    v2 = sub_1B0E46138();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2728410](i, v1);
    }

    else
    {
    }

    StateCapture.tearDown()();
  }

LABEL_10:
  v4 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
  {

    sub_1B0C4BE10();
  }

  *(v0 + v4) = 0;
}

uint64_t Engine.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E439A8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  (*(v6 + 16))(v9, v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v5, v7);
  sub_1B03903A8(v1 + v10, v4, type metadata accessor for Engine.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 68157952;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = v4[*(v2 + 20)];
    sub_1B03C74B8(v4, type metadata accessor for Engine.Logger);
    *(v13 + 10) = v14;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx] Deinit.", v13, 0xBu);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B03C74B8(v4, type metadata accessor for Engine.Logger);
  }

  (*(v6 + 8))(v9, v5);
  v15 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown);
  v16 = atomicFlag_testAndSet.unsafeMutableAddressor();
  result = (*v16)(v15 + 16);
  if (result)
  {

    sub_1B03C74B8(v1 + v10, type metadata accessor for Engine.Logger);

    v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    v19 = type metadata accessor for StateWithTasks(0);
    (*(*(v19 - 8) + 8))(v1 + v18, v19);

    sub_1B03C74B8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState, type metadata accessor for ExternalState);

    sub_1B0C47D58(*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry), *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry + 8), *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry + 16));

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Engine.__deallocating_deinit()
{
  Engine.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B0C458C4(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v3 = sub_1B0E44468();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  v9 = *MEMORY[0x1E69E8020];
  v10 = *(v4 + 104);
  v10(v7, v9, v3, v5);
  v11 = v8;
  v12 = sub_1B0E44488();
  v13 = *(v4 + 8);
  result = v13(v7, v3);
  if (v12)
  {
    *v7 = v11;
    (v10)(v7, v9, v3);
    v15 = sub_1B0E44488();
    result = v13(v7, v3);
    if (v15)
    {
      sub_1B038DED0(v16);
      return sub_1B0425738(v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C45A44(uint64_t a1, char a2)
{
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v2;
  v10 = *(v2 + 16);
  *v9 = v10;
  v11 = *MEMORY[0x1E69E8020];
  v12 = *(v6 + 104);
  v12(v9, v11, v5, v7);
  v24 = v10;
  v13 = sub_1B0E44488();
  v14 = *(v6 + 8);
  result = v14(v9, v5);
  if (v13)
  {
    v16 = swift_allocObject();
    v17 = a2;
    v18 = a1;
    *(v16 + 16) = a1;
    v19 = v17 & 1;
    *(v16 + 24) = v17 & 1;
    *v9 = v24;
    (v12)(v9, v11, v5);
    sub_1B0390664(v18, v19);
    v20 = sub_1B0E44488();
    result = v14(v9, v5);
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AB8, "<z\b");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0EC1E70;
      *(inited + 32) = v16 | 0x4000000000000000;

      sub_1B038DED0(inited);

      swift_setDeallocating();
      return swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C45C68()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1B0E44488();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_1B03903A8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v4, type metadata accessor for Engine.Logger);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v14 = sub_1B0E43988();
    v15 = sub_1B0E439A8();
    (*(*(v15 - 8) + 8))(v4, v15);
    v16 = sub_1B0E458E8();
    if (os_log_type_enabled(v14, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 68157952;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      *(v17 + 10) = *(v13 + *(v2 + 20));

      _os_log_impl(&dword_1B0389000, v14, v16, "[%.*hhx] Credentials are invalid.", v17, 0xBu);
      MEMORY[0x1B272C230](v17, -1, -1);
    }

    else
    {
    }

    return (*(v1 + 32))(0xB000000000000018);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0C45EFC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Engine.Logger(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v2 + 32))(0xB000000000000020, v6);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v2 + v11);
  *(v2 + v11) = 0x8000000000000000;
  sub_1B0C48308(sub_1B0C49794, v10, v9, isUniquelyReferenced_nonNull_native);
  *(v2 + v11) = v22;
  swift_endAccess();
  v13 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_1B03903A8(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v8, type metadata accessor for Engine.Logger);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v14 = sub_1B0E43988();
  v15 = sub_1B0E439A8();
  (*(*(v15 - 8) + 8))(v8, v15);
  v16 = sub_1B0E458D8();
  if (os_log_type_enabled(v14, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v17 = 68158210;
    *(v17 + 4) = 2;
    *(v17 + 8) = 256;
    *(v17 + 10) = *(v13 + *(v5 + 20));

    *(v17 + 11) = 2080;
    LODWORD(v22) = v9;
    sub_1B07467B8();
    v19 = sub_1B0E44E98();
    v21 = sub_1B0399D64(v19, v20, v23);

    *(v17 + 13) = v21;
    _os_log_impl(&dword_1B0389000, v14, v16, "[%.*hhx] Did send action %s: request push registration info.", v17, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x1B272C230](v18, -1, -1);
    MEMORY[0x1B272C230](v17, -1, -1);
  }

  else
  {
  }
}

void sub_1B0C461D0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 32);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = v12(v13 | 0x1000000000000002);

  v15 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_1B03903A8(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v11, type metadata accessor for Engine.Logger);
  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v16 = sub_1B0E43988();
  v17 = sub_1B0E439A8();
  (*(*(v17 - 8) + 8))(v11, v17);
  v18 = sub_1B0E45908();
  if (os_log_type_enabled(v16, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 68158466;
    *(v19 + 4) = 2;
    *(v19 + 8) = 256;
    v21 = *(v15 + *(v9 + 20));

    *(v19 + 10) = v21;

    *(v19 + 11) = 2080;
    v26[1] = v14;
    sub_1B07467B8();
    v22 = sub_1B0E44E98();
    v24 = sub_1B0399D64(v22, v23, &v27);

    *(v19 + 13) = v24;
    *(v19 + 21) = 2048;
    v25 = *(a4 + 16);

    *(v19 + 23) = v25;

    _os_log_impl(&dword_1B0389000, v16, v18, "[%.*hhx] Did send action %s: did complete push registration (%ld mailbox(es)).", v19, 0x1Fu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x1B272C230](v20, -1, -1);
    MEMORY[0x1B272C230](v19, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1B0C464D4(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
    v4 = (result + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 >> 62 == 1)
      {
        v7 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (*((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
        {
          v8 = (v7 >> 59) & 0x1E | (v7 >> 2) & 1;
          if (v8 == 1)
          {
            v14 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v15 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

            sub_1B0390664(v7, 1);
            sub_1B0C466C8(v15, v14);
          }

          else
          {
            if (v8 != 7)
            {
              v9 = v8 == 22 && v7 == 0xB000000000000000;
              if (!v9 || !*(v3 + v16))
              {
                goto LABEL_4;
              }

              swift_beginAccess();
              v10 = StateWithTasks.appState.getter();
              swift_endAccess();

              sub_1B0390664(0xB000000000000000, 1);

              sub_1B0C4C6B4(v10 & 1);

              v11 = 0xB000000000000000;
              goto LABEL_19;
            }

            v12 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
            v18[0] = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v18[1] = v12;
            v13 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
            v18[2] = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
            v18[3] = v13;

            sub_1B0390664(v7, 1);
            sub_1B0A1C2CC(v18, v17);
            sub_1B0C46AB0(v18);

            sub_1B0A1C37C();
          }

          v11 = v7;
LABEL_19:
          result = sub_1B0390678(v11, 1);
          goto LABEL_4;
        }

        sub_1B03A22C4(v7);
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1B0C466C8(uint64_t a1, int a2)
{
  v3 = v2;
  v30 = a1;
  v5 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28[-v9];
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  swift_beginAccess();
  v12 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = a2;
  v13 = sub_1B0C46DB0(v12, a2);
  v15 = v14;
  v17 = v16;
  v18 = ~v16;

  v19 = v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  if (v18)
  {
    sub_1B03903A8(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v10, type metadata accessor for Engine.Logger);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v20 = sub_1B0E43988();
    v21 = sub_1B0E439A8();
    (*(*(v21 - 8) + 8))(v10, v21);
    v22 = sub_1B0E458D8();
    if (os_log_type_enabled(v20, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 68158208;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      *(v23 + 10) = *(v19 + *(v5 + 20));

      *(v23 + 11) = 1024;
      *(v23 + 13) = v29;
      _os_log_impl(&dword_1B0389000, v20, v22, "[%.*hhx] Did receive credentials %u.", v23, 0x11u);
      MEMORY[0x1B272C230](v23, -1, -1);
    }

    else
    {
    }

    sub_1B0C46F3C(v31, v13, v15, v17 & 1, *(v3 + v11));
    v32(v30);

    swift_beginAccess();
    sub_1B0C48650(v31, v13, v15);
    swift_endAccess();
    sub_1B0C497F8(v13, v15, v17);
  }

  else
  {
    sub_1B03903A8(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v7, type metadata accessor for Engine.Logger);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E439A8();
    (*(*(v25 - 8) + 8))(v7, v25);
    v26 = sub_1B0E458E8();
    if (os_log_type_enabled(v24, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 68158208;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      *(v27 + 10) = *(v19 + *(v5 + 20));

      *(v27 + 11) = 1024;
      *(v27 + 13) = v29;
      _os_log_impl(&dword_1B0389000, v24, v26, "[%.*hhx] Did receive credentials %u for, but the request is unknown.", v27, 0x11u);
      MEMORY[0x1B272C230](v27, -1, -1);

      return;
    }
  }
}

void sub_1B0C46AB0(__int128 *a1)
{
  v2 = v1;
  v4 = a1[1];
  v26 = *a1;
  v27 = v4;
  v5 = a1[3];
  v28 = a1[2];
  v29 = v5;
  v6 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_1B03903A8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v8, type metadata accessor for Engine.Logger);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0A1C2CC(a1, v25);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E439A8();
  (*(*(v11 - 8) + 8))(v8, v11);
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 68158208;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    *(v13 + 10) = *(v9 + *(v6 + 20));

    *(v13 + 11) = 2048;
    *(v13 + 13) = *(*(a1 + 7) + 16);
    sub_1B0A1C37C();
    _os_log_impl(&dword_1B0389000, v10, v12, "[%.*hhx] Did receive push registration info (%ld mailbox(es)).", v13, 0x15u);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B0A1C37C();
  }

  v14 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  swift_beginAccess();
  v15 = *(v2 + v14);
  *(v2 + v14) = MEMORY[0x1E69E7CC8];
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = 0;
  while (v18)
  {
    v21 = v20;
LABEL_12:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(v15 + 56) + ((v21 << 10) | (16 * v22)));
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    v25[3] = v29;

    v23(v25);
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      return;
    }

    v18 = *(v15 + 64 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
}

int64_t sub_1B0C46DB0(uint64_t a1, int a2)
{
  v4 = a1 + 64;
  result = sub_1B0E460B8();
  v6 = 1 << *(a1 + 32);
  if (result == v6)
  {
    return 0;
  }

  while ((result & 0x8000000000000000) == 0 && result < v6)
  {
    v7 = result >> 6;
    v8 = *(v4 + 8 * (result >> 6));
    if (((v8 >> result) & 1) == 0)
    {
      goto LABEL_19;
    }

    v9 = *(a1 + 36);
    if (*(*(a1 + 56) + 24 * result) == a2)
    {
      return result;
    }

    v10 = v8 & (-2 << (result & 0x3F));
    if (v10)
    {
      v6 = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v11 = v7 << 6;
      v12 = v7 + 1;
      v13 = (a1 + 72 + 8 * v7);
      while (v12 < (v6 + 63) >> 6)
      {
        v15 = *v13++;
        v14 = v15;
        v11 += 64;
        ++v12;
        if (v15)
        {
          sub_1B0425168(result, v9, 0);
          v6 = __clz(__rbit64(v14)) + v11;
          goto LABEL_5;
        }
      }

      sub_1B0425168(result, v9, 0);
    }

LABEL_5:
    result = v6;
    v6 = 1 << *(a1 + 32);
    if (result == v6)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1B0C46F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 4 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v9 = *(v6 + 8);
    v8 = *(v6 + 16);
    *result = v7;
    *(result + 8) = v9;
    *(result + 16) = v8;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B0C46FC8()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    swift_beginAccess();
    v10 = StateWithTasks.runningSyncRequests.getter();
    swift_endAccess();
    RunningSyncRequests.kinds.getter(v13, v10);

    v11 = sub_1B038E498(v13[0], *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind));

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0C47144(uint64_t a1)
{
  v2 = v1;
  v4 = *tracingLog.unsafeMutableAddressor();
  v5 = sub_1B0E45D38();

  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = (a1 + 32);
      do
      {
        v8 = *v7++;
        v9 = v8;

        sub_1B0C473D8(&v9, v2);

        --v6;
      }

      while (v6);
    }
  }
}

void sub_1B0C471DC(unint64_t a1)
{
  v2 = v1;
  v4 = *tracingLog.unsafeMutableAddressor();
  v5 = sub_1B0E45D38();

  if ((v5 & 1) != 0 && ((a1 >> 58) & 0x3C | (a1 >> 1) & 3) == 1)
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 56);
    v10 = (v7 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v12 = 0;
    if (v9)
    {
      while (1)
      {
        v13 = v12;
LABEL_11:
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v15 = *(*(v6 + 48) + ((v13 << 8) | (4 * v14)));
        sub_1B0C478A8(&v15, v2, v11);
        if (!v9)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = *(v6 + 56 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }
  }
}

void sub_1B0C47344(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  sub_1B0C48468(0x100000000uLL, v5, v6, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
}

void sub_1B0C473D8(unint64_t *a1, uint64_t a2)
{
  v3 = sub_1B0E43868();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E43828();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v15 = *a1;
  if (*a1 >> 62 == 1)
  {
    v16 = v15 & 0x3FFFFFFFFFFFFFFFLL;
    v17 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v16 + 24) == 1 && ((v17 >> 59) & 0x1E | (v17 >> 2) & 1) == 2)
    {
      v53 = v12;
      v19 = v17 & 0xFFFFFFFFFFFFFFBLL;
      v20 = v4;
      v21 = *(v19 + 24);
      v48 = *(v19 + 16);
      v49 = v21;
      v22 = *(v19 + 32);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0E43838();
      v23 = tracingSignposter.unsafeMutableAddressor();
      v52 = v20;
      (*(v20 + 16))(v6, v23, v3);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v24 = sub_1B0E43858();
      v50 = sub_1B0E45AD8();

      if (sub_1B0E45D38())
      {
        v45 = v22;
        v47 = v24;
        v25 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v54 = v46;
        *v25 = 67109890;
        *(v25 + 4) = v48;
        v51 = v25;
        *(v25 + 8) = 2082;
        v26 = sub_1B0E462C8();
        v28 = sub_1B0399D64(v26, v27, &v54);

        v29 = v51;
        *(v51 + 10) = v28;
        *(v29 + 18) = 2048;
        if (v45)
        {
          v30 = *(v45 + 16);
        }

        else
        {
          v30 = 0;
        }

        v31 = v51;
        *(v51 + 20) = v30;
        v32 = v31;

        *(v32 + 28) = 2082;
        swift_beginAccess();
        LODWORD(v32) = StateWithTasks.environment.getter();
        v34 = v33;
        v49 = v35;
        swift_endAccess();
        v36 = Environment.description.getter(v32 & 0x101FF, v34, v49);
        v38 = sub_1B0399D64(v36, v37, &v54);

        v39 = v51;
        *(v51 + 30) = v38;
        v40 = sub_1B0E43818();
        v41 = v47;
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v47, v50, v40, "SyncRequest", "Begin syncRequestId: #%u, kind: %{public}s, mailboxes: %ld, %{public}s", v39, 0x26u);
        v42 = v46;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v42, -1, -1);
        MEMORY[0x1B272C230](v39, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v43 = v53;
      (*(v8 + 16))(v10, v14, v53);
      sub_1B0E43968();
      swift_allocObject();
      sub_1B0E43958();

      (*(v52 + 8))(v6, v3);
      (*(v8 + 8))(v14, v43);
    }
  }
}

uint64_t sub_1B0C478A8(int *a1, uint64_t a2, double a3)
{
  v38 = a2;
  v4 = sub_1B0E43878();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E43868();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E43828();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v33 = *a1;
  sub_1B0E43838();
  v20 = tracingSignposter.unsafeMutableAddressor();
  v37 = v7;
  v38 = v6;
  (*(v7 + 16))(v9, v20, v6);
  (*(v11 + 16))(v16, v19, v10);
  sub_1B0E43968();
  swift_allocObject();
  sub_1B0E43958();
  v21 = sub_1B0E43858();
  sub_1B0E43948();
  v22 = sub_1B0E45AC8();
  if (sub_1B0E45D38())
  {
    v32 = v22;

    v23 = v36;
    sub_1B0E43978();

    v24 = v34;
    v25 = v23;
    v26 = v35;
    if ((*(v34 + 88))(v25, v35) == *MEMORY[0x1E69E93E8])
    {
      v27 = 0;
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v24 + 8))(v36, v26);
      v36 = "End syncRequestId: #%u";
      v27 = 1;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    *(v28 + 1) = v27;
    *(v28 + 2) = 1024;
    *(v28 + 4) = v33;
    v29 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v21, v32, v29, "SyncRequest", v36, v28, 8u);
    MEMORY[0x1B272C230](v28, -1, -1);
  }

  v30 = *(v11 + 8);
  v30(v13, v10);
  (*(v37 + 8))(v9, v38);
  return (v30)(v19, v10);
}

uint64_t Engine.Logger.l.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E439A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1B0C47D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B0C47DC4(uint64_t a1)
{
  result = type metadata accessor for Engine.Logger(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StateWithTasks(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ExternalState(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1B0C47F88(unint64_t a1)
{
  v3 = (*(v1 + 32))();
  sub_1B0C471DC(a1);
  return v3;
}

uint64_t sub_1B0C47FD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + 4 * v3);
        v12 = (v10 + 4 * v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B0C48168(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 4 * v3);
        v13 = (v11 + 4 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = v14 + 24 * v3;
        v16 = (v14 + 24 * v6);
        if (v3 != v6 || v15 >= v16 + 24)
        {
          v9 = *v16;
          *(v15 + 16) = *(v16 + 2);
          *v15 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B0C48308(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B03A2724();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B0C4A71C(v16, a4 & 1);
      result = sub_1B03A2724();
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1B0C4B21C();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 4 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void sub_1B0C48468(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1B03B8A9C(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1B0B8D4FC();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1B0B2F9F0(v20, a6 & 1);
    v15 = sub_1B03B8A9C(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      sub_1B0E46BA8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    *v26 = a1;
    *(v26 + 4) = BYTE4(a1) & 1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3 & 1;
  }

  else
  {
    sub_1B0C485EC(v15, a4, a5, a1 | ((HIDWORD(a1) & 1) << 32), a2, a3 & 1, v25);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }
}

unint64_t sub_1B0C485EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 4) = BYTE4(a4) & 1;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_1B0C48650(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_1B0C4B380();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(*(v9 + 48) + 4 * a2);
    v11 = *(v9 + 56) + 24 * a2;
    *a1 = *v11;
    *(a1 + 8) = *(v11 + 8);
    sub_1B0C48168(a2, v9);
    *v4 = v9;
    return v10;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B0C48730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (**a6)(uint64_t a1), uint64_t a7)
{
  v105 = a6;
  v106 = a1;
  v110 = a2;
  v111 = a3;
  v102 = sub_1B0E44238();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1B0E44288();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1B0E44208();
  v112 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v109 = (&v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v107 = (&v93 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v93 - v16;
  v18 = sub_1B0E439A8();
  v19 = *(v18 - 8);
  v113 = v18;
  v114 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v93 - v23;
  v96 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v95 = *(v19 + 56);
  v95(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger, 1, 1, v22);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections) = MEMORY[0x1E69E7CC0];
  v26 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID) = 0;
  v27 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v28 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffLoggingRateLimit;
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v28 + 16) = 2000000000;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer) = 0;
  v29 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
  v30 = type metadata accessor for ConnectionStatus.Error(0);
  (*(*(v30 - 8) + 56))(a7 + v29, 1, 1, v30);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents) = 0;
  v31 = (a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancel);
  *v31 = sub_1B0C3CB30(v25);
  v31[1] = 0x4014000000000000;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID) = 1;
  v32 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  v33 = static MonotonicTime.now()();
  *v32 = 0;
  *(v32 + 8) = v33;
  v34 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastLogAllConnectionStates;
  *(a7 + v34) = static MonotonicTime.now()();
  v35 = a5;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue) = a5;
  v36 = (a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName);
  v38 = v110;
  v37 = v111;
  *v36 = v106;
  v36[1] = v38;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits) = v37;
  v103 = a4;
  sub_1B03903A8(a4, a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, type metadata accessor for ConnectionConfiguration);
  v39 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner;
  v40 = v105;
  v41 = *(v105 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner);
  v94 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID) = *(v41 + 16);
  *(v26 + 8) = &off_1F2721698;
  swift_unknownObjectWeakAssign();
  v42 = v35;

  sub_1B0E43998();
  v43 = v113;
  v44 = *(v114 + 16);
  v44(v17, v24, v113);
  (v95)(v17, 0, 1, v43);
  v45 = v96;
  swift_beginAccess();
  sub_1B0C4994C(v17, a7 + v45);
  swift_endAccess();
  type metadata accessor for Timer();
  swift_allocObject();
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) = Timer.init(queue:)(v42);
  LOBYTE(v17) = (*(v40 + v39))[16];
  v46 = v104;
  v96 = v24;
  v44(v104, v24, v43);
  v47 = swift_allocObject();
  *(v47 + 24) = &off_1F2721698;
  swift_unknownObjectWeakInit();
  v48 = v42;

  type metadata accessor for DataTransferReportAccumulator(0);
  v49 = swift_allocObject();
  v50 = v49 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state;
  *v50 = 0;
  *(v50 + 8) = 0;
  *(v50 + 16) = 1;
  *(v49 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer) = 0;
  *(v49 + 16) = v48;
  *(v49 + 24) = v17;
  v44((v49 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_logger), v46, v43);
  v51 = (v49 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler);
  *v51 = sub_1B041AAC0;
  v51[1] = v47;
  v52 = v107;
  *v107 = 1;
  v54 = v112 + 104;
  v53 = *(v112 + 104);
  LODWORD(v111) = *MEMORY[0x1E69E7F48];
  v53(v52);
  v55 = v109;
  *v109 = 500;
  LODWORD(v106) = *MEMORY[0x1E69E7F38];
  v112 = v54;
  v95 = v53;
  v53(v55);
  v56 = swift_allocObject();
  swift_weakInit();
  v120 = sub_1B041AAB8;
  v121 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_1B038C908;
  v119 = &block_descriptor_75;
  v57 = _Block_copy(&aBlock);
  v110 = type metadata accessor for RestartableTimer();
  swift_allocObject();
  v58 = v48;

  v59 = RestartableTimer.init(queue:repeating:leeway:closure:)(v58, v52, v55, v57);
  v60 = *(v114 + 8);
  v61 = v104;
  v62 = v105;
  v114 += 8;
  v104 = v60;
  (v60)(v61, v113);

  *(v49 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer) = v59;

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator) = v49;
  aBlock = 0;
  v117 = 0xE000000000000000;
  sub_1B0E46298();

  aBlock = 0x697463656E6E6F43;
  v117 = 0xEF2D6C6F6F506E6FLL;
  LOBYTE(v115) = (*(v62 + v94))[16];
  sub_1B0BA1E94();
  v63 = sub_1B0E44E98();
  v65 = v64;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  type metadata accessor for StateCapture();
  MEMORY[0x1B2726E80](v63, v65);

  v66 = aBlock;
  v67 = v117;
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = v58;

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture) = StateCapture.__allocating_init(title:queue:capture:)(v66, v67, v69, sub_1B0C499BC, v68);

  v71 = v107;
  v70 = v108;
  *v107 = 2;
  v72 = v95;
  (v95)(v71, v111, v70);
  v73 = v109;
  *v109 = 100;
  (v72)(v73, v106, v70);
  v74 = swift_allocObject();
  swift_weakInit();
  v120 = sub_1B038C228;
  v121 = v74;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v105 = &v118;
  v118 = sub_1B038C908;
  v119 = &block_descriptor_82;
  v75 = _Block_copy(&aBlock);
  swift_allocObject();
  v76 = v69;

  v77 = RestartableTimer.init(queue:repeating:leeway:closure:)(v76, v71, v73, v75);

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer) = v77;

  *v71 = 2;
  (v72)(v71, v111, v70);
  *v73 = 100;
  (v72)(v73, v106, v70);
  v78 = swift_allocObject();
  swift_weakInit();
  v120 = sub_1B0C499C4;
  v121 = v78;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_1B038C908;
  v119 = &block_descriptor_86;
  v79 = _Block_copy(&aBlock);
  swift_allocObject();
  v80 = v76;

  v81 = RestartableTimer.init(queue:repeating:leeway:closure:)(v80, v71, v73, v79);

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer) = v81;

  *v71 = 10;
  v82 = v111;
  (v72)(v71, v111, v70);
  *v73 = 1;
  (v72)(v73, v82, v70);
  v83 = swift_allocObject();
  swift_weakInit();
  v120 = sub_1B041A0E0;
  v121 = v83;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_1B038C908;
  v119 = &block_descriptor_90_0;
  v84 = _Block_copy(&aBlock);
  swift_allocObject();
  v85 = v80;

  v86 = RestartableTimer.init(queue:repeating:leeway:closure:)(v85, v71, v73, v84);

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer) = v86;

  v87 = swift_allocObject();
  swift_weakInit();

  v120 = sub_1B0C499CC;
  v121 = v87;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_1B038C908;
  v119 = &block_descriptor_94;
  v88 = _Block_copy(&aBlock);

  v89 = v97;
  sub_1B0E44258();
  v115 = MEMORY[0x1E69E7CC0];
  sub_1B039E4B4(&qword_1EB6DEE50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B039E3F8(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0, MEMORY[0x1E69E6328]);
  v90 = v100;
  v91 = v102;
  sub_1B0E460A8();
  MEMORY[0x1B2727B00](0, v89, v90, v88);
  _Block_release(v88);

  sub_1B03C74B8(v103, type metadata accessor for ConnectionConfiguration);
  (*(v101 + 8))(v90, v91);
  (*(v98 + 8))(v89, v99);
  (v104)(v96, v113);

  return a7;
}

uint64_t sub_1B0C496F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B0E44D28();

    return sub_1B0E44EE8();
  }

  return result;
}

uint64_t sub_1B0C49794(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return v2(v6);
}

uint64_t sub_1B0C497D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B0C497E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B0C497F8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B0425168(result, a2, a3 & 1);
  }

  return result;
}

void sub_1B0C49810(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_1B0C57EB4(a1, v2, ObjectType, a2);
}

uint64_t sub_1B0C498E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C4994C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B0C49A40(uint64_t a1)
{
  sub_1B0C49AC4(319);
  if (v1 <= 0x3F)
  {
    sub_1B0C49B1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0C49AC4(uint64_t a1)
{
  if (!qword_1EB6DC990)
  {
    type metadata accessor for Activity(255);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DC990);
    }
  }
}

void sub_1B0C49B1C(uint64_t a1)
{
  if (!qword_1EB6DADB8)
  {
    sub_1B0451F2C();
    v1 = sub_1B0E45588();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DADB8);
    }
  }
}

char *sub_1B0C49BB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B20, &qword_1B0EDC470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B0C49CF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B10, &qword_1B0EDC460);
  result = sub_1B0E46208();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1B0E46CB8();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B0C49FDC(uint64_t result, unint64_t a2, char a3)
{
  v32 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_1B0C49CF8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1B0C4A328();
      goto LABEL_47;
    }

    sub_1B0C4A468(v5 + 1);
  }

  v7 = 0x72657865646E69;
  v8 = *v3;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  result = sub_1B0E46CB8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v31 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = 0x6C69662D6B636162;
    v12 = 0x6369646F69726570;
    v13 = v8;
    do
    {
      v14 = *(*(v8 + 48) + a2);
      if (v14 <= 1)
      {
        if (*(*(v8 + 48) + a2))
        {
          v15 = v11;
        }

        else
        {
          v15 = v7;
        }

        if (*(*(v8 + 48) + a2))
        {
          v16 = 0xE90000000000006CLL;
        }

        else
        {
          v16 = 0xE700000000000000;
        }
      }

      else if (v14 == 2)
      {
        v16 = 0xE800000000000000;
        v15 = 0x6574616E6F646572;
      }

      else
      {
        if (v14 == 3)
        {
          v15 = v12;
        }

        else
        {
          v15 = 1752397168;
        }

        if (v14 == 3)
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = 0xE400000000000000;
        }
      }

      v17 = v12;
      if (v32 == 3)
      {
        v18 = v12;
      }

      else
      {
        v18 = 1752397168;
      }

      if (v32 == 3)
      {
        v19 = 0xE800000000000000;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      if (v32 == 2)
      {
        v18 = 0x6574616E6F646572;
        v19 = 0xE800000000000000;
      }

      v20 = v7;
      v21 = v11;
      if (!v32)
      {
        v11 = v7;
      }

      v22 = 0xE90000000000006CLL;
      if (!v32)
      {
        v22 = 0xE700000000000000;
      }

      v23 = v32 <= 1u ? v11 : v18;
      v24 = v32 <= 1u ? v22 : v19;
      if (v15 == v23 && v16 == v24)
      {
        goto LABEL_50;
      }

      v25 = sub_1B0E46A78();

      if (v25)
      {
        goto LABEL_51;
      }

      a2 = (a2 + 1) & v10;
      v7 = v20;
      v11 = v21;
      v12 = v17;
      v8 = v13;
    }

    while (((*(v31 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v32;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_50:

LABEL_51:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

void *sub_1B0C4A328()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B10, &qword_1B0EDC460);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B0C4A468(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B10, &qword_1B0EDC460);
  result = sub_1B0E46208();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1B0E46CB8();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0C4A71C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A78, &qword_1B0EDBF48);
  result = sub_1B0E46698();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B0C4A9AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A80, &unk_1B0EDBF50);
  v34 = v4;
  result = sub_1B0E46698();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 16);
      v35 = *(v22 + 8);
      if ((v34 & 1) == 0)
      {
      }

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v35;
      *(v16 + 16) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B0C4AC60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A70, &qword_1B0EDBF40);
  result = sub_1B0E46698();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1B0C4AEE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ConnectionStatus(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A68, &qword_1B0EDBF38);
  v40 = v4;
  result = sub_1B0E46698();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 16 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1B03C7308(v28, v41);
      }

      else
      {
        sub_1B0C4B908(v28, v41);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v26 | (v26 << 32));
      result = sub_1B0E46CB8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 16 * v17;
      *v18 = v25;
      *(v18 + 8) = v26;
      result = sub_1B03C7308(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void *sub_1B0C4B21C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A78, &qword_1B0EDBF48);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B0C4B380()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A80, &unk_1B0EDBF50);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v21 = *(v18 + 8);
        v20 = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v21;
        *(v22 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B0C4B4F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A70, &qword_1B0EDBF40);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1B0C4B640()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionStatus(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A68, &qword_1B0EDBF38);
  v4 = *v0;
  v5 = sub_1B0E46688();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 48) + 16 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1B0C4B908(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = *(v32 + 48) + v21;
        *v28 = v23;
        *(v28 + 8) = v24;
        sub_1B03C7308(v25, *(v27 + 56) + v26);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

void *sub_1B0C4B878(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1B03CDA0C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B0C4B908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (**static Engine.makeEngineAndPersistence<A>(configuration:windowOfInterestSizes:environment:makePersistence:)(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, const char *a6, int a7, uint64_t (*a8)(uint64_t a1), uint64_t (*a9)(void, uint64_t (*)(), uint64_t), uint64_t a10, uint64_t a11, uint64_t a12))(uint64_t a1)
{
  v37 = a2;
  v38 = a8;
  v43 = a7;
  v41 = a3;
  v42 = a6;
  v39 = a4;
  v40 = a5;
  v35 = a11;
  v36 = a12;
  v33 = a9;
  v34 = a10;
  v13 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v32 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1B0E45BE8();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1B0E459C8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0A5E6BC();
  v20 = *a1;
  v21 = a1[1];
  v44 = 0xD00000000000001BLL;
  v45 = 0x80000001B0F2D940;
  MEMORY[0x1B2726E80](v20, v21);
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8098], v16);
  v44 = MEMORY[0x1E69E7CC0];
  sub_1B0A5F820();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3B90, &unk_1B0EDC490);
  sub_1B0A5F8A0();
  sub_1B0E460A8();
  v22 = sub_1B0E45BF8();
  type metadata accessor for EngineBox();
  v23 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for EngineTracingIDOwner();
  swift_allocObject();

  v24 = EngineTracingIDOwner.init()();
  v25 = v33(*(v24 + 16), sub_1B0C4BD94, v23);
  v26 = swift_allocObject();
  v27 = v36;
  v26[2] = v35;
  v26[3] = v27;
  v26[4] = v25;
  v28 = v32;
  sub_1B06D9B1C(a1, v32);
  swift_allocObject();
  swift_unknownObjectRetain();
  v29 = v37;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = sub_1B0C42780(v24, v28, v29, v41, v39 & 1, v40 & 0x101FF, v42, v43, v38, v22, sub_1B0C4BDA0, v26);

  swift_weakAssign();

  return v30;
}

uint64_t sub_1B0C4BD24(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    Engine.persistenceDidSend(_:)(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_1B0C4BDD8()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1B0C4BE10()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown))
  {
    return result;
  }

  *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) = 1;
  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture))
  {
    __break(1u);
    goto LABEL_24;
  }

  StateCapture.tearDown()();

  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  RestartableTimer.stop()();

  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  RestartableTimer.stop()();

  v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v1 = *(v1 + v10);
  if (v1 >> 62)
  {
LABEL_22:
    v11 = sub_1B0E46138();
    goto LABEL_8;
  }

  v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v11)
  {
    v12 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1B2728410](v12, v1);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_17:
          __break(1u);
        }
      }

      else
      {
        if (v12 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v13 = *(v1 + 8 * v12 + 32);

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_17;
        }
      }

      (*(*v13 + 536))();

      ++v12;
    }

    while (v14 != v11);
  }
}

uint64_t sub_1B0C4C0B4(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_1B0E44468();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  v16 = sub_1B0E44488();
  v18 = *(v10 + 8);
  v17 = v10 + 8;
  v18(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v4 + v19, v8, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v20 = sub_1B0E439A8();
  v3 = *(v20 - 8);
  result = (*(v3 + 48))(v8, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_retain_n();

    v16 = sub_1B0E43988();
    v2 = sub_1B0E458C8();
    v22 = &qword_1EB6DC000;
    if (!os_log_type_enabled(v16, v2))
    {

      goto LABEL_8;
    }

    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38[0] = v37;
    *v17 = 68158722;
    *(v17 + 4) = 2;
    *(v17 + 8) = 256;
    *(v17 + 10) = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v17 + 11) = 2048;
    v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v24 = *(v4 + v23);
    if (v24 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B0E46138())
    {

      *(v17 + 13) = i;

      *(v17 + 21) = 2082;
      v26 = ConnectionID.debugDescription.getter(*(a1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v28 = sub_1B0399D64(v26, v27, v38);

      *(v17 + 23) = v28;
      *(v17 + 31) = 2048;
      v30 = (*(*a1 + 432))(v29);

      *(v17 + 33) = v30;

      _os_log_impl(&dword_1B0389000, v16, v2, "[%.*hhx] Received authenticated connection with better path. Cancelling all (%ld) existing connection and switching to the new connection %{public}s [C%llu].", v17, 0x29u);
      v31 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1B272C230](v31, -1, -1);
      MEMORY[0x1B272C230](v17, -1, -1);

      v22 = &qword_1EB6DC000;
LABEL_8:
      v32 = *(v3 + 8);
      v3 += 8;
      v32(v8, v20);
      v17 = v22[101];
      swift_beginAccess();
      v8 = *(v4 + v17);
      if (v8 >> 62)
      {
LABEL_22:
        v20 = sub_1B0E46138();
        if (!v20)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_17;
        }
      }

      if (v20 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_25:
      ;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    for (j = 0; j != v20; ++j)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1B2728410](j, v8);
      }

      else
      {
        v34 = *(v8 + 8 * j + 32);
      }

      (*(*v34 + 536))();
    }

LABEL_17:
    swift_beginAccess();

    MEMORY[0x1B27272B0](v35);
    if (*((*(v4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B0E45218();
    }

    sub_1B0E45298();
    swift_endAccess();
    result = (*(*a1 + 624))(v4, &off_1F2721AA0);
    if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
    {

      RestartableTimer.start()();
    }
  }

  __break(1u);
  return result;
}

void sub_1B0C4C6B4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45[-v14];
  v16 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) <= 1u)
  {
    if (!*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState))
    {
      return;
    }

    v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v2 + v17, v15, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v18 = sub_1B0E439A8();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {
      goto LABEL_29;
    }

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v20 = sub_1B0E43988();
    v21 = sub_1B0E45908();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 68157952;
      *(v22 + 4) = 2;
      *(v22 + 8) = 256;
      *(v22 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&dword_1B0389000, v20, v21, "[%.*hhx] Credentials were invalid. Credentials did change.", v22, 0xBu);
      MEMORY[0x1B272C230](v22, -1, -1);
    }

    else
    {
    }

    v34 = *(v19 + 8);
    v35 = v15;
    goto LABEL_19;
  }

  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 2)
  {
    v29 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v2 + v29, v9, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v18 = sub_1B0E439A8();
    v30 = *(v18 - 8);
    if ((*(v30 + 48))(v9, 1, v18) == 1)
    {
LABEL_31:
      __break(1u);
      return;
    }

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v31 = sub_1B0E43988();
    v32 = sub_1B0E45908();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 68157952;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      *(v33 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&dword_1B0389000, v31, v32, "[%.*hhx] Credentials state was unknown. Credentials did change.", v33, 0xBu);
      MEMORY[0x1B272C230](v33, -1, -1);
    }

    else
    {
    }

    v34 = *(v30 + 8);
    v35 = v9;
LABEL_19:
    v34(v35, v18);
    goto LABEL_20;
  }

  v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v2 + v23, v12, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v24 = sub_1B0E439A8();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v26 = sub_1B0E43988();
  v27 = sub_1B0E45908();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 68157952;
    *(v28 + 4) = 2;
    *(v28 + 8) = 256;
    *(v28 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&dword_1B0389000, v26, v27, "[%.*hhx] Credentials were maybe invalid. Credentials did change.", v28, 0xBu);
    MEMORY[0x1B272C230](v28, -1, -1);
  }

  else
  {
  }

  (*(v25 + 8))(v12, v24);
LABEL_20:
  v36 = static MonotonicTime.now()();
  v37 = *v16;
  *v16 = 0;
  *(v16 + 8) = v36;
  sub_1B0C4D17C(v37);
  if ((a1 & 1) == 0)
  {
    v44 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
    swift_beginAccess();
    *v44 = 0;
    *(v44 + 8) = 0;
    *(v44 + 16) = 1;
    sub_1B0C50C9C();
    sub_1B041F1A8();
    return;
  }

  v38 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v2 + v38, v6, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v39 = sub_1B0E439A8();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v6, 1, v39) == 1)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v41 = sub_1B0E43988();
  v42 = sub_1B0E45908();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 68157952;
    *(v43 + 4) = 2;
    *(v43 + 8) = 256;
    *(v43 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&dword_1B0389000, v41, v42, "[%.*hhx] Not resetting backoff timer.", v43, 0xBu);
    MEMORY[0x1B272C230](v43, -1, -1);
  }

  else
  {
  }

  (*(v40 + 8))(v6, v39);
}

unint64_t sub_1B0C4CDE8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1B0E46138();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2728410](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1B0C4CF04(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits) = a1;

  v3 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  result = swift_beginAccess();
  v5 = *(v2 + v3);
  if (v5 >> 62)
  {
    result = sub_1B0E46138();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B2728410](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      ++v7;
      v9 = *(*v8 + 336);
      v10 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v9(v10);
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t sub_1B0C4D04C(_BOOL8 a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = MonotonicTime.rateLimit(now:seconds:)(a1, 1.0);
  result = swift_endAccess();
  if (v4)
  {
    v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    result = swift_beginAccess();
    v7 = *(v2 + v6);
    if (v7 >> 62)
    {
      result = sub_1B0E46138();
      v8 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        return result;
      }
    }

    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B2728410](i, v7);
        }

        else
        {
        }

        CommandConnection.logState()();
      }
    }
  }

  return result;
}

void sub_1B0C4D17C(unsigned __int8 a1)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  v7 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
  if (v7 == v2)
  {
    return;
  }

  if (v7 == 1)
  {
    if (v2 != 2)
    {
      goto LABEL_10;
    }

    v7 = 1;
LABEL_8:
    if (v7 == v2)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v7 != 2)
  {
    goto LABEL_8;
  }

  if (v2 == 1)
  {
    v7 = 2;
LABEL_13:
    v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v1 + v8, v5, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v9 = sub_1B0E439A8();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      __break(1u);
    }

    else
    {
      v11 = v1;

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v12 = sub_1B0E43988();
      v13 = sub_1B0E45908();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v23 = v15;
        *v14 = 68158210;
        *(v14 + 4) = 2;
        *(v14 + 8) = 256;
        *(v14 + 10) = *(v11 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        v16 = 0xE400000000000000;
        *(v14 + 11) = 2082;
        v17 = 1685024615;
        v18 = 0xED000064696C6176;
        v19 = 0x6E6920656279616DLL;
        if (v7 != 2)
        {
          v19 = 0x6E776F6E6B6E75;
          v18 = 0xE700000000000000;
        }

        if (v7)
        {
          v17 = 0x64696C61766E69;
          v16 = 0xE700000000000000;
        }

        if (v7 <= 1)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        if (v7 <= 1)
        {
          v21 = v16;
        }

        else
        {
          v21 = v18;
        }

        v22 = sub_1B0399D64(v20, v21, &v23);

        *(v14 + 13) = v22;
        _os_log_impl(&dword_1B0389000, v12, v13, "[%.*hhx] Credentials state -> %{public}s", v14, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x1B272C230](v15, -1, -1);
        MEMORY[0x1B272C230](v14, -1, -1);
      }

      else
      {
      }

      (*(v10 + 8))(v5, v9);
    }

    return;
  }

LABEL_10:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B0C45C68();
    swift_unknownObjectRelease();
  }

  v7 = *(v1 + v6);
  if (v7 != v2)
  {
    goto LABEL_13;
  }
}

unint64_t sub_1B0C4D4DC@<X0>(unint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v4 = result;
  if (result)
  {
    sub_1B0C4D594(v8);

    v4 = sub_1B0C5A240();
    result = swift_allocObject();
    v5 = v8[3];
    *(result + 48) = v8[2];
    *(result + 64) = v5;
    *(result + 80) = v9;
    v6 = v8[1];
    *(result + 16) = v8[0];
    *(result + 32) = v6;
    v7 = &type metadata for ConnectionPool.CapturedValue;
  }

  else
  {
    v7 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = result;
  a2[3] = v7;
  a2[4] = v4;
  return result;
}

uint64_t sub_1B0C4D594@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v57 - v10;
  v11 = sub_1B0E44468();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v17 = v16;
  v18 = sub_1B0E44488();
  v20 = *(v12 + 8);
  v19 = v12 + 8;
  v20(v15, v11);
  if (v18)
  {
    v65 = v5;
    v66 = v4;
    v19 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName);
    v15 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName + 8);
    *&v75[0] = 0;
    *(&v75[0] + 1) = 0xE000000000000000;
    v74 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_1B0BA1E94();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = sub_1B0E44E98();
    v23 = v22;
    if (sub_1B0E44CF8() <= 1)
    {
      MEMORY[0x1B2726E80](48, 0xE100000000000000);
    }

    MEMORY[0x1B2726E80](v21, v23);

    v4 = *(&v75[0] + 1);
    v16 = *&v75[0];
    v24 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v67 = v2;
    v5 = *(v2 + v24);
    if (!(v5 >> 62))
    {
      v25 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1B0E46138();
LABEL_6:
  v26 = MEMORY[0x1E69E7CC0];
  v62 = v19;
  v63 = v4;
  v64 = v16;
  if (v25)
  {
    v59 = v15;
    v73[0] = MEMORY[0x1E69E7CC0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = sub_1B0C57C18(0, v25 & ~(v25 >> 63), 0);
    if (v25 < 0)
    {
      __break(1u);
      return result;
    }

    v58 = a1;
    v28 = 0;
    v26 = v73[0];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B2728410](v28, v5);
      }

      else
      {
      }

      CommandConnection.capturedValue.getter(v75);

      v73[0] = v26;
      v30 = *(v26 + 16);
      v29 = *(v26 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1B0C57C18((v29 > 1), v30 + 1, 1);
        v26 = v73[0];
      }

      ++v28;
      *(v26 + 16) = v30 + 1;
      v31 = v26 + 216 * v30;
      v32 = v75[1];
      *(v31 + 32) = v75[0];
      *(v31 + 48) = v32;
      v33 = v75[2];
      v34 = v75[3];
      v35 = v75[5];
      *(v31 + 96) = v75[4];
      *(v31 + 112) = v35;
      *(v31 + 64) = v33;
      *(v31 + 80) = v34;
      v36 = v75[6];
      v37 = v75[7];
      v38 = v75[9];
      *(v31 + 160) = v75[8];
      *(v31 + 176) = v38;
      *(v31 + 128) = v36;
      *(v31 + 144) = v37;
      v39 = v75[10];
      v40 = v75[11];
      v41 = v75[12];
      *(v31 + 240) = v76;
      *(v31 + 208) = v40;
      *(v31 + 224) = v41;
      *(v31 + 192) = v39;
    }

    while (v25 != v28);

    a1 = v58;
    v15 = v59;
  }

  v42 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
  v43 = v67;
  swift_beginAccess();
  v44 = v68;
  sub_1B03B5C80(v43 + v42, v68, &qword_1EB6E35A0, &qword_1B0E99850);
  v45 = 0;
  v46 = 0;
  if ((*(v65 + 48))(v44, 1, v66) != 1)
  {
    v47 = v44;
    v48 = v61;
    sub_1B038CBB4(v47, v61, type metadata accessor for ConnectionStatus.Error);
    sub_1B03C623C(v48, v60, type metadata accessor for ConnectionStatus.Error);
    v45 = sub_1B0E44B88();
    v46 = v49;
    sub_1B038C824(v48, type metadata accessor for ConnectionStatus.Error);
  }

  v71 = 0;
  v72 = 0xE000000000000000;
  v50 = *(v43 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
  v69 = 0;
  v70 = 0xE000000000000000;
  if (v50 > 1)
  {
    v51 = v62;
    if (v50 == 2)
    {
      v52 = 0xED000064696C6176;
      v53 = 0x6E6920656279616DLL;
    }

    else
    {
      v52 = 0xE700000000000000;
      v53 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v51 = v62;
    if (v50)
    {
      v52 = 0xE700000000000000;
      v53 = 0x64696C61766E69;
    }

    else
    {
      v52 = 0xE400000000000000;
      v53 = 1685024615;
    }
  }

  MEMORY[0x1B2726E80](v53, v52);

  MEMORY[0x1B2726E80](v69, v70);

  v54 = v71;
  v55 = v72;
  *a1 = v51;
  a1[1] = v15;
  v56 = v63;
  a1[2] = v64;
  a1[3] = v56;
  a1[4] = v26;
  a1[5] = v45;
  a1[6] = v46;
  a1[7] = v54;
  a1[8] = v55;
  return result;
}

uint64_t sub_1B0C4DB9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v1 + v5, v4, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v6 = sub_1B0E439A8();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v9 = sub_1B0E43988();
    v10 = sub_1B0E45908();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 68157952;
      *(v11 + 4) = 2;
      *(v11 + 8) = 256;
      *(v11 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&dword_1B0389000, v9, v10, "[%.*hhx] Timer fired: checking for idle connections to cancel.", v11, 0xBu);
      MEMORY[0x1B272C230](v11, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v4, v6);
    v12 = static MonotonicTime.now()();
    return sub_1B0C51334(v12);
  }

  return result;
}

uint64_t sub_1B0C4DDA4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

    if (v2)
    {
      RestartableTimer.start()();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0C4DE20()
{
  if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) == 1)
  {
    sub_1B0398EFC(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger, &qword_1EB6E5AF8, &unk_1B0EDC3E0);

    sub_1B038C824(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, type metadata accessor for ConnectionConfiguration);

    sub_1B0BE2890(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine);

    sub_1B0398EFC(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError, &qword_1EB6E35A0, &qword_1B0E99850);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C4DF88()
{
  sub_1B0C4DE20();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConnectionPool(uint64_t a1)
{
  result = qword_1EB6DC288;
  if (!qword_1EB6DC288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B0C4E034(uint64_t a1)
{
  sub_1B0C4E230(319, &qword_1EB6DC1A8, MEMORY[0x1E69E9420]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ConnectionConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_1B0C4E230(319, &qword_1EB6DCAC8, type metadata accessor for ConnectionStatus.Error);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B0C4E230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B0E45D88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B0C4E284(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v10 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  v22 = sub_1B0C4F800(a1, a2, a3, v6);
  if (v23)
  {
    return 0;
  }

  v24 = v22;
  v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v26 = *(v5 + v25);
  v72 = v25;
  if ((v26 & 0xC000000000000001) == 0)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v26 + 8 * v24 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_30;
  }

  v27 = MEMORY[0x1B2728410](v24);
LABEL_6:
  swift_endAccess();
  v73 = (*(*v27 + 560))(a1);
  v29 = v28;

  if (v29)
  {
    v30 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v5 + v30, v18, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v31 = sub_1B0E439A8();
    v21 = *(v31 - 8);
    result = (*(v21 + 6))(v18, 1, v31);
    if (result == 1)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B03C623C(a1, v12, type metadata accessor for ClientCommand);

    a2 = sub_1B0E43988();
    v33 = sub_1B0E458C8();

    if (!os_log_type_enabled(a2, v33))
    {

      sub_1B038C824(v12, type metadata accessor for ClientCommand);
      goto LABEL_22;
    }

    LODWORD(v71) = v33;
    v73 = v31;
    v15 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v74 = v70;
    *v15 = 68158466;
    *(v15 + 1) = 2;
    *(v15 + 4) = 256;
    v34 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    v15[10] = v34;

    *(v15 + 11) = 2082;
    v35 = ClientCommand.logIdentifier.getter();
    v37 = v36;
    sub_1B038C824(v12, type metadata accessor for ClientCommand);
    v38 = sub_1B0399D64(v35, v37, &v74);

    *(v15 + 13) = v38;
    *(v15 + 21) = 2082;
    v39 = v72;
    result = swift_beginAccess();
    v40 = *(v5 + v39);
    if ((v40 & 0xC000000000000001) == 0)
    {
      if ((v24 & 0x8000000000000000) == 0)
      {
        if (v24 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v41 = *(v40 + 8 * v24 + 32);

LABEL_13:
          swift_endAccess();
          v42 = *(v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

          v43 = ConnectionID.debugDescription.getter(v42);
          v45 = sub_1B0399D64(v43, v44, &v74);

          *(v15 + 23) = v45;
          _os_log_impl(&dword_1B0389000, a2, v71, "[%.*hhx] Failed to send command '%{public}s' on connection %{public}s", v15, 0x1Fu);
          v46 = v70;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v46, -1, -1);
          MEMORY[0x1B272C230](v15, -1, -1);

          v31 = v73;
LABEL_22:
          (*(v21 + 1))(v18, v31);
          return 0;
        }

        goto LABEL_34;
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_30:
    v41 = MEMORY[0x1B2728410](v24);
    goto LABEL_13;
  }

  v47 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v5 + v47, v21, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v48 = sub_1B0E439A8();
  v49 = *(v48 - 8);
  result = (*(v49 + 48))(v21, 1, v48);
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03C623C(a1, v15, type metadata accessor for ClientCommand);

  v50 = sub_1B0E43988();
  v51 = sub_1B0E458C8();

  if (os_log_type_enabled(v50, v51))
  {
    LODWORD(v70) = v51;
    v71 = v48;
    v52 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v74 = v69;
    *v52 = 68158722;
    *(v52 + 4) = 2;
    *(v52 + 8) = 256;
    v53 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v52 + 10) = v53;

    *(v52 + 11) = 2082;
    v54 = Tag.debugDescription.getter(v73 & 0xFFFFFFFF000000FFLL);
    v56 = sub_1B0399D64(v54, v55, &v74);

    *(v52 + 13) = v56;
    *(v52 + 21) = 2082;
    v57 = ClientCommand.logIdentifier.getter();
    v59 = v58;
    sub_1B038C824(v15, type metadata accessor for ClientCommand);
    v60 = sub_1B0399D64(v57, v59, &v74);

    *(v52 + 23) = v60;
    *(v52 + 31) = 2082;
    v61 = v72;
    result = swift_beginAccess();
    v62 = *(v5 + v61);
    if ((v62 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x1B2728410](v24);
      v48 = v71;
    }

    else
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      v48 = v71;
      if (v24 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v63 = *(v62 + 8 * v24 + 32);
    }

    swift_endAccess();
    v64 = *(v63 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

    v65 = ConnectionID.debugDescription.getter(v64);
    v67 = sub_1B0399D64(v65, v66, &v74);

    *(v52 + 33) = v67;
    _os_log_impl(&dword_1B0389000, v50, v70, "[%.*hhx] Sent command '%{public}s %{public}s' on connection %{public}s", v52, 0x29u);
    v68 = v69;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v68, -1, -1);
    MEMORY[0x1B272C230](v52, -1, -1);
  }

  else
  {

    sub_1B038C824(v15, type metadata accessor for ClientCommand);
  }

  (*(v49 + 8))(v21, v48);
  return v73;
}

uint64_t sub_1B0C4EAFC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v46 - v6;
  v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v51 = v2;
  v9 = *(v2 + v8);
  if (v9 >> 62)
  {
    goto LABEL_44;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return 0;
  }

  while (2)
  {
    v49 = v8;
    v50 = v7;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1B2728410](v7, v9);
      }

      else
      {
        if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v11 = *(v9 + 32 + 8 * v7);
      }

      v12 = (*(*v11 + 608))();
      if (!v12)
      {
        goto LABEL_22;
      }

      if (v13 != a2)
      {
        v8 = a2;

        goto LABEL_23;
      }

      v14 = *(v12 + 16);
      if (v14 == *(a1 + 16))
      {
        break;
      }

LABEL_21:

LABEL_22:

LABEL_23:
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_42;
      }

      if (v7 == v10)
      {

        return 0;
      }
    }

    if (v14)
    {
      v15 = v12 == a1;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = 32;
      while (v14)
      {
        if (*(v12 + v16) != *(a1 + v16))
        {
          goto LABEL_21;
        }

        ++v16;
        if (!--v14)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v10 = sub_1B0E46138();
      if (!v10)
      {
        return 0;
      }

      continue;
    }

    break;
  }

LABEL_27:

  v19 = v49;
  v20 = v51;
  swift_beginAccess();
  v21 = *(v20 + v19);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1B2728410](v7);
    v22 = v50;
LABEL_30:
    swift_endAccess();
    LODWORD(v50) = *(v23 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

    v24 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v20 + v24, v22, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v25 = sub_1B0E439A8();
    v26 = *(v25 - 8);
    result = (*(v26 + 48))(v22, 1, v25);
    if (result != 1)
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v27 = sub_1B0E43988();
      v28 = sub_1B0E45908();

      v48 = v28;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v47 = v25;
        v30 = a2;
        v31 = v29;
        v46 = swift_slowAlloc();
        v52[0] = v46;
        *v31 = 68158723;
        *(v31 + 4) = 2;
        *(v31 + 8) = 256;
        *(v31 + 10) = *(v20 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v31 + 11) = 2082;
        v32 = ConnectionID.debugDescription.getter(v50);
        v34 = sub_1B0399D64(v32, v33, v52);
        v20 = v51;

        *(v31 + 13) = v34;
        *(v31 + 21) = 2160;
        *(v31 + 23) = 0x786F626C69616DLL;
        *(v31 + 31) = 2085;
        v52[1] = a1;
        v53 = v30;
        v25 = v47;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v35 = sub_1B0E44BA8();
        v37 = sub_1B0399D64(v35, v36, v52);

        *(v31 + 33) = v37;
        _os_log_impl(&dword_1B0389000, v27, v48, "[%.*hhx] Closing connection %{public}s for mailbox '%{sensitive,mask.mailbox}s'.", v31, 0x29u);
        v38 = v46;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v38, -1, -1);
        MEMORY[0x1B272C230](v31, -1, -1);
      }

      else
      {
      }

      (*(v26 + 8))(v22, v25);
      result = swift_beginAccess();
      v39 = *(v20 + v19);
      if ((v39 & 0xC000000000000001) != 0)
      {
        goto LABEL_48;
      }

      if (v7 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(v39 + 8 * v7 + 32);

        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
    v22 = v50;
    if (v7 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v21 + 8 * v7 + 32);

      goto LABEL_30;
    }

    __break(1u);
LABEL_48:
    v40 = MEMORY[0x1B2728410](v7);
LABEL_37:
    v41 = swift_endAccess();
    v42 = (*(*v40 + 576))(v41);

    result = swift_beginAccess();
    v43 = *(v20 + v19);
    if ((v43 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1B2728410](v7);
      goto LABEL_40;
    }

    if (v7 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v44 = *(v43 + 8 * v7 + 32);

LABEL_40:
      v45 = swift_endAccess();
      (*(*v44 + 536))(v45);

      return v42;
    }

LABEL_51:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C4F144(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_1B0E44468();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1B0E44488();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (!*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer))
  {
    __break(1u);
    goto LABEL_39;
  }

  RestartableTimer.start()();

  v16 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  LOBYTE(v16) = *(v16 + 17);
  result = static MonotonicTime.now()();
  if ((v16 & 1) != 0 || !(v18 & 1 | (result >= v17)))
  {
    v38 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffLoggingRateLimit;
    swift_beginAccess();
    v39 = static MonotonicTime.now()();
    if (*(v38 + 8))
    {
      goto LABEL_20;
    }

    v40 = *v38;
    v41 = __OFSUB__(v39, *v38);
    v42 = v39 - *v38;
    if (v39 >= *v38)
    {
LABEL_18:
      if (!v41)
      {
        goto LABEL_19;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!__OFSUB__(v40, v39))
    {
      v41 = __OFSUB__(0, v40 - v39);
      v42 = v39 - v40;
      if (!v41)
      {
LABEL_19:
        if (v42 < *(v38 + 16))
        {
          return swift_endAccess();
        }

LABEL_20:
        *v38 = v39;
        *(v38 + 8) = 0;
        sub_1B0C504B8(v4);
        return swift_endAccess();
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 1)
  {
    result = sub_1B03C7FA8();
    if ((result & 1) == 0)
    {
      sub_1B0C4FB40();
      v3 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
      swift_beginAccess();
      v20 = *(v4 + v3);
      if (!(v20 >> 62))
      {
        result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= a2)
        {
          return result;
        }

        goto LABEL_9;
      }

LABEL_34:
      result = sub_1B0E46138();
      if (result >= a2)
      {
        return result;
      }

LABEL_9:
      sub_1B041FB64(v4, v4);
      v22 = v21;
      v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_1B03B5C80(v4 + v23, v8, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v24 = sub_1B0E439A8();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v8, 1, v24) != 1)
      {
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_retain_n();
        v26 = sub_1B0E43988();
        v27 = sub_1B0E45908();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v49 = v24;
          v29 = v28;
          v48 = swift_slowAlloc();
          v50[0] = v48;
          *v29 = 68158466;
          *(v29 + 4) = 2;
          *(v29 + 8) = 256;
          v30 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v29 + 10) = v30;

          *(v29 + 11) = 2082;
          v31 = ConnectionID.debugDescription.getter(*(v22 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
          v33 = sub_1B0399D64(v31, v32, v50);

          *(v29 + 13) = v33;
          *(v29 + 21) = 2048;
          v35 = (*(*v22 + 432))(v34);

          *(v29 + 23) = v35;

          _os_log_impl(&dword_1B0389000, v26, v27, "[%.*hhx] Did create connection %{public}s [C%llu]", v29, 0x1Fu);
          v36 = v48;
          __swift_destroy_boxed_opaque_existential_0(v48);
          MEMORY[0x1B272C230](v36, -1, -1);
          v37 = v29;
          v24 = v49;
          MEMORY[0x1B272C230](v37, -1, -1);
        }

        else
        {
        }

        (*(v25 + 8))(v8, v24);
        swift_beginAccess();

        MEMORY[0x1B27272B0](v43);
        if (*((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B0E45218();
        }

        sub_1B0E45298();
        v44 = swift_endAccess();
        (*(*v22 + 528))(v44);
        if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
        {

          RestartableTimer.start()();

          v45 = *(v4 + v3);
          if (v45 >> 62)
          {
            if (sub_1B0E46138() == 1)
            {
LABEL_29:
              Strong = swift_unknownObjectWeakLoadStrong();

              if (Strong)
              {
                *(Strong + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection) = 1;
                return swift_unknownObjectRelease();
              }

              return result;
            }
          }

          else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
          {
            goto LABEL_29;
          }
        }

LABEL_40:
        __break(1u);
        result = swift_endAccess();
        __break(1u);
        return result;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  return result;
}