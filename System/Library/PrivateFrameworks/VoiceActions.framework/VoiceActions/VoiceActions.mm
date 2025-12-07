uint64_t sub_2721E6044()
{
  v1 = *(v0 + *(type metadata accessor for Sentencepiece_TrainerSpec(0) + 24));
  swift_beginAccess();
  if (*(v1 + 56) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 56);
  }
}

uint64_t sub_2721E60AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F4038();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2721E60F8@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_2721F0508(a2);
  *a1 = result;
  return result;
}

uint64_t sub_2721E612C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2721F0508(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2721E61A0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2721E6220@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Sentencepiece_ModelProto(0);
  sub_2721F07F4(v1 + *(v6 + 28), v5, &qword_2808815D0, &qword_27237AFD0);
  v7 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2721F06C4(v5, a1, type metadata accessor for Sentencepiece_TrainerSpec);
  }

  sub_272376F0C();
  sub_272376F5C();
  v9 = *(v7 + 24);
  if (qword_2808833D8 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_2808833E0;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_2721F40F0(v5, &qword_2808815D0, &qword_27237AFD0);
  }

  return result;
}

float sub_2721E63EC()
{
  v1 = v0 + *(type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0) + 28);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2721E644C(uint64_t a1, uint64_t a2)
{
  sub_27237874C();
  sub_27237777C();
  return sub_27237878C();
}

uint64_t sub_2721E64B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F3FE4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2721E6500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27237874C();
  sub_27237777C();
  return sub_27237878C();
}

uint64_t sub_2721E6568@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_2721F08B4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_2721E65A4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2721F08B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2721E661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_272376F6C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2721E6694(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_272376F6C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2721E6718()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_280893918);
  sub_2721F08DC(v0, qword_280893918);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_27237AF50;
  v4 = v94 + v3;
  v5 = v94 + v3 + v1[14];
  *(v94 + v3) = 1;
  *v5 = "input";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_27237715C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v94 + v3 + v2 + v1[14];
  *(v4 + v2) = 7;
  *v9 = "input_format";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v94 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "model_prefix";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v94 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "model_type";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v94 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "vocab_size";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v94 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "accept_language";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v94 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "self_test_sample_size";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v94 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 50;
  *v21 = "enable_differential_privacy";
  *(v21 + 1) = 27;
  v21[16] = 2;
  v8();
  v22 = v94 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 51;
  *v22 = "differential_privacy_noise_level";
  *(v22 + 8) = 32;
  *(v22 + 16) = 2;
  v8();
  v23 = (v94 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 52;
  *v24 = "differential_privacy_clipping_threshold";
  *(v24 + 1) = 39;
  v24[16] = 2;
  v8();
  v25 = (v94 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "character_coverage";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v8();
  v27 = (v94 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "input_sentence_size";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v8();
  v29 = (v94 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 19;
  *v30 = "shuffle_input_sentence";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v8();
  v31 = (v94 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "mining_sentence_size";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  v33 = (v94 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "training_sentence_size";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v94 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "seed_sentencepiece_size";
  *(v36 + 1) = 23;
  v36[16] = 2;
  v8();
  v37 = v94 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 15;
  *v37 = "shrinking_factor";
  *(v37 + 8) = 16;
  *(v37 + 16) = 2;
  v8();
  v38 = (v94 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "max_sentence_length";
  *(v39 + 1) = 19;
  v39[16] = 2;
  v8();
  v40 = (v94 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 16;
  *v41 = "num_threads";
  *(v41 + 1) = 11;
  v41[16] = 2;
  v8();
  v42 = (v94 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 17;
  *v43 = "num_sub_iterations";
  *(v43 + 1) = 18;
  v43[16] = 2;
  v8();
  v44 = (v94 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "max_sentencepiece_length";
  *(v45 + 1) = 24;
  v45[16] = 2;
  v8();
  v46 = (v94 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "split_by_unicode_script";
  *(v47 + 1) = 23;
  v47[16] = 2;
  v8();
  v48 = (v94 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "split_by_number";
  *(v49 + 1) = 15;
  v49[16] = 2;
  v8();
  v50 = (v94 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 22;
  *v51 = "split_by_whitespace";
  *(v51 + 1) = 19;
  v51[16] = 2;
  v8();
  v52 = (v94 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "treat_whitespace_as_suffix";
  *(v53 + 1) = 26;
  v53[16] = 2;
  v8();
  v54 = (v94 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "allow_whitespace_only_pieces";
  *(v55 + 1) = 28;
  v55[16] = 2;
  v8();
  v56 = (v94 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 25;
  *v57 = "split_digits";
  *(v57 + 1) = 12;
  v57[16] = 2;
  v8();
  v58 = (v94 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 53;
  *v59 = "pretokenization_delimiter";
  *(v59 + 1) = 25;
  v59[16] = 2;
  v8();
  v60 = (v94 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 30;
  *v61 = "control_symbols";
  *(v61 + 1) = 15;
  v61[16] = 2;
  v8();
  v62 = (v94 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 31;
  *v63 = "user_defined_symbols";
  *(v63 + 1) = 20;
  v63[16] = 2;
  v8();
  v64 = (v94 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 36;
  *v65 = "required_chars";
  *(v65 + 1) = 14;
  v65[16] = 2;
  v8();
  v66 = (v94 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 35;
  *v67 = "byte_fallback";
  *(v67 + 1) = 13;
  v67[16] = 2;
  v8();
  v68 = v94 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "vocabulary_output_piece_score";
  *(v68 + 8) = 29;
  *(v68 + 16) = 2;
  v8();
  v69 = (v94 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "hard_vocab_limit";
  *(v70 + 1) = 16;
  v70[16] = 2;
  v8();
  v71 = (v94 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "use_all_vocab";
  *(v72 + 1) = 13;
  v72[16] = 2;
  v8();
  v73 = (v94 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 40;
  *v74 = "unk_id";
  *(v74 + 1) = 6;
  v74[16] = 2;
  v8();
  v75 = (v94 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 41;
  *v76 = "bos_id";
  *(v76 + 1) = 6;
  v76[16] = 2;
  v8();
  v77 = (v94 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 42;
  *v78 = "eos_id";
  *(v78 + 1) = 6;
  v78[16] = 2;
  v8();
  v79 = (v94 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 43;
  *v80 = "pad_id";
  *(v80 + 1) = 6;
  v80[16] = 2;
  v8();
  v81 = (v94 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 45;
  *v82 = "unk_piece";
  *(v82 + 1) = 9;
  v82[16] = 2;
  v8();
  v83 = (v94 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 46;
  *v84 = "bos_piece";
  *(v84 + 1) = 9;
  v84[16] = 2;
  v8();
  v85 = (v94 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 47;
  *v86 = "eos_piece";
  *(v86 + 1) = 9;
  v86[16] = 2;
  v8();
  v87 = (v94 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 48;
  *v88 = "pad_piece";
  *(v88 + 1) = 9;
  v88[16] = 2;
  v8();
  v89 = (v94 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 44;
  *v90 = "unk_surface";
  *(v90 + 1) = 11;
  v90[16] = 2;
  v8();
  v91 = (v94 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 49;
  *v92 = "train_extremely_large_corpus";
  *(v92 + 1) = 28;
  v92[16] = 2;
  v8();
  return sub_27237716C();
}

double sub_2721E7340()
{
  type metadata accessor for Sentencepiece_TrainerSpec._StorageClass();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 4;
  *(v0 + 60) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = v1;
  *(v0 + 80) = 0;
  *(v0 + 84) = 513;
  *(v0 + 88) = 0;
  *(v0 + 92) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 108) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 513;
  *(v0 + 132) = 0;
  *(v0 + 136) = 1;
  *(v0 + 140) = 0;
  *(v0 + 144) = 1;
  *(v0 + 148) = 0;
  *(v0 + 152) = 1;
  *(v0 + 156) = 0;
  *(v0 + 160) = 1;
  *(v0 + 164) = 0;
  *(v0 + 168) = 1;
  *(v0 + 172) = 0;
  *(v0 + 176) = 1;
  *(v0 + 180) = 0;
  *(v0 + 184) = 1;
  *(v0 + 188) = 0;
  *(v0 + 192) = 1;
  *(v0 + 197) = 514;
  *(v0 + 193) = 33686018;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = v1;
  *(v0 + 224) = v1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = 33686018;
  *(v0 + 256) = 1;
  *(v0 + 260) = 0;
  *(v0 + 264) = 1;
  *(v0 + 268) = 0;
  *(v0 + 272) = 1;
  *(v0 + 276) = 0;
  *(v0 + 280) = 1;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 2;
  qword_2808833E0 = v0;
  return result;
}

uint64_t sub_2721E745C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2721E74F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Sentencepiece_TrainerSpec(0) + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Sentencepiece_TrainerSpec._StorageClass();
    v9 = swift_allocObject();
    sub_2721EF8D0(v8);

    *(v5 + v6) = v9;
  }

  v10 = sub_272376FAC();
  v12 = v4;
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(v10)
      {
        case 1:
        case 5:
        case 30:
        case 31:
          swift_beginAccess();
          v14 = v12;
          sub_27237701C();
          goto LABEL_16;
        case 2:
        case 7:
        case 36:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 53:
          swift_beginAccess();
          v14 = v12;
          sub_27237702C();
          goto LABEL_16;
        case 3:
          swift_beginAccess();
          sub_2721F4038();
          v14 = v12;
          sub_272376FDC();
          goto LABEL_16;
        case 4:
        case 6:
        case 12:
        case 13:
        case 14:
        case 16:
        case 17:
        case 18:
        case 20:
        case 40:
        case 41:
        case 42:
        case 43:
          swift_beginAccess();
          v14 = v12;
          sub_27237700C();
          goto LABEL_16;
        case 10:
        case 15:
        case 51:
          swift_beginAccess();
          v14 = v12;
          sub_272376FFC();
          goto LABEL_16;
        case 11:
        case 52:
          swift_beginAccess();
          v14 = v12;
          sub_27237703C();
          goto LABEL_16;
        case 19:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 32:
        case 33:
        case 34:
        case 35:
        case 49:
        case 50:
          swift_beginAccess();
          v14 = v12;
          sub_272376FCC();
LABEL_16:
          v12 = v14;
          swift_endAccess();
          break;
        default:
          if ((v10 - 200) <= 0x1FFFFF37)
          {
            sub_2721F106C(&qword_280881650, type metadata accessor for Sentencepiece_TrainerSpec, &unk_27237B378);
            sub_272376FBC();
          }

          break;
      }

      v10 = sub_272376FAC();
    }
  }
}

uint64_t sub_2721E7D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Sentencepiece_TrainerSpec(0) + 24));
  swift_beginAccess();
  if (*(*(v9 + 16) + 16))
  {

    sub_27237710C();
    if (v4)
    {
    }
  }

  result = swift_beginAccess();
  if (*(v9 + 48))
  {

    sub_27237711C();
  }

  if (!v4)
  {
    swift_beginAccess();
    if (*(v9 + 56) != 4)
    {
      sub_2721F4038();
      sub_2723770CC();
    }

    swift_beginAccess();
    if ((*(v9 + 64) & 1) == 0)
    {
      sub_2723770FC();
    }

    swift_beginAccess();
    if (*(*(v9 + 72) + 16))
    {

      sub_27237710C();
    }

    sub_2721E8490(v9, a1, a2, a3);
    sub_2721E8514(v9, a1, a2, a3);
    sub_2721E85B0(v9, a1, a2, a3);
    sub_2721E8638(v9, a1, a2, a3);
    sub_2721E86BC(v9, a1, a2, a3);
    sub_2721E8740(v9, a1, a2, a3);
    sub_2721E87C4(v9, a1, a2, a3);
    sub_2721E8848(v9, a1, a2, a3);
    sub_2721E88D0(v9, a1, a2, a3);
    sub_2721E8954(v9, a1, a2, a3);
    sub_2721E89D8(v9, a1, a2, a3);
    sub_2721E8A5C(v9, a1, a2, a3);
    sub_2721E8AE4(v9, a1, a2, a3);
    sub_2721E8B68(v9, a1, a2, a3);
    sub_2721E8BF0(v9, a1, a2, a3);
    sub_2721E8C78(v9, a1, a2, a3);
    sub_2721E8D00(v9, a1, a2, a3);
    sub_2721E8D88(v9, a1, a2, a3);
    sub_2721E8E10(v9, a1, a2, a3);
    swift_beginAccess();
    if (*(*(v9 + 216) + 16))
    {

      sub_27237710C();
    }

    swift_beginAccess();
    if (*(*(v9 + 224) + 16))
    {

      sub_27237710C();
    }

    sub_2721E8E98(v9, a1, a2, a3);
    sub_2721E8F20(v9, a1, a2, a3);
    sub_2721E8FA8(v9, a1, a2, a3);
    sub_2721E9030(v9, a1, a2, a3);
    sub_2721E90B8(v9, a1, a2, a3);
    sub_2721E9154(v9, a1, a2, a3);
    sub_2721E91D8(v9, a1, a2, a3);
    sub_2721E9260(v9, a1, a2, a3);
    sub_2721E92E8(v9, a1, a2, a3);
    sub_2721E9370(v9, a1, a2, a3);
    sub_2721E940C(v9, a1, a2, a3);
    sub_2721E94A8(v9, a1, a2, a3);
    sub_2721E9544(v9, a1, a2, a3);
    sub_2721E95E0(v9, a1, a2, a3);
    sub_2721E967C(v9, a1, a2, a3);
    sub_2721E9704(v9, a1, a2, a3);
    sub_2721E978C(v9, a1, a2, a3);
    sub_2721E9814(v9, a1, a2, a3);
    sub_2721E9898(v9, a1, a2, a3);
    sub_2723770AC();
    return sub_272376EFC();
  }

  return result;
}

uint64_t sub_2721E8490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 84) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 32))
  {

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E85B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    return sub_2723770EC();
  }

  return result;
}

uint64_t sub_2721E8638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    return sub_27237712C();
  }

  return result;
}

uint64_t sub_2721E86BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 136) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 144) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E87C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 152) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 160) & 1) == 0)
  {
    return sub_2723770EC();
  }

  return result;
}

uint64_t sub_2721E88D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 176) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 184) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E89D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 168) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 129) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 192) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 193) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 195) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 194) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 196) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 198) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 197) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 249) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 250) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 251) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E9030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 248) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E90B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 240))
  {

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E9154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 256) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E91D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 264) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E9260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 272) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E92E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 280) & 1) == 0)
  {
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E9370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 360))
  {

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E940C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 296))
  {

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E94A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 312))
  {

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E9544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 328))
  {

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E95E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 344))
  {

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E967C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 368) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E9704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 85) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E978C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 92) & 1) == 0)
  {
    return sub_2723770EC();
  }

  return result;
}

uint64_t sub_2721E9814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    return sub_27237712C();
  }

  return result;
}

