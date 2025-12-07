uint64_t LeaderboardSetSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C7F0, &qword_24F990C68);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C7F8, &qword_24F990C70);
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C800, &unk_24F990C78);
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EC73500();
  sub_24F92D108();
  if (!v2)
  {
    v41 = v7;
    v15 = v44;
    v14 = v45;
    v16 = sub_24F92CC78();
    v17 = (2 * *(v16 + 16)) | 1;
    v55 = v16;
    v56 = v16 + 32;
    v57 = 0;
    v58 = v17;
    v18 = sub_24E643430();
    v19 = v10;
    if (v18 == 2 || v57 != v58 >> 1)
    {
      v23 = sub_24F92C918();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v25 = &type metadata for LeaderboardSetSource;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v46 + 8))(v12, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v18)
      {
        LOBYTE(v49) = 1;
        sub_24EC73554();
        v20 = v12;
        v21 = v6;
        sub_24F92CBA8();
        v22 = v46;
        v29 = v20;
        v30 = v21;
        v31 = v15;
        v42 = sub_24F92CC28();
        v34 = v33;
        (*(v43 + 8))(v30, v31);
        (*(v22 + 8))(v29, v19);
        swift_unknownObjectRelease();
        v39 = 1;
      }

      else
      {
        LOBYTE(v49) = 0;
        sub_24EC735A8();
        v27 = v9;
        sub_24F92CBA8();
        v28 = v46;
        sub_24E7ED8D0();
        v32 = v41;
        sub_24F92CC68();
        (*(v42 + 8))(v27, v32);
        (*(v28 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v39 = 0;
        v34 = v50;
        v42 = v49;
        v35 = v51;
        v36 = v52;
        v38 = v53;
        v37 = v54;
        v48 = 0;
      }

      *v14 = v42;
      *(v14 + 8) = v34;
      *(v14 + 16) = v35;
      *(v14 + 24) = v36;
      *(v14 + 32) = v38;
      *(v14 + 48) = v37;
      *(v14 + 56) = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

double sub_24EC73400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {

    v8 = vars8;
  }

  return result;
}

uint64_t sub_24EC73450(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24EC734B8()
{

  return swift_deallocObject();
}

unint64_t sub_24EC73500()
{
  result = qword_27F22C7D8;
  if (!qword_27F22C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C7D8);
  }

  return result;
}

unint64_t sub_24EC73554()
{
  result = qword_27F22C7E0;
  if (!qword_27F22C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C7E0);
  }

  return result;
}

unint64_t sub_24EC735A8()
{
  result = qword_27F22C7E8;
  if (!qword_27F22C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C7E8);
  }

  return result;
}

uint64_t sub_24EC73608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EC73650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

unint64_t sub_24EC736F4()
{
  result = qword_27F22C808;
  if (!qword_27F22C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C808);
  }

  return result;
}

unint64_t sub_24EC7374C()
{
  result = qword_27F22C810;
  if (!qword_27F22C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C810);
  }

  return result;
}

unint64_t sub_24EC737A4()
{
  result = qword_27F22C818;
  if (!qword_27F22C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C818);
  }

  return result;
}

unint64_t sub_24EC737FC()
{
  result = qword_27F22C820;
  if (!qword_27F22C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C820);
  }

  return result;
}

unint64_t sub_24EC73854()
{
  result = qword_27F22C828;
  if (!qword_27F22C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C828);
  }

  return result;
}

unint64_t sub_24EC738AC()
{
  result = qword_27F22C830;
  if (!qword_27F22C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C830);
  }

  return result;
}

unint64_t sub_24EC73904()
{
  result = qword_27F22C838;
  if (!qword_27F22C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C838);
  }

  return result;
}

unint64_t sub_24EC7395C()
{
  result = qword_27F22C840;
  if (!qword_27F22C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C840);
  }

  return result;
}

unint64_t sub_24EC739B4()
{
  result = qword_27F22C848;
  if (!qword_27F22C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C848);
  }

  return result;
}