uint64_t sub_2721E9898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 208))
  {

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E9934(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  if ((sub_2721EF318(v4, *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  swift_beginAccess();
  v7 = *(a2 + 32);
  if (v6)
  {
    if (!v7 || (v5 != *(a2 + 24) || v6 != v7) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  swift_beginAccess();
  v10 = *(a2 + 48);
  if (v9)
  {
    if (!v10 || (v8 != *(a2 + 40) || v9 != v10) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  swift_beginAccess();
  v11 = *(a1 + 56);
  swift_beginAccess();
  v12 = *(a2 + 56);
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v12 != 4 && v11 == v12)
  {
LABEL_21:
    swift_beginAccess();
    v14 = *(a1 + 60);
    v15 = *(a1 + 64);
    swift_beginAccess();
    v16 = *(a2 + 64);
    if (v15)
    {
      if (!*(a2 + 64))
      {
        return 0;
      }
    }

    else
    {
      if (v14 != *(a2 + 60))
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v17 = *(a1 + 72);
    swift_beginAccess();
    if (sub_2721EF318(v17, *(a2 + 72)))
    {
      swift_beginAccess();
      v18 = *(a1 + 80);
      v19 = *(a1 + 84);
      swift_beginAccess();
      v20 = *(a2 + 84);
      if (v19)
      {
        if (!*(a2 + 84))
        {
          return 0;
        }
      }

      else
      {
        if (v18 != *(a2 + 80))
        {
          v20 = 1;
        }

        if (v20)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v21 = *(a1 + 85);
      swift_beginAccess();
      v22 = *(a2 + 85);
      if (v21 == 2)
      {
        if (v22 != 2)
        {
          return 0;
        }
      }

      else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v23 = *(a1 + 88);
      v24 = *(a1 + 92);
      swift_beginAccess();
      v25 = *(a2 + 92);
      if (v24)
      {
        if (!*(a2 + 92))
        {
          return 0;
        }
      }

      else
      {
        if (v23 != *(a2 + 88))
        {
          v25 = 1;
        }

        if (v25)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v26 = *(a1 + 96);
      v27 = *(a1 + 104);
      swift_beginAccess();
      v28 = *(a2 + 104);
      if (v27)
      {
        if (!*(a2 + 104))
        {
          return 0;
        }
      }

      else
      {
        if (v26 != *(a2 + 96))
        {
          v28 = 1;
        }

        if (v28)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v29 = *(a1 + 108);
      v30 = *(a1 + 112);
      swift_beginAccess();
      v31 = *(a2 + 112);
      if (v30)
      {
        if (!*(a2 + 112))
        {
          return 0;
        }
      }

      else
      {
        if (v29 != *(a2 + 108))
        {
          v31 = 1;
        }

        if (v31)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v32 = *(a1 + 120);
      v33 = *(a1 + 128);
      swift_beginAccess();
      v34 = *(a2 + 128);
      if (v33)
      {
        if (!*(a2 + 128))
        {
          return 0;
        }
      }

      else
      {
        if (v32 != *(a2 + 120))
        {
          v34 = 1;
        }

        if (v34)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v35 = *(a1 + 129);
      swift_beginAccess();
      v36 = *(a2 + 129);
      if (v35 == 2)
      {
        if (v36 != 2)
        {
          return 0;
        }
      }

      else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v37 = *(a1 + 132);
      v38 = *(a1 + 136);
      swift_beginAccess();
      v39 = *(a2 + 136);
      if (v38)
      {
        if (!*(a2 + 136))
        {
          return 0;
        }
      }

      else
      {
        if (v37 != *(a2 + 132))
        {
          v39 = 1;
        }

        if (v39)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v40 = *(a1 + 140);
      v41 = *(a1 + 144);
      swift_beginAccess();
      v42 = *(a2 + 144);
      if (v41)
      {
        if (!*(a2 + 144))
        {
          return 0;
        }
      }

      else
      {
        if (v40 != *(a2 + 140))
        {
          v42 = 1;
        }

        if (v42)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v43 = *(a1 + 148);
      v44 = *(a1 + 152);
      swift_beginAccess();
      v45 = *(a2 + 152);
      if (v44)
      {
        if (!*(a2 + 152))
        {
          return 0;
        }
      }

      else
      {
        if (v43 != *(a2 + 148))
        {
          v45 = 1;
        }

        if (v45)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v46 = *(a1 + 156);
      v47 = *(a1 + 160);
      swift_beginAccess();
      v48 = *(a2 + 160);
      if (v47)
      {
        if (!*(a2 + 160))
        {
          return 0;
        }
      }

      else
      {
        if (v46 != *(a2 + 156))
        {
          v48 = 1;
        }

        if (v48)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v49 = *(a1 + 164);
      v50 = *(a1 + 168);
      swift_beginAccess();
      v51 = *(a2 + 168);
      if (v50)
      {
        if (!*(a2 + 168))
        {
          return 0;
        }
      }

      else
      {
        if (v49 != *(a2 + 164))
        {
          v51 = 1;
        }

        if (v51)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v52 = *(a1 + 172);
      v53 = *(a1 + 176);
      swift_beginAccess();
      v54 = *(a2 + 176);
      if (v53)
      {
        if (!*(a2 + 176))
        {
          return 0;
        }
      }

      else
      {
        if (v52 != *(a2 + 172))
        {
          v54 = 1;
        }

        if (v54)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v55 = *(a1 + 180);
      v56 = *(a1 + 184);
      swift_beginAccess();
      v57 = *(a2 + 184);
      if (v56)
      {
        if (!*(a2 + 184))
        {
          return 0;
        }
      }

      else
      {
        if (v55 != *(a2 + 180))
        {
          v57 = 1;
        }

        if (v57)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v58 = *(a1 + 188);
      v59 = *(a1 + 192);
      swift_beginAccess();
      v60 = *(a2 + 192);
      if (v59)
      {
        if (!*(a2 + 192))
        {
          return 0;
        }
      }

      else
      {
        if (v58 != *(a2 + 188))
        {
          v60 = 1;
        }

        if (v60)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v61 = *(a1 + 193);
      swift_beginAccess();
      v62 = *(a2 + 193);
      if (v61 == 2)
      {
        if (v62 != 2)
        {
          return 0;
        }
      }

      else if (v62 == 2 || ((v61 ^ v62) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v63 = *(a1 + 194);
      swift_beginAccess();
      v64 = *(a2 + 194);
      if (v63 == 2)
      {
        if (v64 != 2)
        {
          return 0;
        }
      }

      else if (v64 == 2 || ((v63 ^ v64) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v65 = *(a1 + 195);
      swift_beginAccess();
      v66 = *(a2 + 195);
      if (v65 == 2)
      {
        if (v66 != 2)
        {
          return 0;
        }
      }

      else if (v66 == 2 || ((v65 ^ v66) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v67 = *(a1 + 196);
      swift_beginAccess();
      v68 = *(a2 + 196);
      if (v67 == 2)
      {
        if (v68 != 2)
        {
          return 0;
        }
      }

      else if (v68 == 2 || ((v67 ^ v68) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v69 = *(a1 + 197);
      swift_beginAccess();
      v70 = *(a2 + 197);
      if (v69 == 2)
      {
        if (v70 != 2)
        {
          return 0;
        }
      }

      else if (v70 == 2 || ((v69 ^ v70) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v71 = *(a1 + 198);
      swift_beginAccess();
      v72 = *(a2 + 198);
      if (v71 == 2)
      {
        if (v72 != 2)
        {
          return 0;
        }
      }

      else if (v72 == 2 || ((v71 ^ v72) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v73 = *(a1 + 200);
      v74 = *(a1 + 208);
      swift_beginAccess();
      v75 = *(a2 + 208);
      if (v74)
      {
        if (!v75 || (v73 != *(a2 + 200) || v74 != v75) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v75)
      {
        return 0;
      }

      swift_beginAccess();
      v76 = *(a1 + 216);
      swift_beginAccess();
      if ((sub_2721EF318(v76, *(a2 + 216)) & 1) == 0)
      {
        return 0;
      }

      swift_beginAccess();
      v77 = *(a1 + 224);
      swift_beginAccess();
      if ((sub_2721EF318(v77, *(a2 + 224)) & 1) == 0)
      {
        return 0;
      }

      swift_beginAccess();
      v78 = *(a1 + 232);
      v79 = *(a1 + 240);
      swift_beginAccess();
      v80 = *(a2 + 240);
      if (v79)
      {
        if (!v80 || (v78 != *(a2 + 232) || v79 != v80) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v80)
      {
        return 0;
      }

      swift_beginAccess();
      v81 = *(a1 + 248);
      swift_beginAccess();
      v82 = *(a2 + 248);
      if (v81 == 2)
      {
        if (v82 != 2)
        {
          return 0;
        }
      }

      else if (v82 == 2 || ((v81 ^ v82) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v83 = *(a1 + 249);
      swift_beginAccess();
      v84 = *(a2 + 249);
      if (v83 == 2)
      {
        if (v84 != 2)
        {
          return 0;
        }
      }

      else if (v84 == 2 || ((v83 ^ v84) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v85 = *(a1 + 250);
      swift_beginAccess();
      v86 = *(a2 + 250);
      if (v85 == 2)
      {
        if (v86 != 2)
        {
          return 0;
        }
      }

      else if (v86 == 2 || ((v85 ^ v86) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v87 = *(a1 + 251);
      swift_beginAccess();
      v88 = *(a2 + 251);
      if (v87 == 2)
      {
        if (v88 != 2)
        {
          return 0;
        }
      }

      else if (v88 == 2 || ((v87 ^ v88) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v89 = *(a1 + 252);
      v90 = *(a1 + 256);
      swift_beginAccess();
      v91 = *(a2 + 256);
      if (v90)
      {
        if (!*(a2 + 256))
        {
          return 0;
        }
      }

      else
      {
        if (v89 != *(a2 + 252))
        {
          v91 = 1;
        }

        if (v91)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v92 = *(a1 + 260);
      v93 = *(a1 + 264);
      swift_beginAccess();
      v94 = *(a2 + 264);
      if (v93)
      {
        if (!*(a2 + 264))
        {
          return 0;
        }
      }

      else
      {
        if (v92 != *(a2 + 260))
        {
          v94 = 1;
        }

        if (v94)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v95 = *(a1 + 268);
      v96 = *(a1 + 272);
      swift_beginAccess();
      v97 = *(a2 + 272);
      if (v96)
      {
        if (!*(a2 + 272))
        {
          return 0;
        }
      }

      else
      {
        if (v95 != *(a2 + 268))
        {
          v97 = 1;
        }

        if (v97)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v98 = *(a1 + 276);
      v99 = *(a1 + 280);
      swift_beginAccess();
      v100 = *(a2 + 280);
      if (v99)
      {
        if (!*(a2 + 280))
        {
          return 0;
        }
      }

      else
      {
        if (v98 != *(a2 + 276))
        {
          v100 = 1;
        }

        if (v100)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v101 = *(a1 + 288);
      v102 = *(a1 + 296);
      swift_beginAccess();
      v103 = *(a2 + 296);
      if (v102)
      {
        if (!v103 || (v101 != *(a2 + 288) || v102 != v103) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v103)
      {
        return 0;
      }

      swift_beginAccess();
      v104 = *(a1 + 304);
      v105 = *(a1 + 312);
      swift_beginAccess();
      v106 = *(a2 + 312);
      if (v105)
      {
        if (!v106 || (v104 != *(a2 + 304) || v105 != v106) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v106)
      {
        return 0;
      }

      swift_beginAccess();
      v107 = *(a1 + 320);
      v108 = *(a1 + 328);
      swift_beginAccess();
      v109 = *(a2 + 328);
      if (v108)
      {
        if (!v109 || (v107 != *(a2 + 320) || v108 != v109) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v109)
      {
        return 0;
      }

      swift_beginAccess();
      v110 = *(a1 + 336);
      v111 = *(a1 + 344);
      swift_beginAccess();
      v112 = *(a2 + 344);
      if (v111)
      {
        if (!v112 || (v110 != *(a2 + 336) || v111 != v112) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v112)
      {
        return 0;
      }

      swift_beginAccess();
      v113 = *(a1 + 352);
      v114 = *(a1 + 360);
      swift_beginAccess();
      v115 = *(a2 + 360);
      if (v114)
      {
        if (!v115 || (v113 != *(a2 + 352) || v114 != v115) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v115)
      {
        return 0;
      }

      swift_beginAccess();
      v116 = *(a1 + 368);
      swift_beginAccess();
      v117 = *(a2 + 368);
      if (v116 == 2)
      {
        if (v117 == 2)
        {
          return 1;
        }
      }

      else if (v117 != 2 && ((v116 ^ v117) & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2721EA870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_272376F0C();
  sub_272376F5C();
  v4 = *(a1 + 24);
  if (qword_2808833D8 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_2808833E0;
}

uint64_t sub_2721EA960(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881780, type metadata accessor for Sentencepiece_TrainerSpec, &unk_27237B3F0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EAA00(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_280881650, type metadata accessor for Sentencepiece_TrainerSpec, &unk_27237B378);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EAA6C(uint64_t a1, uint64_t a2)
{
  sub_2721F106C(&qword_280881650, type metadata accessor for Sentencepiece_TrainerSpec, &unk_27237B378);

  return sub_27237709C();
}

uint64_t sub_2721EAAEC()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_280893930);
  sub_2721F08DC(v0, qword_280893930);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27237AF60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "UNIGRAM";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_27237715C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "BPE";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "WORD";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CHAR";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_27237716C();
}

uint64_t sub_2721EAD58()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_280893948);
  sub_2721F08DC(v0, qword_280893948);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27237AF70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_27237715C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "precompiled_charsmap";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "add_dummy_prefix";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "remove_extra_whitespaces";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "escape_whitespaces";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "normalization_rule_tsv";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_27237716C();
}

uint64_t sub_2721EB030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_272376FAC();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for Sentencepiece_NormalizerSpec(0);
LABEL_5:
          v3 = v6;
          sub_272376FCC();
          goto LABEL_6;
        }

        v6 = v3;
        if (result == 5)
        {
LABEL_12:
          type metadata accessor for Sentencepiece_NormalizerSpec(0);
          goto LABEL_5;
        }

        if (result == 6)
        {
          type metadata accessor for Sentencepiece_NormalizerSpec(0);
LABEL_18:
          v3 = v6;
          sub_27237702C();
          goto LABEL_6;
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for Sentencepiece_NormalizerSpec(0);
          goto LABEL_18;
        }

        v6 = v3;
        if (result == 2)
        {
          type metadata accessor for Sentencepiece_NormalizerSpec(0);
          sub_272376FEC();
          goto LABEL_6;
        }

        if (result == 3)
        {
          goto LABEL_12;
        }
      }

      if ((result - 200) >= 0x1FFFFF38)
      {
        v3 = v6;
      }

      else
      {
        type metadata accessor for Sentencepiece_NormalizerSpec(0);
        sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec, &unk_27237B508);
        v3 = v6;
        sub_272376FBC();
      }

LABEL_6:
      result = sub_272376FAC();
    }
  }

  return result;
}

int *sub_2721EB220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v10 = result;
  if (*(v5 + result[6] + 8))
  {
    result = sub_27237711C();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  v11 = v5 + v10[7];
  v12 = *(v11 + 8);
  if (v12 >> 60 != 15)
  {
    v13 = *v11;
    sub_2721F0560(*v11, *(v11 + 8));
    sub_2723770DC();
    sub_2721F05B4(v13, v12);
  }

  if (*(v5 + v10[8]) != 2)
  {
    sub_2723770BC();
  }

  if (*(v5 + v10[9]) != 2)
  {
    sub_2723770BC();
  }

  sub_2721EB3C0(v5, a1, a2, a3);
  sub_2721EB438(v5, a1, a2, a3);
  sub_2723770AC();
  return sub_272376EFC();
}

uint64_t sub_2721EB3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721EB438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_27237711C();
  }

  return result;
}

double sub_2721EB4B0@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_272376F0C();
  sub_272376F5C();
  v4 = a1[7];
  v5 = (a2 + a1[6]);
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a2 + v4) = xmmword_27237AF40;
  v7 = a1[9];
  *(a2 + a1[8]) = 2;
  *(a2 + v7) = 2;
  v8 = a1[11];
  *(a2 + a1[10]) = 2;
  v9 = (a2 + v8);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_2721EB568(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881778, type metadata accessor for Sentencepiece_NormalizerSpec, &unk_27237B580);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EB608(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec, &unk_27237B508);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EB674(uint64_t a1, uint64_t a2)
{
  sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec, &unk_27237B508);

  return sub_27237709C();
}

uint64_t sub_2721EB6F4()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_280893960);
  sub_2721F08DC(v0, qword_280893960);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_27237AF80;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "samples";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_27237715C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_27237716C();
}

uint64_t sub_2721EB860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_272376FAC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Sentencepiece_SelfTestData.Sample(0);
        sub_2721F106C(&qword_2808815F8, type metadata accessor for Sentencepiece_SelfTestData.Sample, &unk_27237B7D8);
        sub_27237704C();
      }

      else if ((result - 200) <= 0x1FFFFF37)
      {
        type metadata accessor for Sentencepiece_SelfTestData(0);
        sub_2721F106C(&qword_280881670, type metadata accessor for Sentencepiece_SelfTestData, &unk_27237B670);
        sub_272376FBC();
      }

      result = sub_272376FAC();
    }
  }

  return result;
}

uint64_t sub_2721EB9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for Sentencepiece_SelfTestData.Sample(0);
    sub_2721F106C(&qword_2808815F8, type metadata accessor for Sentencepiece_SelfTestData.Sample, &unk_27237B7D8);
    result = sub_27237713C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  type metadata accessor for Sentencepiece_SelfTestData(0);
  result = sub_2723770AC();
  if (!v5)
  {
    return sub_272376EFC();
  }

  return result;
}

uint64_t sub_2721EBAD8@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  sub_272376F0C();
  return sub_272376F5C();
}

uint64_t sub_2721EBB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881770, type metadata accessor for Sentencepiece_SelfTestData, &unk_27237B6E8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EBC38(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_280881670, type metadata accessor for Sentencepiece_SelfTestData, &unk_27237B670);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EBCA4(uint64_t a1, uint64_t a2)
{
  sub_2721F106C(&qword_280881670, type metadata accessor for Sentencepiece_SelfTestData, &unk_27237B670);

  return sub_27237709C();
}

uint64_t sub_2721EBD20(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_2721EED00(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_272376F1C();
  sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  if ((sub_2723777DC() & 1) == 0)
  {
    return 0;
  }

  sub_272376F6C();
  sub_2721F106C(&qword_280881608, MEMORY[0x277D21710], MEMORY[0x277D21718]);
  return sub_2723777DC() & 1;
}

uint64_t sub_2721EBE28()
{
  result = MEMORY[0x2743C4AD0](0x656C706D61532ELL, 0xE700000000000000);
  qword_280893978 = 0xD00000000000001ALL;
  unk_280893980 = 0x80000002723877A0;
  return result;
}

uint64_t sub_2721EBE94()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_280893988);
  sub_2721F08DC(v0, qword_280893988);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27237AF90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "input";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_27237715C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expected";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_27237716C();
}

uint64_t sub_2721EC05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_272376FAC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for Sentencepiece_SelfTestData.Sample(0);
      sub_27237702C();
    }
  }

  return result;
}

uint64_t sub_2721EC104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Sentencepiece_SelfTestData.Sample(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 8))
  {
    result = sub_27237711C();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v3 + *(v6 + 24) + 8))
  {
    sub_27237711C();
  }

  return sub_272376EFC();
}

uint64_t sub_2721EC1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_272376F0C();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_2721EC25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881768, type metadata accessor for Sentencepiece_SelfTestData.Sample, &unk_27237B850);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EC2FC(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_2808815F8, type metadata accessor for Sentencepiece_SelfTestData.Sample, &unk_27237B7D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EC368(uint64_t a1, uint64_t a2)
{
  sub_2721F106C(&qword_2808815F8, type metadata accessor for Sentencepiece_SelfTestData.Sample, &unk_27237B7D8);

  return sub_27237709C();
}

uint64_t sub_2721EC3E8()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_2808939A0);
  sub_2721F08DC(v0, qword_2808939A0);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27237AFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pieces";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_27237715C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trainer_spec";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "normalizer_spec";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "self_test_data";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "denormalizer_spec";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return sub_27237716C();
}

BOOL sub_2721EC688()
{
  v1 = v0;
  v2 = sub_2721F065C(&qword_2808815E0, &qword_27237AFE0);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v37 - v3;
  v4 = type metadata accessor for Sentencepiece_SelfTestData(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v37 - v18;
  v20 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Sentencepiece_ModelProto(0);
  if ((sub_272376F4C() & 1) == 0)
  {
    return 0;
  }

  v37 = v9;
  sub_2721ECC88(*v0);
  v25 = sub_272376EEC();

  if ((v25 & 1) == 0)
  {
    return 0;
  }

  sub_2721F07F4(v0 + v24[7], v19, &qword_2808815D0, &qword_27237AFD0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_2721F40F0(v19, &qword_2808815D0, &qword_27237AFD0);
    v26 = v37;
  }

  else
  {
    sub_2721F06C4(v19, v23, type metadata accessor for Sentencepiece_TrainerSpec);
    v27 = sub_272376F4C();
    sub_2721F0794(v23, type metadata accessor for Sentencepiece_TrainerSpec);
    v26 = v37;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2721F07F4(v1 + v24[8], v11, &qword_2808815D8, &qword_27237AFD8);
  v28 = v44;
  v29 = *(v43 + 48);
  if (v29(v11, 1, v44) == 1)
  {
    sub_2721F40F0(v11, &qword_2808815D8, &qword_27237AFD8);
  }

  else
  {
    sub_2721F06C4(v11, v16, type metadata accessor for Sentencepiece_NormalizerSpec);
    v30 = sub_272376F4C();
    sub_2721F0794(v16, type metadata accessor for Sentencepiece_NormalizerSpec);
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = v42;
  sub_2721F07F4(v1 + v24[9], v42, &qword_2808815E0, &qword_27237AFE0);
  if ((*(v40 + 48))(v31, 1, v41) == 1)
  {
    sub_2721F40F0(v31, &qword_2808815E0, &qword_27237AFE0);
  }

  else
  {
    v32 = v39;
    sub_2721F06C4(v31, v39, type metadata accessor for Sentencepiece_SelfTestData);
    v33 = sub_272376F4C();
    sub_2721F0794(v32, type metadata accessor for Sentencepiece_SelfTestData);
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2721F07F4(v1 + v24[10], v26, &qword_2808815D8, &qword_27237AFD8);
  if (v29(v26, 1, v28) == 1)
  {
    sub_2721F40F0(v26, &qword_2808815D8, &qword_27237AFD8);
    return 1;
  }

  v34 = v38;
  sub_2721F06C4(v26, v38, type metadata accessor for Sentencepiece_NormalizerSpec);
  v35 = sub_272376F4C();
  sub_2721F0794(v34, type metadata accessor for Sentencepiece_NormalizerSpec);
  return (v35 & 1) != 0;
}

uint64_t sub_2721ECC88(uint64_t a1)
{
  v2 = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2721EF768(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_2721F072C(v8, v5, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2721EF768((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece, &unk_27237BAA8);
      v12 = sub_2721F4150(&v14);
      sub_2721F072C(v5, v12, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
      *(v7 + 16) = v11 + 1;
      sub_2721F41B4(&v14, v7 + 40 * v11 + 32);
      sub_2721F0794(v5, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2721ECE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_272376FAC();
  if (!v3)
  {
    for (i = result; ; i = result)
    {
      if (v5)
      {
        return result;
      }

      if (i <= 2)
      {
        v7 = v3;
        if (i == 1)
        {
          type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
          sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece, &unk_27237BAA8);
          sub_27237704C();
          goto LABEL_5;
        }

        if (i == 2)
        {
          type metadata accessor for Sentencepiece_ModelProto(0);
          type metadata accessor for Sentencepiece_TrainerSpec(0);
          v8 = type metadata accessor for Sentencepiece_TrainerSpec;
          v9 = &unk_27237B378;
          v10 = &qword_280881650;
          goto LABEL_17;
        }
      }

      else
      {
        if (i == 3)
        {
          type metadata accessor for Sentencepiece_ModelProto(0);
          type metadata accessor for Sentencepiece_NormalizerSpec(0);
          sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec, &unk_27237B508);
          goto LABEL_18;
        }

        v7 = v3;
        if (i == 4)
        {
          type metadata accessor for Sentencepiece_ModelProto(0);
          type metadata accessor for Sentencepiece_SelfTestData(0);
          v8 = type metadata accessor for Sentencepiece_SelfTestData;
          v9 = &unk_27237B670;
          v10 = &qword_280881670;
LABEL_17:
          sub_2721F106C(v10, v8, v9);
          v3 = v7;
LABEL_18:
          sub_27237705C();
          goto LABEL_5;
        }

        if (i == 5)
        {
          type metadata accessor for Sentencepiece_ModelProto(0);
          type metadata accessor for Sentencepiece_NormalizerSpec(0);
          v8 = type metadata accessor for Sentencepiece_NormalizerSpec;
          v9 = &unk_27237B508;
          v10 = &qword_280881668;
          goto LABEL_17;
        }
      }

      if ((i - 200) > 0x1FFFFF37)
      {
        v3 = v7;
      }

      else
      {
        type metadata accessor for Sentencepiece_ModelProto(0);
        sub_2721F106C(&qword_280881690, type metadata accessor for Sentencepiece_ModelProto, &unk_27237B940);
        v3 = v7;
        sub_272376FBC();
      }

LABEL_5:
      result = sub_272376FAC();
    }
  }

  return result;
}

uint64_t sub_2721ED188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0), sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece, &unk_27237BAA8), result = sub_27237713C(), !v4))
  {
    result = sub_2721ED2F4(v3, a1, a2, a3);
    if (!v4)
    {
      sub_2721ED510(v3, a1, a2, a3);
      sub_2721ED72C(v3, a1, a2, a3);
      sub_2721ED948(v3, a1, a2, a3);
      type metadata accessor for Sentencepiece_ModelProto(0);
      sub_2723770AC();
      return sub_272376EFC();
    }
  }

  return result;
}

uint64_t sub_2721ED2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Sentencepiece_ModelProto(0);
  sub_2721F07F4(a1 + *(v12 + 28), v7, &qword_2808815D0, &qword_27237AFD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2721F40F0(v7, &qword_2808815D0, &qword_27237AFD0);
  }

  sub_2721F06C4(v7, v11, type metadata accessor for Sentencepiece_TrainerSpec);
  sub_2721F106C(&qword_280881650, type metadata accessor for Sentencepiece_TrainerSpec, &unk_27237B378);
  sub_27237714C();
  return sub_2721F0794(v11, type metadata accessor for Sentencepiece_TrainerSpec);
}

uint64_t sub_2721ED510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Sentencepiece_ModelProto(0);
  sub_2721F07F4(a1 + *(v12 + 32), v7, &qword_2808815D8, &qword_27237AFD8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2721F40F0(v7, &qword_2808815D8, &qword_27237AFD8);
  }

  sub_2721F06C4(v7, v11, type metadata accessor for Sentencepiece_NormalizerSpec);
  sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec, &unk_27237B508);
  sub_27237714C();
  return sub_2721F0794(v11, type metadata accessor for Sentencepiece_NormalizerSpec);
}

uint64_t sub_2721ED72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_2721F065C(&qword_2808815E0, &qword_27237AFE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Sentencepiece_SelfTestData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Sentencepiece_ModelProto(0);
  sub_2721F07F4(a1 + *(v12 + 36), v7, &qword_2808815E0, &qword_27237AFE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2721F40F0(v7, &qword_2808815E0, &qword_27237AFE0);
  }

  sub_2721F06C4(v7, v11, type metadata accessor for Sentencepiece_SelfTestData);
  sub_2721F106C(&qword_280881670, type metadata accessor for Sentencepiece_SelfTestData, &unk_27237B670);
  sub_27237714C();
  return sub_2721F0794(v11, type metadata accessor for Sentencepiece_SelfTestData);
}

uint64_t sub_2721ED948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Sentencepiece_ModelProto(0);
  sub_2721F07F4(a1 + *(v12 + 40), v7, &qword_2808815D8, &qword_27237AFD8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2721F40F0(v7, &qword_2808815D8, &qword_27237AFD8);
  }

  sub_2721F06C4(v7, v11, type metadata accessor for Sentencepiece_NormalizerSpec);
  sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec, &unk_27237B508);
  sub_27237714C();
  return sub_2721F0794(v11, type metadata accessor for Sentencepiece_NormalizerSpec);
}

uint64_t sub_2721EDB64@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  sub_272376F0C();
  sub_272376F5C();
  v4 = a1[7];
  v5 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v12 = *(*(v7 - 8) + 56);
  (v12)((v7 - 8), &a2[v6], 1, 1, v7);
  v8 = a1[9];
  v9 = type metadata accessor for Sentencepiece_SelfTestData(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = &a2[a1[10]];

  return v12(v10, 1, 1, v7);
}

uint64_t sub_2721EDCFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_2721EDD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a2 + 20);
  v7 = a4(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t sub_2721EDE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881760, type metadata accessor for Sentencepiece_ModelProto, &unk_27237B9B8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EDED4(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_280881690, type metadata accessor for Sentencepiece_ModelProto, &unk_27237B940);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EDF40(uint64_t a1, uint64_t a2)
{
  sub_2721F106C(&qword_280881690, type metadata accessor for Sentencepiece_ModelProto, &unk_27237B940);

  return sub_27237709C();
}

uint64_t sub_2721EDFC0()
{
  result = MEMORY[0x2743C4AD0](0x636E65746E65532ELL, 0xEE00656365695065);
  qword_2808939B8 = 0xD000000000000018;
  unk_2808939C0 = 0x80000002723877C0;
  return result;
}

uint64_t sub_2721EE038()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_2808939C8);
  sub_2721F08DC(v0, qword_2808939C8);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27237AFB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "piece";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_27237715C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_27237716C();
}

uint64_t sub_2721EE24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_272376FAC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
          sub_2721F3FE4();
          sub_272376FDC();
          break;
        case 2:
          type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
          sub_272376FFC();
          break;
        case 1:
          type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
          sub_27237702C();
          break;
        default:
          if ((result - 200) <= 0x1FFFFF37)
          {
            type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
            sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece, &unk_27237BAA8);
            sub_272376FBC();
          }

          break;
      }

      result = sub_272376FAC();
    }
  }

  return result;
}

uint64_t sub_2721EE3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  v6 = result;
  if (*(v3 + *(result + 24) + 8))
  {
    result = sub_27237711C();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if ((*(v3 + *(v6 + 28) + 4) & 1) == 0)
  {
    sub_2723770EC();
  }

  if (*(v3 + *(v6 + 32)) != 6)
  {
    sub_2721F3FE4();
    sub_2723770CC();
  }

  sub_2723770AC();
  return sub_272376EFC();
}

uint64_t sub_2721EE520@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_272376F0C();
  result = sub_272376F5C();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a2 + a1[8]) = 6;
  return result;
}

uint64_t sub_2721EE5A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_2721EE634@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_272376F1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2721EE6A0(uint64_t a1)
{
  v3 = sub_272376F1C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2721EE73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881758, type metadata accessor for Sentencepiece_ModelProto.SentencePiece, &unk_27237BB20);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EE7E0(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece, &unk_27237BAA8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EE850(uint64_t a1, uint64_t a2)
{
  sub_27237874C();
  sub_27237777C();
  return sub_27237878C();
}

uint64_t sub_2721EE8A8(uint64_t a1, uint64_t a2)
{
  sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece, &unk_27237BAA8);

  return sub_27237709C();
}

uint64_t sub_2721EE928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27237874C();
  sub_27237777C();
  return sub_27237878C();
}

uint64_t sub_2721EE980()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_2808939E0);
  sub_2721F08DC(v0, qword_2808939E0);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_27237AF70;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "NORMAL";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_27237715C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "UNKNOWN";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "CONTROL";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "USER_DEFINED";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "UNUSED";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "BYTE";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  return sub_27237716C();
}

uint64_t sub_2721EEC64@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_27237717C();
  v7 = sub_2721F08DC(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2721EED00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_SelfTestData.Sample(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_2721F072C(v13, v10, type metadata accessor for Sentencepiece_SelfTestData.Sample);
        sub_2721F072C(v14, v7, type metadata accessor for Sentencepiece_SelfTestData.Sample);
        v16 = *(v4 + 20);
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_27237865C() & 1) == 0))
          {
LABEL_27:
            sub_2721F0794(v7, type metadata accessor for Sentencepiece_SelfTestData.Sample);
            sub_2721F0794(v10, type metadata accessor for Sentencepiece_SelfTestData.Sample);
            goto LABEL_28;
          }
        }

        else if (v20)
        {
          goto LABEL_27;
        }

        v22 = *(v4 + 24);
        v23 = &v10[v22];
        v24 = *&v10[v22 + 8];
        v25 = &v7[v22];
        v26 = *(v25 + 1);
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_27;
          }

          v27 = *v23 == *v25 && v24 == v26;
          if (!v27 && (sub_27237865C() & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v26)
        {
          goto LABEL_27;
        }

        sub_272376F1C();
        sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = sub_2723777DC();
        sub_2721F0794(v7, type metadata accessor for Sentencepiece_SelfTestData.Sample);
        sub_2721F0794(v10, type metadata accessor for Sentencepiece_SelfTestData.Sample);
        if (v28)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_28:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_2721EEFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_2721F072C(v13, v10, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
        sub_2721F072C(v14, v7, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
        v16 = v4[6];
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20)
          {
            goto LABEL_30;
          }

          v21 = *v17 == *v19 && v18 == v20;
          if (!v21 && (sub_27237865C() & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else if (v20)
        {
          goto LABEL_30;
        }

        v22 = v4[7];
        v23 = &v10[v22];
        v24 = v10[v22 + 4];
        v25 = &v7[v22];
        v26 = v7[v22 + 4];
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (*v23 != *v25)
          {
            LOBYTE(v26) = 1;
          }

          if (v26)
          {
LABEL_30:
            sub_2721F0794(v7, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
            sub_2721F0794(v10, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
            goto LABEL_31;
          }
        }

        v27 = v4[8];
        v28 = v10[v27];
        v29 = v7[v27];
        if (v28 == 6)
        {
          if (v29 != 6)
          {
            goto LABEL_30;
          }
        }

        else if (v29 == 6 || qword_27237BEB8[v28] != qword_27237BEB8[v29])
        {
          goto LABEL_30;
        }

        sub_272376F1C();
        sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if ((sub_2723777DC() & 1) == 0)
        {
          goto LABEL_30;
        }

        sub_272376F6C();
        sub_2721F106C(&qword_280881608, MEMORY[0x277D21710], MEMORY[0x277D21718]);
        v30 = sub_2723777DC();
        sub_2721F0794(v7, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
        sub_2721F0794(v10, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
        if (v30)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v30 & 1;
      }
    }

    v30 = 1;
  }

  else
  {
LABEL_31:
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t sub_2721EF318(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_27237865C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2721EF3A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_272376BDC();
    if (v10)
    {
      v11 = sub_272376BFC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_272376BEC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_272376BDC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_272376BFC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_272376BEC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2721EF5D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2721F0914(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2721F05C8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2721EF3A8(v13, a3, a4, &v12);
  v10 = v4;
  sub_2721F05C8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void *sub_2721EF768(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2721EF788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2721EF788(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2721F065C(&qword_2808817C0, &qword_27237BEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2721F065C(&qword_2808817C8, &unk_27237BEA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2721EF8D0(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 56) = 4;
  *(v1 + 60) = 0;
  *(v1 + 64) = 1;
  *(v1 + 72) = v3;
  *(v1 + 80) = 0;
  *(v1 + 84) = 513;
  *(v1 + 88) = 0;
  *(v1 + 92) = 1;
  *(v1 + 96) = 0;
  *(v1 + 108) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  *(v1 + 128) = 513;
  *(v1 + 132) = 0;
  *(v1 + 140) = 0;
  *(v1 + 136) = 1;
  *(v1 + 144) = 1;
  *(v1 + 148) = 0;
  *(v1 + 152) = 1;
  *(v1 + 156) = 0;
  *(v1 + 164) = 0;
  *(v1 + 160) = 1;
  *(v1 + 168) = 1;
  *(v1 + 172) = 0;
  *(v1 + 176) = 1;
  *(v1 + 180) = 0;
  *(v1 + 188) = 0;
  *(v1 + 184) = 1;
  *(v1 + 192) = 1;
  *(v1 + 197) = 514;
  *(v1 + 193) = 33686018;
  *(v1 + 200) = 0;
  *(v1 + 216) = v3;
  *(v1 + 224) = v3;
  *(v1 + 208) = 0;
  *(v1 + 240) = 0;
  *(v1 + 232) = 0;
  *(v1 + 248) = 33686018;
  *(v1 + 256) = 1;
  *(v1 + 260) = 0;
  *(v1 + 264) = 1;
  *(v1 + 268) = 0;
  *(v1 + 272) = 1;
  *(v1 + 276) = 0;
  *(v1 + 280) = 1;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 2;
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v4;
  swift_beginAccess();
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v6;
  *(v1 + 32) = v5;
  swift_beginAccess();
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v8;
  *(v1 + 48) = v7;
  swift_beginAccess();
  LOBYTE(v8) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v8;
  swift_beginAccess();
  LODWORD(v8) = *(a1 + 60);
  v9 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 60) = v8;
  *(v1 + 64) = v9;
  swift_beginAccess();
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v10;

  swift_beginAccess();
  LODWORD(v7) = *(a1 + 80);
  LOBYTE(v4) = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 80) = v7;
  *(v1 + 84) = v4;
  swift_beginAccess();
  LOBYTE(v7) = *(a1 + 85);
  swift_beginAccess();
  *(v1 + 85) = v7;
  swift_beginAccess();
  LODWORD(v7) = *(a1 + 88);
  LOBYTE(v4) = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 88) = v7;
  *(v1 + 92) = v4;
  swift_beginAccess();
  v11 = *(a1 + 96);
  LOBYTE(v4) = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v11;
  *(v1 + 104) = v4;
  swift_beginAccess();
  LODWORD(v11) = *(a1 + 108);
  LOBYTE(v4) = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 108) = v11;
  *(v1 + 112) = v4;
  swift_beginAccess();
  v12 = *(a1 + 120);
  LOBYTE(v4) = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 120) = v12;
  *(v1 + 128) = v4;
  swift_beginAccess();
  LOBYTE(v12) = *(a1 + 129);
  swift_beginAccess();
  *(v1 + 129) = v12;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 132);
  LOBYTE(v4) = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 132) = v12;
  *(v1 + 136) = v4;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 140);
  LOBYTE(v4) = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 140) = v12;
  *(v1 + 144) = v4;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 148);
  LOBYTE(v4) = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 148) = v12;
  *(v1 + 152) = v4;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 156);
  LOBYTE(v4) = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 156) = v12;
  *(v1 + 160) = v4;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 164);
  LOBYTE(v4) = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 164) = v12;
  *(v1 + 168) = v4;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 172);
  LOBYTE(v4) = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 172) = v12;
  *(v1 + 176) = v4;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 180);
  LOBYTE(v4) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 180) = v12;
  *(v1 + 184) = v4;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 188);
  LOBYTE(v4) = *(a1 + 192);
  swift_beginAccess();
  *(v1 + 188) = v12;
  *(v1 + 192) = v4;
  swift_beginAccess();
  LOBYTE(v12) = *(a1 + 193);
  swift_beginAccess();
  *(v1 + 193) = v12;
  swift_beginAccess();
  LOBYTE(v12) = *(a1 + 194);
  swift_beginAccess();
  *(v1 + 194) = v12;
  swift_beginAccess();
  LOBYTE(v12) = *(a1 + 195);
  swift_beginAccess();
  *(v1 + 195) = v12;
  swift_beginAccess();
  LOBYTE(v12) = *(a1 + 196);
  swift_beginAccess();
  *(v1 + 196) = v12;
  swift_beginAccess();
  LOBYTE(v12) = *(a1 + 197);
  swift_beginAccess();
  *(v1 + 197) = v12;
  swift_beginAccess();
  LOBYTE(v12) = *(a1 + 198);
  swift_beginAccess();
  *(v1 + 198) = v12;
  swift_beginAccess();
  v14 = *(a1 + 200);
  v13 = *(a1 + 208);
  swift_beginAccess();
  *(v1 + 200) = v14;
  *(v1 + 208) = v13;

  swift_beginAccess();
  v15 = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 216) = v15;

  swift_beginAccess();
  v16 = *(a1 + 224);
  swift_beginAccess();
  *(v1 + 224) = v16;

  swift_beginAccess();
  v18 = *(a1 + 232);
  v17 = *(a1 + 240);
  swift_beginAccess();
  *(v1 + 232) = v18;
  *(v1 + 240) = v17;

  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 248) = v17;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 249);
  swift_beginAccess();
  *(v1 + 249) = v17;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 250);
  swift_beginAccess();
  *(v1 + 250) = v17;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 251);
  swift_beginAccess();
  *(v1 + 251) = v17;
  swift_beginAccess();
  LODWORD(v17) = *(a1 + 252);
  LOBYTE(v4) = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 252) = v17;
  *(v1 + 256) = v4;
  swift_beginAccess();
  LODWORD(v17) = *(a1 + 260);
  LOBYTE(v4) = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 260) = v17;
  *(v1 + 264) = v4;
  swift_beginAccess();
  LODWORD(v17) = *(a1 + 268);
  LOBYTE(v4) = *(a1 + 272);
  swift_beginAccess();
  *(v1 + 268) = v17;
  *(v1 + 272) = v4;
  swift_beginAccess();
  LODWORD(v17) = *(a1 + 276);
  LOBYTE(v4) = *(a1 + 280);
  swift_beginAccess();
  *(v1 + 276) = v17;
  *(v1 + 280) = v4;
  swift_beginAccess();
  v20 = *(a1 + 288);
  v19 = *(a1 + 296);
  swift_beginAccess();
  *(v1 + 288) = v20;
  *(v1 + 296) = v19;

  swift_beginAccess();
  v22 = *(a1 + 304);
  v21 = *(a1 + 312);
  swift_beginAccess();
  *(v1 + 304) = v22;
  *(v1 + 312) = v21;

  swift_beginAccess();
  v24 = *(a1 + 320);
  v23 = *(a1 + 328);
  swift_beginAccess();
  *(v1 + 320) = v24;
  *(v1 + 328) = v23;

  swift_beginAccess();
  v26 = *(a1 + 336);
  v25 = *(a1 + 344);
  swift_beginAccess();
  *(v1 + 336) = v26;
  *(v1 + 344) = v25;

  swift_beginAccess();
  v28 = *(a1 + 352);
  v27 = *(a1 + 360);
  swift_beginAccess();
  *(v1 + 352) = v28;
  *(v1 + 360) = v27;

  swift_beginAccess();
  LOBYTE(a1) = *(a1 + 368);
  swift_beginAccess();
  *(v1 + 368) = a1;
  return v1;
}