uint64_t sub_24EC73A08@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v476 = a6;
  v500 = a5;
  v501 = a4;
  v498 = a3;
  v497 = a2;
  v499 = a1;
  v496 = a7;
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C850, &qword_24F991120);
  v378 = *(v428 - 8);
  MEMORY[0x28223BE20](v428);
  v425 = &v358 - v7;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C858, &qword_24F991128);
  MEMORY[0x28223BE20](v482);
  v484 = &v358 - v8;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C860, &unk_24F991130);
  MEMORY[0x28223BE20](v418);
  v422 = &v358 - v9;
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D58, &unk_24F940F00);
  MEMORY[0x28223BE20](v483);
  v426 = &v358 - v10;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D48, &qword_24F991140);
  MEMORY[0x28223BE20](v489);
  v485 = &v358 - v11;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C868, &qword_24F991148);
  v377 = *(v427 - 8);
  MEMORY[0x28223BE20](v427);
  v420 = &v358 - v12;
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C870, &qword_24F991150);
  v376 = *(v424 - 8);
  MEMORY[0x28223BE20](v424);
  v375 = &v358 - v13;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C878, &unk_24F991158);
  MEMORY[0x28223BE20](v413);
  v417 = &v358 - v14;
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D28, &unk_24F940EF0);
  MEMORY[0x28223BE20](v462);
  v419 = &v358 - v15;
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C880, &qword_24F991168);
  v374 = *(v421 - 8);
  MEMORY[0x28223BE20](v421);
  v373 = &v358 - v16;
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C888, &qword_24F991170);
  v372 = *(v423 - 8);
  MEMORY[0x28223BE20](v423);
  v371 = &v358 - v17;
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C890, &qword_24F991178);
  MEMORY[0x28223BE20](v486);
  v488 = &v358 - v18;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C898, &qword_24F991180);
  MEMORY[0x28223BE20](v456);
  v461 = &v358 - v19;
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8A0, &qword_24F991188);
  MEMORY[0x28223BE20](v410);
  v412 = &v358 - v20;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D08, &unk_24F991190);
  MEMORY[0x28223BE20](v459);
  v416 = &v358 - v21;
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215CF8, &unk_24F940EE0);
  MEMORY[0x28223BE20](v487);
  v463 = &v358 - v22;
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215CE8, &qword_24F9911A0);
  MEMORY[0x28223BE20](v495);
  v490 = &v358 - v23;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8A8, &unk_24F9911A8);
  v369 = *(v415 - 8);
  MEMORY[0x28223BE20](v415);
  v408 = &v358 - v24;
  v365 = type metadata accessor for GamesArcadeFooterView(0);
  MEMORY[0x28223BE20](v365);
  v364 = (&v358 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215CD0, &unk_24F940ED0);
  MEMORY[0x28223BE20](v405);
  v370 = &v358 - v26;
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8B0, &qword_24F9911B8);
  MEMORY[0x28223BE20](v400);
  v403 = &v358 - v27;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215CB8, &unk_24F9911C0);
  MEMORY[0x28223BE20](v454);
  v406 = &v358 - v28;
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223D8, &qword_24F969278);
  v367 = *(v411 - 8);
  MEMORY[0x28223BE20](v411);
  v398 = &v358 - v29;
  v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8B8, &qword_24F9911D0);
  v368 = *(v414 - 8);
  MEMORY[0x28223BE20](v414);
  v401 = &v358 - v30;
  v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8C0, &qword_24F9911D8);
  MEMORY[0x28223BE20](v447);
  v452 = &v358 - v31;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8C8, &unk_24F9911E0);
  MEMORY[0x28223BE20](v396);
  v402 = &v358 - v32;
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C98, &unk_24F940EC0);
  MEMORY[0x28223BE20](v449);
  v404 = &v358 - v33;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C88, &qword_24F9911F0);
  MEMORY[0x28223BE20](v474);
  v457 = &v358 - v34;
  v392 = type metadata accessor for LargeBreakoutView(0);
  MEMORY[0x28223BE20](v392);
  v363 = (&v358 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8D0, &qword_24F9911F8);
  v366 = *(v407 - 8);
  MEMORY[0x28223BE20](v407);
  v397 = &v358 - v36;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8D8, &unk_24F991200);
  MEMORY[0x28223BE20](v393);
  v394 = &v358 - v37;
  v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C78, &unk_24F940EB0);
  MEMORY[0x28223BE20](v453);
  v399 = &v358 - v38;
  v445 = type metadata accessor for StoryCardView(0);
  MEMORY[0x28223BE20](v445);
  v430 = (&v358 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v464 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8E0, &qword_24F991210);
  v432 = *(v464 - 8);
  MEMORY[0x28223BE20](v464);
  v460 = &v358 - v40;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8E8, &qword_24F991218);
  MEMORY[0x28223BE20](v471);
  v473 = &v358 - v41;
  v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8F0, &qword_24F991220);
  MEMORY[0x28223BE20](v446);
  v450 = &v358 - v42;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8F8, &qword_24F991228);
  MEMORY[0x28223BE20](v390);
  v391 = &v358 - v43;
  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C60, &unk_24F991230);
  MEMORY[0x28223BE20](v448);
  v395 = &v358 - v44;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C50, &unk_24F940EA0);
  MEMORY[0x28223BE20](v472);
  v455 = &v358 - v45;
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C40, &qword_24F991240);
  MEMORY[0x28223BE20](v480);
  v475 = &v358 - v46;
  v442 = type metadata accessor for ImageLockupView(0);
  MEMORY[0x28223BE20](v442);
  v387 = (&v358 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C900, &qword_24F991248);
  v409 = *(v458 - 8);
  MEMORY[0x28223BE20](v458);
  v440 = &v358 - v48;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C908, &unk_24F991250);
  MEMORY[0x28223BE20](v386);
  v388 = &v358 - v49;
  v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C28, &unk_24F940E90);
  MEMORY[0x28223BE20](v443);
  v389 = &v358 - v50;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C910, &qword_24F991260);
  MEMORY[0x28223BE20](v438);
  v441 = &v358 - v51;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C918, &qword_24F991268);
  MEMORY[0x28223BE20](v383);
  v384 = &v358 - v52;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C10, &unk_24F991270);
  MEMORY[0x28223BE20](v439);
  v385 = &v358 - v53;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C00, &unk_24F940E80);
  MEMORY[0x28223BE20](v469);
  v444 = &v358 - v54;
  v437 = type metadata accessor for BrickView(0);
  MEMORY[0x28223BE20](v437);
  v429 = (&v358 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C920, &qword_24F991280);
  v431 = *(v451 - 8);
  MEMORY[0x28223BE20](v451);
  v465 = &v358 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C928, &qword_24F991288);
  MEMORY[0x28223BE20](v57);
  v360 = &v358 - v58;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C930, &unk_24F991290);
  v359 = *(v361 - 8);
  MEMORY[0x28223BE20](v361);
  v60 = &v358 - v59;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BE8, &qword_24F940E78);
  MEMORY[0x28223BE20](v381);
  v62 = &v358 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v362 = &v358 - v64;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C938, &unk_24F9912A0);
  MEMORY[0x28223BE20](v379);
  v380 = (&v358 - v65);
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BD8, &qword_24F940E70);
  MEMORY[0x28223BE20](v435);
  v382 = &v358 - v66;
  v67 = type metadata accessor for GamesPageHeader(0);
  MEMORY[0x28223BE20](v67);
  v69 = &v358 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C940, &qword_24F9912B0);
  MEMORY[0x28223BE20](v491);
  v493 = &v358 - v70;
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C948, &qword_24F9912B8);
  MEMORY[0x28223BE20](v477);
  v479 = &v358 - v71;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C950, &qword_24F9912C0);
  MEMORY[0x28223BE20](v466);
  v468 = &v358 - v72;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C958, &qword_24F9912C8);
  MEMORY[0x28223BE20](v433);
  v434 = (&v358 - v73);
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BB8, &qword_24F940E60);
  MEMORY[0x28223BE20](v467);
  v436 = &v358 - v74;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BA8, &qword_24F940E58);
  MEMORY[0x28223BE20](v478);
  v470 = &v358 - v75;
  v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B98, &qword_24F940E50);
  MEMORY[0x28223BE20](v492);
  v481 = &v358 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B88, &qword_24F940E48);
  MEMORY[0x28223BE20](v77 - 8);
  v494 = &v358 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v80 = v79 - 8;
  MEMORY[0x28223BE20](v79);
  v82 = &v358 - v81;
  sub_24E60169C(v497, &v358 - v81, &unk_27F23A690, &qword_24F982880);
  v83 = *(v80 + 56);
  v497 = v82;
  v84 = &v82[v83];
  v85 = v500;
  v86 = v499;
  sub_24E60169C(v498, v84, &unk_27F23A690, &qword_24F982880);
  memcpy(v508, v501, 0x188uLL);
  v506[0] = *(v86 + 16);
  sub_24E615E00(v85, v507);
  switch(v506[0])
  {
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for Lockup(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v87 = *&v502[0];
      type metadata accessor for LockupViewModel(0);
      swift_allocObject();

      v88 = v476;

      v501 = v87;
      v89 = sub_24F41AF18(v87, 3, 0, 0, 1, 5, v88);
      LOBYTE(v503) = 0;
      if (v89)
      {
        v505 = v89;
        v90 = sub_24E66C990();
        sub_24F921D38();
        v91 = v359;
        v92 = v361;
        (*(v359 + 16))(v360, v60, v361);
        swift_storeEnumTagMultiPayload();
        *v504 = &type metadata for LockupButtonView;
        *&v504[8] = v90;
        swift_getOpaqueTypeConformance2();
        sub_24F924E28();
        (*(v91 + 8))(v60, v92);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v350 = sub_24E66C990();
        *v504 = &type metadata for LockupButtonView;
        *&v504[8] = v350;
        swift_getOpaqueTypeConformance2();
        sub_24F924E28();
      }

      v351 = v362;
      sub_24E6009C8(v62, v362, &qword_27F215BE8, &qword_24F940E78);

      sub_24E60169C(v351, v380, &qword_27F215BE8, &qword_24F940E78);
      swift_storeEnumTagMultiPayload();
      sub_24E66C8D8();
      v352 = v382;
      sub_24F924E28();
      sub_24E60169C(v352, v434, &qword_27F215BD8, &qword_24F940E70);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BC8, &qword_24F940E68);
      sub_24E66C7C8();
      sub_24E66C84C();
      v353 = v436;
      sub_24F924E28();
      sub_24E601704(v352, &qword_27F215BD8, &qword_24F940E70);
      sub_24E60169C(v353, v468, &qword_27F215BB8, &qword_24F940E60);
      swift_storeEnumTagMultiPayload();
      sub_24E66C73C();
      sub_24E66C9E4();
      v354 = v470;
      sub_24F924E28();
      sub_24E601704(v353, &qword_27F215BB8, &qword_24F940E60);
      sub_24E60169C(v354, v479, &qword_27F215BA8, &qword_24F940E58);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v355 = v481;
      sub_24F924E28();
      sub_24E601704(v354, &qword_27F215BA8, &qword_24F940E58);
      sub_24E60169C(v355, v493, &qword_27F215B98, &qword_24F940E50);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v356 = v494;
      sub_24F924E28();

      sub_24E601704(v355, &qword_27F215B98, &qword_24F940E50);
      v266 = v351;
      v267 = &qword_27F215BE8;
      v268 = &qword_24F940E78;
      v143 = v356;
      goto LABEL_58;
    case 0xF:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for Paragraph(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v204 = v505;
      memcpy(v504, v508, sizeof(v504));
      CGSizeMake();
      type metadata accessor for ParagraphViewModel(0);
      v205 = swift_allocObject();
      v206 = qword_27F226130;
      v207 = sub_24F91F008();
      (*(*(v207 - 8) + 56))(v205 + v206, 1, 1, v207);
      memcpy((v205 + 24), v504, 0x188uLL);
      v501 = v204;
      *(v205 + 16) = v204;
      v503 = v205;

      sub_24E8B9768(v508, v502);
      v208 = sub_24E66D5C4();
      v209 = v408;
      sub_24F921D38();
      v210 = v369;
      v211 = v209;
      v212 = v415;
      (*(v369 + 16))(v412, v211, v415);
      swift_storeEnumTagMultiPayload();
      *&v502[0] = &type metadata for ParagraphView;
      *(&v502[0] + 1) = v208;
      swift_getOpaqueTypeConformance2();
      v213 = sub_24E66D618();
      *&v502[0] = &type metadata for EditorialLinkView;
      *(&v502[0] + 1) = v213;
      swift_getOpaqueTypeConformance2();
      v214 = v416;
      sub_24F924E28();
      sub_24E60169C(v214, v461, &qword_27F215D08, &unk_24F991190);
      swift_storeEnumTagMultiPayload();
      sub_24E66D4E4();
      sub_24E66D66C();
      v215 = v463;
      sub_24F924E28();
      sub_24E601704(v214, &qword_27F215D08, &unk_24F991190);
      sub_24E60169C(v215, v488, &qword_27F215CF8, &unk_24F940EE0);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v216 = v490;
      sub_24F924E28();
      sub_24E601704(v215, &qword_27F215CF8, &unk_24F940EE0);
      sub_24E60169C(v216, v493, &qword_27F215CE8, &qword_24F9911A0);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v217 = v494;
      sub_24F924E28();

      v143 = v217;

      sub_24E601704(v216, &qword_27F215CE8, &qword_24F9911A0);
      (*(v210 + 8))(v408, v212);
      goto LABEL_59;
    case 0x11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for Footnote();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v501 = *&v502[0];
      *v504 = *&v502[0];
      v163 = sub_24E66D28C();
      v164 = v398;
      sub_24F921D38();
      v165 = v367;
      v166 = v411;
      (*(v367 + 16))(v403, v164, v411);
      swift_storeEnumTagMultiPayload();
      *v504 = &type metadata for FootnoteView;
      *&v504[8] = v163;
      swift_getOpaqueTypeConformance2();
      sub_24E66D2E0();
      v167 = v406;
      sub_24F924E28();
      sub_24E60169C(v167, v452, &qword_27F215CB8, &unk_24F9911C0);
      swift_storeEnumTagMultiPayload();
      sub_24E66D06C();
      sub_24E66D1D4();
      v168 = v457;
      sub_24F924E28();
      sub_24E601704(v167, &qword_27F215CB8, &unk_24F9911C0);
      sub_24E60169C(v168, v473, &qword_27F215C88, &qword_24F9911F0);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v169 = v475;
      sub_24F924E28();
      sub_24E601704(v168, &qword_27F215C88, &qword_24F9911F0);
      sub_24E60169C(v169, v479, &qword_27F215C40, &qword_24F991240);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v170 = v481;
      sub_24F924E28();
      sub_24E601704(v169, &qword_27F215C40, &qword_24F991240);
      sub_24E60169C(v170, v493, &qword_27F215B98, &qword_24F940E50);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v171 = v494;
      sub_24F924E28();

      v143 = v171;
      sub_24E601704(v170, &qword_27F215B98, &qword_24F940E50);
      (*(v165 + 8))(v398, v166);
      goto LABEL_59;
    case 0x15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for Brick(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v269 = *&v502[0];
      KeyPath = swift_getKeyPath();
      v271 = v429;
      *v429 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      v272 = v437;
      v273 = *(v437 + 20);
      *(v271 + v273) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for BrickViewModel(0);
      v274 = swift_allocObject();
      *(v274 + 24) = 513;
      v501 = v269;
      *(v274 + 16) = v269;
      *v504 = v274;
      v275 = sub_24EC79CFC(&qword_27F215C18, type metadata accessor for BrickView, &unk_24F9988E0);

      v276 = v465;
      sub_24F921D38();

      sub_24EC7A180(v271, type metadata accessor for BrickView);
      v180 = v431;
      v181 = v451;
      (*(v431 + 16))(v384, v276, v451);
      goto LABEL_37;
    case 0x17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for Brick(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v277 = *&v502[0];
      v278 = swift_getKeyPath();
      v279 = v429;
      *v429 = v278;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      v272 = v437;
      v280 = *(v437 + 20);
      *(v279 + v280) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for BrickViewModel(0);
      v281 = swift_allocObject();
      *(v281 + 24) = 512;
      v501 = v277;
      *(v281 + 16) = v277;
      *v504 = v281;
      v275 = sub_24EC79CFC(&qword_27F215C18, type metadata accessor for BrickView, &unk_24F9988E0);

      v282 = v465;
      sub_24F921D38();

      sub_24EC7A180(v279, type metadata accessor for BrickView);
      v180 = v431;
      v181 = v451;
      (*(v431 + 16))(v384, v282, v451);
LABEL_37:
      swift_storeEnumTagMultiPayload();
      *v504 = v272;
      *&v504[8] = v275;
      swift_getOpaqueTypeConformance2();
      v183 = v385;
      sub_24F924E28();
      v184 = &qword_27F215C10;
      v185 = &unk_24F991270;
      sub_24E60169C(v183, v441, &qword_27F215C10, &unk_24F991270);
      goto LABEL_38;
    case 0x18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for Brick(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v172 = *&v502[0];
      v173 = swift_getKeyPath();
      v174 = v429;
      *v429 = v173;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      v175 = v437;
      v176 = *(v437 + 20);
      *(v174 + v176) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for BrickViewModel(0);
      v177 = swift_allocObject();
      *(v177 + 24) = 514;
      v501 = v172;
      *(v177 + 16) = v172;
      *v504 = v177;
      v178 = sub_24EC79CFC(&qword_27F215C18, type metadata accessor for BrickView, &unk_24F9988E0);

      v179 = v465;
      sub_24F921D38();

      sub_24EC7A180(v174, type metadata accessor for BrickView);
      v180 = v431;
      v181 = v451;
      (*(v431 + 16))(v388, v179, v451);
      swift_storeEnumTagMultiPayload();
      *v504 = v175;
      *&v504[8] = v178;
      swift_getOpaqueTypeConformance2();
      v182 = sub_24EC79CFC(&qword_27F215C30, type metadata accessor for ImageLockupView, &unk_24F99A5C8);
      *v504 = v442;
      *&v504[8] = v182;
      swift_getOpaqueTypeConformance2();
      v183 = v389;
      sub_24F924E28();
      v184 = &qword_27F215C28;
      v185 = &unk_24F940E90;
      sub_24E60169C(v183, v441, &qword_27F215C28, &unk_24F940E90);
LABEL_38:
      swift_storeEnumTagMultiPayload();
      sub_24E66CA70();
      sub_24E66CB54();
      v283 = v444;
      sub_24F924E28();
      sub_24E601704(v183, v184, v185);
      sub_24E60169C(v283, v468, &qword_27F215C00, &unk_24F940E80);
      swift_storeEnumTagMultiPayload();
      sub_24E66C73C();
      sub_24E66C9E4();
      v284 = v470;
      sub_24F924E28();
      sub_24E601704(v283, &qword_27F215C00, &unk_24F940E80);
      sub_24E60169C(v284, v479, &qword_27F215BA8, &qword_24F940E58);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v285 = v481;
      sub_24F924E28();
      sub_24E601704(v284, &qword_27F215BA8, &qword_24F940E58);
      sub_24E60169C(v285, v493, &qword_27F215B98, &qword_24F940E50);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v162 = v494;
      sub_24F924E28();

      sub_24E601704(v285, &qword_27F215B98, &qword_24F940E50);
      (*(v180 + 8))(v465, v181);
      goto LABEL_39;
    case 0x1F:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for EditorialLink(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v218 = *&v502[0];
      v500 = *&v502[0];
      type metadata accessor for EditorialLinkViewModel(0);
      v219 = swift_allocObject();
      v501 = v219;
      v219[2] = v218;
      *v504 = v219;
      v220 = sub_24E66D618();

      v118 = v371;
      sub_24F921D38();
      v119 = v372;
      v120 = v423;
      (*(v372 + 16))(v412, v118, v423);
      swift_storeEnumTagMultiPayload();
      v221 = sub_24E66D5C4();
      *v504 = &type metadata for ParagraphView;
      *&v504[8] = v221;
      swift_getOpaqueTypeConformance2();
      *v504 = &type metadata for EditorialLinkView;
      *&v504[8] = v220;
      swift_getOpaqueTypeConformance2();
      v122 = v416;
      sub_24F924E28();
      v123 = &qword_27F215D08;
      v124 = &unk_24F991190;
      sub_24E60169C(v122, v461, &qword_27F215D08, &unk_24F991190);
      goto LABEL_26;
    case 0x21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for Quote(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v226 = *&v502[0];
      v500 = *&v502[0];
      type metadata accessor for QuoteViewModel(0);
      v227 = swift_allocObject();
      v501 = v227;
      v227[2] = v226;
      *v504 = v227;
      v228 = sub_24E66D9B4();

      v229 = v425;
      sub_24F921D38();
      v230 = v378;
      v231 = v428;
      (*(v378 + 16))(v422, v229, v428);
      swift_storeEnumTagMultiPayload();
      v232 = sub_24E66D960();
      *v504 = &type metadata for ArticleHorizontalRuleView;
      *&v504[8] = v232;
      swift_getOpaqueTypeConformance2();
      *v504 = &type metadata for QuoteView;
      *&v504[8] = v228;
      swift_getOpaqueTypeConformance2();
      v233 = v426;
      sub_24F924E28();
      sub_24E60169C(v233, v484, &qword_27F215D58, &unk_24F940F00);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D78, &unk_24F9912D0);
      sub_24E66D880();
      sub_24E66DA08();
      v234 = v485;
      sub_24F924E28();
      sub_24E601704(v233, &qword_27F215D58, &unk_24F940F00);
      sub_24E60169C(v234, v488, &qword_27F215D48, &qword_24F991140);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v235 = v490;
      sub_24F924E28();
      sub_24E601704(v234, &qword_27F215D48, &qword_24F991140);
      sub_24E60169C(v235, v493, &qword_27F215CE8, &qword_24F9911A0);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v143 = v494;
      sub_24F924E28();

      sub_24E601704(v235, &qword_27F215CE8, &qword_24F9911A0);
      (*(v230 + 8))(v425, v231);
      goto LABEL_59;
    case 0x22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for HorizontalRule();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v298 = *&v502[0];
      v500 = *&v502[0];
      type metadata accessor for ArticleHorizontalRuleViewModel(0);
      v299 = swift_allocObject();
      v501 = v299;
      v299[2] = v298;
      *v504 = v299;
      v300 = sub_24E66D960();

      v301 = v420;
      sub_24F921D38();
      v302 = v377;
      v303 = v427;
      (*(v377 + 16))(v422, v301, v427);
      swift_storeEnumTagMultiPayload();
      *v504 = &type metadata for ArticleHorizontalRuleView;
      *&v504[8] = v300;
      swift_getOpaqueTypeConformance2();
      v304 = sub_24E66D9B4();
      *v504 = &type metadata for QuoteView;
      *&v504[8] = v304;
      swift_getOpaqueTypeConformance2();
      v305 = v426;
      sub_24F924E28();
      sub_24E60169C(v305, v484, &qword_27F215D58, &unk_24F940F00);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D78, &unk_24F9912D0);
      sub_24E66D880();
      sub_24E66DA08();
      v306 = v485;
      sub_24F924E28();
      sub_24E601704(v305, &qword_27F215D58, &unk_24F940F00);
      sub_24E60169C(v306, v488, &qword_27F215D48, &qword_24F991140);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v307 = v490;
      sub_24F924E28();
      sub_24E601704(v306, &qword_27F215D48, &qword_24F991140);
      sub_24E60169C(v307, v493, &qword_27F215CE8, &qword_24F9911A0);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v308 = v494;
      sub_24F924E28();

      sub_24E601704(v307, &qword_27F215CE8, &qword_24F9911A0);
      (*(v302 + 8))(v420, v303);
      v143 = v308;
      goto LABEL_59;
    case 0x23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for FramedArtwork(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v286 = *&v502[0];
      v500 = *&v502[0];
      type metadata accessor for FramedArtworkViewModel(0);
      v287 = swift_allocObject();
      v501 = v287;
      v287[2] = v286;
      *v504 = v287;
      v288 = sub_24E66D74C();

      v289 = v373;
      sub_24F921D38();
      v290 = v374;
      v291 = v421;
      (*(v374 + 16))(v417, v289, v421);
      swift_storeEnumTagMultiPayload();
      *v504 = &type metadata for FramedArtworkView;
      *&v504[8] = v288;
      swift_getOpaqueTypeConformance2();
      v292 = sub_24E66D7A0();
      *v504 = &type metadata for FramedVideoView;
      *&v504[8] = v292;
      swift_getOpaqueTypeConformance2();
      v293 = v419;
      sub_24F924E28();
      sub_24E60169C(v293, v461, &qword_27F215D28, &unk_24F940EF0);
      swift_storeEnumTagMultiPayload();
      sub_24E66D4E4();
      sub_24E66D66C();
      v294 = v463;
      sub_24F924E28();
      sub_24E601704(v293, &qword_27F215D28, &unk_24F940EF0);
      sub_24E60169C(v294, v488, &qword_27F215CF8, &unk_24F940EE0);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v295 = v490;
      sub_24F924E28();
      sub_24E601704(v294, &qword_27F215CF8, &unk_24F940EE0);
      sub_24E60169C(v295, v493, &qword_27F215CE8, &qword_24F9911A0);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v296 = v494;
      sub_24F924E28();

      sub_24E601704(v295, &qword_27F215CE8, &qword_24F9911A0);
      v297 = v289;
      v143 = v296;
      (*(v290 + 8))(v297, v291);
      goto LABEL_59;
    case 0x2F:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for FramedVideo(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v115 = *&v502[0];
      v500 = *&v502[0];
      type metadata accessor for FramedVideoViewModel(0);
      v116 = swift_allocObject();
      v501 = v116;
      v116[2] = v115;
      *v504 = v116;
      v117 = sub_24E66D7A0();

      v118 = v375;
      sub_24F921D38();
      v119 = v376;
      v120 = v424;
      (*(v376 + 16))(v417, v118, v424);
      swift_storeEnumTagMultiPayload();
      v121 = sub_24E66D74C();
      *v504 = &type metadata for FramedArtworkView;
      *&v504[8] = v121;
      swift_getOpaqueTypeConformance2();
      *v504 = &type metadata for FramedVideoView;
      *&v504[8] = v117;
      swift_getOpaqueTypeConformance2();
      v122 = v419;
      sub_24F924E28();
      v123 = &qword_27F215D28;
      v124 = &unk_24F940EF0;
      sub_24E60169C(v122, v461, &qword_27F215D28, &unk_24F940EF0);
LABEL_26:
      swift_storeEnumTagMultiPayload();
      sub_24E66D4E4();
      sub_24E66D66C();
      v222 = v463;
      sub_24F924E28();
      sub_24E601704(v122, v123, v124);
      sub_24E60169C(v222, v488, &qword_27F215CF8, &unk_24F940EE0);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v223 = v490;
      sub_24F924E28();
      sub_24E601704(v222, &qword_27F215CF8, &unk_24F940EE0);
      sub_24E60169C(v223, v493, &qword_27F215CE8, &qword_24F9911A0);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v224 = v494;
      sub_24F924E28();

      sub_24E601704(v223, &qword_27F215CE8, &qword_24F9911A0);
      v225 = v118;
      v143 = v224;
      (*(v119 + 8))(v225, v120);
      goto LABEL_59;
    case 0x36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for EditorialStoryCard(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v186 = *&v502[0];
      v187 = swift_getKeyPath();
      v188 = v430;
      *v430 = v187;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      v189 = v445;
      v190 = (v188 + *(v445 + 20));
      v505 = 0x4024000000000000;
      sub_24F926F28();
      v191 = *&v504[8];
      *v190 = *v504;
      v190[1] = v191;
      v192 = *(v189 + 24);
      *(v188 + v192) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for StoryCardViewModel(0);
      swift_allocObject();
      v193 = v476;

      v501 = v186;

      *v504 = sub_24E6EC080(v194, 0, v193);
      v195 = sub_24EC79CFC(&qword_27F215C68, type metadata accessor for StoryCardView, &unk_24FA0DC0C);
      v196 = v460;
      sub_24F921D38();

      sub_24EC7A180(v188, type metadata accessor for StoryCardView);
      v197 = v432;
      v198 = v464;
      (*(v432 + 16))(v391, v196, v464);
      swift_storeEnumTagMultiPayload();
      v199 = sub_24EC79CFC(&qword_27F215C30, type metadata accessor for ImageLockupView, &unk_24F99A5C8);
      *v504 = v442;
      *&v504[8] = v199;
      swift_getOpaqueTypeConformance2();
      *v504 = v189;
      *&v504[8] = v195;
      swift_getOpaqueTypeConformance2();
      v200 = v395;
      sub_24F924E28();
      sub_24E60169C(v200, v450, &qword_27F215C60, &unk_24F991230);
      swift_storeEnumTagMultiPayload();
      sub_24E66CDB4();
      sub_24E66CEFC();
      v201 = v455;
      sub_24F924E28();
      sub_24E601704(v200, &qword_27F215C60, &unk_24F991230);
      sub_24E60169C(v201, v473, &qword_27F215C50, &unk_24F940EA0);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v202 = v475;
      sub_24F924E28();
      sub_24E601704(v201, &qword_27F215C50, &unk_24F940EA0);
      sub_24E60169C(v202, v479, &qword_27F215C40, &qword_24F991240);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v203 = v481;
      sub_24F924E28();
      sub_24E601704(v202, &qword_27F215C40, &qword_24F991240);
      sub_24E60169C(v203, v493, &qword_27F215B98, &qword_24F940E50);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v162 = v494;
      sub_24F924E28();

      sub_24E601704(v203, &qword_27F215B98, &qword_24F940E50);
      (*(v197 + 8))(v460, v198);
      goto LABEL_39;
    case 0x37:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for EditorialStoryCard(0);
      if (swift_dynamicCast())
      {
        goto LABEL_12;
      }

      goto LABEL_50;
    case 0x38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for EditorialStoryCard(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

LABEL_12:
      v125 = *&v502[0];
      v126 = swift_getKeyPath();
      v127 = v430;
      *v430 = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      v128 = v445;
      v129 = (v127 + *(v445 + 20));
      v505 = 0x4024000000000000;
      sub_24F926F28();
      v130 = *&v504[8];
      *v129 = *v504;
      v129[1] = v130;
      v131 = *(v128 + 24);
      *(v127 + v131) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for StoryCardViewModel(0);
      swift_allocObject();
      v132 = v476;

      v501 = v125;

      *v504 = sub_24E6EC080(v133, 1, v132);
      v134 = sub_24EC79CFC(&qword_27F215C68, type metadata accessor for StoryCardView, &unk_24FA0DC0C);
      v135 = v460;
      sub_24F921D38();

      sub_24EC7A180(v127, type metadata accessor for StoryCardView);
      v136 = v432;
      v137 = v464;
      (*(v432 + 16))(v394, v135, v464);
      swift_storeEnumTagMultiPayload();
      *v504 = v128;
      *&v504[8] = v134;
      swift_getOpaqueTypeConformance2();
      v138 = v399;
      sub_24F924E28();
      sub_24E60169C(v138, v450, &qword_27F215C78, &unk_24F940EB0);
      swift_storeEnumTagMultiPayload();
      sub_24E66CDB4();
      sub_24E66CEFC();
      v139 = v455;
      sub_24F924E28();
      sub_24E601704(v138, &qword_27F215C78, &unk_24F940EB0);
      sub_24E60169C(v139, v473, &qword_27F215C50, &unk_24F940EA0);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v140 = v475;
      sub_24F924E28();
      sub_24E601704(v139, &qword_27F215C50, &unk_24F940EA0);
      sub_24E60169C(v140, v479, &qword_27F215C40, &qword_24F991240);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v141 = v481;
      sub_24F924E28();
      sub_24E601704(v140, &qword_27F215C40, &qword_24F991240);
      sub_24E60169C(v141, v493, &qword_27F215B98, &qword_24F940E50);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v142 = v494;
      sub_24F924E28();

      sub_24E601704(v141, &qword_27F215B98, &qword_24F940E50);
      (*(v136 + 8))(v135, v137);
      v143 = v142;
      goto LABEL_59;
    case 0x3A:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for LargeHeroBreakout(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v236 = *&v502[0];
      v237 = swift_getKeyPath();
      v238 = v363;
      *v363 = v237;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      v239 = v392;
      v240 = *(v392 + 20);
      *(v238 + v240) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for LargeBreakoutViewModel(0);
      v241 = swift_allocObject();
      v242 = qword_27F2251B8;
      v243 = type metadata accessor for LargeBreakoutOverlayViewModel(0);
      v244 = *(*(v243 - 8) + 56);
      v244(v241 + v242, 1, 1, v243);
      v244(v241 + qword_27F2251C0, 1, 1, v243);
      *(v241 + qword_27F39B4B0) = 1;
      *(v241 + qword_27F39B4B8) = 2;
      v245 = v476;
      *(v241 + 16) = v236;
      *(v241 + 24) = v245;
      v501 = v236;
      *v504 = v241;
      v246 = sub_24EC79CFC(&qword_27F215CA0, type metadata accessor for LargeBreakoutView, &unk_24F9F4984);

      v247 = v397;
      sub_24F921D38();

      sub_24EC7A180(v238, type metadata accessor for LargeBreakoutView);
      v248 = v366;
      v249 = v407;
      (*(v366 + 16))(v402, v247, v407);
      swift_storeEnumTagMultiPayload();
      *v504 = v239;
      *&v504[8] = v246;
      swift_getOpaqueTypeConformance2();
      v250 = sub_24E66D180();
      *v504 = &type metadata for PosterLockupView;
      *&v504[8] = v250;
      swift_getOpaqueTypeConformance2();
      v251 = v404;
      sub_24F924E28();
      sub_24E60169C(v251, v452, &qword_27F215C98, &unk_24F940EC0);
      swift_storeEnumTagMultiPayload();
      sub_24E66D06C();
      sub_24E66D1D4();
      v252 = v457;
      sub_24F924E28();
      sub_24E601704(v251, &qword_27F215C98, &unk_24F940EC0);
      sub_24E60169C(v252, v473, &qword_27F215C88, &qword_24F9911F0);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v253 = v475;
      sub_24F924E28();
      sub_24E601704(v252, &qword_27F215C88, &qword_24F9911F0);
      sub_24E60169C(v253, v479, &qword_27F215C40, &qword_24F991240);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v254 = v481;
      sub_24F924E28();
      sub_24E601704(v253, &qword_27F215C40, &qword_24F991240);
      sub_24E60169C(v254, v493, &qword_27F215B98, &qword_24F940E50);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v143 = v494;
      sub_24F924E28();

      sub_24E601704(v254, &qword_27F215B98, &qword_24F940E50);
      (*(v248 + 8))(v397, v249);
      goto LABEL_59;
    case 0x3F:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for ArcadeFooter(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v255 = *&v502[0];
      type metadata accessor for ArcadeFooterViewModel(0);
      v256 = swift_allocObject();
      v256[3] = v476;
      type metadata accessor for ArtworkLoader();
      sub_24F928FD8();

      sub_24F92A758();
      v256[4] = *v504;
      v256[2] = v255;
      v257 = swift_getKeyPath();
      v258 = v364;
      *v364 = v257;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      *v504 = v256;
      sub_24EC79CFC(&qword_27F215CD8, type metadata accessor for GamesArcadeFooterView, &unk_24F9691F8);
      v259 = v370;
      sub_24F921D38();
      sub_24EC7A180(v258, type metadata accessor for GamesArcadeFooterView);
      *(v259 + *(v405 + 36)) = sub_24F925808();
      sub_24E60169C(v259, v403, &qword_27F215CD0, &unk_24F940ED0);
      swift_storeEnumTagMultiPayload();
      v260 = sub_24E66D28C();
      *v504 = &type metadata for FootnoteView;
      *&v504[8] = v260;
      swift_getOpaqueTypeConformance2();
      sub_24E66D2E0();
      v261 = v406;
      sub_24F924E28();
      sub_24E60169C(v261, v452, &qword_27F215CB8, &unk_24F9911C0);
      swift_storeEnumTagMultiPayload();
      sub_24E66D06C();
      sub_24E66D1D4();
      v262 = v457;
      sub_24F924E28();
      sub_24E601704(v261, &qword_27F215CB8, &unk_24F9911C0);
      sub_24E60169C(v262, v473, &qword_27F215C88, &qword_24F9911F0);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v263 = v475;
      sub_24F924E28();
      sub_24E601704(v262, &qword_27F215C88, &qword_24F9911F0);
      sub_24E60169C(v263, v479, &qword_27F215C40, &qword_24F991240);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v264 = v481;
      sub_24F924E28();
      sub_24E601704(v263, &qword_27F215C40, &qword_24F991240);
      sub_24E60169C(v264, v493, &qword_27F215B98, &qword_24F940E50);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v265 = v494;
      sub_24F924E28();
      v143 = v265;

      sub_24E601704(v264, &qword_27F215B98, &qword_24F940E50);
      v266 = v259;
      v267 = &qword_27F215CD0;
      v268 = &unk_24F940ED0;
LABEL_58:
      sub_24E601704(v266, v267, v268);
      goto LABEL_59;
    case 0x4A:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for PosterLockup(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v318 = *&v502[0];
      v501 = *&v502[0];
      type metadata accessor for PosterLockupViewModel(0);
      v319 = swift_allocObject();
      v320 = v476;
      *(v319 + 16) = v318;
      *(v319 + 24) = v320;
      *v504 = v319;
      v321 = sub_24E66D180();

      v322 = v401;
      sub_24F921D38();
      v323 = v368;
      v324 = v414;
      (*(v368 + 16))(v402, v322, v414);
      swift_storeEnumTagMultiPayload();
      v325 = sub_24EC79CFC(&qword_27F215CA0, type metadata accessor for LargeBreakoutView, &unk_24F9F4984);
      *v504 = v392;
      *&v504[8] = v325;
      swift_getOpaqueTypeConformance2();
      *v504 = &type metadata for PosterLockupView;
      *&v504[8] = v321;
      swift_getOpaqueTypeConformance2();
      v326 = v404;
      sub_24F924E28();
      sub_24E60169C(v326, v452, &qword_27F215C98, &unk_24F940EC0);
      swift_storeEnumTagMultiPayload();
      sub_24E66D06C();
      sub_24E66D1D4();
      v327 = v457;
      sub_24F924E28();
      sub_24E601704(v326, &qword_27F215C98, &unk_24F940EC0);
      sub_24E60169C(v327, v473, &qword_27F215C88, &qword_24F9911F0);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v328 = v475;
      sub_24F924E28();
      sub_24E601704(v327, &qword_27F215C88, &qword_24F9911F0);
      sub_24E60169C(v328, v479, &qword_27F215C40, &qword_24F991240);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v329 = v481;
      sub_24F924E28();
      sub_24E601704(v328, &qword_27F215C40, &qword_24F991240);
      sub_24E60169C(v329, v493, &qword_27F215B98, &qword_24F940E50);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v330 = v494;
      sub_24F924E28();

      v143 = v330;

      sub_24E601704(v329, &qword_27F215B98, &qword_24F940E50);
      (*(v323 + 8))(v401, v324);
      goto LABEL_59;
    case 0x57:
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
      v310 = v497;
      if ((*(*(v309 - 8) + 48))(v497, 1, v309) == 1)
      {
        *&v502[0] = sub_24F926C98();
        BYTE8(v502[0]) = 1;

        sub_24F924E28();
        v311 = v504[8];
        v312 = v434;
        *v434 = *v504;
        *(v312 + 8) = v311;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BC8, &qword_24F940E68);
        sub_24E66C7C8();
        sub_24E66C84C();
        v313 = v436;
        sub_24F924E28();
        sub_24E60169C(v313, v468, &qword_27F215BB8, &qword_24F940E60);
        swift_storeEnumTagMultiPayload();
        sub_24E66C73C();
        sub_24E66C9E4();
        v314 = v470;
        sub_24F924E28();
        sub_24E601704(v313, &qword_27F215BB8, &qword_24F940E60);
        sub_24E60169C(v314, v479, &qword_27F215BA8, &qword_24F940E58);
        swift_storeEnumTagMultiPayload();
        sub_24E66C6B0();
        sub_24E66CC9C();
        v315 = v481;
        sub_24F924E28();
        sub_24E601704(v314, &qword_27F215BA8, &qword_24F940E58);
        sub_24E60169C(v315, v493, &qword_27F215B98, &qword_24F940E50);
        swift_storeEnumTagMultiPayload();
        sub_24E66C624();
        sub_24E66D3CC();
        v316 = v494;
        sub_24F924E28();

        v317 = v315;
        v143 = v316;
      }

      else
      {
        *&v502[0] = 0;
        BYTE8(v502[0]) = 0;
        sub_24F924E28();
        v344 = v504[8];
        v345 = v434;
        *v434 = *v504;
        *(v345 + 8) = v344;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BC8, &qword_24F940E68);
        sub_24E66C7C8();
        sub_24E66C84C();
        v346 = v436;
        sub_24F924E28();
        sub_24E60169C(v346, v468, &qword_27F215BB8, &qword_24F940E60);
        swift_storeEnumTagMultiPayload();
        sub_24E66C73C();
        sub_24E66C9E4();
        v347 = v470;
        sub_24F924E28();
        sub_24E601704(v346, &qword_27F215BB8, &qword_24F940E60);
        sub_24E60169C(v347, v479, &qword_27F215BA8, &qword_24F940E58);
        swift_storeEnumTagMultiPayload();
        sub_24E66C6B0();
        sub_24E66CC9C();
        v348 = v481;
        sub_24F924E28();
        sub_24E601704(v347, &qword_27F215BA8, &qword_24F940E58);
        sub_24E60169C(v348, v493, &qword_27F215B98, &qword_24F940E50);
        swift_storeEnumTagMultiPayload();
        sub_24E66C624();
        sub_24E66D3CC();
        v349 = v494;
        sub_24F924E28();
        v317 = v348;
        v143 = v349;
      }

      sub_24E601704(v317, &qword_27F215B98, &qword_24F940E50);
      __swift_destroy_boxed_opaque_existential_1(v507);
      v340 = v496;
      goto LABEL_61;
    case 0x63:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for ImageLockup(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v93 = *&v502[0];
      v94 = swift_getKeyPath();
      v95 = v387;
      *v387 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      v96 = v442;
      v97 = (v95 + *(v442 + 20));
      v505 = 0;
      sub_24F926F28();
      v98 = *&v504[8];
      *v97 = *v504;
      v97[1] = v98;
      v99 = (v95 + *(v96 + 24));
      v505 = 0;
      sub_24F926F28();
      v100 = *&v504[8];
      *v99 = *v504;
      v99[1] = v100;
      v101 = *(v86 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
      type metadata accessor for ImageLockupViewModel(0);
      v102 = swift_allocObject();
      *(v102 + 24) = 0;
      type metadata accessor for LockupViewModel(0);
      swift_allocObject();
      v103 = v476;

      v501 = v93;

      *(v102 + 32) = sub_24F41AF18(v104, 1, 0, 0, 1, 2, v103);
      *(v102 + 40) = (v101 & 2) != 0;
      *(v102 + 16) = v93;
      *v504 = v102;
      v105 = sub_24EC79CFC(&qword_27F215C30, type metadata accessor for ImageLockupView, &unk_24F99A5C8);
      v106 = v440;
      sub_24F921D38();

      sub_24EC7A180(v95, type metadata accessor for ImageLockupView);
      v107 = v409;
      v108 = v458;
      (*(v409 + 16))(v388, v106, v458);
      swift_storeEnumTagMultiPayload();
      v109 = sub_24EC79CFC(&qword_27F215C18, type metadata accessor for BrickView, &unk_24F9988E0);
      *v504 = v437;
      *&v504[8] = v109;
      swift_getOpaqueTypeConformance2();
      *v504 = v96;
      *&v504[8] = v105;
      swift_getOpaqueTypeConformance2();
      v110 = v389;
      sub_24F924E28();
      sub_24E60169C(v110, v441, &qword_27F215C28, &unk_24F940E90);
      swift_storeEnumTagMultiPayload();
      sub_24E66CA70();
      sub_24E66CB54();
      v111 = v444;
      sub_24F924E28();
      sub_24E601704(v110, &qword_27F215C28, &unk_24F940E90);
      sub_24E60169C(v111, v468, &qword_27F215C00, &unk_24F940E80);
      swift_storeEnumTagMultiPayload();
      sub_24E66C73C();
      sub_24E66C9E4();
      v112 = v470;
      sub_24F924E28();
      sub_24E601704(v111, &qword_27F215C00, &unk_24F940E80);
      v113 = &qword_27F215BA8;
      v114 = &qword_24F940E58;
      sub_24E60169C(v112, v479, &qword_27F215BA8, &qword_24F940E58);
      goto LABEL_15;
    case 0x64:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      type metadata accessor for ImageLockup(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v144 = *&v502[0];
      v145 = swift_getKeyPath();
      v146 = v387;
      *v387 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      v147 = v442;
      v148 = (v146 + *(v442 + 20));
      v505 = 0;
      sub_24F926F28();
      v149 = *&v504[8];
      *v148 = *v504;
      v148[1] = v149;
      v150 = (v146 + *(v147 + 24));
      v505 = 0;
      sub_24F926F28();
      v151 = *&v504[8];
      *v150 = *v504;
      v150[1] = v151;
      v152 = *(v86 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
      type metadata accessor for ImageLockupViewModel(0);
      v153 = swift_allocObject();
      *(v153 + 24) = 1;
      type metadata accessor for LockupViewModel(0);
      swift_allocObject();
      v154 = v476;

      v501 = v144;

      *(v153 + 32) = sub_24F41AF18(v155, 2, 0, 0, 1, 5, v154);
      *(v153 + 40) = (v152 & 2) != 0;
      *(v153 + 16) = v144;
      *v504 = v153;
      v156 = sub_24EC79CFC(&qword_27F215C30, type metadata accessor for ImageLockupView, &unk_24F99A5C8);
      v157 = v440;
      sub_24F921D38();

      sub_24EC7A180(v146, type metadata accessor for ImageLockupView);
      v107 = v409;
      v108 = v458;
      (*(v409 + 16))(v391, v157, v458);
      swift_storeEnumTagMultiPayload();
      *v504 = v147;
      *&v504[8] = v156;
      swift_getOpaqueTypeConformance2();
      v158 = sub_24EC79CFC(&qword_27F215C68, type metadata accessor for StoryCardView, &unk_24FA0DC0C);
      *v504 = v445;
      *&v504[8] = v158;
      swift_getOpaqueTypeConformance2();
      v159 = v395;
      sub_24F924E28();
      sub_24E60169C(v159, v450, &qword_27F215C60, &unk_24F991230);
      swift_storeEnumTagMultiPayload();
      sub_24E66CDB4();
      sub_24E66CEFC();
      v160 = v455;
      sub_24F924E28();
      sub_24E601704(v159, &qword_27F215C60, &unk_24F991230);
      sub_24E60169C(v160, v473, &qword_27F215C50, &unk_24F940EA0);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v112 = v475;
      sub_24F924E28();
      sub_24E601704(v160, &qword_27F215C50, &unk_24F940EA0);
      v113 = &qword_27F215C40;
      v114 = &qword_24F991240;
      sub_24E60169C(v112, v479, &qword_27F215C40, &qword_24F991240);
LABEL_15:
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v161 = v481;
      sub_24F924E28();
      sub_24E601704(v112, v113, v114);
      sub_24E60169C(v161, v493, &qword_27F215B98, &qword_24F940E50);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v162 = v494;
      sub_24F924E28();

      sub_24E601704(v161, &qword_27F215B98, &qword_24F940E50);
      (*(v107 + 8))(v440, v108);
LABEL_39:
      v143 = v162;
      goto LABEL_59;
    case 0x66:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      *v380 = sub_24F926C98();
      swift_storeEnumTagMultiPayload();
      sub_24E66C8D8();

      v331 = v382;
      sub_24F924E28();
      sub_24E60169C(v331, v434, &qword_27F215BD8, &qword_24F940E70);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BC8, &qword_24F940E68);
      sub_24E66C7C8();
      sub_24E66C84C();
      v332 = v436;
      sub_24F924E28();
      sub_24E601704(v331, &qword_27F215BD8, &qword_24F940E70);
      sub_24E60169C(v332, v468, &qword_27F215BB8, &qword_24F940E60);
      swift_storeEnumTagMultiPayload();
      sub_24E66C73C();
      sub_24E66C9E4();
      v333 = v470;
      sub_24F924E28();
      sub_24E601704(v332, &qword_27F215BB8, &qword_24F940E60);
      sub_24E60169C(v333, v479, &qword_27F215BA8, &qword_24F940E58);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v334 = v481;
      sub_24F924E28();
      sub_24E601704(v333, &qword_27F215BA8, &qword_24F940E58);
      sub_24E60169C(v334, v493, &qword_27F215B98, &qword_24F940E50);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v335 = v494;
      sub_24F924E28();
      v143 = v335;

      sub_24E601704(v334, &qword_27F215B98, &qword_24F940E50);
      sub_24EC7A180(v69, type metadata accessor for GamesPageHeader);
LABEL_59:
      __swift_destroy_boxed_opaque_existential_1(v507);
      v340 = v496;
      break;
    default:
LABEL_50:
      v336 = [objc_opt_self() standardUserDefaults];
      v337 = sub_24F92B098();
      v338 = [v336 BOOLForKey_];

      if (v338)
      {
        v339 = *(v86 + 16);
        sub_24E615E00(v85, v502 + 8);
        LOBYTE(v502[0]) = v339;
        *&v504[32] = v502[2];
        *&v504[16] = v502[1];
        *v504 = v502[0];
      }

      else
      {
        memset(v504, 0, 48);
      }

      v340 = v496;
      v341 = v494;
      sub_24E60169C(v504, v484, &qword_27F215D78, &unk_24F9912D0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D78, &unk_24F9912D0);
      sub_24E66D880();
      sub_24E66DA08();
      v342 = v485;
      sub_24F924E28();
      sub_24E60169C(v342, v488, &qword_27F215D48, &qword_24F991140);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v343 = v490;
      sub_24F924E28();
      sub_24E601704(v342, &qword_27F215D48, &qword_24F991140);
      sub_24E60169C(v343, v493, &qword_27F215CE8, &qword_24F9911A0);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v143 = v341;
      sub_24F924E28();
      sub_24E601704(v343, &qword_27F215CE8, &qword_24F9911A0);
      sub_24E601704(v504, &qword_27F215D78, &unk_24F9912D0);
      sub_24E601704(v506, &qword_27F22C960, &unk_24F9912E0);
      break;
  }

  v310 = v497;
LABEL_61:
  sub_24E6009C8(v143, v340, &qword_27F215B88, &qword_24F940E48);
  return sub_24E601704(v310, &unk_27F23A680, &unk_24F981ED0);
}

uint64_t sub_24EC79CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24EC79D54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = sub_24F924C98();
  LOBYTE(v22) = 1;
  sub_24EC79FB0(v2, v29);
  *&v20[7] = v29[0];
  *&v20[23] = v29[1];
  *&v20[39] = v29[2];
  *&v20[55] = v29[3];
  v18 = sub_24F925808();
  sub_24F927618();
  sub_24F9242E8();
  *&v21[55] = v25;
  *&v21[71] = v26;
  *&v21[87] = v27;
  *&v21[103] = v28;
  *&v21[7] = v22;
  *&v21[23] = v23;
  *&v21[39] = v24;
  v4 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  KeyPath = swift_getKeyPath();
  v6 = sub_24F926C68();
  v7 = sub_24F925808();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C968, &unk_24F991420) + 36));
  v9 = *(sub_24F924258() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #20.0 }

  *v8 = _Q0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  *(a2 + 33) = *&v20[16];
  *(a2 + 49) = *&v20[32];
  *(a2 + 65) = *&v20[48];
  *(a2 + 17) = *v20;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 193) = *&v21[64];
  *(a2 + 209) = *&v21[80];
  *(a2 + 225) = *&v21[96];
  *(a2 + 129) = *v21;
  *(a2 + 145) = *&v21[16];
  result = *&v21[32];
  *(a2 + 161) = *&v21[32];
  *a2 = v19;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v20[63];
  *(a2 + 88) = v18;
  *(a2 + 128) = 1;
  *(a2 + 177) = *&v21[48];
  *(a2 + 240) = *(&v28 + 1);
  *(a2 + 248) = KeyPath;
  *(a2 + 256) = v4;
  *(a2 + 264) = v6;
  *(a2 + 272) = v7;
  return result;
}

uint64_t sub_24EC79FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  v20[0] = *a1;
  sub_24F92CA38();
  sub_24F925A28();
  v4 = sub_24F925C98();
  v6 = v5;
  v18 = v7;
  v9 = v8;

  __swift_project_boxed_opaque_existential_1((a1 + 8), *(a1 + 32));
  sub_24F928D68();
  sub_24F92C7A8();
  sub_24E6585F8(v19);
  sub_24F9259E8();
  v10 = sub_24F925C98();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  LOBYTE(v19[0]) = v18 & 1;
  v20[0] = v14 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14 & 1;
  *(a2 + 56) = v16;
  sub_24E5FD138(v4, v6, v18 & 1);

  sub_24E5FD138(v10, v12, v14 & 1);

  sub_24E600B40(v10, v12, v14 & 1);

  sub_24E600B40(v4, v6, v18 & 1);
}

uint64_t sub_24EC7A180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EC7A218()
{
  result = qword_27F22C970;
  if (!qword_27F22C970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C968, &unk_24F991420);
    sub_24EC7A2D0();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C970);
  }

  return result;
}

unint64_t sub_24EC7A2D0()
{
  result = qword_27F22C978;
  if (!qword_27F22C978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C980, &qword_24F991430);
    sub_24EC7A388();
    sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C978);
  }

  return result;
}

unint64_t sub_24EC7A388()
{
  result = qword_27F22C988;
  if (!qword_27F22C988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C990, &qword_24F991438);
    sub_24EC7A440();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C988);
  }

  return result;
}

unint64_t sub_24EC7A440()
{
  result = qword_27F22C998;
  if (!qword_27F22C998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C9A0, &unk_24F991440);
    sub_24EC7A4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C998);
  }

  return result;
}

unint64_t sub_24EC7A4CC()
{
  result = qword_27F22C9A8;
  if (!qword_27F22C9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C9B0, &qword_24FA09790);
    sub_24E602068(&qword_27F22C9B8, &qword_27F220848, &qword_24F964490, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C9A8);
  }

  return result;
}

uint64_t type metadata accessor for ComponentHeightFactory.ComponentHeight(uint64_t a1)
{
  result = qword_27F22C9C0;
  if (!qword_27F22C9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC7A5D0(uint64_t a1)
{
  result = sub_24F922348();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PersonalizedOfferContext.__allocating_init(offerAction:offerDisplayProperties:personalizedOfferType:)(uint64_t a1, uint64_t a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v7;
  return result;
}

uint64_t PersonalizedOfferContext.init(offerAction:offerDisplayProperties:personalizedOfferType:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v4;
  return v3;
}

uint64_t PersonalizedOfferContext.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x28223BE20](v4);
  v24 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  type metadata accessor for Action(0);
  sub_24F928398();
  v25 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, a2);
  v14 = *(v8 + 8);
  v14(v13, v7);
  type metadata accessor for OfferDisplayProperties();
  sub_24F928398();
  v15 = *(v28 + 16);
  v26 = a2;
  v15(v24, a2, v27);
  sub_24EC7AAE0(&qword_27F225B10, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
  sub_24F929548();
  v24 = v29;
  sub_24F928398();
  sub_24F928348();
  v17 = v16;
  v14(v10, v7);
  if (v17 && (v18 = sub_24F92CB88(), , v18 < 3))
  {
    (*(v28 + 8))(v26, v27);
    v14(a1, v7);
    type metadata accessor for PersonalizedOfferContext();
    result = swift_allocObject();
    v20 = v24;
    *(result + 16) = v25;
    *(result + 24) = v20;
    *(result + 32) = v18;
  }

  else
  {
    v21 = sub_24F92AC38();
    sub_24EC7AAE0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v22 = 0xD000000000000015;
    v22[1] = 0x800000024FA58780;
    v22[2] = v23[2];
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();

    (*(v28 + 8))(v26, v27);
    return (v14)(a1, v7);
  }

  return result;
}

uint64_t sub_24EC7AAE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PersonalizedOfferContext.deinit()
{

  return v0;
}

uint64_t PersonalizedOfferContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EC7ABB4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PersonalizedOfferContext.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t TriggerBuilderError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      sub_24F92C888();

      v11 = 0xD00000000000001ALL;
      v4 = 0xED000065726F7453;
      v5 = 0x7070416F5477656ELL;
      v6 = 0xEF676E6972696150;
      v7 = 0x686374615777656ELL;
      if (v1 != 2)
      {
        v7 = 0xD000000000000013;
        v6 = 0x800000024FA42E60;
      }

      if (v1)
      {
        v5 = 0xD000000000000010;
        v4 = 0x800000024FA42E30;
      }

      if (v1 <= 1u)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }

      if (v1 <= 1u)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x253050C20](v8, v9);

      return v11;
    }

    sub_24F92C888();

    v3 = 0xD000000000000020;
LABEL_6:
    v11 = v3;
    MEMORY[0x253050C20](v1, v2);
    return v11;
  }

  if (*(v0 + 16) == 2)
  {
    sub_24F92C888();

    v3 = 0xD00000000000001CLL;
    goto LABEL_6;
  }

  if (v1 | v2)
  {
    return 0x6E776F6E6B6E55;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t _s12GameStoreKit19TriggerBuilderErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v7 == 1)
      {
        v10 = sub_24F0CAD44(*a1, *a2);
        sub_24EC7B180(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
        goto LABEL_19;
      }

      goto LABEL_34;
    }

    if (!*(a2 + 16))
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_24F92CE08();
        sub_24E8B964C(v6, v5, 0);
        sub_24E8B964C(v3, v2, 0);
        sub_24EC7B180(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
LABEL_19:
        sub_24EC7B180(v11, v12, v13);
        return v10 & 1;
      }

      sub_24E8B964C(v8, v2, 0);
      sub_24E8B964C(v3, v2, 0);
      sub_24EC7B180(v3, v2, 0);
      v21 = v3;
      v22 = v2;
      v23 = 0;
      goto LABEL_38;
    }

    goto LABEL_16;
  }

  if (v4 == 2)
  {
    if (v7 == 2)
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_24F92CE08();
        sub_24E8B964C(v6, v5, 2u);
        sub_24E8B964C(v3, v2, 2u);
        sub_24EC7B180(v3, v2, 2u);
        v11 = v6;
        v12 = v5;
        v13 = 2;
        goto LABEL_19;
      }

      sub_24E8B964C(v14, v2, 2u);
      sub_24E8B964C(v3, v2, 2u);
      sub_24EC7B180(v3, v2, 2u);
      v21 = v3;
      v22 = v2;
      v23 = 2;
      goto LABEL_38;
    }

LABEL_16:

    goto LABEL_34;
  }

  if (!(v3 | v2))
  {
    if (v7 == 3 && (v5 | v6) == 0)
    {
      sub_24EC7B180(*a1, v2, 3u);
      v21 = 0;
      v22 = 0;
      v23 = 3;
LABEL_38:
      sub_24EC7B180(v21, v22, v23);
      return 1;
    }

    goto LABEL_34;
  }

  if (v7 != 3 || v6 != 1 || v5 != 0)
  {
LABEL_34:
    sub_24E8B964C(v6, v5, v7);
    sub_24EC7B180(v3, v2, v4);
    sub_24EC7B180(v6, v5, v7);
    return 0;
  }

  sub_24EC7B180(*a1, v2, 3u);
  v19 = 1;
  sub_24EC7B180(1, 0, 3u);
  return v19;
}

unint64_t sub_24EC7B0D8()
{
  result = qword_27F22C9D0[0];
  if (!qword_27F22C9D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F22C9D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit19TriggerBuilderErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_24EC7B180(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 2)
  {
  }

  return result;
}

uint64_t SponsoredSearchRequestData.iAdId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SponsoredSearchRequestData.sponsoredSearchRequestData.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SponsoredSearchRequestData.routingInfo.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SponsoredSearchRequestData.canaryId.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall SponsoredSearchRequestData.init(iAdId:sponsoredSearchRequestData:routingInfo:canaryId:)(GameStoreKit::SponsoredSearchRequestData *__return_ptr retstr, Swift::String_optional iAdId, Swift::String sponsoredSearchRequestData, Swift::String routingInfo, Swift::String_optional canaryId)
{
  retstr->iAdId = iAdId;
  retstr->sponsoredSearchRequestData = sponsoredSearchRequestData;
  retstr->routingInfo = routingInfo;
  retstr->canaryId = canaryId;
}

unint64_t SponsoredSearchRequestData.searchRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];

  v12 = sub_24E6086DC(MEMORY[0x277D84F90]);
  sub_24E988E4C(v1, v2, 0x6449644169, 0xE500000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v3, v4, 0x626F6C4261746164, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v5, v6, 0x6974756F52644169, 0xEE006F666E49676ELL, v10);
  sub_24E988E4C(v7, v8, 0x7972616E6163, 0xE600000000000000);
  return v12;
}