uint64_t sub_2721F0508(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_2721F054C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2721F0560(result, a2);
  }

  return result;
}

uint64_t sub_2721F0560(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2721F05B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2721F05C8(result, a2);
  }

  return result;
}

uint64_t sub_2721F05C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2721F065C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2721F06C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2721F072C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2721F0794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2721F07F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2721F065C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2721F087C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2721F08B4(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x4050302010006uLL >> (8 * a1));
  }
}

uint64_t sub_2721F08DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2721F0914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_272376BDC();
  v11 = result;
  if (result)
  {
    result = sub_272376BFC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_272376BEC();
  sub_2721EF3A8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2721F09CC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2721F0560(a3, a4);
          return sub_2721EF5D8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2721F0B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v13 = *(a1 + v11);
  v12 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v16 = *v14;
  v15 = v14[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      sub_2721F054C(v13, v12);
      sub_2721F054C(v16, v15);
      sub_2721F05B4(v13, v12);
      goto LABEL_17;
    }

LABEL_14:
    sub_2721F054C(v13, v12);
    sub_2721F054C(v16, v15);
    sub_2721F05B4(v13, v12);
    sub_2721F05B4(v16, v15);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_14;
  }

  sub_2721F054C(v13, v12);
  sub_2721F054C(v16, v15);
  v18 = sub_2721F09CC(v13, v12, v16, v15);
  sub_2721F05B4(v16, v15);
  sub_2721F05B4(v13, v12);
  if (!v18)
  {
    return 0;
  }