uint64_t sub_24EC7B3BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC7B404(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t InfiniteScrollObserver.__allocating_init(paginatedPresenter:triggerDistance:)(uint64_t a1, double a2)
{
  swift_allocObject();
  v4 = sub_24EC7BC44(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)(uint64_t a1, double a2)
{
  v2 = sub_24EC7BC44(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_24EC7B528(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_24EC7B5B4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_24EC7B67C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_24EC7B728(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + 32) != 1)
  {
    return a1();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 40) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24E618160(0, v6[2] + 1, 1, v6);
    *(v2 + 40) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_24E618160((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_24E97225C;
  v10[5] = v5;
  *(v2 + 40) = v6;
  return swift_endAccess();
}

uint64_t sub_24EC7B850(void *a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  if (*(v1 + 48) == 1)
  {
    result = swift_beginAccess();
    if ((v1[8] & 1) != 0 || *(v1 + 9) < *(v1 + 7))
    {
      [a1 contentSize];
      v6 = v5;
      swift_beginAccess();
      if ((v1[10] & 1) != 0 || (result = swift_beginAccess(), v6 >= v1[2]))
      {
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v9 = *&v3 + 80;
          v8 = *(*&v3 + 80);
          v7 = *(v9 + 8);
          if (((*(v7 + 16))(v8, v7) & 1) != 0 || ((*(v7 + 24))(v8, v7) & 1) == 0)
          {
            return swift_unknownObjectRelease();
          }

          [a1 frame];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          swift_beginAccess();
          v18 = 0.0;
          if (v1[2] < v6)
          {
            swift_beginAccess();
            v18 = v1[2];
          }

          [a1 contentOffset];
          v20 = v19;
          v22.origin.x = v11;
          v22.origin.y = v13;
          v22.size.width = v15;
          v22.size.height = v17;
          if (v6 - (v20 + CGRectGetHeight(v22)) <= v18)
          {
            (*(v7 + 32))(v8, v7);
            swift_unknownObjectRelease();
            result = swift_beginAccess();
            if ((v1[8] & 1) == 0)
            {
              v21 = *(v1 + 9);
              if (v21 < *(v1 + 7))
              {
                *(v1 + 9) = v21 + 1;
              }
            }
          }

          else
          {
            return swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  return result;
}

uint64_t InfiniteScrollObserver.deinit()
{
  MEMORY[0x2530543E0](v0 + 24);

  return v0;
}

uint64_t InfiniteScrollObserver.__deallocating_deinit()
{
  MEMORY[0x2530543E0](v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC7BB84()
{
  *(v0 + 32) = 0;
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = v1 + 40;
    do
    {
      v4 = *(v3 - 8);

      v4(v5);

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  *(v0 + 40) = MEMORY[0x277D84F90];
}

uint64_t sub_24EC7BC44(uint64_t a1, double a2)
{
  *(v2 + 16) = 0x407F400000000000;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = MEMORY[0x277D84F90];
  *(v2 + 48) = 1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 1;
  swift_beginAccess();
  *(v2 + 16) = a2;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t sub_24EC7BCEC()
{

  return swift_deallocObject();
}

__n128 sub_24EC7BD84(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24EC7BD90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EC7B580();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EC7BDF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_24EC7B644();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24EC7BE68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EB97328();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EC7C260(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E861804(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24EC7ED7C(v5);
  *a1 = v2;
  return result;
}

void sub_24EC7C38C(uint64_t a1@<X8>)
{
  v2 = sub_24F922118();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280C0, &unk_24F973400);
  v6 = swift_allocObject();
  v20 = v6;
  *(v6 + 16) = sub_24EC7C628;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v19 = v7;
  *(v7 + 16) = sub_24EC7C748;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EC7C870;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_24EC7C990;
  *(v9 + 24) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234670, &unk_24F980F40);
  *(a1 + 32) = v10;
  v11 = sub_24E9E955C();
  *(a1 + 40) = v11;
  *(a1 + 8) = v9;
  v12 = *MEMORY[0x277D76938];
  *v5 = *MEMORY[0x277D76938];
  (*(v3 + 104))(v5, *MEMORY[0x277D22620], v2);
  v13 = sub_24F922628();
  v14 = MEMORY[0x277D22798];
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  __swift_allocate_boxed_opaque_existential_1((a1 + 64));
  v21[3] = v2;
  v21[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);

  v16 = v12;
  sub_24F922638();
  (*(v3 + 8))(v5, v2);
  *(a1 + 128) = v10;
  *(a1 + 136) = v11;
  v17 = v19;
  *(a1 + 104) = v20;
  *(a1 + 168) = v10;
  *(a1 + 176) = v11;
  *(a1 + 144) = v17;
  *(a1 + 208) = v10;
  *(a1 + 216) = v11;

  *(a1 + 184) = v8;
  *a1 = 3;
  *(a1 + 48) = 0x3FD6666666666666;
  *(a1 + 56) = 0;
}

void sub_24EC7C628(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_24F92C138() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 0.0;
      goto LABEL_12;
    }
  }

  v12 = sub_24F92C178();

  v11 = 10.0;
  if (v12)
  {
    v11 = 4.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_24EC7C748(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_24F92C138() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 12.0;
      goto LABEL_12;
    }
  }

  v12 = sub_24F92C178();

  v11 = 33.0;
  if ((v12 & 1) == 0)
  {
    v11 = 16.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_24EC7C870(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_24F92C138() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 12.0;
      goto LABEL_12;
    }
  }

  v12 = sub_24F92C178();

  v11 = 16.0;
  if (v12)
  {
    v11 = 25.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_24EC7C990(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_24F92C138();
  v5 = 20.0;
  if (v3)
  {
    v5 = 25.0;
  }

  *a2 = v5;
}

uint64_t static MetadataRibbonViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F210508 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_24EC7CA84(&unk_27F22CA60, v2);
}

__n128 MetadataRibbonViewLayout.init(metadataRibbonItemLayoutContexts:metrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 176);
  *(a3 + 168) = *(a2 + 160);
  *(a3 + 184) = v3;
  v4 = *(a2 + 208);
  *(a3 + 200) = *(a2 + 192);
  *(a3 + 216) = v4;
  v5 = *(a2 + 112);
  *(a3 + 104) = *(a2 + 96);
  *(a3 + 120) = v5;
  v6 = *(a2 + 144);
  *(a3 + 136) = *(a2 + 128);
  *(a3 + 152) = v6;
  v7 = *(a2 + 48);
  *(a3 + 40) = *(a2 + 32);
  *(a3 + 56) = v7;
  v8 = *(a2 + 80);
  *(a3 + 72) = *(a2 + 64);
  *(a3 + 88) = v8;
  result = *a2;
  v10 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *a3 = a1;
  *(a3 + 24) = v10;
  return result;
}

void MetadataRibbonViewLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v64 = sub_24F92CDB8();
  v14 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v6 + 16))
  {
    v17 = sub_24EC7D0B8(v6 + 1, a1, a5, a6);
    v18 = v17;
    v19 = *(v17 + 2);
    if (v19)
    {
      v20 = 0;
      v51[1] = a2;
      v52 = v17 + 32;
      v54 = 0.0;
      v60 = 1;
      v57 = (v14 + 8);
      v56 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = a5;
      v61 = a3;
      v62 = a4;
      v51[0] = v17;
      while (v20 < v19)
      {
        v70 = v20;
        sub_24EC7D9C4(&v52[48 * v20], v71);
        if (!*&v71[0])
        {
          goto LABEL_31;
        }

        v74[0] = v71[0];
        v74[1] = v71[1];
        v75 = v71[2];
        v77.origin.x = a3;
        v77.origin.y = a4;
        v77.size.width = a5;
        v77.size.height = a6;
        MinX = CGRectGetMinX(v77);
        v22 = *&v74[0];
        v59 = *(*&v74[0] + 16);
        if (v59)
        {
          v23 = MinX;
          v53 = v20;
          v63 = *&v74[0] + 32;

          v24 = 0;
          v25 = 0.0;
          while (v24 < *(v22 + 16))
          {
            sub_24EC7D9FC(v63 + 120 * v24, &v70);
            sub_24EC7DA34(&v70, v67);
            v34 = v72;
            v35 = v73;
            sub_24EC7DAA4(&v70);
            if (v60)
            {
              v80.origin.x = v61;
              v80.origin.y = v62;
              v80.size.width = a5;
              v80.size.height = a6;
              MinY = CGRectGetMinY(v80);
              v37 = v7[22];
              __swift_project_boxed_opaque_existential_1(v7 + 19, v37);
              sub_24E8ED7D8(v37);
              v38 = sub_24F9223A8();
              v39 = *v57;
              (*v57)(v16, v64);
              v40 = *(v22 + 16);
              if (v40)
              {
                v55 = MinY;
                v41 = a6;
                v42 = 0.0;
                v43 = v63;
                do
                {
                  sub_24EC7D9FC(v43, v65);
                  v44 = v66;
                  sub_24EC7DAA4(v65);
                  if (v42 <= v44)
                  {
                    v42 = v44;
                  }

                  v43 += 120;
                  --v40;
                }

                while (v40);
                v26 = v42 * 0.5;
                a6 = v41;
                v27 = v55 + v38;
              }

              else
              {
                v26 = 0.0;
                v27 = MinY + v38;
              }
            }

            else
            {
              v45 = v7[17];
              __swift_project_boxed_opaque_existential_1(v7 + 14, v45);
              sub_24E8ED7D8(v45);
              v46 = sub_24F9223A8();
              v39 = *v57;
              (*v57)(v16, v64);
              v47 = *(v22 + 16);
              if (v47)
              {
                v48 = 0.0;
                v49 = v63;
                do
                {
                  sub_24EC7D9FC(v49, v65);
                  v50 = v66;
                  sub_24EC7DAA4(v65);
                  if (v48 <= v50)
                  {
                    v48 = v50;
                  }

                  v49 += 120;
                  --v47;
                }

                while (v47);
                v26 = v48 * 0.5;
              }

              else
              {
                v26 = 0.0;
              }

              v27 = v54 + v46;
            }

            ++v24;
            v28 = v27 + v26 + v35 * -0.5;
            v78.origin.x = v23;
            v78.origin.y = v28;
            v78.size.width = v34;
            v78.size.height = v35;
            MaxX = CGRectGetMaxX(v78);
            v30 = v75;
            __swift_project_boxed_opaque_existential_1(v74 + 1, v75);
            sub_24E8ED7D8(v30);
            v31 = sub_24F9223A8();
            v39(v16, v64);
            v32 = MaxX + v31;
            __swift_project_boxed_opaque_existential_1(v68, v69);
            a5 = v58;
            sub_24F92C1D8();
            sub_24F922228();
            __swift_project_boxed_opaque_existential_1(v68, v69);
            sub_24F922218();
            MaxY = CGRectGetMaxY(v79);
            if (v25 <= MaxY)
            {
              v25 = MaxY;
            }

            sub_24E601704(v67, &qword_27F22CB40, &qword_24F9917D0);
            v23 = v32;
            if (v24 == v59)
            {

              a3 = v61;
              a4 = v62;
              v18 = v51[0];
              v20 = v53;
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

        v25 = 0.0;
LABEL_5:
        ++v20;
        sub_24EC7DAD4(v74);
        v60 = 0;
        v19 = *(v18 + 2);
        v54 = v25;
        if (v20 == v19)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_31:

      sub_24F922128();
    }
  }

  else
  {

    sub_24F922128();
  }
}

char *sub_24EC7D0B8(void *a1, void *a2, double a3, double a4)
{
  v95 = a1;
  v8 = 0;
  v92 = sub_24F92CDB8();
  v9 = *(v92 - 8);
  *&v10 = MEMORY[0x28223BE20](v92).n128_u64[0];
  v91 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a2;
  v12 = [a2 traitCollection];
  v13 = sub_24EAEE040(v12);

  v97 = v4;
  v14 = *v4;
  if (v13)
  {
    v15 = v14[2];

    sub_24EC7FB4C(0, v15, v13, v13, v14);
    v17 = v16;

    v94 = *(v17 + 16);
    if (!v94)
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB50, &qword_24F9FAAC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24F93DE60;
    *(v17 + 32) = v14;

    v94 = 1;
  }

  v19 = 0;
  v96 = v17 + 32;
  v90 = (v9 + 8);
  v18 = MEMORY[0x277D84F90];
  v93 = v17;
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      goto LABEL_61;
    }

    v99 = v18;
    v100 = v19;
    v101 = v8;
    v22 = *(v96 + 8 * v19);

    sub_24EC7DB04(v23, v98, a3, a4);
    v25 = v24;
    v26 = *(v24 + 16) >= *(v22 + 16) ? *(v22 + 16) : *(v24 + 16);
    v130 = MEMORY[0x277D84F90];
    result = sub_24F4582CC(0, v26, 0);
    v28 = v130;
    v103 = v25;
    if (v26)
    {
      break;
    }

LABEL_21:
    v47 = *(v22 + 16);
    if (v26 != v47)
    {
      v48 = v22 + 88 * v26 + 32;
      v49 = v103;
      while (v26 < v47)
      {
        sub_24EC7DA34(v48, &v118);
        v50 = *(v49 + 16);
        if (v26 == v50)
        {

          sub_24E601704(&v118, &qword_27F22CB40, &qword_24F9917D0);
          goto LABEL_32;
        }

        if (v26 >= v50)
        {
          goto LABEL_60;
        }

        v51 = v49 + 32 * v26;
        v52 = *(v51 + 48);
        v104 = *(v51 + 32);
        v105 = v52;
        LOWORD(v129[0]) = v123[0];
        v126 = v120;
        v127 = v121;
        v128 = v122;
        v124 = v118;
        v125 = v119;
        *(&v129[1] + 8) = v52;
        *(v129 + 8) = v104;
        v53 = v123[0];
        v54 = BYTE1(v123[0]);
        sub_24E65864C(&v124, &v112);
        sub_24E615E00(&v126 + 8, &v114 + 8);
        LOBYTE(v117) = v53;
        HIBYTE(v117) = v54;
        v111 = v117;
        v108 = v114;
        v109 = v115;
        v110 = v116;
        v106 = v112;
        v107 = v113;
        *&v120 = v114;
        v118 = v112;
        v119 = v113;
        sub_24E612E28((&v108 + 8), &v120 + 8);
        LOBYTE(v123[0]) = v53;
        BYTE1(v123[0]) = v54;
        *(v123 + 8) = v104;
        *(&v123[1] + 8) = v105;
        sub_24E601704(&v124, &qword_27F22CB48, &unk_24F991990);
        v130 = v28;
        v56 = *(v28 + 16);
        v55 = *(v28 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_24F4582CC((v55 > 1), v56 + 1, 1);
          v28 = v130;
        }

        ++v26;
        *(v28 + 16) = v56 + 1;
        v57 = v28 + 120 * v56;
        v58 = v118;
        v59 = v119;
        v60 = v121;
        *(v57 + 64) = v120;
        *(v57 + 80) = v60;
        *(v57 + 32) = v58;
        *(v57 + 48) = v59;
        v61 = v122;
        v62 = v123[0];
        v63 = v123[1];
        *(v57 + 144) = *&v123[2];
        *(v57 + 112) = v62;
        *(v57 + 128) = v63;
        *(v57 + 96) = v61;
        v47 = *(v22 + 16);
        v48 += 88;
        if (v26 == v47)
        {
          goto LABEL_22;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      result = sub_24E601704(&v112, &qword_27F22CB40, &qword_24F9917D0);
      goto LABEL_63;
    }

LABEL_22:

LABEL_32:
    v64 = *(v28 + 16);
    v18 = v99;
    if (v64 >= 3)
    {
      *&v118 = MEMORY[0x277D84F90];
      sub_24F45824C(0, v64, 0);
      v71 = v118;
      v72 = v28 + 32;
      v73 = v64;
      do
      {
        sub_24EC7D9FC(v72, &v124);
        v74 = *(&v129[0] + 1);
        sub_24EC7DAA4(&v124);
        *&v118 = v71;
        v76 = *(v71 + 16);
        v75 = *(v71 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_24F45824C((v75 > 1), v76 + 1, 1);
          v71 = v118;
        }

        *(v71 + 16) = v76 + 1;
        *(v71 + 8 * v76 + 32) = v74;
        v72 += 120;
        --v73;
      }

      while (v73);
      if (v76 <= 2)
      {
        v77 = 0;
        v78 = 0.0;
        goto LABEL_47;
      }

      v77 = (v76 + 1) & 0x7FFFFFFFFFFFFFFCLL;
      v79 = (v71 + 48);
      v78 = 0.0;
      v80 = v77;
      do
      {
        v78 = v78 + *(v79 - 2) + *(v79 - 1) + *v79 + v79[1];
        v79 += 4;
        v80 -= 4;
      }

      while (v80);
      if (v76 + 1 != v77)
      {
LABEL_47:
        v81 = v76 - v77 + 1;
        v82 = (v71 + 8 * v77 + 32);
        do
        {
          v83 = *v82++;
          v78 = v78 + v83;
          --v81;
        }

        while (v81);
      }

      v84 = (a3 - v78) / (v64 - 1);
      v85 = v95[4];
      __swift_project_boxed_opaque_existential_1(v95 + 1, v85);
      v86 = v91;
      sub_24E8ED7D8(v85);
      v87 = sub_24F9223A8();
      (*v90)(v86, v92);
      if (v84 > v87)
      {
        v87 = v84;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_24E617D94(0, *(v18 + 2) + 1, 1, v18);
      }

      v17 = v93;
      v89 = *(v18 + 2);
      v88 = *(v18 + 3);
      if (v89 >= v88 >> 1)
      {
        v18 = sub_24E617D94((v88 > 1), v89 + 1, 1, v18);
      }

      *(v18 + 2) = v89 + 1;
      v20 = &v18[48 * v89];
      *(v20 + 4) = v28;
      *(v20 + 5) = v87;
      *(v20 + 3) = v124;
      *(v20 + 8) = MEMORY[0x277D85048];
      *(v20 + 9) = MEMORY[0x277D225F8];
      v21 = v100;
      v8 = v101;
      goto LABEL_7;
    }

    sub_24E615E00((v95 + 1), &v124 + 8);
    *&v124 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v93;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_24E617D94(0, *(v18 + 2) + 1, 1, v18);
    }

    v21 = v100;
    v8 = v101;
    v67 = *(v18 + 2);
    v66 = *(v18 + 3);
    if (v67 >= v66 >> 1)
    {
      v18 = sub_24E617D94((v66 > 1), v67 + 1, 1, v18);
    }

    *(v18 + 2) = v67 + 1;
    v68 = &v18[48 * v67];
    v69 = v124;
    v70 = v126;
    *(v68 + 3) = v125;
    *(v68 + 4) = v70;
    *(v68 + 2) = v69;
LABEL_7:
    v19 = v21 + 1;
    if (v19 == v94)
    {

      return v18;
    }
  }

  v29 = 0;
  v102 = *(v22 + 16);
  v30 = v22 + 32;
  v31 = v25 + 32;
  while (v102 != v29)
  {
    if (v29 >= *(v22 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    sub_24EC7DA34(v30, &v112);
    v32 = *(v103 + 16);
    if (v29 == v32)
    {
      goto LABEL_62;
    }

    if (v29 >= v32)
    {
      goto LABEL_58;
    }

    v33 = v22;
    v34 = (v31 + 32 * v29);
    v35 = v34[1];
    v104 = *v34;
    v105 = v35;
    LOWORD(v123[0]) = v117;
    v120 = v114;
    v121 = v115;
    v122 = v116;
    v118 = v112;
    v119 = v113;
    *(v123 + 8) = v104;
    *(&v123[1] + 8) = v35;
    v36 = v117;
    v37 = HIBYTE(v117);
    sub_24E65864C(&v118, &v112);
    sub_24E615E00(&v120 + 8, &v114 + 8);
    LOBYTE(v117) = v36;
    HIBYTE(v117) = v37;
    v111 = v117;
    v108 = v114;
    v109 = v115;
    v110 = v116;
    v106 = v112;
    v107 = v113;
    *&v126 = v114;
    v124 = v112;
    v125 = v113;
    sub_24E612E28((&v108 + 8), &v126 + 8);
    LOBYTE(v129[0]) = v36;
    BYTE1(v129[0]) = v37;
    *(v129 + 8) = v104;
    *(&v129[1] + 8) = v105;
    result = sub_24E601704(&v118, &qword_27F22CB48, &unk_24F991990);
    v130 = v28;
    v39 = *(v28 + 16);
    v38 = *(v28 + 24);
    if (v39 >= v38 >> 1)
    {
      result = sub_24F4582CC((v38 > 1), v39 + 1, 1);
      v28 = v130;
    }

    ++v29;
    *(v28 + 16) = v39 + 1;
    v40 = v28 + 120 * v39;
    v41 = v124;
    v42 = v125;
    v43 = v127;
    *(v40 + 64) = v126;
    *(v40 + 80) = v43;
    *(v40 + 32) = v41;
    *(v40 + 48) = v42;
    v44 = v128;
    v45 = v129[0];
    v46 = v129[1];
    *(v40 + 144) = *&v129[2];
    *(v40 + 112) = v45;
    *(v40 + 128) = v46;
    *(v40 + 96) = v44;
    v30 += 88;
    v22 = v33;
    if (v26 == v29)
    {
      goto LABEL_21;
    }
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_24EC7DA34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB40, &qword_24F9917D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24EC7DB04(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = v4;
  v9 = sub_24F92CDB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = a1;
  v13 = *(a1 + 16);
  v14 = *(v5 + 40);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v14);
  sub_24E8ED7D8(v14);
  v133 = a2;
  v15 = sub_24F9223A8();
  (*(v10 + 8))(v12, v9);
  v16 = a3 - v15 * (v13 - 1);
  v17 = *(v5 + 64);
  v138 = v13;
  if (v17)
  {
    LODWORD(v137) = 1;
    v18 = v133;
  }

  else
  {
    v18 = v133;
    v19 = [v133 traitCollection];
    v20 = [v19 preferredContentSizeCategory];

    LOBYTE(v19) = sub_24F92C138();
    LODWORD(v137) = (v19 & 1) != 0;
  }

  v21 = sub_24E60BDD0(MEMORY[0x277D84F90]);
  *&v157 = v134;

  v22 = 0;
  sub_24EC7C260(&v157);
  v23 = v157;
  *&v136 = *(v157 + 16);
  if (v136)
  {
    v24 = 0;
    v25 = v157 + 32;
    v135 = v157;
    while (v24 < *(v23 + 16))
    {
      sub_24EC7DA34(v25, &v157);
      v26 = v161;
      v27 = v162;
      v149 = v157;
      v150 = v158;
      v151 = v159;
      sub_24E612E28(v160, &v152);
      v155 = v26;
      v156 = v27;
      sub_24EC7DA34(&v149, &v143);
      __swift_destroy_boxed_opaque_existential_1(v146);
      sub_24E6585F8(&v143);
      __swift_project_boxed_opaque_existential_1(&v152, v153);
      v22 = v18;
      sub_24F922288();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      sub_24EC7DA34(&v149, &v143);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v139 = v21;
      v38 = sub_24E76D934(&v143);
      v39 = v21[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_88;
      }

      v42 = v37;
      if (v21[3] >= v41)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24E8AFFC4();
        }
      }

      else
      {
        sub_24E89CD10(v41, isUniquelyReferenced_nonNull_native);
        v43 = sub_24E76D934(&v143);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_95;
        }

        v38 = v43;
      }

      v18 = v22;
      v21 = v139;
      if (v42)
      {
        v45 = *(v139 + 56) + 32 * v38;
        *v45 = v29;
        *(v45 + 8) = v31;
        *(v45 + 16) = v33;
        *(v45 + 24) = v35;
      }

      else
      {
        *(v139 + 8 * (v38 >> 6) + 64) |= 1 << v38;
        sub_24E65864C(&v143, v21[6] + 40 * v38);
        v46 = v21[7] + 32 * v38;
        *v46 = v29;
        *(v46 + 8) = v31;
        *(v46 + 16) = v33;
        *(v46 + 24) = v35;
        v47 = v21[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_89;
        }

        v21[2] = v49;
      }

      sub_24E6585F8(&v143);
      __swift_destroy_boxed_opaque_existential_1(v146);
      v16 = v16 - v29;
      v23 = v135;
      if (v138 - v21[2] < 1)
      {
        sub_24E601704(&v149, &qword_27F22CB40, &qword_24F9917D0);
        goto LABEL_21;
      }

      ++v24;
      sub_24E601704(&v149, &qword_27F22CB40, &qword_24F9917D0);
      v25 += 88;
      if (v136 == v24)
      {
        goto LABEL_21;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_21:
  v50 = v134;
  if (v16 <= 0.0 || v138 != v21[2])
  {

    v22 = MEMORY[0x277D84F90];
    v82 = v21;
    v83 = v138;
    if (v138)
    {
      v142 = MEMORY[0x277D84F90];
      sub_24F457B3C(0, v138, 0);
      v22 = v142;
      v84 = v50 + 32;
      v85 = v83;
      do
      {
        sub_24EC7DA34(v84, &v157);
        sub_24EC7DA34(&v157, &v149);
        v86 = v155;
        v87 = v156;
        v143 = v149;
        v144 = v150;
        v145 = v151;
        sub_24E612E28(&v152, v146);
        v147 = v86;
        v148 = v87;
        sub_24E65864C(&v143, &v139);
        sub_24E601704(&v143, &qword_27F22CB40, &qword_24F9917D0);
        sub_24E601704(&v157, &qword_27F22CB40, &qword_24F9917D0);
        v142 = v22;
        v89 = *(v22 + 16);
        v88 = *(v22 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_24F457B3C((v88 > 1), v89 + 1, 1);
          v22 = v142;
        }

        *(v22 + 16) = v89 + 1;
        v90 = (v22 + 40 * v89);
        v91 = v139;
        v92 = v140;
        v90[8] = v141;
        *(v90 + 2) = v91;
        *(v90 + 3) = v92;
        v84 += 88;
        --v85;
      }

      while (v85);
      v21 = v82;
    }

    v93 = *(v22 + 16);
    if (v93)
    {
      v94 = 0;
      v95 = v22 + 32;
      v96 = MEMORY[0x277D84F90];
      v138 = (v22 + 32);
      do
      {
        v97 = v95 + 40 * v94;
        v98 = v94;
        while (1)
        {
          if (v98 >= v93)
          {
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          v94 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            goto LABEL_86;
          }

          if (v21[2])
          {
            v99 = sub_24E76D934(v97);
            v21 = v82;
            if (v100)
            {
              break;
            }
          }

          ++v98;
          v97 += 40;
          if (v94 == v93)
          {
            goto LABEL_84;
          }
        }

        v101 = (v82[7] + 32 * v99);
        v102 = *v101;
        v136 = v101[1];
        v137 = v102;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_24E617C90(0, *(v96 + 2) + 1, 1, v96);
        }

        v95 = v138;
        v104 = *(v96 + 2);
        v103 = *(v96 + 3);
        if (v104 >= v103 >> 1)
        {
          v96 = sub_24E617C90((v103 > 1), v104 + 1, 1, v96);
        }

        *(v96 + 2) = v104 + 1;
        v105 = &v96[32 * v104];
        v106 = v136;
        *(v105 + 2) = v137;
        *(v105 + 3) = v106;
        v21 = v82;
      }

      while (v94 != v93);
    }

    goto LABEL_84;
  }

  v51 = *(v23 + 16);
  if (v51)
  {
    v52 = 0;
    v53 = v23 + 32;
    while (v52 < *(v23 + 16))
    {
      v54 = v21;
      sub_24EC7DA34(v53, &v157);
      v55 = v161;
      v22 = v162;
      v149 = v157;
      v150 = v158;
      v151 = v159;
      sub_24E612E28(v160, &v152);
      v155 = v55;
      v156 = v22;
      if (v16 <= 0.0)
      {
        v21 = v54;
      }

      else
      {
        sub_24EC7DA34(&v149, &v143);
        v21 = v54;
        if (v54[2] && (v56 = sub_24E76D934(&v143), v21 = v54, (v57 & 1) != 0))
        {
          v58 = *(v54[7] + 32 * v56);
          __swift_destroy_boxed_opaque_existential_1(v146);
          sub_24E6585F8(&v143);
          v22 = v154;
          __swift_project_boxed_opaque_existential_1(&v152, v153);
          *&v137 = v16 + v58;
          sub_24F922288();
          v60 = v59;
          v62 = v61;
          v64 = v63;
          v66 = v65;
          if ((JUMeasurementsEqual() & 1) == 0)
          {
            v67 = v23;
            sub_24EC7DA34(&v149, &v143);
            v68 = swift_isUniquelyReferenced_nonNull_native();
            *&v139 = v54;
            v69 = sub_24E76D934(&v143);
            v71 = v54[2];
            v72 = (v70 & 1) == 0;
            v48 = __OFADD__(v71, v72);
            v73 = v71 + v72;
            if (v48)
            {
              goto LABEL_93;
            }

            v74 = v70;
            if (v54[3] >= v73)
            {
              if ((v68 & 1) == 0)
              {
                v22 = v69;
                sub_24E8AFFC4();
                v69 = v22;
              }
            }

            else
            {
              sub_24E89CD10(v73, v68);
              v69 = sub_24E76D934(&v143);
              if ((v74 & 1) != (v75 & 1))
              {
                goto LABEL_95;
              }
            }

            v23 = v67;
            v21 = v139;
            if (v74)
            {
              v76 = *(v139 + 56) + 32 * v69;
              *v76 = v60;
              *(v76 + 8) = v62;
              *(v76 + 16) = v66;
              *(v76 + 24) = v64;
            }

            else
            {
              *(v139 + 8 * (v69 >> 6) + 64) |= 1 << v69;
              v77 = v69;
              sub_24E65864C(&v143, v21[6] + 40 * v69);
              v78 = v21[7] + 32 * v77;
              *v78 = v60;
              *(v78 + 8) = v62;
              *(v78 + 16) = v66;
              *(v78 + 24) = v64;
              v79 = v21[2];
              v48 = __OFADD__(v79, 1);
              v80 = v79 + 1;
              if (v48)
              {
                goto LABEL_94;
              }

              v21[2] = v80;
            }

            v81 = *&v137;
            sub_24E6585F8(&v143);
            __swift_destroy_boxed_opaque_existential_1(v146);
            v16 = v81 - v60;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v146);
          sub_24E6585F8(&v143);
        }
      }

      ++v52;
      sub_24E601704(&v149, &qword_27F22CB40, &qword_24F9917D0);
      v53 += 88;
      if (v51 == v52)
      {
        goto LABEL_65;
      }
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

LABEL_65:

  v22 = MEMORY[0x277D84F90];
  v107 = v21;
  v108 = v138;
  if (v138)
  {
    v142 = MEMORY[0x277D84F90];
    sub_24F457B3C(0, v138, 0);
    v22 = v142;
    v109 = v134 + 32;
    v110 = v108;
    do
    {
      sub_24EC7DA34(v109, &v157);
      sub_24EC7DA34(&v157, &v149);
      v111 = v155;
      v112 = v156;
      v143 = v149;
      v144 = v150;
      v145 = v151;
      sub_24E612E28(&v152, v146);
      v147 = v111;
      v148 = v112;
      sub_24E65864C(&v143, &v139);
      sub_24E601704(&v143, &qword_27F22CB40, &qword_24F9917D0);
      sub_24E601704(&v157, &qword_27F22CB40, &qword_24F9917D0);
      v142 = v22;
      v114 = *(v22 + 16);
      v113 = *(v22 + 24);
      if (v114 >= v113 >> 1)
      {
        sub_24F457B3C((v113 > 1), v114 + 1, 1);
        v22 = v142;
      }

      *(v22 + 16) = v114 + 1;
      v115 = (v22 + 40 * v114);
      v116 = v139;
      v117 = v140;
      v115[8] = v141;
      *(v115 + 2) = v116;
      *(v115 + 3) = v117;
      v109 += 88;
      --v110;
    }

    while (v110);
    v21 = v107;
  }

  v118 = *(v22 + 16);
  if (!v118)
  {
LABEL_84:

    return;
  }

  v119 = 0;
  v120 = v22 + 32;
  v121 = MEMORY[0x277D84F90];
  v138 = (v22 + 32);
LABEL_73:
  v122 = v120 + 40 * v119;
  v123 = v119;
  while (v123 < v118)
  {
    v119 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      goto LABEL_92;
    }

    if (v21[2])
    {
      v124 = sub_24E76D934(v122);
      v21 = v107;
      if (v125)
      {
        v126 = (v107[7] + 32 * v124);
        v127 = *v126;
        v136 = v126[1];
        v137 = v127;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_24E617C90(0, *(v121 + 2) + 1, 1, v121);
        }

        v129 = *(v121 + 2);
        v128 = *(v121 + 3);
        if (v129 >= v128 >> 1)
        {
          v121 = sub_24E617C90((v128 > 1), v129 + 1, 1, v121);
        }

        *(v121 + 2) = v129 + 1;
        v130 = &v121[32 * v129];
        v131 = v136;
        *(v130 + 2) = v137;
        *(v130 + 3) = v131;
        v21 = v107;
        v120 = v138;
        if (v119 != v118)
        {
          goto LABEL_73;
        }

        goto LABEL_84;
      }
    }

    ++v123;
    v122 += 40;
    if (v119 == v118)
    {
      goto LABEL_84;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  sub_24F92CF88();
  __break(1u);

  __break(1u);
}

double MetadataRibbonViewLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_24F92CDB8();
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*v3 + 16))
  {
    return *MEMORY[0x277D22A78];
  }

  v27 = v10;
  v28 = v9;
  v13 = sub_24EC7D0B8(v3 + 1, a1, a2, a3);
  v14 = *(v13 + 2);
  v15 = 0.0;
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      sub_24EC7D9C4(&v13[48 * i + 32], v31);
      v17 = *(v31[0] + 16);
      v18 = 0.0;
      if (v17)
      {
        v19 = v31[0] + 32;
        do
        {
          sub_24EC7D9FC(v19, v29);
          v20 = v30;
          sub_24EC7DAA4(v29);
          if (v18 <= v20)
          {
            v18 = v20;
          }

          v19 += 120;
          --v17;
        }

        while (v17);
      }

      sub_24EC7DAD4(v31);
      v15 = v15 + v18;
    }
  }

  v21 = v4[22];
  __swift_project_boxed_opaque_existential_1(v4 + 19, v21);
  sub_24E8ED7D8(v21);
  sub_24F9223A8();
  v22 = *(v27 + 8);
  v23 = v28;
  v22(v12, v28);
  v24 = v4[27];
  __swift_project_boxed_opaque_existential_1(v4 + 24, v24);
  sub_24E8ED7D8(v24);
  sub_24F9223A8();
  v22(v12, v23);

  v25 = v4[17];
  __swift_project_boxed_opaque_existential_1(v4 + 14, v25);
  sub_24E8ED7D8(v25);
  sub_24F9223A8();
  v22(v12, v23);
  return a2;
}

uint64_t sub_24EC7EA48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC7EA90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_24EC7EB54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC7EB9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC7EC24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC7EC6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC7ECD8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC7ED20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC7ED7C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB40, &qword_24F9917D0);
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24EC7F00C(v7, v8, a1, v4);
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
    return sub_24EC7EE84(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24EC7EE84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 88 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v14 = v6;
    v15 = v5;
    while (1)
    {
      sub_24EC7DA34(v5, &v17);
      v7 = (v5 - 88);
      sub_24EC7DA34(v5 - 88, v16);
      v8 = HIBYTE(v22);
      v9 = v16[81];
      sub_24E601704(v16, &qword_27F22CB40, &qword_24F9917D0);
      result = sub_24E601704(&v17, &qword_27F22CB40, &qword_24F9917D0);
      if ((v8 & 1) == 0 && v9)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v15 + 88;
        v6 = v14 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v19 = *(v5 + 32);
      v20 = *(v5 + 48);
      v21 = *(v5 + 64);
      v22 = *(v5 + 80);
      v17 = *v5;
      v18 = *(v5 + 16);
      v10 = *(v5 - 40);
      *(v5 + 32) = *(v5 - 56);
      *(v5 + 48) = v10;
      *(v5 + 64) = *(v5 - 24);
      *(v5 + 80) = *(v5 - 8);
      v11 = *(v5 - 72);
      *v5 = *v7;
      *(v5 + 16) = v11;
      *(v5 - 56) = v19;
      *(v5 - 40) = v20;
      *(v5 - 24) = v21;
      *(v5 - 8) = v22;
      *v7 = v17;
      *(v5 - 72) = v18;
      v5 -= 88;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EC7F00C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v92 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v8 = *v92;
    if (!*v92)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_24E86164C(v9);
      v9 = result;
    }

    v83 = v5;
    v104 = v9;
    v84 = *(v9 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v6;
        if (!*v6)
        {
          goto LABEL_129;
        }

        v6 = *&v9[16 * v84];
        v5 = *&v9[16 * v84 + 24];
        sub_24EC7F7EC((v85 + 88 * v6), (v85 + 88 * *&v9[16 * v84 + 16]), (v85 + 88 * v5), v8);
        if (v83)
        {
        }

        if (v5 < v6)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v84 - 2 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v86 = &v9[16 * v84];
        *v86 = v6;
        *(v86 + 1) = v5;
        v104 = v9;
        result = sub_24E8615C0(v84 - 1);
        v9 = v104;
        v84 = *(v104 + 2);
        v6 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
      goto LABEL_21;
    }

    v11 = *v6;
    sub_24EC7DA34(*v6 + 88 * (v8 + 1), &v98);
    v12 = v8;
    v13 = 88 * v8;
    sub_24EC7DA34(v11 + 88 * v8, v96);
    LODWORD(v105) = HIBYTE(v103) | v97 ^ 1;
    v8 = &qword_24F9917D0;
    sub_24E601704(v96, &qword_27F22CB40, &qword_24F9917D0);
    result = sub_24E601704(&v98, &qword_27F22CB40, &qword_24F9917D0);
    v90 = v12;
    v14 = v12 + 2;
    v15 = v11 + v13 + 176;
    while (v7 != v14)
    {
      sub_24EC7DA34(v15, &v98);
      sub_24EC7DA34(v15 - 88, v96);
      v16 = HIBYTE(v103) & 1 | ((v97 & 1) == 0);
      v8 = &qword_24F9917D0;
      sub_24E601704(v96, &qword_27F22CB40, &qword_24F9917D0);
      result = sub_24E601704(&v98, &qword_27F22CB40, &qword_24F9917D0);
      ++v14;
      v15 += 88;
      if ((v105 & 1) != v16)
      {
        v7 = v14 - 1;
        break;
      }
    }

    v6 = a3;
    if (v105)
    {
      if (v7 < v90)
      {
        goto LABEL_122;
      }

      if (v90 >= v7)
      {
        v10 = v90;
        goto LABEL_21;
      }

      v17 = v9;
      v18 = v5;
      v19 = 88 * v7 - 88;
      v20 = v7;
      v21 = v90;
      do
      {
        if (v21 != --v20)
        {
          v22 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v23 = v22 + v19;
          v100 = *(v22 + v13 + 32);
          v8 = &v98;
          v101 = *(v22 + v13 + 48);
          v102 = *(v22 + v13 + 64);
          v103 = *(v22 + v13 + 80);
          v98 = *(v22 + v13);
          v99 = *(v22 + v13 + 16);
          result = memmove((v22 + v13), (v22 + v19), 0x58uLL);
          *(v23 + 32) = v100;
          *(v23 + 48) = v101;
          *(v23 + 64) = v102;
          *(v23 + 80) = v103;
          *v23 = v98;
          *(v23 + 16) = v99;
        }

        ++v21;
        v19 -= 88;
        v13 += 88;
      }

      while (v21 < v20);
      v5 = v18;
      v6 = a3;
      v9 = v17;
    }

    v10 = v90;
LABEL_21:
    v24 = *(v6 + 8);
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_121;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_123;
        }

        if (v10 + a4 >= v24)
        {
          v8 = *(v6 + 8);
        }

        else
        {
          v8 = v10 + a4;
        }

        if (v8 < v10)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v8)
        {
          break;
        }
      }
    }

    v8 = v7;
    if (v7 < v10)
    {
      goto LABEL_120;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v26 = *(v9 + 2);
    v25 = *(v9 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_24E615ED8((v25 > 1), v26 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v27;
    v28 = &v9[16 * v26];
    *(v28 + 4) = v10;
    *(v28 + 5) = v8;
    v29 = *v92;
    if (!*v92)
    {
      goto LABEL_130;
    }

    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v9 + 4);
          v32 = *(v9 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_50:
          if (v34)
          {
            goto LABEL_109;
          }

          v47 = &v9[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_112;
          }

          v53 = &v9[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_116;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v57 = &v9[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_64:
        if (v52)
        {
          goto LABEL_111;
        }

        v60 = &v9[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_114;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_71:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
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

        if (!*v6)
        {
          goto LABEL_127;
        }

        v69 = *&v9[16 * v68 + 32];
        v70 = *&v9[16 * v30 + 40];
        sub_24EC7F7EC((*v6 + 88 * v69), (*v6 + 88 * *&v9[16 * v30 + 32]), (*v6 + 88 * v70), v29);
        if (v5)
        {
        }

        if (v70 < v69)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v68 >= *(v9 + 2))
        {
          goto LABEL_106;
        }

        v71 = &v9[16 * v68];
        *(v71 + 4) = v69;
        *(v71 + 5) = v70;
        v104 = v9;
        result = sub_24E8615C0(v30);
        v9 = v104;
        v27 = *(v104 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v9[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_107;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_108;
      }

      v42 = &v9[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_110;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_113;
      }

      if (v46 >= v38)
      {
        v64 = &v9[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_117;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = *(v6 + 8);
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v87 = v9;
  v88 = v5;
  v72 = v7;
  v73 = *v6;
  v74 = *v6 + 88 * v72;
  v91 = v10;
  v105 = v72;
  v75 = v10 - v72;
  v93 = v8;
LABEL_82:
  v76 = v75;
  v95 = v74;
  while (1)
  {
    sub_24EC7DA34(v74, &v98);
    v77 = (v74 - 88);
    sub_24EC7DA34(v74 - 88, v96);
    v78 = HIBYTE(v103);
    v79 = v97;
    sub_24E601704(v96, &qword_27F22CB40, &qword_24F9917D0);
    result = sub_24E601704(&v98, &qword_27F22CB40, &qword_24F9917D0);
    if ((v78 & 1) == 0 && v79)
    {
LABEL_81:
      v74 = v95 + 88;
      --v75;
      v8 = v93;
      if (++v105 != v93)
      {
        goto LABEL_82;
      }

      v9 = v87;
      v5 = v88;
      v6 = a3;
      v10 = v91;
      if (v93 < v91)
      {
        goto LABEL_120;
      }

      goto LABEL_31;
    }

    if (!v73)
    {
      break;
    }

    v100 = *(v74 + 32);
    v101 = *(v74 + 48);
    v102 = *(v74 + 64);
    v103 = *(v74 + 80);
    v98 = *v74;
    v99 = *(v74 + 16);
    v80 = *(v74 - 40);
    *(v74 + 32) = *(v74 - 56);
    *(v74 + 48) = v80;
    *(v74 + 64) = *(v74 - 24);
    *(v74 + 80) = *(v74 - 8);
    v81 = *(v74 - 72);
    *v74 = *v77;
    *(v74 + 16) = v81;
    *(v74 - 56) = v100;
    *(v74 - 40) = v101;
    *(v74 - 24) = v102;
    *(v74 - 8) = v103;
    *v77 = v98;
    *(v74 - 72) = v99;
    v74 -= 88;
    if (__CFADD__(v76++, 1))
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

uint64_t sub_24EC7F7EC(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 88;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 88;
  if (v9 >= v11)
  {
    v19 = 88 * v11;
    if (__dst != a2 || &a2[v19] <= __dst)
    {
      memmove(__dst, a2, 88 * v11);
    }

    v13 = &v4[v19];
    if (v10 < 88 || v6 <= v7)
    {
      v18 = v6;
      goto LABEL_37;
    }

    v30 = v4;
    while (1)
    {
      v20 = (v6 - 88);
      v21 = v13 - 88;
      v5 -= 88;
      while (1)
      {
        v35 = v21 + 88;
        v24 = v5 + 88;
        sub_24EC7DA34(v21, v33);
        v25 = v20;
        sub_24EC7DA34(v20, v31);
        v26 = v34;
        v27 = v32;
        sub_24E601704(v31, &qword_27F22CB40, &qword_24F9917D0);
        sub_24E601704(v33, &qword_27F22CB40, &qword_24F9917D0);
        if ((v26 & 1) != 0 || !v27)
        {
          break;
        }

        if (v24 != v35)
        {
          memmove(v5, v21, 0x58uLL);
        }

        v22 = v21 - 88;
        v5 -= 88;
        v23 = v21 > v30;
        v21 -= 88;
        v20 = v25;
        if (!v23)
        {
          v13 = v22 + 88;
          v18 = v6;
          v4 = v30;
          goto LABEL_37;
        }
      }

      v18 = v25;
      if (v24 != v6)
      {
        memmove(v5, v25, 0x58uLL);
      }

      v4 = v30;
      v13 = v35;
      if (v35 > v30)
      {
        v6 = v18;
        if (v18 > v7)
        {
          continue;
        }
      }

      v13 = v21 + 88;
      goto LABEL_37;
    }
  }

  v12 = 88 * v9;
  if (__dst != __src || &__src[v12] <= __dst)
  {
    memmove(__dst, __src, v12);
  }

  v13 = &v4[v12];
  if (v8 < 88 || v6 >= v5)
  {
    v18 = v7;
    goto LABEL_37;
  }

  do
  {
    sub_24EC7DA34(v6, v33);
    sub_24EC7DA34(v4, v31);
    v14 = v34;
    v15 = v32;
    sub_24E601704(v31, &qword_27F22CB40, &qword_24F9917D0);
    sub_24E601704(v33, &qword_27F22CB40, &qword_24F9917D0);
    if ((v14 & 1) == 0 && v15)
    {
      v16 = v4;
      v17 = v7 == v4;
      v4 += 88;
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v7, v16, 0x58uLL);
      goto LABEL_14;
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 88;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_14:
    v7 += 88;
  }

  while (v4 < v13 && v6 < v5);
  v18 = v7;
LABEL_37:
  v28 = 88 * ((v13 - v4) / 88);
  if (v18 != v4 || v18 >= &v4[v28])
  {
    memmove(v18, v4, v28);
  }

  return 1;
}

void sub_24EC7FB4C(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v35 = MEMORY[0x277D84F90];
  sub_24F4582EC(0, v9, 0);
  v34 = v7;
  if (v9)
  {
    v13 = a5[2];
    v14 = a4;
    while (1)
    {
      v15 = v8 <= v7;
      if (a3 > 0)
      {
        v15 = v8 >= v7;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v16 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v8 + a3;
      }

      v17 = v8 + v14;
      if (__OFADD__(v8, v14))
      {
        goto LABEL_58;
      }

      if (v13 < v17)
      {
        v17 = v13;
      }

      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_59;
      }

      if (v8 < 0)
      {
        goto LABEL_60;
      }

      if (v13 == v18)
      {

        v19 = a5;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
        if (v17 != v8)
        {
          if (v18 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB58, &qword_24F9919A0);
            v19 = swift_allocObject();
            v22 = _swift_stdlib_malloc_size(v19);
            v19[2] = v18;
            v19[3] = 2 * ((v22 - 32) / 88);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB40, &qword_24F9917D0);
          swift_arrayInitWithCopy();
          v14 = a4;
        }
      }

      v21 = *(v35 + 16);
      v20 = *(v35 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24F4582EC((v20 > 1), v21 + 1, 1);
        v14 = a4;
      }

      *(v35 + 16) = v21 + 1;
      *(v35 + 8 * v21 + 32) = v19;
      v8 = v16;
      --v9;
      v7 = v34;
      if (!v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v16 = v8;
  v14 = a4;
LABEL_34:
  v23 = v16 <= v7;
  if (a3 > 0)
  {
    v23 = v16 >= v7;
  }

  if (!v23)
  {
    while (1)
    {
      v24 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v25 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        break;
      }

      v26 = a5[2];
      if (v26 < v25)
      {
        v25 = a5[2];
      }

      v27 = v25 - v16;
      if (v25 < v16)
      {
        goto LABEL_62;
      }

      if (v16 < 0)
      {
        goto LABEL_63;
      }

      if (v26 == v27)
      {

        v28 = a5;
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
        if (v25 != v16)
        {
          if (v27 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB58, &qword_24F9919A0);
            v28 = swift_allocObject();
            v32 = _swift_stdlib_malloc_size(v28);
            v28[2] = v27;
            v28[3] = 2 * ((v32 - 32) / 88);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB40, &qword_24F9917D0);
          swift_arrayInitWithCopy();
          v14 = a4;
        }
      }

      v30 = *(v35 + 16);
      v29 = *(v35 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_24F4582EC((v29 > 1), v30 + 1, 1);
        v14 = a4;
      }

      *(v35 + 16) = v30 + 1;
      *(v35 + 8 * v30 + 32) = v28;
      v31 = v24 <= v34;
      if (a3 > 0)
      {
        v31 = v24 >= v34;
      }

      v16 = v24;
      if (v31)
      {
        return;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

uint64_t JSONObject.adamId.getter@<X0>(uint64_t *a2@<X8>)
{
  result = sub_24F928348();
  if (v4)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t OverlayNowPlayingCacheDataIntent.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for OverlayNowPlayingCacheDataIntent(uint64_t a1)
{
  result = qword_27F22CB78;
  if (!qword_27F22CB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t OverlayNowPlayingCacheDataIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x4449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = *(type metadata accessor for OverlayNowPlayingCacheDataIntent(0) + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24EC80A0C(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Player);

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_24EC801CC()
{
  if (*v0)
  {
    return 0x726579616C70;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_24EC80204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24EC802DC(uint64_t a1)
{
  v2 = sub_24EC809B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC80318(uint64_t a1)
{
  v2 = sub_24EC809B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayNowPlayingCacheDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB60, &qword_24F9919E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC809B8();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for OverlayNowPlayingCacheDataIntent(0);
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t OverlayNowPlayingCacheDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB70, &qword_24F9919E8);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for OverlayNowPlayingCacheDataIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC809B8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v20 = 1;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  (*(v11 + 8))(v7, v19);
  sub_24E61C0A8(v5, v10 + *(v15 + 20));
  sub_24EC80A0C(v10, v16, type metadata accessor for OverlayNowPlayingCacheDataIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EC80A74(v10);
}

unint64_t sub_24EC80830@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4449656C646E7562;
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 40) = 0xE800000000000000;
  v6 = *v2;
  v7 = v2[1];
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v9 = *(a1 + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24EC80A0C(v2 + v9, boxed_opaque_existential_1, type metadata accessor for Player);

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

unint64_t sub_24EC809B8()
{
  result = qword_27F22CB68;
  if (!qword_27F22CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CB68);
  }

  return result;
}

uint64_t sub_24EC80A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC80A74(uint64_t a1)
{
  v2 = type metadata accessor for OverlayNowPlayingCacheDataIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC80AE4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EC80BA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24EC80C5C()
{
  result = qword_27F22CB88;
  if (!qword_27F22CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CB88);
  }

  return result;
}

unint64_t sub_24EC80CB4()
{
  result = qword_27F22CB90;
  if (!qword_27F22CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CB90);
  }

  return result;
}

unint64_t sub_24EC80D0C()
{
  result = qword_27F22CB98;
  if (!qword_27F22CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CB98);
  }

  return result;
}

double sub_24EC80D60()
{
  v1 = v0;
  v39 = *v0;
  v2 = sub_24F929AB8();
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v33 - v6;
  v7 = sub_24F929158();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  v11 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v12 = *(v8 + 16);
  v38 = v11;
  v42 = v7;
  v40 = v8 + 16;
  v37 = v12;
  v12(v10, &v0[v11], v7);
  type metadata accessor for PendingPageRender(0);
  swift_allocObject();

  v43 = v10;
  v14 = PendingPageRender.init(bag:metricsPipeline:)(v13, v10);
  swift_beginAccess();
  *(v0 + 2) = v14;

  if (v14)
  {
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = &v14[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider];
    swift_beginAccess();
    *v16 = sub_24EC853C0;
    v16[1] = v15;
  }

  v17 = *(v1 + 2);
  if (v17)
  {
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = (v17 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
    swift_beginAccess();
    v34 = v5;
    v20 = v2;
    v22 = *v19;
    v21 = v19[1];
    *v19 = sub_24EC853C8;
    v19[1] = v18;

    v23 = v21;
    v2 = v20;
    v5 = v34;
    sub_24E824448(v22, v23);
  }

  sub_24F92D1E8();
  sub_24F9286A8();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v24 = v41;
  sub_24F92A448();
  sub_24F92A408();
  (*(v5 + 8))(v24, v4);
  v37(v43, &v1[v38], v42);
  sub_24F92A0F8();
  swift_allocObject();
  v25 = sub_24F92A0E8();
  swift_beginAccess();
  *(v1 + 3) = v25;

  v26 = &v1[OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageContext];
  swift_beginAccess();
  v27 = v26[1];
  if (v27 && *(v1 + 3))
  {
    v28 = *v26;
    v29 = qword_27F210658;

    if (v29 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_27F22E3B8);
    v44 = v28;
    v45 = v27;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v30, qword_27F22E400);
    v31 = v36;
    sub_24F929A48();

    sub_24F92A098();

    (*(v35 + 8))(v31, v2);
  }

  else
  {
  }

  return result;
}

uint64_t sub_24EC8146C(uint64_t a1)
{
  swift_beginAccess();
  sub_24EA095A4(a1, v1 + 40);
  swift_endAccess();
  sub_24EC832DC();
  return sub_24E601704(a1, &qword_27F224F98, &unk_24F974A70);
}

uint64_t (*sub_24EC814D8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EC8152C;
}

uint64_t sub_24EC8152C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24EC832DC();
  }

  return result;
}

uint64_t sub_24EC81560@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v4 = sub_24F929158();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24EC815E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v4 = sub_24F929158();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_24EC81798(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double sub_24EC818C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - v2;
  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  if (qword_27F2108F8 != -1)
  {
    swift_once();
  }

  sub_24F92A438();
  sub_24F92A408();

  (*(v1 + 8))(v3, v0);
  return *&v5[1];
}

uint64_t sub_24EC81B04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v4 + v8, a4, a2, a3);
}

uint64_t sub_24EC81B8C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_24E61DA68(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

double sub_24EC81CE4(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_24EC81D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t BasePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t BasePresenter.deinit()
{

  sub_24E601704(v0 + 40, &qword_27F224F98, &unk_24F974A70);
  v1 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_advertRotationData, &qword_27F224FA0, &qword_24F975FD0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_searchGhostHintData, qword_27F224FA8, &qword_24F974A80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_24EC81F9C(char a1)
{
  v3 = swift_beginAccess();
  v1[32] = a1;
  result = (*(*v1 + 256))(v3);
  v6 = v5;
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v8 = swift_getObjectType();
    (*(v6 + 16))(v8, v6);
  }

  return swift_unknownObjectRelease();
}

uint64_t BasePresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v8;
}

double sub_24EC82130(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double sub_24EC82190(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;

  return result;
}

uint64_t sub_24EC821F0@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030, &unk_24F98A430);
  v76 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v75 = &v65 - v4;
  v5 = sub_24F929AB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v82 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v11 = sub_24F928818();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v69 = v3;
    v74 = a2;
    v83 = *(Strong + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsTracker);
    v16 = Strong;
    swift_beginAccess();
    v79 = v16;
    sub_24E60169C(v16 + 40, v88, &qword_27F224F98, &unk_24F974A70);
    v17 = v89;
    if (v89)
    {
      v80 = v90;
      v18 = __swift_project_boxed_opaque_existential_1(v88, v89);
      v81 = &v65;
      v19 = v5;
      v20 = v6;
      v21 = *(v17 - 8);
      v22 = MEMORY[0x28223BE20](v18);
      v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      swift_unknownObjectRetain();
      sub_24E601704(v88, &qword_27F224F98, &unk_24F974A70);
      sub_24F92AD48();
      (*(v21 + 8))(v24, v17);
      v6 = v20;
      v5 = v19;
      v25 = sub_24F9286C8();
      (*(v12 + 8))(v14, v11);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_24E601704(v88, &qword_27F224F98, &unk_24F974A70);
      v25 = 0;
    }

    v28 = v82;
    v78 = v25;
    v29 = v79;
    v30 = (v79 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageContext);
    swift_beginAccess();
    v31 = v30[1];
    v66 = *v30;
    v32 = (v29 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_referrer);
    swift_beginAccess();
    v33 = v32[1];
    v67 = *v32;
    v34 = qword_27F210278;
    v35 = v83;
    swift_unknownObjectRetain();
    v81 = v31;

    v80 = v33;

    if (v34 != -1)
    {
      swift_once();
    }

    v36 = off_27F229AB8;
    swift_beginAccess();
    v71 = *(v36 + 88);
    v37 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_advertRotationData;
    swift_beginAccess();
    sub_24E60169C(v29 + v37, v88, &qword_27F224FA0, &qword_24F975FD0);
    v38 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_searchGhostHintData;
    swift_beginAccess();
    sub_24E60169C(v29 + v38, v87, qword_27F224FA8, &qword_24F974A80);
    swift_beginAccess();
    v39 = v36[18];
    v40 = (v29 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_deviceWindowData);
    swift_beginAccess();
    v41 = *v40;
    v70 = v40[1];
    v42 = (v29 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsAppendixData);
    swift_beginAccess();
    v43 = *v42;
    v68 = v42[1];
    v77 = v43;
    swift_unknownObjectRetain();
    v82 = v39;

    v72 = v41;
    swift_unknownObjectRetain();
    sub_24F929AA8();
    v44 = qword_27F210660;
    swift_unknownObjectRetain();
    if (v44 != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
    __swift_project_value_buffer(v45, qword_27F22E3D0);
    v86[0] = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
    sub_24F929A48();
    v46 = *(v6 + 8);
    v46(v10, v5);
    v73 = v35;
    swift_unknownObjectRelease();
    v47 = *(v6 + 32);
    *&v83 = v6 + 32;
    v47(v10, v28, v5);
    if (v81)
    {
      *&v86[0] = v66;
      *(&v86[0] + 1) = v81;
      if (qword_27F210670 != -1)
      {
        swift_once();
      }

      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
      __swift_project_value_buffer(v48, qword_27F22E400);
      sub_24F929A48();
      v46(v10, v5);
      v47(v10, v28, v5);
    }

    if (v80)
    {
      *&v86[0] = v67;
      *(&v86[0] + 1) = v80;
      if (qword_27F210678 != -1)
      {
        swift_once();
      }

      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
      __swift_project_value_buffer(v49, qword_27F22E418);
      sub_24F929A48();
      v46(v10, v5);
      v47(v10, v28, v5);
    }

    LOBYTE(v86[0]) = 0;
    if (qword_27F210680 != -1)
    {
      swift_once();
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
    __swift_project_value_buffer(v50, qword_27F22E430);
    sub_24F929A48();
    v46(v10, v5);
    v47(v10, v28, v5);
    if (v78)
    {
      *&v86[0] = v78;
      v51 = v47;
      v52 = v46;
      v53 = v75;
      sub_24F929A78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
      sub_24F929A48();
      v54 = v53;
      v46 = v52;
      v47 = v51;
      (*(v76 + 8))(v54, v69);
      v46(v10, v5);
      v51(v10, v28, v5);
    }

    if (v71 != 2)
    {
      LOBYTE(v86[0]) = v71 & 1;
      if (qword_27F210688 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v50, qword_27F22E448);
      sub_24F929A48();
      v46(v10, v5);
      v47(v10, v28, v5);
    }

    sub_24E60169C(v88, &v84, &qword_27F224FA0, &qword_24F975FD0);
    if (v85)
    {
      sub_24E612C80(&v84, v86);
      v55 = v72;
      if (qword_27F210690 != -1)
      {
        swift_once();
      }

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
      __swift_project_value_buffer(v56, qword_27F22E460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080, &unk_24F974C50);
      sub_24F929A48();
      __swift_destroy_boxed_opaque_existential_1(v86);
      v46(v10, v5);
      v47(v10, v28, v5);
    }

    else
    {
      sub_24E601704(&v84, &qword_27F224FA0, &qword_24F975FD0);
      v55 = v72;
    }

    sub_24E60169C(v87, &v84, qword_27F224FA8, &qword_24F974A80);
    v57 = v82;
    if (v85)
    {
      sub_24E612C80(&v84, v86);
      if (qword_27F210698 != -1)
      {
        swift_once();
      }

      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
      __swift_project_value_buffer(v58, qword_27F22E478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070, &unk_24F974C40);
      sub_24F929A48();
      __swift_destroy_boxed_opaque_existential_1(v86);
      v46(v10, v5);
      v47(v10, v28, v5);
      v57 = v82;
      if (!v82)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_24E601704(&v84, qword_27F224FA8, &qword_24F974A80);
      if (!v57)
      {
LABEL_42:
        if (v77)
        {
          *&v86[0] = v77;
          *(&v86[0] + 1) = v68;
          v61 = qword_27F2106A8;
          swift_unknownObjectRetain();
          if (v61 != -1)
          {
            swift_once();
          }

          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058, &unk_24F974C30);
          __swift_project_value_buffer(v62, qword_27F22E4A8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060, &unk_24F98A440);
          sub_24F929A48();
          v46(v10, v5);
          swift_unknownObjectRelease();
          v47(v10, v28, v5);
        }

        if (v55)
        {
          *&v86[0] = v55;
          *(&v86[0] + 1) = v70;
          v63 = qword_27F2106A0;
          swift_unknownObjectRetain();
          if (v63 != -1)
          {
            swift_once();
          }

          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050, &unk_24F975FE0);
          __swift_project_value_buffer(v64, qword_27F22E490);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
          sub_24F929A48();

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v46(v10, v5);
          sub_24E601704(v87, qword_27F224FA8, &qword_24F974A80);
          sub_24E601704(v88, &qword_27F224FA0, &qword_24F975FD0);
          swift_unknownObjectRelease();
          v47(v10, v28, v5);
        }

        else
        {

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();

          sub_24E601704(v87, qword_27F224FA8, &qword_24F974A80);
          sub_24E601704(v88, &qword_27F224FA0, &qword_24F975FD0);
        }

        return (v47)(v74, v10, v5);
      }
    }

    *&v86[0] = v57;
    v59 = qword_27F2106B0;

    if (v59 != -1)
    {
      swift_once();
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460, &unk_24F971A10);
    __swift_project_value_buffer(v60, qword_27F22E4C0);
    type metadata accessor for Action(0);
    sub_24F929A48();
    v46(v10, v5);

    v47(v10, v28, v5);
    goto LABEL_42;
  }

  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v5, qword_27F22E3B8);
  return (*(v6 + 16))(a2, v26, v5);
}

double sub_24EC83178(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    *(v3 + 16) = 0;
  }

  return result;
}

uint64_t sub_24EC8324C(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F224F98, &unk_24F974A70);
  v3 = *a2;
  swift_beginAccess();
  sub_24EA095A4(v5, v3 + 40);
  swift_endAccess();
  sub_24EC832DC();
  return sub_24E601704(v5, &qword_27F224F98, &unk_24F974A70);
}

uint64_t sub_24EC832DC()
{
  v1 = sub_24F9287F8();
  v43 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v55 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &v38 - v4;
  v5 = sub_24F928738();
  v50 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = sub_24F928818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_24E60169C(v0 + 40, &v58, &qword_27F224F98, &unk_24F974A70);
  if (v59)
  {
    v39 = v0;
    sub_24E8EA128(&v58, &v60);
    __swift_project_boxed_opaque_existential_1(&v60, v61);
    sub_24F92AD48();
    v14 = sub_24F928768();
    result = (*(v11 + 8))(v13, v10);
    v49 = *(v14 + 16);
    if (v49)
    {
      v16 = 0;
      v45 = v50 + 16;
      v54 = v43 + 16;
      v56 = (v43 + 8);
      v40 = (v50 + 32);
      v42 = MEMORY[0x277D84F90];
      v44 = (v50 + 8);
      v48 = v5;
      v47 = v9;
      v46 = v14;
      v17 = v55;
      while (v16 < *(v14 + 16))
      {
        v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v53 = v16;
        v51 = *(v50 + 72);
        (*(v50 + 16))(v9, v14 + v52 + v51 * v16, v5);
        v18 = sub_24F9286D8();
        sub_24F9287E8();
        if (*(v18 + 16) && (sub_24EC853D0(&qword_27F21E608, MEMORY[0x277D21BE0], MEMORY[0x277D21BE8]), v19 = sub_24F92AEE8(), v20 = -1 << *(v18 + 32), v21 = v19 & ~v20, ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
        {
          v22 = ~v20;
          v23 = *(v43 + 72);
          v24 = *(v43 + 16);
          while (1)
          {
            v24(v17, *(v18 + 48) + v23 * v21, v1);
            sub_24EC853D0(&qword_27F21E610, MEMORY[0x277D21BE0], MEMORY[0x277D21BF0]);
            v25 = sub_24F92AFF8();
            v26 = *v56;
            (*v56)(v17, v1);
            if (v25)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v26(v57, v1);
          v27 = *v40;
          v9 = v47;
          v5 = v48;
          (*v40)(v41, v47, v48);
          v28 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = v28;
          *&v58 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24F458108(0, *(v28 + 16) + 1, 1);
            v30 = v58;
          }

          v32 = *(v30 + 16);
          v31 = *(v30 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_24F458108((v31 > 1), v32 + 1, 1);
            v30 = v58;
          }

          *(v30 + 16) = v32 + 1;
          v42 = v30;
          result = v27((v30 + v52 + v32 * v51), v41, v5);
        }

        else
        {
LABEL_4:

          (*v56)(v57, v1);
          v9 = v47;
          v5 = v48;
          result = (*v44)(v47, v48);
        }

        v16 = v53 + 1;
        v14 = v46;
        if (v53 + 1 == v49)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
LABEL_21:

      v35 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
      v36 = v39;
      swift_beginAccess();
      if (*(v36 + v35))
      {
        v37 = *(v42 + 16);

        MetricsPageEnterGate.hasMetricsPage.setter(v37 != 0);
      }

      return __swift_destroy_boxed_opaque_existential_1(&v60);
    }
  }

  else
  {
    sub_24E601704(&v58, &qword_27F224F98, &unk_24F974A70);
    v33 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
    result = swift_beginAccess();
    v34 = *(v0 + v33);
    if (v34)
    {
      result = swift_beginAccess();
      *(v34 + 34) = 0;
    }
  }

  return result;
}

uint64_t sub_24EC83A00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v5 = sub_24F929158();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24EC83A8C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24F929158();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

double sub_24EC83BA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

uint64_t sub_24EC83C0C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_24EC83CB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  sub_24E60169C(a1, v14, a5, a6);
  v11 = *a2;
  v12 = *a7;
  swift_beginAccess();
  sub_24E61DA68(v14, v11 + v12, a5, a6);
  return swift_endAccess();
}

uint64_t sub_24EC83D3C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v5;
  v7[1] = v6;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t BasePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EC83EEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_24EC83F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (v5 + *a5);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;
}

uint64_t sub_24EC84040@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v4 + v8, a4, a2, a3);
}

double sub_24EC840C4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_24EC8415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a2;
  v45 = a4;
  v41 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = sub_24F9288E8();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F929158();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  v17 = (v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageContext);
  *v17 = 0;
  v17[1] = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate) = 0;
  v18 = (v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_referrer);
  *v18 = 0;
  v18[1] = 0;
  v19 = v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_advertRotationData;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v20 = v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_searchGhostHintData;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsAppendixData);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_deviceWindowData);
  *v22 = 0.0;
  v22[1] = 0.0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph) = a1;
  sub_24F928FD8();

  sub_24F92A758();
  (*(v14 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
  sub_24F928EF8();
  v23 = v46;
  v24 = v47;
  swift_beginAccess();
  *v22 = v23;
  *(v22 + 1) = v24;
  swift_unknownObjectRelease();
  type metadata accessor for ASKBagContract(0);
  sub_24F92A758();
  if (v44)
  {
    v25 = v44;
    v26 = v45;
    v27 = v41;
  }

  else
  {
    v28 = v40;
    sub_24F929EB8();
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    (*(v28 + 104))(v12, *MEMORY[0x277D21C38], v10);
    sub_24F92A368();
    (*(v28 + 8))(v12, v10);
    v29 = v43;
    sub_24F92A408();
    (*(v42 + 8))(v9, v29);
    v25 = sub_24F929EA8();
    v27 = MEMORY[0x277D221C0];
    v26 = v45;
  }

  v30 = (v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsTracker);
  *v30 = v25;
  v30[1] = v27;
  if (v26)
  {
    swift_unknownObjectRetain();
    v31 = v26;
  }

  else
  {
    v32 = qword_27F2108F8;
    swift_unknownObjectRetain();
    if (v32 != -1)
    {
      swift_once();
    }

    sub_24F92A438();
    v33 = v43;
    sub_24F92A408();
    (*(v42 + 8))(v9, v33);
    v34 = v46;
    v35 = v30[1];
    type metadata accessor for ImpressionsCalculator(0);
    swift_allocObject();
    v36 = swift_unknownObjectRetain();
    v31 = sub_24EB0E424(v36, v35, v34);
    swift_unknownObjectRelease();
  }

  *(v5 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsCalculator) = v31;
  type metadata accessor for MetricsPageEnterGate();
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v37 + 32) = 0;
  *(v37 + 34) = 0;
  *(v37 + 24) = &protocol witness table for BasePresenter;
  swift_unknownObjectWeakAssign();
  v38 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *(v5 + v38) = v37;

  sub_24EC80D60();

  return v5;
}

uint64_t sub_24EC84734(uint64_t a1)
{
  result = sub_24EC853D0(&qword_27F22CBA0, type metadata accessor for BasePresenter, &protocol conformance descriptor for BasePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BasePresenter(uint64_t a1)
{
  result = qword_27F22CBB0;
  if (!qword_27F22CBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC847D8(uint64_t a1)
{
  result = sub_24EC853D0(&qword_27F22CBA8, type metadata accessor for BasePresenter, &protocol conformance descriptor for BasePresenter);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_24EC84830@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_24EC84880@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_24EC848D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24EC84978@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 40, a2, &qword_27F224F98, &unk_24F974A70);
}

uint64_t sub_24EC84A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double keypath_get_11Tm@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

uint64_t keypath_get_17Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_24E60169C(v8 + v9, a5, a3, a4);
}

double keypath_get_21Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_24EC84CB0(uint64_t a1)
{
  result = sub_24F929158();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24EC85388()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EC853D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC85418()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EC8548C()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EC854E0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

uint64_t HideCriteria.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v33 = a3;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = a1;
  sub_24F928398();
  sub_24EC859EC();
  sub_24F928218();
  if (v3)
  {
    v19 = sub_24F9285B8();
    (*(*(v19 - 8) + 8))(v34, v19);
    v20 = *(v9 + 8);
    v20(a1, v8);
    return (v20)(v17, v8);
  }

  else
  {
    v22 = v17;
    v23 = *(v9 + 8);
    v23(v22, v8);
    sub_24F928398();
    sub_24EC85A40();
    sub_24F928218();
    v23(v14, v8);
    v35 = v36;
    sub_24F928398();
    sub_24F9282B8();
    v24 = v7;
    v23(v11, v8);
    v25 = sub_24F92AC28();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v7, 1, v25) == 1)
    {
      v27 = sub_24F9285B8();
      (*(*(v27 - 8) + 8))(v34, v27);
      v23(v18, v8);
      result = sub_24E8F2EE8(v7);
      v28 = 0;
    }

    else
    {
      v29 = v23;
      v30 = v24;
      v28 = sub_24F92ABB8();
      v31 = sub_24F9285B8();
      (*(*(v31 - 8) + 8))(v34, v31);
      v29(v18, v8);
      result = (*(v26 + 8))(v30, v25);
    }

    v32 = v33;
    *v33 = v35;
    *(v32 + 1) = v28;
  }

  return result;
}

unint64_t sub_24EC859EC()
{
  result = qword_27F22CBC0;
  if (!qword_27F22CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CBC0);
  }

  return result;
}

unint64_t sub_24EC85A40()
{
  result = qword_27F22CBC8;
  if (!qword_27F22CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CBC8);
  }

  return result;
}

id HideCriteria.isHidden.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();

  v3 = sub_24F92B588();

  v4 = [v2 isCapableOfAction:v1 capabilities:v3];

  return v4;
}

GameStoreKit::AppAction_optional __swiftcall AppAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6C6174736E69;
  v3 = 0x65726F74736572;
  v4 = 0x68636E75616CLL;
  if (v1 != 3)
  {
    v4 = 0x7369747265766461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657461647075;
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

unint64_t sub_24EC85C54()
{
  result = qword_27F22CBD0;
  if (!qword_27F22CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CBD0);
  }

  return result;
}

uint64_t sub_24EC85CA8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC85D88(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EC85E54()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC85F3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C6C6174736E69;
  v5 = 0xE700000000000000;
  v6 = 0x65726F74736572;
  v7 = 0xE600000000000000;
  v8 = 0x68636E75616CLL;
  if (v2 != 3)
  {
    v8 = 0x7369747265766461;
    v7 = 0xE900000000000065;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x657461647075;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24EC85FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_24EC86034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24EC860B8()
{
  result = qword_27F22CBD8;
  if (!qword_27F22CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CBD8);
  }

  return result;
}

uint64_t MSOProviderData.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MSOProviderData.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MSOProviderData.__allocating_init(name:url:artwork:roomUber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v12 = sub_24F91F4A8();
  (*(*(v12 - 8) + 32))(v10 + v11, a3, v12);
  *(v10 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_artwork) = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_roomUber) = a5;
  return v10;
}

uint64_t MSOProviderData.init(name:url:artwork:roomUber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v10 = sub_24F91F4A8();
  (*(*(v10 - 8) + 32))(v5 + v9, a3, v10);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_artwork) = a4;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_roomUber) = a5;
  return v5;
}

uint64_t MSOProviderData.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MSOProviderData.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *MSOProviderData.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v70 = v2;
  v66 = *v3;
  v73 = sub_24F9285B8();
  v68 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v61 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v57 - v9;
  v11 = sub_24F91F4A8();
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v60 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = v57 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v57 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v57 - v22;
  v24 = 0xE400000000000000;
  v25 = a1;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v27;
  v30 = *(v14 + 8);
  v29 = v14 + 8;
  v31 = v23;
  v32 = v13;
  v33 = v30;
  v30(v31, v32);
  v67 = v30;
  if (!v28)
  {
    v35 = 1701667182;
    v34 = v25;
    goto LABEL_5;
  }

  v59 = v26;
  sub_24F928398();
  sub_24F928268();
  v33(v20, v32);
  v34 = v25;
  if ((*(v71 + 48))(v10, 1, v72) == 1)
  {
    v35 = 7107189;

    sub_24E70E058(v10);
    v24 = 0xE300000000000000;
LABEL_5:
    v36 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v37 = v35;
    v37[1] = v24;
    v37[2] = v66;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    (*(v68 + 8))(v69, v73);
    v67(v34, v32);
    v38 = v70;
    goto LABEL_8;
  }

  v57[1] = v29;
  v58 = v32;
  v40 = v71;
  v39 = v72;
  v41 = v65;
  (*(v71 + 32))(v65, v10, v72);
  v38 = v70;
  v70[2] = v59;
  v38[3] = v28;
  v42 = v40;
  v43 = v41;
  v44 = *(v42 + 16);
  v59 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v44(v38 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url, v41, v39);
  v45 = type metadata accessor for Artwork(0);
  v46 = v62;
  v66 = v34;
  sub_24F928398();
  v48 = v68;
  v47 = v69;
  v49 = *(v68 + 16);
  v50 = v63;
  v49(v63, v69, v73);
  v63 = v45;
  v51 = v64;
  v52 = Artwork.__allocating_init(deserializing:using:)(v46, v50);
  if (!v51)
  {
    *(v38 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_artwork) = v52;
    sub_24F928398();
    v56 = v73;
    v49(v61, v47, v73);
    sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    (*(v48 + 8))(v47, v56);
    v67(v66, v58);
    (*(v71 + 8))(v65, v72);
    *(v38 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_roomUber) = v74;
    return v38;
  }

  (*(v48 + 8))(v47, v73);
  v67(v66, v58);
  v53 = v72;
  v54 = *(v71 + 8);
  v54(v43, v72);

  v54(v38 + v59, v53);
LABEL_8:
  type metadata accessor for MSOProviderData(0);
  swift_deallocPartialClassInstance();
  return v38;
}

uint64_t type metadata accessor for MSOProviderData(uint64_t a1)
{
  result = qword_27F22CBE0;
  if (!qword_27F22CBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MSOProviderData.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MSOProviderData.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t *sub_24EC86C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MSOProviderData(0);
  v7 = swift_allocObject();
  result = MSOProviderData.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EC86C98(uint64_t a1)
{
  result = sub_24F91F4A8();
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

uint64_t sub_24EC86DB4(unint64_t *a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0, &unk_24F991FD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

char *sub_24EC86F58(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0, &unk_24F991FD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[13]];

  return v15(v16, a2, a2, v14);
}

void sub_24EC87108(uint64_t a1)
{
  type metadata accessor for LocalPlayerProvider(319);
  if (v1 <= 0x3F)
  {
    sub_24EC87348(319, &qword_27F22CC08, type metadata accessor for NicknameModel, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_24E7D9B7C(319, &qword_27F254E10, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_24EC8CFF4(319, &qword_27F22CC10, &unk_27F237670, &qword_24F989C80, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_24EC8CFF4(319, &qword_27F22CC18, &qword_27F22CC20, &unk_24F992000, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_24E7D9B7C(319, &qword_27F220798, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              sub_24E7D9B7C(319, &qword_27F218018, MEMORY[0x277D85048]);
              if (v7 <= 0x3F)
              {
                sub_24EC8CFF4(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_24EC87348(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_24EC87348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24EC873C8()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

BOOL sub_24EC8743C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20, &unk_24F992000);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = *(v0 + 16);
  *&v18 = *(v0 + 8);
  *(&v18 + 1) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8, &qword_24F992110);
  sub_24F926F38();
  v5 = v16;
  swift_getKeyPath();
  *&v18 = v5;
  sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
  sub_24F91FD88();

  v7 = *(v5 + 56);
  v6 = *(v5 + 64);

  v8 = (v0 + *(type metadata accessor for ProfileEditorView(0) + 36));
  v9 = *v8;
  v10 = *(v8 + 2);
  v18 = v9;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818, &qword_24F964440);
  sub_24F926F38();
  if (v7 == v16 && v6 == v17)
  {
  }

  else
  {
    v11 = sub_24F92CE08();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0, &unk_24F991FD0);
  sub_24F926F38();
  v12 = type metadata accessor for AvatarData(0);
  v13 = (*(*(v12 - 8) + 48))(v3, 1, v12) != 1;
  sub_24E601704(v3, &qword_27F22CC20, &unk_24F992000);
  return v13;
}

double sub_24EC87690@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v35 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20, &unk_24F992000);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  LOBYTE(v38) = 0;
  sub_24F926F28();
  v13 = *(&v40 + 1);
  *(a3 + 24) = v40;
  *(a3 + 32) = v13;
  *&v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670, &qword_24F989C80);
  sub_24F926F28();
  *(a3 + 40) = v40;
  v14 = type metadata accessor for ProfileEditorView(0);
  v15 = type metadata accessor for AvatarData(0);
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_24E60169C(v12, v9, &qword_27F22CC20, &unk_24F992000);
  sub_24F926F28();
  sub_24E601704(v12, &qword_27F22CC20, &unk_24F992000);
  v16 = (a3 + v14[10]);
  *&v38 = 0;
  sub_24F926F28();
  v17 = *(&v40 + 1);
  *v16 = v40;
  v16[1] = v17;
  v18 = v14[11];
  *(a3 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v19 = v14[12];
  *(a3 + v19) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v20 = v14[13];
  *(a3 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  *a3 = v35;
  v21 = qword_27F210A50;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  v22 = *(v34 + 8);
  v22(v6, v4);
  v23 = v40;
  if (qword_27F210A58 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  v22(v6, v4);
  v24 = v40;
  type metadata accessor for NicknameModel(0);
  swift_allocObject();
  v25 = v35;
  *&v38 = sub_24F54A3C0(v35, v23, v24);
  sub_24F926F28();
  v26 = *(&v40 + 1);
  *(a3 + 8) = v40;
  *(a3 + 16) = v26;
  swift_getKeyPath();
  *&v40 = v25;
  sub_24EC8CA7C(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v27 = (v25 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__name);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  v30 = a3 + v14[9];
  v36 = v29;
  v37 = v28;

  sub_24F926F28();

  result = *&v38;
  v32 = v39;
  *v30 = v38;
  *(v30 + 16) = v32;
  return result;
}

uint64_t sub_24EC87BD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_24F923488();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220ED8, &qword_24F992060);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC28, &qword_24F992068);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC30, &qword_24F992070);
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  sub_24EC8801C(v2, v13);
  LOBYTE(v2) = sub_24F9257F8();
  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC38, &qword_24F992078) + 36)];
  *v26 = v2;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v13[*(v11 + 36)] = 0;
  sub_24F923478();
  sub_24F927268();
  (*(v4 + 8))(v6, v3);
  sub_24F9235A8();
  v27 = sub_24EC8AC14();
  v28 = sub_24E602068(&qword_27F220EE0, &qword_27F220ED8, &qword_24F992060, MEMORY[0x277CDF728]);
  sub_24F926658();
  (*(v8 + 8))(v10, v7);
  sub_24E601704(v13, &qword_27F22CC28, &qword_24F992068);
  v35 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC90, &qword_24F9920A8);
  v36 = v11;
  v37 = v7;
  v38 = v27;
  v39 = v28;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F22CC98, &qword_27F22CC90, &qword_24F9920A8, MEMORY[0x277CDDF68]);
  v29 = v32;
  sub_24F926A58();
  return (*(v33 + 8))(v17, v29);
}

uint64_t sub_24EC8801C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for ProfileEditorView(0);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCF0, &qword_24F9921A0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v19 - v6);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC78, &qword_24F992090);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - v8;
  v10 = sub_24F923E98();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - v14;
  sub_24F769764((&v19 - v14));
  sub_24F769788(v12);
  sub_24F52EC5C(v15, v12, &v22);
  if (v22 == 2)
  {
    sub_24EC8843C(v9);
    sub_24E60169C(v9, v7, &qword_27F22CC78, &qword_24F992090);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC88, &unk_24F992098);
    sub_24E602068(&qword_27F22CC70, &qword_27F22CC78, &qword_24F992090, MEMORY[0x277CDDB50]);
    sub_24E602068(&qword_27F22CC80, &qword_27F22CC88, &unk_24F992098, MEMORY[0x277CDDB40]);
    sub_24F924E28();
    return sub_24E601704(v9, &qword_27F22CC78, &qword_24F992090);
  }

  else
  {
    sub_24EC8BA1C(a1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v18 = swift_allocObject();
    sub_24EC8CA0C(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ProfileEditorView);
    *v7 = sub_24EC8BF5C;
    v7[1] = v18;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC88, &unk_24F992098);
    sub_24E602068(&qword_27F22CC70, &qword_27F22CC78, &qword_24F992090, MEMORY[0x277CDDB50]);
    sub_24E602068(&qword_27F22CC80, &qword_27F22CC88, &unk_24F992098, MEMORY[0x277CDDB40]);
    return sub_24F924E28();
  }
}

uint64_t sub_24EC8843C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ProfileEditorView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  *a1 = sub_24F9249A8();
  *(a1 + 8) = 0x4040000000000000;
  *(a1 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCF8, &unk_24F9921A8);
  sub_24EC894BC(v2, a1 + *(v8 + 44));
  v9 = sub_24F925818();
  v10 = (v2 + *(v5 + 48));
  v33[0] = v2;
  v11 = *v10;
  v12 = v10[1];
  v33[2] = v11;
  v33[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  sub_24F926F38();
  sub_24F923318();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD00, &qword_24F9921B8) + 36);
  *v21 = v9;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = objc_opt_self();
  v23 = [v22 defaultCenter];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD08, &unk_24F9921C0);
  sub_24F92C0F8();

  sub_24EC8BA1C(v2, v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  sub_24EC8CA0C(v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for ProfileEditorView);
  v27 = (a1 + *(v24 + 56));
  *v27 = sub_24EC8BFDC;
  v27[1] = v26;
  v28 = [v22 defaultCenter];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC78, &qword_24F992090);
  sub_24F92C0F8();

  sub_24EC8BA1C(v33[0], v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = swift_allocObject();
  result = sub_24EC8CA0C(v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v25, type metadata accessor for ProfileEditorView);
  v32 = (a1 + *(v29 + 56));
  *v32 = sub_24EC8BFF4;
  v32[1] = v30;
  return result;
}