LABEL_17:
  v19 = v4[8];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    return 0;
  }

  v22 = v4[9];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }
  }

  else if (v24 == 2 || ((v23 ^ v24) & 1) != 0)
  {
    return 0;
  }

  v25 = v4[10];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    return 0;
  }

  v28 = v4[11];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (!v30)
  {
    if (!v32)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  sub_272376F1C();
  sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  if ((sub_2723777DC() & 1) == 0)
  {
    return 0;
  }

  sub_272376F6C();
  sub_2721F106C(&qword_280881608, MEMORY[0x277D21710], MEMORY[0x277D21718]);
  return sub_2723777DC() & 1;
}

uint64_t sub_2721F0E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_SelfTestData.Sample(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_27237865C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_27237865C() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_272376F1C();
    sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2723777DC() & 1;
  }

  return 0;
}

uint64_t sub_2721F0F5C(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Sentencepiece_TrainerSpec(0) + 24);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && (sub_2721E9934(v5, v6) & 1) == 0)
  {
    return 0;
  }

  sub_272376F1C();
  sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  if ((sub_2723777DC() & 1) == 0)
  {
    return 0;
  }

  sub_272376F6C();
  sub_2721F106C(&qword_280881608, MEMORY[0x277D21710], MEMORY[0x277D21718]);
  return sub_2723777DC() & 1;
}