uint64_t sub_24EC88744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCA0, &qword_24F9920B0);
  MEMORY[0x28223BE20](v19);
  v17 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCA8, &qword_24F9920B8);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - v5;
  v7 = sub_24F925018();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCB0, &qword_24F9920C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  sub_24F924F88();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCB8, &qword_24F9920C8);
  sub_24E602068(&qword_27F22CCC0, &qword_27F22CCB8, &qword_24F9920C8, MEMORY[0x277D7EB00]);
  sub_24F923668();
  sub_24F924F98();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCC8, &unk_24F9920D0);
  sub_24EC8AED8();
  sub_24F923668();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_24F924D18();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24EC88A90()
{
  v0 = sub_24F9232F8();
  MEMORY[0x28223BE20](v0 - 8);
  sub_24F9232D8();
  sub_24EC88B28(v2);
  return sub_24F921798();
}

uint64_t sub_24EC88B28@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ProfileEditorView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = sub_24F928AD8();
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  sub_24F928A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F9479A0;
  sub_24F928A98();
  sub_24EC8BA1C(v1, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_24EC8CA0C(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ProfileEditorView);
  v14 = sub_24F928B08();
  v15 = MEMORY[0x277D21CB8];
  *(v11 + 56) = v14;
  *(v11 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_24F928AF8();
  v16 = v1 + *(v4 + 44);
  v17 = *v16;
  v18 = *(v16 + 16);
  v32 = v17;
  v33 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818, &qword_24F964440);
  sub_24F926F38();
  v19 = v35;
  v20 = v36;
  v35 = 0;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  sub_24F9271B8();
  v30 = v32;
  v21 = v33;
  v22 = v34;
  sub_24F928A98();
  v23 = type metadata accessor for SetNicknameAction(0);
  *(v11 + 96) = v23;
  *(v11 + 104) = sub_24EC8CA7C(&qword_27F216390, type metadata accessor for SetNicknameAction, &unk_24F994310);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 72));
  *boxed_opaque_existential_1 = v19;
  boxed_opaque_existential_1[1] = v20;
  *(boxed_opaque_existential_1 + 1) = v30;
  boxed_opaque_existential_1[4] = v21;
  boxed_opaque_existential_1[5] = v22;
  *(boxed_opaque_existential_1 + 48) = 1;
  (*(v7 + 32))(boxed_opaque_existential_1 + *(v23 + 28), v9, v31);
  sub_24F928A98();
  sub_24F92A678();
  v25 = sub_24F92A6B8();
  v26 = MEMORY[0x277D223D8];
  *(v11 + 136) = v25;
  *(v11 + 144) = v26;
  __swift_allocate_boxed_opaque_existential_1((v11 + 112));
  sub_24F92A668();
  v27 = sub_24F928DD8();
  v28 = MEMORY[0x277D21D10];
  a1[3] = v27;
  a1[4] = v28;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_24F928DC8();
}

uint64_t sub_24EC88EBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F9232F8();
  MEMORY[0x28223BE20](v2 - 8);
  sub_24F9232E8();
  sub_24EC88FC4(v8);
  sub_24F921798();
  v3 = sub_24EC8743C();
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = !v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCC8, &unk_24F9920D0);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = sub_24E600A48;
  v7[2] = v5;
  return result;
}

double sub_24EC88FC4@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20, &unk_24F992000);
  MEMORY[0x28223BE20](v3 - 8);
  *&v36 = &v33 - v4;
  v35 = sub_24F928AD8();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F9479A0;
  v10 = *(v1 + 16);
  *&v38 = *(v1 + 8);
  v9 = v38;
  *(&v38 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8, &qword_24F992110);
  sub_24F926F38();
  v11 = v41;
  swift_getKeyPath();
  *&v38 = v11;
  sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
  sub_24F91FD88();

  v12 = *(v11 + 64);
  v34 = *(v11 + 56);

  *&v41 = v9;
  *(&v41 + 1) = v10;
  sub_24F926F58();
  v13 = v38;
  v14 = v39;
  swift_getKeyPath();
  v41 = v13;
  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE0, &unk_24F992168);
  sub_24F927188();

  v33 = v38;
  v15 = v39;
  v16 = v40;

  sub_24F928A98();
  v17 = type metadata accessor for SetNicknameAction(0);
  *(v8 + 56) = v17;
  *(v8 + 64) = sub_24EC8CA7C(&qword_27F216390, type metadata accessor for SetNicknameAction, &unk_24F994310);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  v19 = v35;
  *boxed_opaque_existential_1 = v34;
  boxed_opaque_existential_1[1] = v12;
  *(boxed_opaque_existential_1 + 1) = v33;
  boxed_opaque_existential_1[4] = v15;
  boxed_opaque_existential_1[5] = v16;
  *(boxed_opaque_existential_1 + 48) = 0;
  v20 = *(v5 + 32);
  v20(boxed_opaque_existential_1 + *(v17 + 28), v7, v19);
  type metadata accessor for ProfileEditorView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0, &unk_24F991FD0);
  v21 = v36;
  sub_24F926F38();
  sub_24F928A98();
  v22 = type metadata accessor for SaveAvatarAction(0);
  *(v8 + 96) = v22;
  *(v8 + 104) = sub_24EC8CA7C(&qword_27F216378, type metadata accessor for SaveAvatarAction, &unk_24FA18334);
  v23 = __swift_allocate_boxed_opaque_existential_1((v8 + 72));
  sub_24E6009C8(v21, v23, &qword_27F22CC20, &unk_24F992000);
  v20(v23 + *(v22 + 20), v7, v19);
  sub_24F928A98();
  sub_24F92A678();
  v24 = sub_24F92A6B8();
  v25 = MEMORY[0x277D223D8];
  *(v8 + 136) = v24;
  *(v8 + 144) = v25;
  __swift_allocate_boxed_opaque_existential_1((v8 + 112));
  sub_24F92A668();
  v26 = *(v2 + 32);
  LOBYTE(v41) = *(v2 + 24);
  *(&v41 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  v27 = v38;
  LOBYTE(v7) = v39;
  v41 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8, &unk_24F9E63E0);
  sub_24F926F58();
  v36 = v38;
  v28 = v39;
  v29 = type metadata accessor for ProgressPerformAction(0);
  v30 = v37;
  v37[3] = v29;
  v30[4] = sub_24EC8CA7C(&qword_27F2162F0, type metadata accessor for ProgressPerformAction, &unk_24F975958);
  v31 = __swift_allocate_boxed_opaque_existential_1(v30);
  sub_24F928A98();
  *v31 = v8;
  *(v31 + 1) = v27;
  *(v31 + 24) = v7;
  result = *&v36;
  *(v31 + 2) = v36;
  v31[6] = v28;
  return result;
}

id sub_24EC894BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v54 = type metadata accessor for NicknameSection(0);
  MEMORY[0x28223BE20](v54);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD10, &qword_24F9CEE70);
  MEMORY[0x28223BE20](v55);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v54 - v7;
  MEMORY[0x28223BE20](v8);
  v58 = &v54 - v9;
  v10 = type metadata accessor for TitleAndAvatarSection(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD18, &qword_24F9921D0);
  MEMORY[0x28223BE20](v61);
  v57 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v17);
  v62 = &v54 - v18;
  sub_24EC8C0E4(v65);
  v19 = *a1;
  v20 = objc_opt_self();

  sub_24EC8C9B0(v65, v66);
  v63 = v20;
  result = [v20 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = result;
  v23 = [result isAccountModificationRestricted];

  v24 = 1;
  if ((v23 & 1) == 0)
  {
    result = [v63 shared];
    if (!result)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v25 = result;
    v26 = [result isProfileModificationRestricted];

    if (v26)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  type metadata accessor for ProfileEditorView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0, &unk_24F991FD0);
  sub_24F926F58();
  v27 = v65[3];
  *(v12 + 2) = v65[2];
  *(v12 + 3) = v27;
  *(v12 + 4) = v65[4];
  v28 = v65[1];
  *v12 = v65[0];
  *(v12 + 1) = v28;
  *(v12 + 10) = v19;
  v12[88] = v24;
  sub_24F9275A8();
  sub_24F9242E8();
  sub_24EC8CA0C(v12, v16, type metadata accessor for TitleAndAvatarSection);
  v29 = &v16[*(v61 + 36)];
  v30 = v65[8];
  v31 = v65[10];
  v32 = v65[11];
  *(v29 + 4) = v65[9];
  *(v29 + 5) = v31;
  *(v29 + 6) = v32;
  v33 = v65[6];
  *v29 = v65[5];
  *(v29 + 1) = v33;
  *(v29 + 2) = v65[7];
  *(v29 + 3) = v30;
  v34 = v62;
  sub_24E6009C8(v16, v62, &qword_27F22CD18, &qword_24F9921D0);
  v35 = a1[2];
  *&v66[0] = a1[1];
  *(&v66[0] + 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8, &qword_24F992110);
  sub_24F926F38();
  result = [v63 shared];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v36 = result;
  v37 = [result isAccountModificationRestricted];

  v38 = 1;
  if (v37)
  {
LABEL_11:
    *v4 = swift_getKeyPath();
    v4[40] = 0;
    v40 = v54;
    v41 = *(v54 + 20);
    *&v4[v41] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NicknameModel(0);
    sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
    sub_24F927378();
    v4[*(v40 + 28)] = v38;
    v42 = &v4[*(v40 + 32)];
    LOBYTE(v64) = 0;
    sub_24F926F28();
    v43 = *(&v66[0] + 1);
    *v42 = v66[0];
    *(v42 + 1) = v43;
    sub_24F9275A8();
    sub_24F9242E8();
    v44 = v56;
    sub_24EC8CA0C(v4, v56, type metadata accessor for NicknameSection);
    v45 = (v44 + *(v55 + 36));
    v46 = v66[5];
    v45[4] = v66[4];
    v45[5] = v46;
    v45[6] = v66[6];
    v47 = v66[1];
    *v45 = v66[0];
    v45[1] = v47;
    v48 = v66[3];
    v45[2] = v66[2];
    v45[3] = v48;
    v49 = v58;
    sub_24E6009C8(v44, v58, &qword_27F22CD10, &qword_24F9CEE70);
    v50 = v57;
    sub_24E60169C(v34, v57, &qword_27F22CD18, &qword_24F9921D0);
    v51 = v59;
    sub_24E60169C(v49, v59, &qword_27F22CD10, &qword_24F9CEE70);
    v52 = v60;
    sub_24E60169C(v50, v60, &qword_27F22CD18, &qword_24F9921D0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD20, &unk_24F992240);
    sub_24E60169C(v51, v52 + *(v53 + 48), &qword_27F22CD10, &qword_24F9CEE70);
    sub_24E601704(v49, &qword_27F22CD10, &qword_24F9CEE70);
    sub_24E601704(v34, &qword_27F22CD18, &qword_24F9921D0);
    sub_24E601704(v51, &qword_27F22CD10, &qword_24F9CEE70);
    return sub_24E601704(v50, &qword_27F22CD18, &qword_24F9921D0);
  }

  result = [v63 shared];
  if (result)
  {
    v39 = result;
    v38 = [result isProfileModificationRestricted];

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

double sub_24EC89BCC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24F9276F8();
  sub_24F923B18();

  return result;
}

uint64_t sub_24EC89C2C(double a1)
{
  type metadata accessor for ProfileEditorView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  return sub_24F926F48();
}

uint64_t sub_24EC89CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v16 = a2;
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD28, &qword_24F992250);
  sub_24E602068(&qword_27F22CD30, &qword_27F22CD28, &qword_24F992250, MEMORY[0x277CE14C0]);
  sub_24F923438();
  v9 = [objc_opt_self() defaultCenter];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD38, &unk_24F992258);
  sub_24F92C0F8();

  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  result = (*(v7 + 32))(v12 + v11, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v14 = (a3 + *(v10 + 56));
  *v14 = sub_24EC8CB54;
  v14[1] = v12;
  return result;
}