uint64_t sub_2721F106C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2721F10B4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Sentencepiece_SelfTestData(0);
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x28223BE20](v4);
  v79 = (&v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2721F065C(&qword_2808815E0, &qword_27237AFE0);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = (&v75 - v7);
  v82 = sub_2721F065C(&qword_2808817A8, &qword_27237BE88);
  MEMORY[0x28223BE20](v82);
  v85 = &v75 - v8;
  v9 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v87 = *(v9 - 8);
  v88 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v78 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v75 - v15;
  v89 = sub_2721F065C(&qword_2808817B0, &qword_27237BE90);
  v16 = MEMORY[0x28223BE20](v89);
  v80 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - v18;
  v20 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v75 - v25;
  v27 = sub_2721F065C(&qword_2808817B8, &qword_27237BE98);
  MEMORY[0x28223BE20](v27);
  v29 = &v75 - v28;
  if ((sub_2721EEFC8(*a1, *a2) & 1) == 0)
  {
    goto LABEL_19;
  }

  v75 = v11;
  v30 = type metadata accessor for Sentencepiece_ModelProto(0);
  v90 = a2;
  v31 = *(v30 + 28);
  v32 = *(v27 + 48);
  v76 = a1;
  v77 = v30;
  sub_2721F07F4(a1 + v31, v29, &qword_2808815D0, &qword_27237AFD0);
  sub_2721F07F4(v90 + v31, &v29[v32], &qword_2808815D0, &qword_27237AFD0);
  v33 = *(v21 + 48);
  if (v33(v29, 1, v20) == 1)
  {
    if (v33(&v29[v32], 1, v20) == 1)
    {
      sub_2721F40F0(v29, &qword_2808815D0, &qword_27237AFD0);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  sub_2721F07F4(v29, v26, &qword_2808815D0, &qword_27237AFD0);
  if (v33(&v29[v32], 1, v20) == 1)
  {
    sub_2721F0794(v26, type metadata accessor for Sentencepiece_TrainerSpec);
LABEL_10:
    v42 = &qword_2808817B8;
    v43 = &qword_27237BE98;
LABEL_17:
    v48 = v29;
LABEL_18:
    sub_2721F40F0(v48, v42, v43);
    goto LABEL_19;
  }

  sub_2721F06C4(&v29[v32], v23, type metadata accessor for Sentencepiece_TrainerSpec);
  v44 = *(v20 + 24);
  v45 = *&v26[v44];
  v46 = *&v23[v44];
  if (v45 != v46 && (sub_2721E9934(v45, v46) & 1) == 0 || (sub_272376F1C(), sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (sub_2723777DC() & 1) == 0))
  {
    sub_2721F0794(v23, type metadata accessor for Sentencepiece_TrainerSpec);
    sub_2721F0794(v26, type metadata accessor for Sentencepiece_TrainerSpec);
    v42 = &qword_2808815D0;
    v43 = &qword_27237AFD0;
    goto LABEL_17;
  }

  sub_272376F6C();
  sub_2721F106C(&qword_280881608, MEMORY[0x277D21710], MEMORY[0x277D21718]);
  v47 = sub_2723777DC();
  sub_2721F0794(v23, type metadata accessor for Sentencepiece_TrainerSpec);
  sub_2721F0794(v26, type metadata accessor for Sentencepiece_TrainerSpec);
  sub_2721F40F0(v29, &qword_2808815D0, &qword_27237AFD0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  v35 = v76;
  v34 = v77;
  v36 = *(v77 + 32);
  v37 = *(v89 + 48);
  sub_2721F07F4(v76 + v36, v19, &qword_2808815D8, &qword_27237AFD8);
  v38 = v90 + v36;
  v39 = v90;
  sub_2721F07F4(v38, &v19[v37], &qword_2808815D8, &qword_27237AFD8);
  v40 = v88;
  v41 = *(v87 + 6);
  if (v41(v19, 1, v88) == 1)
  {
    if (v41(&v19[v37], 1, v40) == 1)
    {
      v87 = v41;
      sub_2721F40F0(v19, &qword_2808815D8, &qword_27237AFD8);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v51 = v86;
  sub_2721F07F4(v19, v86, &qword_2808815D8, &qword_27237AFD8);
  if (v41(&v19[v37], 1, v40) == 1)
  {
    sub_2721F0794(v51, type metadata accessor for Sentencepiece_NormalizerSpec);
LABEL_23:
    v42 = &qword_2808817B0;
    v43 = &qword_27237BE90;
    v48 = v19;
    goto LABEL_18;
  }

  v87 = v41;
  v52 = &v19[v37];
  v53 = v75;
  sub_2721F06C4(v52, v75, type metadata accessor for Sentencepiece_NormalizerSpec);
  v54 = sub_2721F0B34(v51, v53);
  sub_2721F0794(v53, type metadata accessor for Sentencepiece_NormalizerSpec);
  sub_2721F0794(v51, type metadata accessor for Sentencepiece_NormalizerSpec);
  sub_2721F40F0(v19, &qword_2808815D8, &qword_27237AFD8);
  if ((v54 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_25:
  v55 = *(v34 + 36);
  v56 = *(v82 + 48);
  v57 = v85;
  sub_2721F07F4(v35 + v55, v85, &qword_2808815E0, &qword_27237AFE0);
  sub_2721F07F4(v39 + v55, v57 + v56, &qword_2808815E0, &qword_27237AFE0);
  v58 = v84;
  v59 = *(v83 + 48);
  if (v59(v57, 1, v84) == 1)
  {
    if (v59(v57 + v56, 1, v58) == 1)
    {
      sub_2721F40F0(v57, &qword_2808815E0, &qword_27237AFE0);
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v66 = v81;
  sub_2721F07F4(v57, v81, &qword_2808815E0, &qword_27237AFE0);
  if (v59(v57 + v56, 1, v58) == 1)
  {
    sub_2721F0794(v66, type metadata accessor for Sentencepiece_SelfTestData);
LABEL_33:
    v42 = &qword_2808817A8;
    v43 = &qword_27237BE88;
    v48 = v57;
    goto LABEL_18;
  }

  v67 = v57 + v56;
  v68 = v79;
  sub_2721F06C4(v67, v79, type metadata accessor for Sentencepiece_SelfTestData);
  if ((sub_2721EED00(*v66, *v68) & 1) == 0 || (sub_272376F1C(), sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (sub_2723777DC() & 1) == 0))
  {
    sub_2721F0794(v68, type metadata accessor for Sentencepiece_SelfTestData);
    sub_2721F0794(v66, type metadata accessor for Sentencepiece_SelfTestData);
    v42 = &qword_2808815E0;
    v43 = &qword_27237AFE0;
    v48 = v57;
    goto LABEL_18;
  }

  sub_272376F6C();
  sub_2721F106C(&qword_280881608, MEMORY[0x277D21710], MEMORY[0x277D21718]);
  v69 = sub_2723777DC();
  sub_2721F0794(v68, type metadata accessor for Sentencepiece_SelfTestData);
  sub_2721F0794(v66, type metadata accessor for Sentencepiece_SelfTestData);
  sub_2721F40F0(v57, &qword_2808815E0, &qword_27237AFE0);
  if ((v69 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_28:
  v60 = *(v77 + 40);
  v61 = *(v89 + 48);
  v62 = v80;
  sub_2721F07F4(v35 + v60, v80, &qword_2808815D8, &qword_27237AFD8);
  v63 = v90 + v60;
  v64 = v62;
  sub_2721F07F4(v63, v62 + v61, &qword_2808815D8, &qword_27237AFD8);
  v65 = v87;
  if (v87(v62, 1, v40) != 1)
  {
    v70 = v62;
    v71 = v78;
    sub_2721F07F4(v70, v78, &qword_2808815D8, &qword_27237AFD8);
    if (v65(v64 + v61, 1, v40) != 1)
    {
      v72 = v64 + v61;
      v73 = v75;
      sub_2721F06C4(v72, v75, type metadata accessor for Sentencepiece_NormalizerSpec);
      v74 = sub_2721F0B34(v71, v73);
      sub_2721F0794(v73, type metadata accessor for Sentencepiece_NormalizerSpec);
      sub_2721F0794(v71, type metadata accessor for Sentencepiece_NormalizerSpec);
      sub_2721F40F0(v64, &qword_2808815D8, &qword_27237AFD8);
      if ((v74 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_43;
    }

    sub_2721F0794(v71, type metadata accessor for Sentencepiece_NormalizerSpec);
    goto LABEL_41;
  }

  if (v65(v62 + v61, 1, v40) != 1)
  {
LABEL_41:
    v42 = &qword_2808817B0;
    v43 = &qword_27237BE90;
    v48 = v64;
    goto LABEL_18;
  }

  sub_2721F40F0(v62, &qword_2808815D8, &qword_27237AFD8);
LABEL_43:
  sub_272376F1C();
  sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  if (sub_2723777DC())
  {
    sub_272376F6C();
    sub_2721F106C(&qword_280881608, MEMORY[0x277D21710], MEMORY[0x277D21718]);
    v49 = sub_2723777DC();
    return v49 & 1;
  }

LABEL_19:
  v49 = 0;
  return v49 & 1;
}

uint64_t sub_2721F1E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_27237865C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 6)
  {
    if (v20 != 6)
    {
      return 0;
    }
  }

  else if (v20 == 6 || qword_27237BEB8[v19] != qword_27237BEB8[v20])
  {
    return 0;
  }

  sub_272376F1C();
  sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  if (sub_2723777DC())
  {
    sub_272376F6C();
    sub_2721F106C(&qword_280881608, MEMORY[0x277D21710], MEMORY[0x277D21718]);
    return sub_2723777DC() & 1;
  }

  return 0;
}

unint64_t sub_2721F1FD0()
{
  result = qword_280881638;
  if (!qword_280881638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881638);
  }

  return result;
}

unint64_t sub_2721F2028()
{
  result = qword_280881640;
  if (!qword_280881640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881640);
  }

  return result;
}

unint64_t sub_2721F2080()
{
  result = qword_280881648;
  if (!qword_280881648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881648);
  }

  return result;
}

uint64_t sub_2721F214C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2721F2228()
{
  result = qword_280881678;
  if (!qword_280881678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881678);
  }

  return result;
}

unint64_t sub_2721F2280()
{
  result = qword_280881680;
  if (!qword_280881680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881680);
  }

  return result;
}

unint64_t sub_2721F22D8()
{
  result = qword_280881688;
  if (!qword_280881688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881688);
  }

  return result;
}

uint64_t sub_2721F23EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2721F29AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376F1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_272376F6C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2721F2ACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_272376F1C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_272376F6C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2721F2BD4(uint64_t a1)
{
  result = sub_272376F1C();
  if (v2 <= 0x3F)
  {
    result = sub_272376F6C();
    if (v3 <= 0x3F)
    {
      type metadata accessor for Sentencepiece_TrainerSpec._StorageClass();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Sentencepiece_TrainerSpec.ModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sentencepiece_TrainerSpec.ModelType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2721F2DF4(uint64_t a1)
{
  sub_272376F1C();
  if (v1 <= 0x3F)
  {
    sub_272376F6C();
    if (v2 <= 0x3F)
    {
      sub_2721F3E38(319, &qword_280881708, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2721F3E38(319, &qword_280881710, MEMORY[0x277CC9318]);
        if (v4 <= 0x3F)
        {
          sub_2721F3E38(319, &qword_280881718, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2721F2F0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_272376F1C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_272376F6C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2721F3044(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_272376F1C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_272376F6C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2721F3168(uint64_t a1)
{
  sub_2721F3A88(319, &qword_280881720, type metadata accessor for Sentencepiece_SelfTestData.Sample, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_272376F1C();
    if (v2 <= 0x3F)
    {
      sub_272376F6C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2721F3248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376F1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2721F3328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_272376F1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_2721F33E4(uint64_t a1)
{
  sub_272376F1C();
  if (v1 <= 0x3F)
  {
    sub_2721F3E38(319, &qword_280881708, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2721F348C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_272376F1C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = sub_272376F6C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v14 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v16 = sub_2721F065C(&qword_2808815E0, &qword_27237AFE0);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[9]];

  return v17(v18, a2, v16);
}

char *sub_2721F36C0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_272376F1C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = sub_272376F6C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v16 = sub_2721F065C(&qword_2808815E0, &qword_27237AFE0);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[9]];

  return v17(v18, a2, a2, v16);
}

void sub_2721F38E0(uint64_t a1)
{
  sub_2721F3A88(319, &qword_280881728, type metadata accessor for Sentencepiece_ModelProto.SentencePiece, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_272376F1C();
    if (v2 <= 0x3F)
    {
      sub_272376F6C();
      if (v3 <= 0x3F)
      {
        sub_2721F3A88(319, &qword_280881730, type metadata accessor for Sentencepiece_TrainerSpec, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2721F3A88(319, &qword_280881738, type metadata accessor for Sentencepiece_NormalizerSpec, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2721F3A88(319, &qword_280881740, type metadata accessor for Sentencepiece_SelfTestData, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2721F3A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2721F3B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376F1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_272376F6C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2721F3C30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_272376F1C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_272376F6C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_2721F3D3C(uint64_t a1)
{
  sub_272376F1C();
  if (v1 <= 0x3F)
  {
    sub_272376F6C();
    if (v2 <= 0x3F)
    {
      sub_2721F3E38(319, &qword_280881708, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2721F3E38(319, &qword_280881748, MEMORY[0x277D83A90]);
        if (v4 <= 0x3F)
        {
          sub_2721F3E38(319, &qword_280881750, &type metadata for Sentencepiece_ModelProto.SentencePiece.TypeEnum);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2721F3E38(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_27237801C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Sentencepiece_ModelProto.SentencePiece.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sentencepiece_ModelProto.SentencePiece.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2721F3FE4()
{
  result = qword_280881788;
  if (!qword_280881788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881788);
  }

  return result;
}

unint64_t sub_2721F4038()
{
  result = qword_280881790;
  if (!qword_280881790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881790);
  }

  return result;
}

uint64_t *sub_2721F408C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2721F40F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2721F065C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_2721F4150(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2721F41B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2721F4234()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_2722002AC(v1);
    }

    if (v2 > *(v1 + 2))
    {
      __break(1u);
    }

    else
    {
      bzero(v1 + 32, 4 * v2);
      *v0 = v1;
    }
  }
}

uint64_t sub_2721F4330()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2721F437C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_2721F4454(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_2721F4518(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_2721F45DC(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_2721F466C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_2721F46B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_2721F475C()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_2721F47A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_2721F4884(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_2721F4954(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t sub_2721F49EC()
{
  swift_beginAccess();
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_2721F4A38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_2721F4B10(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_2721F4BA0()
{
  swift_beginAccess();
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_2721F4BEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t sub_2721F4D18(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t sub_2721F4DE4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 168) = a1;
  return result;
}

uint64_t sub_2721F4E74()
{
  swift_beginAccess();
  v1 = *(v0 + 176);

  return v1;
}

uint64_t sub_2721F4EC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
}

uint64_t sub_2721F4F9C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 192) = a1;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t sub_2721F50C8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 224) = a1;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t sub_2721F516C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_27220038C(a1, a2);
    if (v7)
    {
      sub_2722041FC(*(a3 + 56) + 32 * v6, &v13);
      if (swift_dynamicCast())
      {
        return v12;
      }
    }
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_27237820C();

  v13 = 0x742064656C696146;
  v14 = 0xEF2064616572206FLL;
  MEMORY[0x2743C4AD0](a1, a2);
  MEMORY[0x2743C4AD0](0x6F63206D6F726620, 0xEC0000006769666ELL);
  v9 = v13;
  v10 = v14;
  sub_2722032B4();
  swift_allocError();
  *v11 = v9;
  v11[1] = v10;
  return swift_willThrow();
}

void *sub_2721F52A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    goto LABEL_14;
  }

  v6 = sub_27220038C(a1, a2);
  if ((v7 & 1) == 0 || (sub_2722041FC(*(a3 + 56) + 32 * v6, &v15), !swift_dynamicCast()))
  {
    if (*(a3 + 16))
    {
      v9 = sub_27220038C(a1, a2);
      if (v10)
      {
        sub_2722041FC(*(a3 + 56) + 32 * v9, &v15);
        sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
        if (swift_dynamicCast())
        {
          if (v14[2] == 2 && (v14[4] == a1 && v14[5] == a2 || (sub_27237865C() & 1) != 0))
          {
            v8 = v14[6];

            return v8;
          }
        }
      }
    }

LABEL_14:
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_27237820C();

    v15 = 0x742064656C696146;
    v16 = 0xEF2064616572206FLL;
    MEMORY[0x2743C4AD0](a1, a2);
    MEMORY[0x2743C4AD0](0x6F63206D6F726620, 0xEC0000006769666ELL);
    v11 = v15;
    v8 = v16;
    sub_2722032B4();
    swift_allocError();
    *v12 = v11;
    v12[1] = v8;
    swift_willThrow();
    return v8;
  }

  return v14;
}

uint64_t sub_2721F54A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_27220038C(a1, a2), (v7 & 1) != 0) && (sub_2722041FC(*(a3 + 56) + 32 * v6, &v25), sub_2721F065C(&qword_280881890, &unk_272382EF0), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v27;
    v9 = *(v27 + 16);
    if (v9)
    {
      v25 = MEMORY[0x277D84F90];
      sub_27220056C(0, v9, 0);
      v10 = v25;
      v11 = (v8 + 56);
      do
      {
        v12 = *(v11 - 3);
        v13 = *(v11 - 2);
        v14 = *(v11 - 1);
        v15 = *v11;

        v16 = MEMORY[0x2743C4A20](v12, v13, v14, v15);
        v18 = v17;

        v25 = v10;
        v20 = *(v10 + 16);
        v19 = *(v10 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_27220056C((v19 > 1), v20 + 1, 1);
          v10 = v25;
        }

        *(v10 + 16) = v20 + 1;
        v21 = v10 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v11 += 4;
        --v9;
      }

      while (v9);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_27237820C();

    v25 = 0x742064656C696146;
    v26 = 0xEF2064616572206FLL;
    MEMORY[0x2743C4AD0](a1, a2);
    MEMORY[0x2743C4AD0](0x6F63206D6F726620, 0xEC0000006769666ELL);
    v10 = v25;
    v22 = v26;
    sub_2722032B4();
    swift_allocError();
    *v23 = v10;
    v23[1] = v22;
    swift_willThrow();
  }

  return v10;
}

void *sub_2721F56DC(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v8 = result;
  v25 = MEMORY[0x277D84F90];
  result = sub_2722005CC(0, v4 & ~(v4 >> 63), 0);
  if (a2 >= v8 && (v4 & 0x8000000000000000) == 0)
  {
    v5 = v25;
    v9 = v8;
    while (a2 != v9)
    {
      if (v8 < 0)
      {
        goto LABEL_32;
      }

      if (v9 >= *(*a3 + 16))
      {
        goto LABEL_33;
      }

      v10 = *(*(*a3 + 8 * v9 + 32) + 16);
      v11 = v9 * v10;
      if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
      {
        goto LABEL_34;
      }

      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (v12)
      {
        goto LABEL_35;
      }

      v14 = v13 - v11;
      if (v13 < v11)
      {
        goto LABEL_36;
      }

      if (v11 < 0)
      {
        goto LABEL_37;
      }

      v15 = *a4;
      v16 = *(*a4 + 16);
      if (v16 < v11 || v16 < v13)
      {
        goto LABEL_38;
      }

      if (v16 == v14)
      {

        v18 = v15;
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
        if (v13 != v11)
        {
          if (v14 < 1)
          {
            v22 = 4 * v14;
            v18 = MEMORY[0x277D84F90];
          }

          else
          {
            sub_2721F065C(&qword_280881848, &unk_27237C250);
            v18 = swift_allocObject();
            v21 = j__malloc_size(v18);
            v22 = 4 * v14;
            v23 = v21 - 32;
            if (v21 < 32)
            {
              v23 = v21 - 29;
            }

            v18[2] = v14;
            v18[3] = 2 * (v23 >> 2);
          }

          result = memcpy(v18 + 4, v15 + 4 * v11 + 32, v22);
        }
      }

      v20 = *(v25 + 16);
      v19 = *(v25 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_2722005CC((v19 > 1), v20 + 1, 1);
      }

      *(v25 + 16) = v20 + 1;
      *(v25 + 8 * v20 + 32) = v18;
      if (a2 == ++v9)
      {
        return v5;
      }
    }

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
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_2721F58F8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_27237825C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_272200A34(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2721F5BF8()
{
  (*(*v0 + 560))();
  if (v1 && (v2 = , v3 = (*(*v0 + 584))(v2), (v4 & 1) == 0) && ((*(*v0 + 608))(v3), v5))
  {

    (*(*v0 + 632))(v6);
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_2721F5CE8(char a1)
{
  result = 0x6165467475706E69;
  switch(a1)
  {
    case 1:
      result = 0x6172467475706E69;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x65764F656D617266;
      break;
    case 4:
      result = 1802723693;
      break;
    case 5:
      result = 0x6465626D45736F70;
      break;
    case 6:
      result = 0x6168536574617473;
      break;
    case 7:
      result = 0x6174537475706E69;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6D69447475706E69;
      break;
    case 10:
      result = 0x656D726F666E6F63;
      break;
    case 11:
      result = 0x6574736F50435463;
      break;
    case 12:
      result = 0x745374757074756FLL;
      break;
    case 13:
      result = 0x694474757074756FLL;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2721F5F80()
{
  v1 = *v0;
  sub_27237874C();
  MEMORY[0x2743C58B0](v1);
  return sub_27237878C();
}

uint64_t sub_2721F5FF4(uint64_t a1)
{
  v2 = *v1;
  sub_27237874C();
  MEMORY[0x2743C58B0](v2);
  return sub_27237878C();
}

uint64_t sub_2721F6040@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_272203364(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2721F6080(uint64_t a1)
{
  v2 = sub_272203050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2721F60BC(uint64_t a1)
{
  v2 = sub_272203050();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2721F60F8()
{

  return v0;
}

uint64_t sub_2721F6168()
{
  sub_2721F60F8();

  return swift_deallocClassInstance();
}

uint64_t sub_2721F619C(void *a1)
{
  v2 = swift_allocObject();
  sub_2721F61EC(a1);
  return v2;
}

void *sub_2721F61EC(void *a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808817D0, &qword_27237BF10);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = v65 - v5;
  *(v2 + 16) = 0;
  v77 = v2 + 16;
  *(v2 + 32) = 0u;
  v76 = (v2 + 32);
  *(v2 + 48) = 0u;
  v75 = (v2 + 48);
  *(v2 + 24) = 0xE000000000000000;
  *(v2 + 64) = 0xE000000000000000;
  *(v2 + 72) = 0;
  v74 = v2 + 72;
  *(v2 + 80) = 0xE000000000000000;
  v6 = MEMORY[0x277D84F90];
  *(v2 + 88) = MEMORY[0x277D84F90];
  v73 = (v2 + 88);
  *(v2 + 96) = v6;
  v72 = (v2 + 96);
  *(v2 + 104) = 0;
  v71 = v2 + 104;
  *(v2 + 112) = 0xE000000000000000;
  *(v2 + 128) = 0;
  v69 = v2 + 128;
  *(v2 + 120) = 0;
  v70 = (v2 + 120);
  *(v2 + 136) = 0xE000000000000000;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0xE000000000000000;
  *(v2 + 160) = v6;
  *(v2 + 184) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 208) = 0;
  *(v2 + 200) = 1;
  *(v2 + 224) = 0;
  *(v2 + 216) = 0;
  *(v2 + 232) = 1;
  v7 = a1[3];
  v80 = a1[4];
  v82 = a1;
  sub_27220300C(a1, v7);
  sub_272203050();
  v8 = v81;
  sub_2723787AC();
  if (v8)
  {

    v9 = v2;
    sub_2722039C8(v82);
  }

  else
  {
    v67 = (v2 + 160);
    v68 = v2 + 144;
    v80 = v2 + 208;
    v81 = v2;
    v65[1] = v2 + 224;
    v66 = (v2 + 168);
    v10 = v78;
    v100 = 0;
    v11 = sub_2723784AC();
    v13 = v12;
    swift_beginAccess();
    v14 = v81;
    v81[2] = v11;
    v14[3] = v13;

    v99 = 1;
    v16 = sub_2723784EC();
    v17 = v76;
    swift_beginAccess();
    *v17 = v16;
    v98 = 2;
    v18 = sub_2723784EC();
    v19 = v80;
    swift_beginAccess();
    *(v19 - 168) = v18;
    v97 = 3;
    v20 = sub_2723784EC();
    v21 = v75;
    swift_beginAccess();
    *v21 = v20;
    v96 = 4;
    v22 = sub_2723784AC();
    v24 = v23;
    swift_beginAccess();
    v14[7] = v22;
    v14[8] = v24;

    v95 = 5;
    v25 = sub_2723784AC();
    v27 = v26;
    swift_beginAccess();
    v14[9] = v25;
    v14[10] = v27;

    sub_2721F065C(&qword_2808817D8, &qword_27237BF18);
    v94 = 6;
    sub_2722030A4();
    sub_2723784FC();
    v28 = v93;
    v29 = v73;
    swift_beginAccess();
    *v29 = v28;

    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    LOBYTE(v93) = 7;
    sub_272203148(&qword_280881800, &qword_2808817F8, &unk_27237CA80);
    sub_2723784FC();
    v30 = v92;
    v31 = v72;
    swift_beginAccess();
    *v31 = v30;

    LOBYTE(v92) = 8;
    v32 = sub_2723784AC();
    v33 = v81;
    v34 = v32;
    v36 = v35;
    swift_beginAccess();
    v33[13] = v34;
    v33[14] = v36;

    v91 = 9;
    v37 = sub_2723784EC();
    v38 = v70;
    swift_beginAccess();
    *v38 = v37;
    v90 = 10;
    v39 = sub_2723784AC();
    v41 = v40;
    swift_beginAccess();
    v42 = v81;
    v81[16] = v39;
    v42[17] = v41;

    v89 = 11;
    v43 = sub_2723784AC();
    v45 = v44;
    swift_beginAccess();
    v46 = v81;
    v81[18] = v43;
    v46[19] = v45;

    v88 = 12;
    sub_2723784FC();
    v47 = v87;
    v48 = v67;
    swift_beginAccess();
    *v48 = v47;

    LOBYTE(v87) = 13;
    v49 = sub_2723784EC();
    v50 = v66;
    swift_beginAccess();
    *v50 = v49;
    v86 = 14;
    v51 = sub_27237843C();
    v53 = v52;
    swift_beginAccess();
    v54 = v81;
    v81[22] = v51;
    v54[23] = v53;

    v85 = 15;
    v55 = sub_27237847C();
    LOBYTE(v53) = v56;
    swift_beginAccess();
    v57 = v81;
    v81[24] = v55;
    *(v57 + 200) = v53 & 1;
    v84 = 16;
    v58 = sub_27237843C();
    v60 = v59;
    swift_beginAccess();
    v61 = v81;
    v81[26] = v58;
    v61[27] = v60;

    v83 = 17;
    v62 = sub_27237847C();
    LOBYTE(v60) = v63;
    (*(v10 + 8))(v101, v79);
    swift_beginAccess();
    v9 = v81;
    v64 = v82;
    v81[28] = v62;
    *(v9 + 232) = v60 & 1;
    sub_2722039C8(v64);
  }

  return v9;
}

uint64_t sub_2721F6AF8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 672))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2721F6B34@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[4];
  v10 = v1[3];
  v11[0] = v3;
  *(v11 + 9) = *(v1 + 73);
  v4 = *(v11 + 9);
  v5 = v1[2];
  v9[0] = v1[1];
  v6 = v9[0];
  v9[1] = v5;
  a1[2] = v10;
  a1[3] = v3;
  *(a1 + 57) = v4;
  *a1 = v6;
  a1[1] = v5;
  return sub_2721F07F4(v9, v8, &qword_280881808, &qword_27237BF30);
}

uint64_t sub_2721F6BBC(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[4];
  v8[2] = v1[3];
  v9[0] = v3;
  *(v9 + 9) = *(v1 + 73);
  v4 = v1[2];
  v8[0] = v1[1];
  v8[1] = v4;
  v5 = a1[3];
  v1[3] = a1[2];
  v1[4] = v5;
  *(v1 + 73) = *(a1 + 57);
  v6 = a1[1];
  v1[1] = *a1;
  v1[2] = v6;
  return sub_2721F40F0(v8, &qword_280881808, &qword_27237BF30);
}

void sub_2721F6C40(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v8 = v1[16];
  v7 = v1[17];
  sub_2722031B0(v3, v4, v5, v6, v8, v7);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
}

void sub_2721F6CC8(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  v9 = a1[1];
  *(v1 + 6) = *a1;
  *(v1 + 7) = v9;
  *(v1 + 8) = a1[2];
  sub_272203220(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2721F6D28()
{
  swift_beginAccess();
  v1 = *(v0 + 144);

  return v1;
}

uint64_t sub_2721F6D78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
}

uint64_t sub_2721F6E04(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
}

uint64_t sub_2721F6E4C()
{
  swift_beginAccess();
  v1 = *(v0 + 184);

  return v1;
}

uint64_t sub_2721F6E98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
}

uint64_t sub_2721F6F74(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 200) = a1;
}

uint64_t sub_2721F7010()
{
  swift_beginAccess();
  v1 = *(v0 + 208);

  return v1;
}

uint64_t sub_2721F7060(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
}

uint64_t sub_2721F70EC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 224) = a1;
}

uint64_t sub_2721F7168(char a1)
{
  result = swift_beginAccess();
  *(v1 + 232) = a1;
  return result;
}

uint64_t sub_2721F722C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 240) = a1;
  return result;
}

uint64_t sub_2721F72F4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 248) = a1;
}

uint64_t sub_2721F73C4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 256) = a1;
}

uint64_t sub_2721F74A4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 272) = a1;
}

uint64_t sub_2721F7574(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 280) = a1;
}

uint64_t sub_2721F7644(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 288) = a1;
}

uint64_t sub_2721F7718(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 296) = a1;
}

uint64_t sub_2721F77E8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 304) = a1;
}

uint64_t sub_2721F78B4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 312) = a1;
  return result;
}

uint64_t sub_2721F797C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 320) = a1;
}

uint64_t sub_2721F7A48(float a1)
{
  result = swift_beginAccess();
  *(v1 + 328) = a1;
  return result;
}

uint64_t sub_2721F7B0C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 332) = a1;
  return result;
}

uint64_t sub_2721F7BD0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 333) = a1;
  return result;
}

uint64_t sub_2721F7C98(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 336) = a1;
}

uint64_t sub_2721F7D30()
{
  swift_beginAccess();
  v1 = *(v0 + 344);

  return v1;
}

uint64_t sub_2721F7D7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
}

uint64_t sub_2721F7E54(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 360) = a1;
  return result;
}

uint64_t sub_2721F7EEC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  sub_2721F7F44(a1, v2);
  return v4;
}

char *sub_2721F7F44(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v193) = a2;
  v5 = sub_27237728C();
  v194 = *(v5 - 8);
  v195 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v180 - v10;
  MEMORY[0x28223BE20](v9);
  v192 = &v180 - v12;
  *(v2 + 1) = 0u;
  v13 = v2 + 16;
  *(v2 + 6) = 0u;
  *(v2 + 73) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 11) = 0u;
  v14 = (v2 + 176);
  *(v2 + 13) = 0u;
  v190 = v2 + 208;
  *(v2 + 18) = 0;
  *(v2 + 19) = 0xE000000000000000;
  *(v2 + 30) = -1;
  v191 = (v2 + 240);
  *(v2 + 12) = 0u;
  *(v2 + 217) = 0u;
  v15 = MEMORY[0x277D84F98];
  *(v2 + 31) = MEMORY[0x277D84F98];
  *(v2 + 32) = v15;
  *(v2 + 66) = -1028740016;
  v16 = MEMORY[0x277D84F90];
  *(v2 + 34) = MEMORY[0x277D84F90];
  *(v2 + 35) = v16;
  *(v2 + 36) = v16;
  *(v2 + 37) = v16;
  *(v2 + 38) = v16;
  *(v2 + 39) = -1;
  *(v2 + 40) = v16;
  *(v2 + 82) = 0;
  *(v2 + 166) = 0;
  *(v2 + 42) = v16;
  strcpy(v2 + 344, "ctc_activation");
  v2[359] = -18;
  *(v2 + 45) = 0;
  type metadata accessor for VATinyASRFeatureExtract();
  *(v2 + 20) = VATinyASRFeatureExtract.__allocating_init()();
  v17 = (*(*a1 + 464))();
  v18 = swift_beginAccess();
  v13[317] = v17 & 1;
  if ((*(*a1 + 320))(v18))
  {
    type metadata accessor for VAEspressoUtilsV2();
    v19 = (*(*a1 + 200))();
    v21 = v20;
    v22 = sub_2721F7EE4();
    v23 = v226;
    sub_2723195D0(v19, v21, v22 & 1, v220);
    if (v23)
    {

LABEL_22:
      v99 = *(v13 + 3);
      v216 = *(v13 + 2);
      v217[0] = v99;
      *(v217 + 9) = *(v13 + 57);
      v100 = *(v13 + 1);
      v214 = *v13;
      v215 = v100;
      sub_2721F40F0(&v214, &qword_280881808, &qword_27237BF30);
      sub_272203220(*(v3 + 12), *(v3 + 13), *(v3 + 14), *(v3 + 15), *(v3 + 16), *(v3 + 17));

      type metadata accessor for VACTCEncoder();
      swift_deallocPartialClassInstance();
      return v3;
    }

    v187 = v14;
    v226 = 0;
    v193 = a1;
    v33 = *v220;
    v34 = v222;
    v182 = *&v220[8];
    v183 = v221;

    v225[0] = *v220;
    v223 = v221;
    v224 = *&v220[16];
    v35 = *(&v221 + 1);
    v36 = v222;
    swift_beginAccess();
    v37 = *(v3 + 13);
    v188 = *(v3 + 12);
    v38 = *(v3 + 14);
    v39 = *(v3 + 15);
    v40 = *(v3 + 17);
    v185 = *(v3 + 16);
    v186 = v38;
    v184 = v40;
    *(v3 + 12) = v33;
    v41 = v183;
    *(v3 + 104) = v182;
    *(v3 + 120) = v41;
    *(v3 + 17) = v34;
    sub_272203A14(v225, &v214);
    sub_2721F07F4(&v224, &v214, &qword_280881818, &qword_27237BF38);
    sub_2721F07F4(&v223, &v214, &qword_280881818, &qword_27237BF38);
    v189 = v35;

    sub_272203220(v188, v37, v186, v39, v185, v184);
    v42 = sub_2722C389C();
    v43 = v192;
    (*(v194 + 16))(v192, v42, v195);
    sub_272203A14(v225, &v214);
    sub_2721F07F4(&v224, &v214, &qword_280881818, &qword_27237BF38);
    sub_2721F07F4(&v223, &v214, &qword_280881818, &qword_27237BF38);

    v44 = sub_27237725C();
    LODWORD(v35) = sub_272377E7C();
    sub_272203A70(v225);
    sub_2721F40F0(&v224, &qword_280881818, &qword_27237BF38);
    sub_2721F40F0(&v223, &qword_280881818, &qword_27237BF38);
    v188 = v36;

    LODWORD(v186) = v35;
    if (os_log_type_enabled(v44, v35))
    {
      v45 = swift_slowAlloc();
      v46 = v194;
      v47 = v45;
      v48 = swift_slowAlloc();
      *&v214 = v48;
      *v47 = 136315138;
      v49 = sub_272319254();
      v51 = sub_2721FFD04(v49, v50, &v214);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_2721E4000, v44, v186, "tASR model description: %s", v47, 0xCu);
      sub_2722039C8(v48);
      MEMORY[0x2743C69C0](v48, -1, -1);
      MEMORY[0x2743C69C0](v47, -1, -1);

      v52 = (*(v46 + 8))(v192, v195);
    }

    else
    {

      v52 = (*(v194 + 8))(v43, v195);
    }

    v73 = (*(*v193 + 576))(v52);
    v74 = v226;
    v76 = sub_27220226C(v73, v75);
    v226 = v74;
    if (v74)
    {

      sub_272203A70(v225);
      sub_2721F40F0(&v224, &qword_280881818, &qword_27237BF38);
      sub_2721F40F0(&v223, &qword_280881818, &qword_27237BF38);

      goto LABEL_22;
    }

    v81 = v76;
    sub_272203A70(v225);
    sub_2721F40F0(&v224, &qword_280881818, &qword_27237BF38);
    sub_2721F40F0(&v223, &qword_280881818, &qword_27237BF38);
  }

  else
  {
    v192 = v3;
    v187 = v14;
    v188 = v11;
    v186 = v8;
    v189 = type metadata accessor for VAEspressoUtils();
    v24 = *(*a1 + 200);
    v25 = *a1 + 200;
    v26 = v24();
    v28 = v27;
    v29 = (*(*a1 + 344))(v198);
    v197[0] = v198[0];
    v30 = (*(*a1 + 368))(v29);
    v31 = v226;
    static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(v26, v28, v197, v30, v32, v193 & 1, v218);
    if (v31)
    {

      v3 = v192;
      goto LABEL_22;
    }

    v189 = v25;
    v226 = v24;
    v193 = a1;

    swift_beginAccess();
    v53 = *(v13 + 2);
    v54 = *(v13 + 3);
    v55 = *v13;
    v210[1] = *(v13 + 1);
    v210[2] = v53;
    v211[0] = v54;
    *(v211 + 9) = *(v13 + 57);
    v210[0] = v55;
    v56 = v219[0];
    *(v13 + 2) = v218[2];
    *(v13 + 3) = v56;
    *(v13 + 57) = *(v219 + 9);
    v57 = v218[1];
    *v13 = v218[0];
    *(v13 + 1) = v57;
    sub_2721F40F0(v210, &qword_280881808, &qword_27237BF30);
    v58 = *(v13 + 3);
    v216 = *(v13 + 2);
    v217[0] = v58;
    *(v217 + 9) = *(v13 + 57);
    v59 = *(v13 + 1);
    v214 = *v13;
    v215 = v59;
    v212 = v214;
    v213 = v59;
    v3 = v192;
    v199 = *(v192 + 72);
    v196[0] = BYTE8(v217[1]);
    if (!v216)
    {
      *&v208[0] = 0;
      *(&v208[0] + 1) = 0xE000000000000000;
      sub_27237820C();

      *&v208[0] = 0x742064656C696146;
      *(&v208[0] + 1) = 0xEF2064616F6C206FLL;
      v78 = (v226)(v77);
      MEMORY[0x2743C4AD0](v78);

      v79 = v208[0];
      sub_2722032B4();
      swift_allocError();
      *v80 = v79;
      swift_willThrow();

      goto LABEL_22;
    }

    v184 = *&v217[0];
    v185 = *(&v216 + 1);
    v189 = v216;
    v226 = 0;
    v60 = *(v13 + 3);
    v206[2] = *(v13 + 2);
    v207[0] = v60;
    *(v207 + 9) = *(v13 + 57);
    v61 = *(v13 + 1);
    v206[0] = *v13;
    v206[1] = v61;
    sub_272203308(v206, v200);
    v62 = sub_2722C389C();
    v64 = v194;
    v63 = v195;
    v65 = *(v194 + 16);
    *&v183 = v62;
    *&v182 = v65;
    v65(v188);
    v208[2] = v216;
    v209[0] = v217[0];
    *(v209 + 9) = *(v217 + 9);
    v208[0] = v214;
    v208[1] = v215;
    sub_272203308(v208, v200);
    v66 = sub_27237725C();
    v67 = sub_272377E7C();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      *&v200[0] = v181;
      *v68 = 136315394;
      v69 = v184;

      v70 = sub_2721FFD04(v185, v69, v200);

      *(v68 + 4) = v70;
      v63 = v195;
      *(v68 + 12) = 1024;
      *(v68 + 14) = v196[0];
      sub_2721F40F0(&v214, &qword_280881808, &qword_27237BF30);
      _os_log_impl(&dword_2721E4000, v66, v67, "Loaded %s, aneChosen=%{BOOL}d", v68, 0x12u);
      v71 = v181;
      sub_2722039C8(v181);
      v72 = v71;
      v64 = v194;
      MEMORY[0x2743C69C0](v72, -1, -1);
      MEMORY[0x2743C69C0](v68, -1, -1);
    }

    else
    {
      sub_2721F40F0(&v214, &qword_280881808, &qword_27237BF30);
    }

    v82 = v188;
    v188 = *(v64 + 8);
    v188(v82, v63);
    v83 = v186;
    (v182)(v186, v183, v63);
    v84 = v189;

    v85 = sub_27237725C();
    v86 = v83;
    v87 = sub_272377E7C();
    if (os_log_type_enabled(v85, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v200[0] = v89;
      *v88 = 136315138;
      v90 = sub_27237773C();
      v92 = v91;

      v93 = sub_2721FFD04(v90, v92, v200);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_2721E4000, v85, v87, "tASR model config: %s", v88, 0xCu);
      sub_2722039C8(v89);
      v94 = v89;
      v84 = v189;
      MEMORY[0x2743C69C0](v94, -1, -1);
      MEMORY[0x2743C69C0](v88, -1, -1);

      v95 = v195;
      v96 = v186;
    }

    else
    {

      v96 = v86;
      v95 = v63;
    }

    v188(v96, v95);
    v97 = v226;
    v200[0] = v212;
    v200[1] = v213;
    v201 = v84;
    v202 = v185;
    v203 = v184;
    v204 = v199;
    v205 = v196[0];
    v98 = sub_2722023D0(v200);
    v226 = v97;
    if (v97)
    {

      sub_2721F40F0(&v214, &qword_280881808, &qword_27237BF30);
      goto LABEL_22;
    }

    v81 = v98;
    sub_2721F40F0(&v214, &qword_280881808, &qword_27237BF30);
  }

  *(v3 + 21) = v81;
  v102 = *(*v81 + 664);

  v104 = v102(v103);

  swift_beginAccess();
  v13[216] = v104 & 1;
  if ((v104 & 1) == 0)
  {
    v114 = v226;
    goto LABEL_39;
  }

  v105 = *(**(v3 + 21) + 560);

  v107 = v105(v106);
  v109 = v108;

  swift_beginAccess();
  *(v3 + 23) = v107;
  *(v3 + 24) = v109;

  v110 = *(**(v3 + 21) + 584);

  v112 = v110(v111);
  LOBYTE(v110) = v113;

  v114 = v226;
  if (v110)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v115 = v191;
  swift_beginAccess();
  *(v3 + 30) = v112;
  v116 = *(**(v3 + 21) + 608);

  v118 = v116(v117);
  v120 = v119;

  swift_beginAccess();
  *(v3 + 26) = v118;
  *(v3 + 27) = v120;

  v121 = *(**(v3 + 21) + 632);

  v123 = v121(v122);
  LOBYTE(v121) = v124;

  if ((v121 & 1) == 0)
  {
    v125 = *v115;
    if (*v115 < 0)
    {
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (v125)
    {
      v126 = sub_272377B5C();
      *(v126 + 16) = v125;
      bzero((v126 + 32), 4 * v125);
    }

    else
    {
      v126 = MEMORY[0x277D84F90];
    }

    v127 = sub_27220392C(v126, v123);

    swift_beginAccess();
    *(v13 + 23) = v127;

    if (v123 < 0)
    {
      goto LABEL_105;
    }

    if (v123)
    {
      v128 = sub_272377B5C();
      *(v128 + 16) = v123;
      bzero((v128 + 32), 4 * v123);
    }

    else
    {
      v128 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    *(v13 + 26) = v128;

    type metadata accessor for VAContextEncoder();
    v129 = *v115;

    v131 = VAContextEncoder.__allocating_init(config:outputDim:)(v130, v129);
    if (v114)
    {
      goto LABEL_89;
    }

    v132 = v131;
    v133 = v187;
    swift_beginAccess();
    *v133 = v132;

LABEL_39:
    v134 = *(**(v3 + 21) + 368);

    v136 = v134(v135);

    if (!v136[2])
    {
      goto LABEL_95;
    }

    v137 = v136[4];
    v138 = *(v137 + 16);
    if (v138)
    {
      v139 = (v137 + 32);
      v140 = 1;
      do
      {
        v141 = *v139++;
        v142 = v140 * v141;
        if ((v140 * v141) >> 64 != (v140 * v141) >> 63)
        {
          __break(1u);
          goto LABEL_91;
        }

        v140 = v142;
        --v138;
      }

      while (v138);
      if (v142 < 0)
      {
        goto LABEL_96;
      }

      if (!v142)
      {
        v143 = MEMORY[0x277D84F90];
        goto LABEL_49;
      }
    }

    else
    {
      v140 = 1;
    }

    v143 = sub_272377B5C();
    *(v143 + 16) = v140;
    bzero((v143 + 32), 4 * v140);
LABEL_49:
    swift_beginAccess();
    *(v13 + 32) = v143;

    if (v136[2] < 2uLL)
    {
      goto LABEL_97;
    }

    v144 = v136[5];
    v145 = *(v144 + 16);
    if (v145)
    {
      v146 = (v144 + 32);
      v147 = 1;
      while (1)
      {
        v148 = *v146++;
        v149 = v147 * v148;
        if ((v147 * v148) >> 64 != (v147 * v148) >> 63)
        {
          break;
        }

        v147 = v149;
        if (!--v145)
        {
          if (v149 < 0)
          {
            goto LABEL_98;
          }

          if (!v149)
          {
            v150 = MEMORY[0x277D84F90];
            goto LABEL_59;
          }

          goto LABEL_58;
        }
      }

LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v147 = 1;
LABEL_58:
    v150 = sub_272377B5C();
    *(v150 + 16) = v147;
    bzero((v150 + 32), 4 * v147);
LABEL_59:
    swift_beginAccess();
    *(v13 + 33) = v150;

    if (v136[2] < 3uLL)
    {
      goto LABEL_99;
    }

    v151 = v136[6];
    v152 = *(v151 + 16);
    if (v152)
    {
      v153 = (v151 + 32);
      v154 = 1;
      while (1)
      {
        v155 = *v153++;
        v156 = v154 * v155;
        if ((v154 * v155) >> 64 != (v154 * v155) >> 63)
        {
          break;
        }

        v154 = v156;
        if (!--v152)
        {
          if (v156 < 0)
          {
            goto LABEL_100;
          }

          if (!v156)
          {
            v157 = MEMORY[0x277D84F90];
            goto LABEL_69;
          }

          goto LABEL_68;
        }
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
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

    v154 = 1;
LABEL_68:
    v157 = sub_272377B5C();
    *(v157 + 16) = v154;
    bzero((v157 + 32), 4 * v154);
LABEL_69:
    swift_beginAccess();
    *(v13 + 34) = v157;

    if (v136[2] < 4uLL)
    {
      goto LABEL_101;
    }

    v158 = v136[7];
    v159 = *(v158 + 16);
    if (v159)
    {
      v160 = (v158 + 32);
      v161 = 1;
      while (1)
      {
        v162 = *v160++;
        v163 = v161 * v162;
        if ((v161 * v162) >> 64 != (v161 * v162) >> 63)
        {
          goto LABEL_93;
        }

        v161 = v163;
        if (!--v159)
        {
          if (v163 < 0)
          {
            goto LABEL_102;
          }

          if (!v163)
          {
            v164 = MEMORY[0x277D84F90];
            goto LABEL_79;
          }

          goto LABEL_78;
        }
      }
    }

    v161 = 1;
LABEL_78:
    v164 = sub_272377B5C();
    *(v164 + 16) = v161;
    bzero((v164 + 32), 4 * v161);
LABEL_79:
    swift_beginAccess();
    *(v13 + 35) = v164;

    if (v136[2] < 5uLL)
    {
      goto LABEL_103;
    }

    v165 = v136[8];

    v166 = *(v165 + 16);
    if (v166)
    {
      v167 = 1;
      v168 = 32;
      while (1)
      {
        v169 = *(v165 + v168);
        v170 = v167 * v169;
        if ((v167 * v169) >> 64 != (v167 * v169) >> 63)
        {
          goto LABEL_94;
        }

        v168 += 8;
        v167 *= v169;
        if (!--v166)
        {

          v171 = v170;
          goto LABEL_86;
        }
      }
    }

    v171 = 1.0;
LABEL_86:
    sub_272201EE0(0.0, v171, 1.0);
    v173 = v172;
    swift_beginAccess();
    *(v13 + 36) = v173;

    type metadata accessor for VABundleUtil();
    v174 = (*(*v193 + 296))();
    v176 = static VABundleUtil.bundlePathFallback(path:)(v174, v175);
    if (!v114)
    {
      v178 = v177;
      v179 = v176;

      sub_2721F94F8(v179, v178);

      sub_2721F9FF0();

      return v3;
    }

LABEL_89:

    return v3;
  }

LABEL_107:
  __break(1u);
  return result;
}

unint64_t sub_2721F94F8(uint64_t a1, uint64_t a2)
{
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27237788C();
  MEMORY[0x28223BE20](v10 - 8);
  sub_27237787C();
  result = sub_2723777EC();
  if (v3)
  {
    return result;
  }

  v13 = result;
  v14 = v12;
  v116 = v2;
  v105 = a1;
  v113 = a2;
  v120 = 10;
  v121 = 0xE100000000000000;
  MEMORY[0x28223BE20](result);
  *(&v103 - 2) = &v120;

  result = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, (&v103 - 4), v13, v14, v15);
  v16 = result;
  v106 = 0;
  v112 = *(result + 16);
  v114 = v7;
  v115 = v9;
  if (!v112)
  {

    v94 = v113;
    goto LABEL_104;
  }

  v103 = v14;
  v104 = v6;
  v17 = 0;
  v110 = result;
  v111 = result + 32;
  v107 = &v120 + 1;
  do
  {
    if (v17 >= *(v16 + 16))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v117 = v17;
    v18 = (v111 + 32 * v17);
    v19 = *v18;
    v20 = v18[3];
    v21 = *v18 >> 14;
    v22 = v18[1] >> 14;

    v119 = v20;
    if (v21 == v22)
    {
      v23 = MEMORY[0x277D84F90];
      v24 = v115;
      v25 = v116;
      goto LABEL_30;
    }

    v118 = MEMORY[0x277D84F90];
    v26 = v19;
    do
    {
      while (sub_27237807C() != 9 || v30 != 0xE100000000000000)
      {
        v31 = sub_27237865C();

        if (v31)
        {
          goto LABEL_16;
        }

        result = sub_27237803C();
        v21 = result >> 14;
        if (result >> 14 == v22)
        {
          goto LABEL_22;
        }
      }

LABEL_16:
      if (v26 >> 14 != v21)
      {
        if (v21 < v26 >> 14)
        {
          goto LABEL_111;
        }

        v32 = sub_27237808C();
        v34 = v33;
        v108 = v36;
        v109 = v35;
        v37 = v118;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_2721FF9B8(0, *(v37 + 2) + 1, 1, v37);
        }

        v38 = v37;
        v39 = *(v37 + 2);
        v118 = v38;
        v40 = *(v38 + 3);
        if (v39 >= v40 >> 1)
        {
          v118 = sub_2721FF9B8((v40 > 1), v39 + 1, 1, v118);
        }

        v27 = v118;
        *(v118 + 2) = v39 + 1;
        v28 = &v27[32 * v39];
        *(v28 + 4) = v32;
        *(v28 + 5) = v34;
        v29 = v108;
        *(v28 + 6) = v109;
        *(v28 + 7) = v29;
      }

      result = sub_27237803C();
      v26 = result;
      v21 = result >> 14;
    }

    while (result >> 14 != v22);
LABEL_22:
    if (v26 >> 14 == v22)
    {

      v24 = v115;
      v25 = v116;
      v23 = v118;
      goto LABEL_30;
    }

    v25 = v116;
    v41 = v118;
    if (v22 < v26 >> 14)
    {
      goto LABEL_112;
    }

    v42 = sub_27237808C();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2721FF9B8(0, *(v41 + 2) + 1, 1, v41);
      v41 = result;
    }

    v24 = v115;
    v49 = v41;
    v50 = *(v41 + 2);
    v51 = v49;
    v52 = *(v49 + 3);
    if (v50 >= v52 >> 1)
    {
      result = sub_2721FF9B8((v52 > 1), v50 + 1, 1, v51);
      v51 = result;
    }

    *(v51 + 16) = v50 + 1;
    v53 = (v51 + 32 * v50);
    v23 = v51;
    v53[4] = v42;
    v53[5] = v44;
    v53[6] = v46;
    v53[7] = v48;
LABEL_30:
    if (*(v23 + 2) < 2uLL)
    {
      goto LABEL_109;
    }

    v55 = *(v23 + 8);
    v54 = *(v23 + 9);
    v56 = *(v23 + 10);
    v57 = *(v23 + 11);

    v58 = MEMORY[0x2743C4A20](v55, v54, v56, v57);
    v60 = v59;

    v61 = HIBYTE(v60) & 0xF;
    v62 = v58 & 0xFFFFFFFFFFFFLL;
    if ((v60 & 0x2000000000000000) != 0)
    {
      v63 = HIBYTE(v60) & 0xF;
    }

    else
    {
      v63 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (!v63)
    {

      v65 = 0;
      v83 = 1;
      if (*(v23 + 2))
      {
        goto LABEL_96;
      }

      goto LABEL_110;
    }

    if ((v60 & 0x1000000000000000) != 0)
    {
      v122 = 0;
      v65 = sub_272200A34(v58, v60, 10);
      v83 = v95;
      goto LABEL_93;
    }

    if ((v60 & 0x2000000000000000) != 0)
    {
      v120 = v58;
      v121 = v60 & 0xFFFFFFFFFFFFFFLL;
      if (v58 == 43)
      {
        if (v61)
        {
          if (--v61)
          {
            v65 = 0;
            v75 = v107;
            while (1)
            {
              v76 = *v75 - 48;
              if (v76 > 9)
              {
                break;
              }

              v77 = 10 * v65;
              if ((v65 * 10) >> 64 != (10 * v65) >> 63)
              {
                break;
              }

              v65 = v77 + v76;
              if (__OFADD__(v77, v76))
              {
                break;
              }

              ++v75;
              if (!--v61)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_91;
        }

LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      if (v58 != 45)
      {
        if (v61)
        {
          v65 = 0;
          v80 = &v120;
          while (1)
          {
            v81 = *v80 - 48;
            if (v81 > 9)
            {
              break;
            }

            v82 = 10 * v65;
            if ((v65 * 10) >> 64 != (10 * v65) >> 63)
            {
              break;
            }

            v65 = v82 + v81;
            if (__OFADD__(v82, v81))
            {
              break;
            }

            v80 = (v80 + 1);
            if (!--v61)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_91;
      }

      if (v61)
      {
        if (--v61)
        {
          v65 = 0;
          v69 = v107;
          while (1)
          {
            v70 = *v69 - 48;
            if (v70 > 9)
            {
              break;
            }

            v71 = 10 * v65;
            if ((v65 * 10) >> 64 != (10 * v65) >> 63)
            {
              break;
            }

            v65 = v71 - v70;
            if (__OFSUB__(v71, v70))
            {
              break;
            }

            ++v69;
            if (!--v61)
            {
              goto LABEL_92;
            }
          }
        }

LABEL_91:
        v65 = 0;
        LOBYTE(v61) = 1;
        goto LABEL_92;
      }

LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    if ((v58 & 0x1000000000000000) != 0)
    {
      result = (v60 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_27237825C();
    }

    v64 = *result;
    if (v64 == 43)
    {
      if (v62 >= 1)
      {
        v61 = v62 - 1;
        if (v62 == 1)
        {
          goto LABEL_91;
        }

        v65 = 0;
        if (!result)
        {
          goto LABEL_83;
        }

        v72 = (result + 1);
        while (1)
        {
          v73 = *v72 - 48;
          if (v73 > 9)
          {
            goto LABEL_91;
          }

          v74 = 10 * v65;
          if ((v65 * 10) >> 64 != (10 * v65) >> 63)
          {
            goto LABEL_91;
          }

          v65 = v74 + v73;
          if (__OFADD__(v74, v73))
          {
            goto LABEL_91;
          }

          ++v72;
          if (!--v61)
          {
            goto LABEL_92;
          }
        }
      }

LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      return result;
    }

    if (v64 != 45)
    {
      if (!v62)
      {
        goto LABEL_91;
      }

      v65 = 0;
      if (!result)
      {
        goto LABEL_83;
      }

      while (1)
      {
        v78 = *result - 48;
        if (v78 > 9)
        {
          goto LABEL_91;
        }

        v79 = 10 * v65;
        if ((v65 * 10) >> 64 != (10 * v65) >> 63)
        {
          goto LABEL_91;
        }

        v65 = v79 + v78;
        if (__OFADD__(v79, v78))
        {
          goto LABEL_91;
        }

        ++result;
        if (!--v62)
        {
          goto LABEL_83;
        }
      }
    }

    if (v62 < 1)
    {
      goto LABEL_115;
    }

    v61 = v62 - 1;
    if (v62 == 1)
    {
      goto LABEL_91;
    }

    v65 = 0;
    if (result)
    {
      v66 = (result + 1);
      while (1)
      {
        v67 = *v66 - 48;
        if (v67 > 9)
        {
          goto LABEL_91;
        }

        v68 = 10 * v65;
        if ((v65 * 10) >> 64 != (10 * v65) >> 63)
        {
          goto LABEL_91;
        }

        v65 = v68 - v67;
        if (__OFSUB__(v68, v67))
        {
          goto LABEL_91;
        }

        ++v66;
        if (!--v61)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_83:
    LOBYTE(v61) = 0;
LABEL_92:
    v122 = v61;
    v83 = v61;
LABEL_93:

    if (v83)
    {
      v65 = 0;
    }

    if (!*(v23 + 2))
    {
      goto LABEL_110;
    }

LABEL_96:
    v84 = v24;
    v85 = *(v23 + 4);
    v86 = *(v23 + 5);
    v87 = *(v23 + 6);
    v88 = *(v23 + 7);

    v89 = MEMORY[0x2743C4A20](v85, v86, v87, v88);
    v91 = v90;

    if (v83)
    {
      goto LABEL_117;
    }

    v17 = v117 + 1;

    v92 = (*(*v25 + 584))(&v120);
    sub_272201588(v65, v89, v91);
    v92(&v120, 0);
    v93 = (*(*v25 + 560))(&v120);
    sub_272201434(v89, v91, v65);

    result = v93(&v120, 0);
    v94 = v113;
    v7 = v114;
    v16 = v110;
  }

  while (v17 != v112);

  v9 = v84;
  v6 = v104;
LABEL_104:
  v96 = sub_2722C389C();
  (*(v7 + 16))(v9, v96, v6);
  v97 = v116;
  swift_retain_n();

  v98 = sub_27237725C();
  v99 = sub_272377E7C();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v120 = v101;
    *v100 = 134218242;
    v102 = *((*(*v97 + 544))(v101) + 16);

    *(v100 + 4) = v102;

    *(v100 + 12) = 2080;
    *(v100 + 14) = sub_2721FFD04(v105, v94, &v120);
    _os_log_impl(&dword_2721E4000, v98, v99, "Loaded %ld symbols from %s", v100, 0x16u);
    sub_2722039C8(v101);
    MEMORY[0x2743C69C0](v101, -1, -1);
    MEMORY[0x2743C69C0](v100, -1, -1);

    return (*(v114 + 8))(v115, v6);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_2721F9FF0()
{
  v1 = v0;
  v2 = (*(*v0 + 744))(MEMORY[0x277D84F90]);
  (*(*v0 + 768))(v2, 0.0);
  v3 = (*(*v0 + 720))(-1);
  v4 = *(*v0 + 664);
  v5 = *(v4(v3) + 16);

  if (v5)
  {
    v7 = 0;
    v8 = *(*v0 + 680);
    while (1)
    {
      v9 = *(v4(v6) + 16);

      v10 = v7 >= v9 - 8 ? 1.0 : 0.0;
      v11 = v8(v20);
      v13 = v12;
      v14 = *v12;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v13 = v14;
      if ((result & 1) == 0)
      {
        result = sub_2722002AC(v14);
        v14 = result;
        *v13 = result;
      }

      if (v7 >= *(v14 + 16))
      {
        break;
      }

      *(v14 + 4 * v7 + 32) = v10;
      v6 = v11(v20, 0);
      if (v5 == ++v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v16 = (*(*v1 + 656))(v20);
    sub_2721F4234();
    v16(v20, 0);
    v17 = (*(*v1 + 608))(v20);
    sub_2721F4234();
    v17(v20, 0);
    v18 = (*(*v1 + 632))(v20);
    sub_2721F4234();
    v18(v20, 0);
    v19 = (*(*v1 + 704))(v20);
    sub_2721F4234();
    v19(v20, 0);
    return (*(*v1 + 360))(0, 0xE000000000000000);
  }

  return result;
}

char *static VACTCEncoder.build(config:debug:)(uint64_t a1, char a2)
{
  v3 = v2;
  if ((*(*a1 + 488))(a1))
  {
    type metadata accessor for VATransducer();

    return VATransducer.__allocating_init(config:debug:)(v5);
  }

  else
  {
    type metadata accessor for VACTCEncoder();
    v7 = swift_allocObject();

    result = sub_2721F7F44(v8, a2 & 1);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_2721FA494(void *a1, uint64_t a2)
{
  v4 = v3;
  v7 = sub_27237728C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v82 = &v67 - v15;
  v81 = sub_272376BCC();
  v16 = *(v81 - 8);
  v17 = MEMORY[0x28223BE20](v81);
  v80 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v83 = (*(*v2 + 376))(v17);
    if (!v83)
    {
      v60 = sub_2722C389C();
      (*(v8 + 16))(v11, v60, v7);
      v61 = sub_27237725C();
      v62 = sub_272377E8C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = v7;
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_2721E4000, v61, v62, "Context encoder not initialized. Ignoring setContext", v64, 2u);
        MEMORY[0x2743C69C0](v64, -1, -1);

        return (*(v8 + 8))(v11, v63);
      }

      else
      {

        return (*(v8 + 8))(v11, v7);
      }
    }

    v69 = v14;
    v19 = *(*v2 + 504);
    v72 = v2;
    v19(1);
    v67 = a1;
    v89 = a1;
    v90 = a2;
    v68 = a2;
    v87 = 44;
    v88 = 0xE100000000000000;
    v2 = &v89;
    v79 = sub_272203AC4();
    v20 = sub_2723780BC();
    v78 = *(v20 + 16);
    v70 = v8;
    if (!v78)
    {
LABEL_27:

      v51 = sub_2722C389C();
      v52 = v70;
      v53 = v69;
      (*(v70 + 16))(v69, v51, v7);
      v54 = v68;

      v55 = sub_27237725C();
      v56 = sub_272377E6C();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = v7;
        v59 = swift_slowAlloc();
        v89 = v59;
        *v57 = 136315138;
        *(v57 + 4) = sub_2721FFD04(v67, v54, &v89);
        _os_log_impl(&dword_2721E4000, v55, v56, "Using contextual bias: %s", v57, 0xCu);
        sub_2722039C8(v59);
        MEMORY[0x2743C69C0](v59, -1, -1);
        MEMORY[0x2743C69C0](v57, -1, -1);

        return (*(v52 + 8))(v53, v58);
      }

      else
      {

        return (*(v52 + 8))(v53, v7);
      }
    }

    v22 = 0;
    v76 = (v8 + 16);
    v77 = (v16 + 8);
    v75 = (v8 + 8);
    v23 = v20 + 40;
    *&v21 = 136315138;
    v71 = v21;
    v73 = v7;
    v74 = v20;
    v24 = v72;
    while (v22 < *(v20 + 16))
    {
      v84 = v4;
      v89 = sub_2723778AC();
      v90 = v25;
      v87 = 95;
      v88 = 0xE100000000000000;
      v85 = 32;
      v86 = 0xE100000000000000;
      v26 = sub_2723780FC();
      v28 = v27;

      v89 = v26;
      v90 = v28;
      v29 = v80;
      sub_272376B4C();
      v91 = sub_2723780EC();
      v11 = v30;
      (*v77)(v29, v81);

      v31 = v83;

      v32 = sub_2722C389C();
      v33 = v82;
      (*v76)(v82, v32, v7);

      v34 = sub_27237725C();
      v35 = sub_272377E7C();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = v7;
        v38 = swift_slowAlloc();
        v89 = v38;
        *v36 = v71;
        *(v36 + 4) = sub_2721FFD04(v91, v11, &v89);
        _os_log_impl(&dword_2721E4000, v34, v35, "Computing context vector for %s", v36, 0xCu);
        sub_2722039C8(v38);
        MEMORY[0x2743C69C0](v38, -1, -1);
        v39 = v36;
        v31 = v83;
        MEMORY[0x2743C69C0](v39, -1, -1);

        v40 = v37;
        v24 = v72;
        (*v75)(v33, v40);
      }

      else
      {

        (*v75)(v33, v7);
      }

      v41 = v84;
      v42 = *(*v31 + 152);

      v43 = v42(v91, v11);
      v4 = v41;
      if (v41)
      {
      }

      v44 = v43;

      v2 = (*(*v24 + 440))(&v89);
      v14 = *v45;
      if (*v45)
      {
        v11 = v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v11 = v14;
        v7 = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_272200344(v14);
          *v11 = v14;
        }

        if (v22 >= *(v14 + 2))
        {
          goto LABEL_39;
        }

        *&v14[8 * v22 + 32] = v44;

        (v2)(&v89, 0);
      }

      else
      {

        (v2)(&v89, 0);
        v7 = v73;
      }

      v2 = (*(*v24 + 488))(&v89);
      v14 = *v47;
      if (*v47)
      {
        v11 = v47;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *v11 = v14;
        if ((v48 & 1) == 0)
        {
          v14 = sub_2722002AC(v14);
          *v11 = v14;
        }

        if (v22 >= *(v14 + 2))
        {
          goto LABEL_40;
        }

        *&v14[4 * v22 + 32] = 1065353216;
      }

      (v2)(&v89, 0);
      ++v22;
      v23 += 16;
      v20 = v74;
      if (v78 == v22)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
    v11 = (*(*v2 + 440))(&v89);
    v14 = *v49;
    if (!*v49)
    {
      (v11)(&v89, 0);
      goto LABEL_32;
    }

    v22 = v49;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v14;
    if (result)
    {
      if (!*(v14 + 2))
      {
LABEL_42:
        __break(1u);
        return result;
      }

      goto LABEL_26;
    }
  }

  result = sub_272200344(v14);
  *v22 = result;
  if (!*(result + 16))
  {
    goto LABEL_42;
  }

LABEL_26:
  sub_2721F4234();
  (v11)(&v89, 0);
LABEL_32:
  v65 = (*(*v2 + 488))(&v89);
  if (*v66)
  {
    sub_2721F4234();
  }

  return v65(&v89, 0);
}

char *sub_2721FAE90()
{
  v2 = v0;
  v3 = sub_27237728C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*v0 + 832))(v5);
  v61 = *(v8 + 16);
  if (!v61)
  {

    return MEMORY[0x277D84F90];
  }

  v50[1] = v1;
  v62 = 0;
  v10 = 0;
  v11 = *(*v0 + 544);
  v58 = *v0 + 544;
  v59 = v11;
  v60 = v8 + 32;
  v53 = (v4 + 8);
  v54 = (v4 + 16);
  v55 = MEMORY[0x277D84F90];
  v12 = 0.0;
  *&v9 = 136315138;
  v51 = v9;
  v56 = v7;
  v57 = v8;
  v52 = v3;
  while (v10 < *(v8 + 16))
  {
    v13 = *(v60 + 8 * v10);
    v14 = *(v13 + 16);
    if (!v14)
    {
      goto LABEL_51;
    }

    v15 = *(v13 + 32);
    if (v14 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = (v13 + 36);
      v18 = 1;
      do
      {
        v19 = *v17++;
        v20 = v19;
        v21 = v15 < v19;
        if (v15 < v19)
        {
          v16 = v18;
        }

        v22 = v18 + 1;
        if (v21)
        {
          v15 = v20;
        }

        ++v18;
      }

      while (v14 != v22);
    }

    v24 = v59(v23);
    if (!*(v24 + 16) || (v25 = sub_272200404(v16), (v26 & 1) == 0))
    {

      v28 = 0;
      v29 = 0;
      if (!v62)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v27 = (*(v24 + 56) + 16 * v25);
    v28 = *v27;
    v29 = v27[1];

    if (v28 != 0x3E6B6E616C623CLL || v29 != 0xE700000000000000)
    {
      if ((sub_27237865C() & 1) == 0 && !v62)
      {
LABEL_25:
        v62 = mach_absolute_time();
      }

LABEL_26:
      if (v16 < 1)
      {
        goto LABEL_3;
      }

      goto LABEL_27;
    }

    v29 = 0xE700000000000000;
    v28 = 0x3E6B6E616C623CLL;
    if (v16 < 1)
    {
LABEL_3:

      goto LABEL_4;
    }

LABEL_27:
    if (v16 == (*(*v2 + 712))())
    {
      goto LABEL_3;
    }

    v31 = (*(*v2 + 352))();
    if (!v29)
    {
      goto LABEL_52;
    }

    if (v31 == v28 && v29 == v32)
    {
    }

    else
    {
      v34 = sub_27237865C();

      if ((v34 & 1) == 0)
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v45 = v55;
        }

        else
        {
          v45 = sub_2721FFBF8(0, *(v55 + 2) + 1, 1, v55);
        }

        v47 = *(v45 + 2);
        v46 = *(v45 + 3);
        if (v47 >= v46 >> 1)
        {
          v45 = sub_2721FFBF8((v46 > 1), v47 + 1, 1, v45);
        }

        *(v45 + 2) = v47 + 1;
        v55 = v45;
        v48 = &v45[16 * v47];
        *(v48 + 4) = v28;
        *(v48 + 5) = v29;

        (*(*v2 + 360))(v28, v29);
        v7 = v56;
        goto LABEL_4;
      }

      v7 = v56;
    }

    v35 = sub_2722C389C();
    (*v54)(v7, v35, v3);

    v36 = sub_27237725C();
    v37 = sub_272377E6C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v65 = v39;
      *v38 = v51;
      v63 = v28;
      v64 = v29;
      sub_2721F065C(&qword_280881828, &qword_27237BF40);
      v40 = sub_27237789C();
      v42 = sub_2721FFD04(v40, v41, &v65);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_2721E4000, v36, v37, "Skipping repeated fragment %s", v38, 0xCu);
      sub_2722039C8(v39);
      v43 = v39;
      v3 = v52;
      MEMORY[0x2743C69C0](v43, -1, -1);
      v44 = v38;
      v7 = v56;
      MEMORY[0x2743C69C0](v44, -1, -1);
    }

    else
    {
    }

    (*v53)(v7, v3);
LABEL_4:
    ++v10;
    (*(*v2 + 720))(v16);
    v12 = v12 - v15;
    v8 = v57;
    if (v10 == v61)
    {

      return v55;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:

  __break(1u);
  return result;
}

char *sub_2721FB4A4(void *a1)
{
  v3 = v1;
  v5 = a1[2];
  v6 = *(v1 + 168);
  if (v5 != (*(*v6 + 248))())
  {
    __break(1u);
    goto LABEL_35;
  }

  if (!v5)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = *(a1[4] + 16);
  if (v7 != (*(*v6 + 440))())
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = (*v3 + 328);
  v9 = *v8;
  v10 = (*v8)(v74);
  if (!v74[1])
  {
    result = (*(*v3 + 304))(v69, v10);
    if (!v70)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v66 = v69[0];
    v67 = v69[1];
    *v68 = v70;
    *&v68[8] = v71;
    *&v68[24] = v72;
    v68[40] = v73;
    sub_2721FC408(a1, &v66);
    if (v2)
    {
      v64 = *v68;
      v65[0] = *&v68[16];
      *(v65 + 9) = *&v68[25];
      v62 = v66;
      v63 = v67;
      return sub_272204058(&v62);
    }

    v64 = *v68;
    v65[0] = *&v68[16];
    *(v65 + 9) = *&v68[25];
    v62 = v66;
    v63 = v67;
    v21 = sub_272204058(&v62);
    return (*(*v3 + 920))(v21);
  }

  v11 = sub_2721F40F0(v74, &qword_280881838, &unk_27237C240);
  result = v9(v75, v11);
  if (!*(&v75[0] + 1))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v76 = v75[0];
  v77 = v75[1];
  v78 = v75[2];
  v13 = sub_272319394(1952540006, 0xE400000000000000, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
  if (v2)
  {
LABEL_8:
    v82 = v76;
    sub_272203A70(&v82);
    v83 = v77;
    sub_2721F40F0(&v83, &qword_280881818, &qword_27237BF38);
    v84[0] = *(&v77 + 1);
    sub_2721F40F0(v84, &qword_280881818, &qword_27237BF38);
  }

  v14 = v13;
  sub_2721F065C(&qword_280881840, &unk_27237E830);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_27237AF80;
  *(v15 + 32) = a1;
  v16 = *(*v14 + 648);

  v16(v15);

  v17 = sub_272319394(0x6E695F736B73616DLL, 0xE800000000000000, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
  (*(*v3 + 664))();
  (*(*v17 + 624))();

  v18 = sub_272319394(0x695F74657366666FLL, 0xE90000000000006ELL, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
  (*(*v3 + 688))();
  (*(*v18 + 624))();

  v19 = sub_272319394(0xD000000000000010, 0x80000002723884D0, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
  (*(*v3 + 592))();
  (*(*v19 + 624))();

  v20 = sub_272319394(0xD000000000000012, 0x80000002723884F0, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
  (*(*v3 + 616))();
  (*(*v20 + 624))();

  v22 = sub_272319394(0x686361635F6E6E63, 0xEC0000006E695F65, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
  (*(*v3 + 640))();
  (*(*v22 + 624))();

  if (((*(*v3 + 496))(v23) & 1) == 0)
  {
    goto LABEL_42;
  }

  result = (*(*v3 + 400))();
  if (!v24)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v25 = sub_272319394(result, v24, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);

  result = (*(*v3 + 424))(v26);
  if (!result)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v60 = v25;
  v85 = *(result + 2);
  if (v85)
  {
    v27 = 0;
    v61 = result + 32;
    v28 = MEMORY[0x277D84F90];
    while (v27 < *(result + 2))
    {
      v29 = v61[v27];
      v30 = *(v29 + 16);
      v31 = *(v28 + 2);
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_45;
      }

      v33 = result;

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v32 > *(v28 + 3) >> 1)
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        result = sub_2721FF8B4(result, v34, 1, v28);
        v28 = result;
      }

      if (*(v29 + 16))
      {
        v35 = *(v28 + 2);
        if ((*(v28 + 3) >> 1) - v35 < v30)
        {
          goto LABEL_47;
        }

        memcpy(&v28[4 * v35 + 32], (v29 + 32), 4 * v30);

        if (v30)
        {
          v36 = *(v28 + 2);
          v37 = __OFADD__(v36, v30);
          v38 = v36 + v30;
          if (v37)
          {
            goto LABEL_48;
          }

          *(v28 + 2) = v38;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_46;
        }
      }

      ++v27;
      result = v33;
      if (v85 == v27)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_37:
  v28 = MEMORY[0x277D84F90];
LABEL_38:

  (*(*v60 + 624))(v28);

  result = (*(*v3 + 448))(v39);
  if (!v40)
  {
    goto LABEL_54;
  }

  v41 = sub_272319394(result, v40, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);

  if (v2)
  {
    goto LABEL_8;
  }

  result = (*(*v3 + 472))(v42);
  if (result)
  {
    (*(*v41 + 624))();

LABEL_42:
    v43 = sub_272275B0C();
    v44 = (*(*v3 + 856))(v43);
    v46 = sub_2723194B0(v44, v45, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);

    v48 = (*(*v46 + 744))(v47);

    if (!*(v48 + 16))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v49 = *(v48 + 32);

    (*(*v3 + 840))(v49);
    v50 = sub_2723194B0(0xD000000000000011, 0x8000000272388510, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    v51 = (*(*v50 + 720))(v50);

    (*(*v3 + 600))(v51);
    v52 = sub_2723194B0(0xD000000000000013, 0x8000000272388530, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    v53 = (*(*v52 + 720))(v52);

    (*(*v3 + 624))(v53);
    v54 = sub_2723194B0(0x686361635F6E6E63, 0xED000074756F5F65, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    v55 = (*(*v54 + 720))(v54);

    (*(*v3 + 648))(v55);
    v56 = sub_2723194B0(0x756F5F736B73616DLL, 0xE900000000000074, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    v57 = (*(*v56 + 720))(v56);

    (*(*v3 + 672))(v57);
    v58 = sub_2723194B0(0x6F5F74657366666FLL, 0xEA00000000007475, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    v59 = (*(*v58 + 720))(v58);

    (*(*v3 + 696))(v59);
    v79 = v76;
    sub_272203A70(&v79);
    v80 = v77;
    sub_2721F40F0(&v80, &qword_280881818, &qword_27237BF38);
    v81 = *(&v77 + 1);
    sub_2721F40F0(&v81, &qword_280881818, &qword_27237BF38);

    return (*(*v3 + 920))(v21);
  }

LABEL_55:
  __break(1u);
  return result;
}