id sub_24EC89ED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v70 = type metadata accessor for NicknameSection(0);
  MEMORY[0x28223BE20](v70);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD40, &qword_24F992278);
  MEMORY[0x28223BE20](v71);
  v73 = &v70 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD48, &qword_24F992280);
  MEMORY[0x28223BE20](v72);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v70 - v8;
  MEMORY[0x28223BE20](v9);
  v76 = &v70 - v10;
  v11 = type metadata accessor for TitleAndAvatarSection(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD50, &qword_24F992288);
  MEMORY[0x28223BE20](v79);
  v75 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  MEMORY[0x28223BE20](v18);
  v80 = &v70 - v19;
  sub_24EC8C0E4(v81);
  v20 = *a1;
  v21 = objc_opt_self();

  sub_24EC8C9B0(v81, v84);
  result = [v21 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = result;
  v24 = [result isAccountModificationRestricted];

  if (v24)
  {
    v25 = 1;
  }

  else
  {
    result = [v21 shared];
    if (!result)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v26 = result;
    v25 = [result isProfileModificationRestricted];
  }

  type metadata accessor for ProfileEditorView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0, &unk_24F991FD0);
  sub_24F926F58();
  v27 = v81[3];
  *(v13 + 2) = v81[2];
  *(v13 + 3) = v27;
  *(v13 + 4) = v81[4];
  v28 = v81[1];
  *v13 = v81[0];
  *(v13 + 1) = v28;
  *(v13 + 10) = v20;
  v13[88] = v25;
  v29 = sub_24F925818();
  sub_24EC8C0E4(v82);
  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_24EC8CA0C(v13, v17, type metadata accessor for TitleAndAvatarSection);
  v38 = v80;
  v39 = &v17[*(v79 + 36)];
  *v39 = v29;
  *(v39 + 1) = v31;
  *(v39 + 2) = v33;
  *(v39 + 3) = v35;
  *(v39 + 4) = v37;
  v39[40] = 0;
  sub_24E6009C8(v17, v38, &qword_27F22CD50, &qword_24F992288);
  v40 = a1[2];
  *&v84[0] = a1[1];
  *(&v84[0] + 1) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8, &qword_24F992110);
  sub_24F926F38();
  result = [v21 shared];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v41 = result;
  v42 = [result isAccountModificationRestricted];

  v43 = 1;
  if (v42)
  {
LABEL_10:
    *v4 = swift_getKeyPath();
    v4[40] = 0;
    v45 = v70;
    v46 = *(v70 + 20);
    *&v4[v46] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NicknameModel(0);
    sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
    sub_24F927378();
    v4[*(v45 + 28)] = v43;
    v47 = &v4[*(v45 + 32)];
    v83[0] = 0;
    sub_24F926F28();
    v48 = *(&v84[0] + 1);
    *v47 = v84[0];
    *(v47 + 1) = v48;
    v49 = sub_24F925818();
    sub_24EC8C0E4(v83);
    sub_24F923318();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v73;
    sub_24EC8CA0C(v4, v73, type metadata accessor for NicknameSection);
    v59 = v58 + *(v71 + 36);
    *v59 = v49;
    *(v59 + 8) = v51;
    *(v59 + 16) = v53;
    *(v59 + 24) = v55;
    *(v59 + 32) = v57;
    *(v59 + 40) = 0;
    sub_24F927628();
    sub_24F9242E8();
    v60 = v74;
    sub_24E6009C8(v58, v74, &qword_27F22CD40, &qword_24F992278);
    v61 = (v60 + *(v72 + 36));
    v62 = v84[5];
    v61[4] = v84[4];
    v61[5] = v62;
    v61[6] = v84[6];
    v63 = v84[1];
    *v61 = v84[0];
    v61[1] = v63;
    v64 = v84[3];
    v61[2] = v84[2];
    v61[3] = v64;
    v65 = v76;
    sub_24E6009C8(v60, v76, &qword_27F22CD48, &qword_24F992280);
    v66 = v75;
    sub_24E60169C(v38, v75, &qword_27F22CD50, &qword_24F992288);
    v67 = v77;
    sub_24E60169C(v65, v77, &qword_27F22CD48, &qword_24F992280);
    v68 = v78;
    sub_24E60169C(v66, v78, &qword_27F22CD50, &qword_24F992288);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD58, &unk_24F992290);
    sub_24E60169C(v67, v68 + *(v69 + 48), &qword_27F22CD48, &qword_24F992280);
    sub_24E601704(v65, &qword_27F22CD48, &qword_24F992280);
    sub_24E601704(v38, &qword_27F22CD50, &qword_24F992288);
    sub_24E601704(v67, &qword_27F22CD48, &qword_24F992280);
    return sub_24E601704(v66, &qword_27F22CD50, &qword_24F992288);
  }

  result = [v21 shared];
  if (result)
  {
    v44 = result;
    v43 = [result isProfileModificationRestricted];

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

double sub_24EC8A678(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F924098();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a2, v3);
  sub_24F92B7F8();
  v11 = sub_24F92B7E8();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  (*(v4 + 32))(v13 + v12, v6, v3);
  sub_24EA998B8(0, 0, v9, &unk_24F992270, v13);

  return result;
}

uint64_t sub_24EC8A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_24F92B7F8();
  *(v4 + 40) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EC8A8FC, v6, v5);
}

uint64_t sub_24EC8A8FC()
{

  v0[2] = 0xD000000000000020;
  v0[3] = 0x800000024FA589F0;
  sub_24F924088();
  v1 = v0[1];

  return v1();
}

uint64_t sub_24EC8A9A0(uint64_t *a1)
{
  v2 = sub_24F9289E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_getKeyPath();
  v10[1] = v6;
  sub_24EC8CA7C(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v7 = v6 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  v8 = type metadata accessor for Player(0);
  (*(v3 + 16))(v5, v7 + *(v8 + 24), v2);
  return LocalPlayerProvider.avatarMediaArtwork.setter(v5);
}

double sub_24EC8AB24@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
  sub_24F91FD88();

  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;

  return result;
}

uint64_t sub_24EC8ABD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F548D00(v1, v2);
}

unint64_t sub_24EC8AC14()
{
  result = qword_27F22CC40;
  if (!qword_27F22CC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC28, &qword_24F992068);
    sub_24EC8ACCC();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CC40);
  }

  return result;
}

unint64_t sub_24EC8ACCC()
{
  result = qword_27F22CC48;
  if (!qword_27F22CC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC38, &qword_24F992078);
    sub_24EC8AD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CC48);
  }

  return result;
}

unint64_t sub_24EC8AD58()
{
  result = qword_27F22CC50;
  if (!qword_27F22CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC58, &qword_24F992080);
    sub_24EC8ADDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CC50);
  }

  return result;
}

unint64_t sub_24EC8ADDC()
{
  result = qword_27F22CC60;
  if (!qword_27F22CC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC68, &qword_24F992088);
    sub_24E602068(&qword_27F22CC70, &qword_27F22CC78, &qword_24F992090, MEMORY[0x277CDDB50]);
    sub_24E602068(&qword_27F22CC80, &qword_27F22CC88, &unk_24F992098, MEMORY[0x277CDDB40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CC60);
  }

  return result;
}

unint64_t sub_24EC8AED8()
{
  result = qword_27F22CCD0;
  if (!qword_27F22CCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CCC8, &unk_24F9920D0);
    sub_24E602068(&qword_27F22CCC0, &qword_27F22CCB8, &qword_24F9920C8, MEMORY[0x277D7EB00]);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CCD0);
  }

  return result;
}

uint64_t sub_24EC8AFBC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = &v75 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v79);
  v78 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v75 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD88, &qword_24F9923D8) - 8;
  MEMORY[0x28223BE20](v84);
  v85 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v75 - v12;
  v14._object = 0x800000024FA58A20;
  v14._countAndFlagsBits = 0xD000000000000020;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = localizedString(_:comment:)(v14, v15);
  object = v16._object;
  countAndFlagsBits = v16._countAndFlagsBits;
  sub_24F927628();
  sub_24F9242E8();
  v17._countAndFlagsBits = 0xD000000000000023;
  v17._object = 0x800000024FA58A50;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = localizedString(_:comment:)(v17, v18);
  v82 = v19._object;
  v83 = v19._countAndFlagsBits;
  v20 = *(a1 + 48);
  v140 = *(a1 + 32);
  v141 = v20;
  v142 = *(a1 + 64);
  v21 = *(a1 + 16);
  v139[0] = *a1;
  v139[1] = v21;
  v92 = v20;
  v93 = v142;
  v90 = v21;
  v91 = v140;
  v89 = v139[0];
  sub_24EC8C9B0(v139, &v101);
  v80 = sub_24F925818();
  sub_24F923318();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v130 = 0;
  sub_24F927628();
  v30 = *(&v140 + 1);
  sub_24F9242E8();
  *&v131[55] = v143[3];
  *&v131[71] = v143[4];
  *&v131[87] = v143[5];
  *&v131[103] = v143[6];
  *&v131[7] = v143[0];
  *&v131[23] = v143[1];
  *&v131[39] = v143[2];
  v76 = *(a1 + 80);
  v77 = *(a1 + 88);
  v31 = type metadata accessor for AvatarSection(0);
  v32 = v31[7];
  type metadata accessor for TitleAndAvatarSection(0);

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60, &unk_24F9CEF00);
  sub_24F927198();
  (*(*(v33 - 8) + 56))(&v13[v32], 0, 1, v33);
  v34 = &v13[v31[8]];
  LOBYTE(v95[0]) = 0;
  sub_24F926F28();
  v35 = v102;
  *v34 = v101;
  *(v34 + 1) = v35;
  v36 = sub_24F9289E8();
  (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
  sub_24E60169C(v9, v78, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24F926F28();
  sub_24E601704(v9, &qword_27F213FB0, &qword_24F93E6B0);
  v37 = &v13[v31[10]];
  *v37 = swift_getKeyPath();
  v37[40] = 0;
  v38 = v31[11];
  *&v13[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v39 = &v13[v31[12]];
  LOBYTE(v95[0]) = 0;
  sub_24F926F28();
  v40 = v102;
  *v39 = v101;
  *(v39 + 1) = v40;
  *v13 = v30;
  v41 = v76;
  *(v13 + 1) = v76;
  v42 = sub_24F92B858();
  v43 = v81;
  (*(*(v42 - 8) + 56))(v81, 1, 1, v42);
  sub_24F92B7F8();

  v44 = sub_24F92B7E8();
  v45 = swift_allocObject();
  v46 = MEMORY[0x277D85700];
  v45[2] = v44;
  v45[3] = v46;
  v45[4] = v41;
  sub_24EA998B8(0, 0, v43, &unk_24F9923E0, v45);

  v13[16] = v77;
  LOBYTE(v44) = sub_24F925818();
  sub_24F923318();
  v47 = v85;
  v48 = &v13[*(v84 + 44)];
  *v48 = v44;
  *(v48 + 1) = v49;
  *(v48 + 2) = v50;
  *(v48 + 3) = v51;
  *(v48 + 4) = v52;
  v48[40] = 0;
  sub_24E60169C(v13, v47, &qword_27F22CD88, &qword_24F9923D8);
  *&v94[0] = countAndFlagsBits;
  *(&v94[0] + 1) = object;
  v53 = v132;
  v54 = v137;
  v55 = v136;
  v94[5] = v136;
  v94[6] = v137;
  v56 = v135;
  v57 = v138;
  v94[7] = v138;
  v58 = v134;
  v94[3] = v134;
  v94[4] = v135;
  v94[1] = v132;
  v94[2] = v133;
  a2[2] = v133;
  a2[3] = v58;
  a2[6] = v54;
  a2[7] = v57;
  a2[4] = v56;
  a2[5] = v55;
  *a2 = v94[0];
  a2[1] = v53;
  v59 = v82;
  v60 = v83;
  *&v95[0] = v83;
  *(&v95[0] + 1) = v82;
  v95[3] = v91;
  v96 = v92;
  v97 = v93;
  v95[1] = v89;
  v95[2] = v90;
  LOBYTE(v41) = v80;
  LOBYTE(v98) = v80;
  *(&v98 + 1) = *v88;
  DWORD1(v98) = *&v88[3];
  *(&v98 + 1) = v23;
  *&v99 = v25;
  *(&v99 + 1) = v27;
  *&v100[0] = v29;
  BYTE8(v100[0]) = 0;
  *(&v100[3] + 9) = *&v131[48];
  *(&v100[2] + 9) = *&v131[32];
  *(&v100[1] + 9) = *&v131[16];
  *(v100 + 9) = *v131;
  *(&v100[7] + 1) = *&v131[111];
  *(&v100[6] + 9) = *&v131[96];
  *(&v100[5] + 9) = *&v131[80];
  *(&v100[4] + 9) = *&v131[64];
  v61 = v95[0];
  v62 = v89;
  v63 = v91;
  a2[10] = v90;
  a2[11] = v63;
  a2[8] = v61;
  a2[9] = v62;
  v64 = v96;
  v65 = v97;
  v66 = v99;
  a2[14] = v98;
  a2[15] = v66;
  a2[12] = v64;
  a2[13] = v65;
  v67 = v100[0];
  v68 = v100[1];
  v69 = v100[3];
  a2[18] = v100[2];
  a2[19] = v69;
  a2[16] = v67;
  a2[17] = v68;
  v70 = v100[4];
  v71 = v100[5];
  v72 = v100[7];
  a2[22] = v100[6];
  a2[23] = v72;
  a2[20] = v70;
  a2[21] = v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD90, &qword_24F9923E8);
  sub_24E60169C(v47, a2 + *(v73 + 64), &qword_27F22CD88, &qword_24F9923D8);
  sub_24E60169C(v94, &v101, &qword_27F22CD98, &qword_24F9923F0);
  sub_24E60169C(v95, &v101, &qword_27F22CDA0, &qword_24F9923F8);
  sub_24E601704(v13, &qword_27F22CD88, &qword_24F9923D8);
  sub_24E601704(v47, &qword_27F22CD88, &qword_24F9923D8);
  v101 = v60;
  v102 = v59;
  v105 = v91;
  v106 = v92;
  v107 = v93;
  v103 = v89;
  v104 = v90;
  v108 = v41;
  *v109 = *v88;
  *&v109[3] = *&v88[3];
  v110 = v23;
  v111 = v25;
  v112 = v27;
  v113 = v29;
  v114 = 0;
  v119 = *&v131[64];
  v120 = *&v131[80];
  *v121 = *&v131[96];
  *&v121[15] = *&v131[111];
  v115 = *v131;
  v116 = *&v131[16];
  v117 = *&v131[32];
  v118 = *&v131[48];
  sub_24E601704(&v101, &qword_27F22CDA0, &qword_24F9923F8);
  v122[0] = countAndFlagsBits;
  v122[1] = object;
  v127 = v136;
  v128 = v137;
  v129 = v138;
  v123 = v132;
  v124 = v133;
  v125 = v134;
  v126 = v135;
  return sub_24E601704(v122, &qword_27F22CD98, &qword_24F9923F0);
}

uint64_t sub_24EC8B840@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD80, &unk_24F9923C8);
  return sub_24EC8AFBC(v2, (a2 + *(v4 + 44)));
}

double sub_24EC8B890@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EC8CA7C(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
  sub_24F91FD88();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;

  return result;
}

uint64_t sub_24EC8B93C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F549384(v1, v2);
}

uint64_t sub_24EC8B998(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F549384(v1, v2);
}

uint64_t sub_24EC8B9DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F548D00(v1, v2);
}

uint64_t sub_24EC8BA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileEditorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_12Tm_2()
{
  v1 = type metadata accessor for ProfileEditorView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = (v3 + v1[8]);
  v5 = type metadata accessor for AvatarData(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 24);
    v7 = sub_24F9289E8();
    v8 = (*(v7 - 8) + 8);
    v23 = *v8;
    (*v8)(v4 + v6, v7);
    v9 = v4 + *(v5 + 28);

    v10 = type metadata accessor for PlayerAvatar(0);
    v11 = *(v10 + 20);
    v12 = type metadata accessor for PlayerAvatar.Overlay(0);
    if (!(*(*(v12 - 8) + 48))(&v9[v11], 1, v12) && !swift_getEnumCaseMultiPayload())
    {
      v23(&v9[v11], v7);
    }

    v13 = &v9[*(v10 + 24)];
    if (*(v13 + 3))
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CBF0, &unk_24F991FD0);

  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24F925218();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v3 + v14, 1, v15))
    {
      (*(v16 + 8))(v3 + v14, v15);
    }
  }

  else
  {
  }

  v17 = v1[12];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F925218();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v3 + v17, 1, v18))
    {
      (*(v19 + 8))(v3 + v17, v18);
    }
  }

  else
  {
  }

  v20 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_24F923E98();
    (*(*(v21 - 8) + 8))(v3 + v20, v21);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EC8BF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ProfileEditorView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EC89CB0(a1, v6, a2);
}

__n128 sub_24EC8C0E4@<Q0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v53 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v5);
  v62 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v49[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v60 = &v49[-v13];
  MEMORY[0x28223BE20](v14);
  v61 = &v49[-v15];
  MEMORY[0x28223BE20](v16);
  v65 = &v49[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v49[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v49[-v22];
  v58 = type metadata accessor for ProfileEditorView(0);
  v24 = v1;
  sub_24F769764(v23);
  v25 = v3[13];
  v57 = *MEMORY[0x277CE0560];
  v56 = v25;
  v54 = v3 + 13;
  v25(v20);
  v55 = v3[7];
  v55(v20, 0, 1, v2);
  v59 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598, &qword_24F945EF0);
  v64 = v3;
  v27 = v3[6];
  if (v27(v9, 1, v2) != 1)
  {
    sub_24E60169C(v9, v65, &qword_27F215598, &qword_24F945EF0);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v63 = v27;
      v51 = v24;
      v29 = v53;
      (v64[4])(v53, &v9[v26], v2);
      sub_24EC8CA7C(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v30 = v65;
      v50 = sub_24F92AFF8();
      v31 = v64[1];
      v31(v29, v2);
      sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
      v31(v30, v2);
      sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
      if ((v50 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
    (v64[1])(v65, v2);
LABEL_6:
    v28 = v9;
LABEL_14:
    sub_24E601704(v28, &unk_27F254F20, &qword_24F940790);
    goto LABEL_15;
  }

  v51 = v24;
  v63 = v27;
  sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
  if (v63(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v32 = v61;
  sub_24F769764(v61);
  v33 = v60;
  v56(v60, v57, v2);
  v55(v33, 0, 1, v2);
  v34 = *(v59 + 48);
  v35 = v62;
  sub_24E60169C(v32, v62, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v33, &v35[v34], &qword_27F215598, &qword_24F945EF0);
  v36 = v63;
  if (v63(v35, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    if (v36(&v35[v34], 1, v2) == 1)
    {
      sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
LABEL_20:
      if (qword_27F210F38 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39DB50;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v52;
  sub_24E60169C(v35, v52, &qword_27F215598, &qword_24F945EF0);
  if (v36(&v35[v34], 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    (v64[1])(v37, v2);
LABEL_13:
    v28 = v35;
    goto LABEL_14;
  }

  v43 = v33;
  v44 = v64;
  v45 = &v35[v34];
  v46 = v53;
  (v64[4])(v53, v45, v2);
  sub_24EC8CA7C(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v47 = sub_24F92AFF8();
  v48 = v44[1];
  v48(v46, v2);
  sub_24E601704(v43, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
  v48(v37, v2);
  sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
  if (v47)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F210F30 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39DB00;
LABEL_18:
  v39 = v38[3];
  v69 = v38[2];
  v70 = v39;
  v71 = v38[4];
  v40 = v38[1];
  v67 = *v38;
  v68 = v40;
  v41 = v66;
  *(v66 + 32) = v69;
  *(v41 + 48) = v39;
  *(v41 + 64) = v71;
  result = v68;
  *v41 = v67;
  *(v41 + 16) = result;
  return result;
}

uint64_t sub_24EC8CA0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC8CA7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC8CACC()
{
  v1 = sub_24F924098();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

double sub_24EC8CB54(uint64_t a1)
{
  v3 = *(sub_24F924098() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EC8A678(a1, v4);
}

uint64_t sub_24EC8CBC4()
{
  v1 = sub_24F924098();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EC8CC88(uint64_t a1)
{
  v4 = *(sub_24F924098() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EC8A864(a1, v6, v7, v1 + v5);
}

uint64_t sub_24EC8CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60, &unk_24F9CEF00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EC8CE7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60, &unk_24F9CEF00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EC8CF2C(uint64_t a1)
{
  type metadata accessor for LocalPlayerProvider(319);
  if (v1 <= 0x3F)
  {
    sub_24EC8CFF4(319, &qword_27F22CD78, &qword_27F22CC20, &unk_24F992000, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EC8CFF4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24EC8D058()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC30, &qword_24F992070);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC90, &qword_24F9920A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CC28, &qword_24F992068);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220ED8, &qword_24F992060);
  sub_24EC8AC14();
  sub_24E602068(&qword_27F220EE0, &qword_27F220ED8, &qword_24F992060, MEMORY[0x277CDF728]);
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F22CC98, &qword_27F22CC90, &qword_24F9920A8, MEMORY[0x277CDDF68]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EC8D1D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EC8D214(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24E614970;

  return sub_24EF9714C();
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)@<X0>(double *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0);
  sub_24EC8D470(a1, a7 + *(v14 + 36));
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F922268();
  sub_24E615E00(a3, a7 + 40);
  sub_24E615E00(a4, a7 + 80);
  sub_24E615E00(a5, a7 + 120);
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  sub_24F922268();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_24EC8D4F4(a1);
  __swift_destroy_boxed_opaque_existential_1(a6);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_24EC8D470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC8D4F4(uint64_t a1)
{
  v2 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.init(iconSize:titleSpace:subtitleSpace:offerTopSpace:offerButtonSize:descriptionSpace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  a5[1] = a7;
  v16 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  v17 = v16[5];
  v18 = sub_24F922628();
  v22 = *(*(v18 - 8) + 32);
  (v22)((v18 - 8), a5 + v17, a1, v18);
  v22(a5 + v16[6], a2, v18);
  sub_24E612E28(a3, a5 + v16[7]);
  v19 = (a5 + v16[8]);
  *v19 = a8;
  v19[1] = a9;
  v20 = a5 + v16[9];

  return (v22)(v20, a4, v18);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 20);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}