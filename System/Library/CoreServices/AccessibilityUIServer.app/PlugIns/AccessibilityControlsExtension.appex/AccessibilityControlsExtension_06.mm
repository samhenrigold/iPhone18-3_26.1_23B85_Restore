int main(int argc, const char **argv, const char **envp)
{
  sub_1000C31A8();
  sub_1002D8A40();
  return 0;
}

unint64_t sub_1000C31A8()
{
  result = qword_100445F20;
  if (!qword_100445F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100445F20);
  }

  return result;
}

unint64_t sub_1000C3270()
{
  result = qword_100446910;
  if (!qword_100446910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446910);
  }

  return result;
}

unint64_t sub_1000C32C8()
{
  result = qword_100446918;
  if (!qword_100446918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446918);
  }

  return result;
}

uint64_t sub_1000C331C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C698);
  sub_10001EDB8(v0, qword_10051C698);
  return sub_1002D88F0();
}

void *sub_1000C3380@<X0>(uint64_t a1@<X8>)
{
  result = sub_1002D85B0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1000C33C4(__int16 *a1)
{

  sub_1002D85C0();
}

void (*sub_1000C3414(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_100024B0C;
}

unint64_t sub_1000C3488()
{
  result = qword_100446920;
  if (!qword_100446920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446920);
  }

  return result;
}

uint64_t sub_1000C34DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D9764();
  v5 = sub_1000D970C();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000C3548()
{
  v0 = qword_1004468F0;

  return v0;
}

unint64_t sub_1000C3584()
{
  result = qword_100446928;
  if (!qword_100446928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446928);
  }

  return result;
}

unint64_t sub_1000C35DC()
{
  result = qword_100446930;
  if (!qword_100446930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446930);
  }

  return result;
}

unint64_t sub_1000C3634()
{
  result = qword_100446938;
  if (!qword_100446938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446938);
  }

  return result;
}

uint64_t sub_1000C3710(uint64_t a1)
{
  v2 = sub_1000D9764();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1000C3754(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1000D9764();
  v6 = sub_1000D97B8();
  v7 = sub_1000D970C();
  *v4 = v2;
  v4[1] = sub_1000C3820;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000C3820()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000C3928@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D528C();
  *a1 = result;
  return result;
}

uint64_t sub_1000C3950(uint64_t a1)
{
  v2 = sub_1000C3488();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000C3990()
{
  result = qword_100446940;
  if (!qword_100446940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446940);
  }

  return result;
}

unint64_t sub_1000C39E8()
{
  result = qword_100446948;
  if (!qword_100446948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446948);
  }

  return result;
}

unint64_t sub_1000C3A40()
{
  result = qword_100446950;
  if (!qword_100446950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446950);
  }

  return result;
}

uint64_t sub_1000C3A94@<X0>(__int16 a1@<W0>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v4 = sub_1002D8900();
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1002D8990();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1002D8CF0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v9 - 8);
  v11 = v21 - v10;
  v12 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v12 - 8);
  v14 = v21 - v13;
  v15 = sub_1002D8910();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 285:
    case 286:
    case 287:
    case 288:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
    case 294:
    case 295:
    case 296:
    case 297:
    case 298:
    case 299:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
    case 310:
    case 311:
    case 312:
    case 313:
    case 314:
    case 315:
    case 316:
    case 317:
    case 318:
    case 319:
    case 320:
    case 321:
    case 322:
    case 323:
    case 324:
    case 325:
    case 326:
    case 327:
    case 328:
    case 329:
    case 330:
    case 331:
    case 332:
    case 333:
    case 334:
    case 335:
    case 336:
    case 337:
    case 338:
    case 339:
    case 340:
    case 341:
    case 342:
    case 343:
    case 344:
    case 345:
    case 346:
    case 347:
    case 348:
    case 349:
    case 350:
    case 351:
    case 352:
    case 353:
    case 354:
    case 355:
    case 356:
    case 357:
    case 358:
    case 359:
    case 360:
    case 361:
    case 362:
    case 363:
    case 364:
    case 365:
    case 366:
    case 367:
    case 368:
    case 369:
    case 370:
    case 371:
    case 372:
    case 373:
    case 374:
    case 375:
    case 376:
    case 377:
    case 378:
    case 379:
    case 380:
    case 381:
    case 382:
    case 383:
    case 384:
    case 385:
    case 386:
    case 387:
    case 388:
    case 389:
    case 390:
    case 391:
    case 392:
    case 393:
    case 394:
    case 395:
    case 396:
    case 397:
    case 398:
    case 399:
    case 400:
    case 401:
    case 402:
    case 403:
    case 407:
    case 408:
    case 409:
    case 411:
    case 412:
    case 413:
    case 414:
    case 415:
    case 416:
    case 417:
    case 418:
    case 419:
    case 420:
    case 421:
    case 422:
    case 423:
    case 424:
    case 425:
    case 426:
    case 427:
    case 428:
    case 430:
    case 431:
    case 432:
    case 433:
    case 434:
    case 435:
    case 436:
    case 437:
    case 438:
    case 439:
    case 440:
    case 441:
    case 442:
    case 443:
    case 444:
    case 445:
    case 446:
    case 447:
    case 448:
    case 449:
    case 450:
    case 452:
    case 453:
    case 454:
    case 455:
    case 456:
    case 457:
    case 458:
    case 459:
    case 460:
    case 461:
    case 462:
    case 463:
    case 465:
    case 466:
    case 471:
    case 472:
    case 473:
    case 474:
    case 475:
    case 476:
    case 477:
    case 478:
    case 479:
    case 480:
    case 481:
    case 482:
    case 483:
    case 484:
    case 485:
    case 486:
    case 487:
    case 488:
    case 489:
    case 490:
    case 491:
    case 492:
    case 493:
    case 494:
    case 495:
    case 496:
    case 497:
    case 498:
    case 499:
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
    case 505:
    case 506:
    case 507:
    case 508:
    case 509:
    case 510:
    case 512:
    case 513:
    case 514:
    case 515:
    case 516:
    case 517:
    case 518:
    case 519:
    case 520:
    case 521:
    case 522:
    case 523:
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 531:
    case 532:
    case 533:
    case 534:
    case 535:
    case 536:
    case 537:
    case 538:
    case 539:
    case 540:
    case 541:
    case 542:
    case 543:
    case 544:
    case 545:
    case 546:
    case 547:
    case 548:
    case 549:
    case 550:
    case 552:
    case 553:
    case 555:
    case 556:
    case 557:
    case 558:
    case 559:
    case 560:
    case 561:
    case 562:
    case 563:
    case 564:
    case 565:
    case 566:
    case 567:
    case 568:
    case 570:
    case 571:
    case 572:
    case 573:
    case 574:
    case 575:
    case 576:
    case 577:
    case 578:
    case 579:
    case 580:
    case 581:
    case 582:
    case 583:
    case 584:
    case 585:
    case 586:
    case 587:
    case 588:
    case 589:
    case 590:
    case 591:
    case 592:
    case 593:
    case 594:
    case 595:
    case 596:
    case 597:
    case 598:
    case 599:
    case 600:
    case 601:
    case 602:
    case 603:
    case 604:
    case 605:
    case 606:
    case 607:
    case 608:
    case 610:
    case 611:
    case 612:
    case 613:
    case 614:
    case 615:
    case 616:
    case 617:
    case 618:
    case 619:
    case 620:
    case 621:
    case 622:
    case 623:
    case 624:
    case 625:
    case 626:
    case 627:
    case 628:
    case 629:
    case 630:
    case 631:
    case 632:
    case 633:
    case 634:
    case 635:
      sub_1002D88F0();
      sub_1002D88F0();
      (*(v16 + 56))(v14, 0, 1, v15);
      goto LABEL_7;
    case 27:
    case 33:
    case 108:
    case 451:
    case 467:
    case 468:
    case 469:
    case 470:
    case 511:
    case 569:
    case 609:
      sub_1002D88F0();
      sub_1002D88F0();
      (*(v16 + 56))(v14, 0, 1, v15);
      sub_1002D86A0();
      goto LABEL_8;
    case 130:
    case 131:
    case 132:
    case 174:
    case 195:
    case 196:
    case 197:
    case 198:
    case 246:
    case 404:
    case 405:
    case 406:
    case 429:
    case 464:
    case 551:
    case 554:
      sub_1002D88F0();
      sub_1002D88F0();
      (*(v16 + 56))(v14, 0, 1, v15);
      sub_1000CD928();
      goto LABEL_8;
    case 410:
      v17 = sub_1002D8CE0();
      sub_1000D9B98(v17);
      sub_1000CDA08(v6);
      sub_1002D8920();
      v18 = sub_1002D8CE0();
      sub_1000D9B98(v18);
      sub_1000CDA08(v6);
      sub_1002D8920();
      (*(v16 + 56))(v14, 0, 1, v15);
      goto LABEL_7;
    default:
      sub_1002D88F0();
      (*(v16 + 56))(v14, 1, 1, v15);
LABEL_7:
      sub_1002D8690();
LABEL_8:
      v19 = sub_1002D86B0();
      (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
      return sub_1002D86E0();
  }
}

uint64_t sub_1000CD928()
{
  v0 = sub_1002D8D00();
  v1 = AXHasCapability();

  if ((v1 & 1) == 0)
  {
    v2 = sub_1002D8D00();
    AXHasCapability();
  }

  return sub_1002D8690();
}

uint64_t sub_1000CDA08@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000CDA7C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051C6B0);
  sub_10001EDB8(v5, qword_10051C6B0);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000CDBF4(uint64_t a1, _WORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_1000CDC1C, 0, 0);
}

uint64_t sub_1000CDC1C()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000CDC88(*(v0 + 24));
  v1[1] = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000CDC88(uint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
      result = 0xD00000000000003CLL;
      break;
    case 2:
    case 13:
      result = 0xD000000000000059;
      break;
    case 3:
    case 56:
    case 524:
      result = 0xD000000000000012;
      break;
    case 4:
    case 260:
    case 287:
    case 348:
    case 387:
    case 408:
    case 449:
    case 531:
    case 536:
    case 591:
    case 607:
      result = 0xD000000000000030;
      break;
    case 5:
    case 97:
    case 169:
    case 400:
    case 555:
    case 595:
    case 599:
    case 601:
    case 613:
    case 617:
      result = 0xD00000000000004BLL;
      break;
    case 6:
    case 28:
    case 269:
    case 304:
    case 501:
    case 506:
    case 604:
      result = 0xD00000000000002DLL;
      break;
    case 7:
    case 70:
    case 154:
    case 361:
      result = 0xD000000000000053;
      break;
    case 8:
    case 19:
    case 176:
    case 191:
    case 211:
    case 245:
    case 298:
    case 418:
    case 440:
    case 478:
    case 486:
    case 494:
    case 561:
    case 623:
      result = 0xD000000000000025;
      break;
    case 9:
    case 24:
    case 105:
    case 127:
    case 467:
    case 468:
      result = 0xD00000000000001ELL;
      break;
    case 10:
    case 194:
    case 213:
    case 308:
    case 383:
    case 390:
    case 420:
    case 482:
    case 483:
      result = 0xD000000000000036;
      break;
    case 11:
    case 130:
    case 131:
    case 132:
    case 385:
    case 451:
    case 488:
    case 498:
    case 593:
    case 609:
      result = 0xD000000000000022;
      break;
    case 12:
    case 61:
    case 112:
    case 208:
    case 216:
    case 485:
    case 629:
      result = 0xD000000000000020;
      break;
    case 14:
    case 75:
    case 170:
    case 285:
    case 286:
    case 294:
    case 338:
    case 339:
    case 372:
    case 414:
    case 544:
    case 556:
      result = 0xD00000000000004DLL;
      break;
    case 15:
    case 135:
    case 218:
    case 445:
    case 539:
    case 540:
    case 583:
      result = 0xD00000000000003ALL;
      break;
    case 16:
    case 141:
    case 149:
    case 313:
    case 326:
      result = 0xD000000000000051;
      break;
    case 17:
    case 109:
    case 128:
    case 320:
    case 329:
    case 340:
    case 422:
    case 462:
    case 631:
      result = 0xD000000000000024;
      break;
    case 18:
    case 155:
    case 236:
    case 436:
    case 493:
    case 581:
    case 587:
      result = 0xD000000000000044;
      break;
    case 20:
    case 115:
    case 123:
    case 366:
    case 423:
    case 425:
    case 457:
    case 474:
    case 622:
    case 628:
      result = 0xD00000000000001CLL;
      break;
    case 21:
    case 239:
    case 317:
      result = 0xD000000000000011;
      break;
    case 22:
    case 119:
    case 174:
    case 178:
    case 221:
    case 246:
      result = 0xD000000000000010;
      break;
    case 23:
    case 225:
    case 469:
      result = 0xD000000000000013;
      break;
    case 25:
    case 32:
    case 229:
    case 255:
    case 265:
    case 318:
    case 324:
    case 381:
    case 431:
    case 452:
    case 520:
    case 547:
    case 569:
      result = 0xD00000000000002ELL;
      break;
    case 26:
    case 62:
    case 64:
    case 92:
    case 137:
    case 145:
    case 227:
    case 240:
    case 257:
    case 267:
    case 268:
    case 271:
    case 315:
    case 344:
    case 471:
      result = 0xD000000000000039;
      break;
    case 27:
    case 278:
    case 288:
    case 375:
    case 376:
    case 444:
    case 550:
    case 610:
    case 611:
      result = 0xD00000000000003FLL;
      break;
    case 29:
    case 36:
    case 90:
    case 102:
    case 143:
    case 189:
    case 206:
    case 258:
    case 301:
    case 305:
    case 356:
    case 360:
    case 411:
    case 419:
    case 461:
      result = 0xD000000000000037;
      break;
    case 30:
      result = 0xD000000000000034;
      break;
    case 31:
    case 290:
    case 291:
    case 370:
    case 394:
    case 395:
    case 542:
    case 543:
    case 572:
    case 580:
    case 585:
    case 594:
    case 630:
      result = 0xD000000000000041;
      break;
    case 33:
    case 76:
    case 107:
    case 156:
    case 186:
    case 190:
    case 244:
    case 306:
    case 371:
    case 429:
    case 509:
    case 534:
    case 535:
    case 574:
      result = 0xD00000000000003ELL;
      break;
    case 34:
      result = 0x56545F454C505041;
      break;
    case 35:
    case 125:
    case 424:
    case 570:
      result = 0xD000000000000019;
      break;
    case 37:
    case 38:
    case 74:
    case 91:
    case 99:
      result = 0xD000000000000041;
      break;
    case 39:
    case 65:
    case 144:
    case 164:
      result = 0xD000000000000033;
      break;
    case 40:
    case 41:
    case 63:
    case 95:
    case 161:
    case 512:
    case 552:
    case 567:
      result = 0xD000000000000046;
      break;
    case 42:
      result = 0xD000000000000056;
      break;
    case 43:
      result = 0xD00000000000003CLL;
      break;
    case 44:
    case 45:
    case 81:
      result = 0xD00000000000004ALL;
      break;
    case 46:
    case 314:
    case 409:
    case 413:
      result = 0xD000000000000048;
      break;
    case 47:
    case 180:
    case 181:
    case 321:
    case 328:
    case 333:
    case 334:
      result = 0xD00000000000004ELL;
      break;
    case 48:
    case 50:
    case 152:
    case 153:
    case 158:
    case 368:
    case 369:
    case 504:
      result = 0xD000000000000050;
      break;
    case 49:
    case 151:
      result = 0xD000000000000055;
      break;
    case 51:
    case 184:
    case 374:
      result = 0xD000000000000052;
      break;
    case 52:
    case 86:
    case 150:
    case 378:
      result = 0xD00000000000002DLL;
      break;
    case 53:
    case 238:
    case 249:
    case 510:
    case 608:
      result = 0xD000000000000016;
      break;
    case 54:
    case 55:
    case 138:
    case 242:
    case 373:
    case 500:
    case 527:
    case 541:
      result = 0xD000000000000043;
      break;
    case 57:
      result = 0xD000000000000011;
      break;
    case 58:
    case 146:
    case 168:
    case 185:
    case 235:
    case 283:
    case 310:
    case 316:
    case 427:
    case 446:
    case 508:
    case 592:
      result = 0xD000000000000023;
      break;
    case 59:
    case 78:
    case 147:
      result = 0xD00000000000005BLL;
      break;
    case 60:
    case 83:
      result = 0xD000000000000061;
      break;
    case 66:
      result = 0xD000000000000030;
      break;
    case 67:
    case 121:
    case 188:
    case 222:
    case 254:
    case 264:
    case 393:
    case 407:
    case 456:
      result = 0xD000000000000032;
      break;
    case 68:
    case 175:
    case 193:
    case 277:
    case 297:
    case 307:
    case 343:
    case 402:
    case 450:
    case 459:
    case 484:
    case 614:
    case 620:
      result = 0xD000000000000026;
      break;
    case 69:
    case 341:
    case 357:
    case 442:
    case 443:
    case 532:
    case 533:
      result = 0xD00000000000004FLL;
      break;
    case 71:
    case 79:
    case 122:
    case 237:
    case 252:
    case 272:
    case 302:
    case 322:
    case 380:
    case 454:
    case 458:
    case 495:
    case 511:
    case 596:
      result = 0xD000000000000028;
      break;
    case 72:
    case 73:
    case 233:
    case 388:
    case 606:
      result = 0xD000000000000034;
      break;
    case 77:
    case 182:
    case 183:
      result = 0xD000000000000075;
      break;
    case 80:
    case 89:
    case 365:
    case 389:
    case 545:
      result = 0xD000000000000049;
      break;
    case 82:
    case 124:
      result = 0xD000000000000021;
      break;
    case 84:
      result = 0xD000000000000062;
      break;
    case 85:
      result = 0xD00000000000006ELL;
      break;
    case 87:
    case 116:
    case 126:
    case 129:
    case 133:
      result = 0xD00000000000001FLL;
      break;
    case 88:
    case 197:
    case 198:
    case 223:
    case 250:
    case 266:
    case 284:
    case 386:
    case 530:
    case 537:
      result = 0xD00000000000002ALL;
      break;
    case 93:
      result = 0xD00000000000003CLL;
      break;
    case 94:
    case 167:
      result = 0xD000000000000040;
      break;
    case 96:
    case 173:
    case 441:
      result = 0xD00000000000002CLL;
      break;
    case 98:
    case 157:
      result = 0xD00000000000002BLL;
      break;
    case 100:
      result = 0xD000000000000047;
      break;
    case 101:
    case 134:
      result = 0xD000000000000036;
      break;
    case 103:
    case 104:
    case 140:
    case 362:
    case 384:
    case 403:
    case 448:
    case 559:
    case 571:
    case 590:
      result = 0xD00000000000003DLL;
      break;
    case 106:
    case 159:
    case 263:
    case 391:
    case 426:
    case 516:
    case 522:
    case 526:
      result = 0xD000000000000038;
      break;
    case 108:
    case 139:
    case 202:
    case 525:
    case 588:
    case 632:
      result = 0xD00000000000003BLL;
      break;
    case 110:
    case 111:
    case 117:
    case 228:
      result = 0xD00000000000001ALL;
      break;
    case 113:
      result = 0xD000000000000014;
      break;
    case 114:
    case 276:
      result = 0xD000000000000057;
      break;
    case 118:
    case 204:
    case 207:
      result = 0xD00000000000001DLL;
      break;
    case 120:
    case 289:
    case 560:
      result = 0xD000000000000018;
      break;
    case 136:
    case 342:
    case 349:
    case 437:
    case 465:
    case 466:
      result = 0xD000000000000042;
      break;
    case 142:
    case 234:
    case 256:
    case 312:
    case 347:
    case 438:
      result = 0xD000000000000031;
      break;
    case 148:
      result = 0xD000000000000035;
      break;
    case 160:
      result = 0xD00000000000003CLL;
      break;
    case 162:
      result = 0xD00000000000003CLL;
      break;
    case 163:
      result = 0xD00000000000003CLL;
      break;
    case 165:
    case 166:
    case 353:
    case 354:
    case 355:
    case 503:
    case 505:
      result = 0xD000000000000058;
      break;
    case 171:
    case 172:
      result = 0xD00000000000005ELL;
      break;
    case 177:
    case 295:
    case 311:
    case 350:
    case 363:
    case 428:
    case 546:
      result = 0xD000000000000045;
      break;
    case 179:
      result = 0x544E414E494D4F44;
      break;
    case 187:
    case 203:
    case 217:
    case 279:
    case 517:
    case 519:
    case 557:
    case 558:
    case 565:
    case 600:
    case 619:
      result = 0xD00000000000002FLL;
      break;
    case 192:
    case 201:
    case 224:
    case 226:
    case 251:
    case 281:
    case 553:
    case 597:
    case 598:
      result = 0xD000000000000047;
      break;
    case 195:
    case 196:
    case 273:
    case 323:
    case 417:
    case 473:
    case 487:
    case 549:
    case 573:
      result = 0xD00000000000002BLL;
      break;
    case 199:
      result = 0xD000000000000060;
      break;
    case 200:
    case 220:
    case 299:
    case 330:
    case 404:
    case 405:
    case 406:
    case 432:
      result = 0xD000000000000029;
      break;
    case 205:
    case 209:
    case 345:
    case 463:
    case 621:
      result = 0xD000000000000021;
      break;
    case 210:
      result = 0x44495F45434146;
      break;
    case 212:
      result = 0xD00000000000005ALL;
      break;
    case 214:
      result = 0xD000000000000069;
      break;
    case 215:
    case 274:
    case 275:
    case 430:
    case 479:
    case 507:
    case 575:
    case 633:
      result = 0xD000000000000040;
      break;
    case 219:
    case 282:
    case 309:
    case 396:
    case 397:
    case 455:
    case 480:
    case 481:
      result = 0xD000000000000035;
      break;
    case 230:
    case 231:
    case 232:
      result = 0x545F574823545452;
      break;
    case 241:
      result = 0xD00000000000003DLL;
      break;
    case 243:
      result = 0xD00000000000003CLL;
      break;
    case 247:
    case 325:
    case 576:
    case 577:
      result = 0xD000000000000054;
      break;
    case 248:
      result = 0x5845545245564F48;
      break;
    case 253:
      result = 0xD00000000000003CLL;
      break;
    case 259:
    case 270:
    case 538:
    case 562:
    case 563:
    case 618:
      result = 0xD000000000000033;
      break;
    case 261:
    case 319:
      result = 0xD00000000000002CLL;
      break;
    case 262:
    case 335:
      result = 0xD00000000000004CLL;
      break;
    case 280:
      result = 0xD00000000000005DLL;
      break;
    case 292:
    case 337:
    case 470:
    case 513:
    case 515:
      result = 0xD00000000000001FLL;
      break;
    case 293:
      result = 0x4452414F4259454BLL;
      break;
    case 296:
      result = 0xD00000000000003CLL;
      break;
    case 300:
    case 327:
      result = 0xD000000000000050;
      break;
    case 303:
    case 497:
    case 612:
    case 634:
      result = 0xD00000000000001BLL;
      break;
    case 331:
    case 332:
      result = 0xD000000000000077;
      break;
    case 336:
    case 358:
    case 367:
    case 460:
    case 528:
    case 529:
    case 582:
    case 584:
    case 586:
    case 589:
      result = 0xD00000000000003CLL;
      break;
    case 346:
      result = 0xD00000000000005FLL;
      break;
    case 351:
    case 492:
      result = 0xD000000000000017;
      break;
    case 352:
      v1 = 0x4E4F49544F4DLL;
      goto LABEL_52;
    case 359:
      result = 0x4D5F434954504148;
      break;
    case 364:
      result = 0xD00000000000004CLL;
      break;
    case 377:
    case 401:
    case 518:
    case 568:
    case 602:
    case 603:
    case 624:
      result = 0xD000000000000027;
      break;
    case 379:
    case 410:
    case 521:
      result = 0xD000000000000014;
      break;
    case 382:
      result = 0xD000000000000015;
      break;
    case 392:
      result = 0xD00000000000003BLL;
      break;
    case 398:
      result = 0xD000000000000080;
      break;
    case 399:
      result = 0xD00000000000007ELL;
      break;
    case 412:
    case 564:
    case 625:
    case 626:
    case 627:
      result = 0xD000000000000057;
      break;
    case 415:
    case 433:
    case 439:
      result = 0xD000000000000055;
      break;
    case 416:
      result = 0xD000000000000065;
      break;
    case 421:
      result = 0xD00000000000001ALL;
      break;
    case 434:
    case 435:
    case 566:
      result = 5526610;
      break;
    case 447:
      result = 0xD00000000000004ELL;
      break;
    case 453:
      result = 0xD00000000000002FLL;
      break;
    case 464:
    case 551:
    case 554:
      result = 0xD000000000000010;
      break;
    case 472:
      result = 0xD00000000000001DLL;
      break;
    case 475:
    case 476:
    case 477:
      result = 0x545F575323545452;
      break;
    case 489:
      result = 0xD000000000000090;
      break;
    case 490:
    case 491:
      result = 0xD000000000000039;
      break;
    case 496:
      result = 0xD00000000000001ELL;
      break;
    case 499:
      result = 0xD000000000000029;
      break;
    case 502:
      result = 0xD000000000000064;
      break;
    case 514:
      v1 = 0x484345455053;
LABEL_52:
      result = v1 & 0xFFFFFFFFFFFFLL | 0x545F000000000000;
      break;
    case 523:
      result = 0xD000000000000056;
      break;
    case 548:
    case 616:
      result = 0xD00000000000005DLL;
      break;
    case 578:
    case 579:
      result = 0xD000000000000053;
      break;
    case 605:
      result = 0x45564F4543494F56;
      break;
    case 615:
      result = 0xD000000000000037;
      break;
    case 635:
      result = 0x5449545F4D4F4F5ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D0CD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D9828;

  return sub_1000D5854(a1);
}

uint64_t sub_1000D0D78(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000D980C;

  return sub_1000D5584();
}

uint64_t sub_1000D0E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000D0EDC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000D0EDC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1000D0FE0()
{
  result = qword_100446958;
  if (!qword_100446958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446958);
  }

  return result;
}

uint64_t sub_1000D1034(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000D10D8;

  return sub_1000D5D74();
}

uint64_t sub_1000D10D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_1000D11F0()
{
  result = qword_100446960;
  if (!qword_100446960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446960);
  }

  return result;
}

unint64_t sub_1000D1248()
{
  result = qword_100446968;
  if (!qword_100446968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446968);
  }

  return result;
}

unint64_t sub_1000D12A0()
{
  result = qword_100446970;
  if (!qword_100446970)
  {
    sub_1000044E0(&qword_100446978, qword_1002F7138);
    sub_1000D1248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446970);
  }

  return result;
}

uint64_t sub_1000D1324(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000D0FE0();
  *v5 = v2;
  v5[1] = sub_100023140;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000D13D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000D147C;

  return sub_1000D5B34();
}

uint64_t sub_1000D147C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  v5[1] = a2;
  v6 = *(v8 + 8);

  return v6();
}

unint64_t sub_1000D15A0()
{
  result = qword_100446980;
  if (!qword_100446980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446980);
  }

  return result;
}

uint64_t sub_1000D15F4(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100446A00, &qword_1002F76D0);
  __chkstk_darwin(v1);
  sub_1000C3A40();
  sub_1002D8780();
  v3._object = 0x8000000100373AF0;
  v3._countAndFlagsBits = 0xD000000000000037;
  sub_1002D8770(v3);
  swift_getKeyPath();
  sub_10000321C(&qword_100446A08, &qword_1002F76F8);
  sub_10002B6E4(&qword_100446A10, &qword_100446A18, &qword_1002F7700, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_1002D8760();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1002D8770(v4);
  return sub_1002D8790();
}

uint64_t sub_1000D1760()
{
  v0 = qword_100446900;

  return v0;
}

unint64_t sub_1000D179C()
{
  result = qword_100446988;
  if (!qword_100446988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446988);
  }

  return result;
}

unint64_t sub_1000D17F4()
{
  result = qword_100446990;
  if (!qword_100446990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446990);
  }

  return result;
}

unint64_t sub_1000D184C()
{
  result = qword_100446998;
  if (!qword_100446998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446998);
  }

  return result;
}

uint64_t sub_1000D18A0(uint64_t a1)
{
  sub_1000D970C();
  v2 = sub_1002D8730();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000D1910()
{
  result = qword_1004469A0;
  if (!qword_1004469A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469A0);
  }

  return result;
}

unint64_t sub_1000D1968()
{
  result = qword_1004469A8;
  if (!qword_1004469A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469A8);
  }

  return result;
}

unint64_t sub_1000D19C0()
{
  result = qword_1004469B0;
  if (!qword_1004469B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469B0);
  }

  return result;
}

unint64_t sub_1000D1A18()
{
  result = qword_1004469B8;
  if (!qword_1004469B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469B8);
  }

  return result;
}

uint64_t sub_1000D1AB0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10001EDB8(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000D1B9C(uint64_t a1)
{
  v2 = sub_1000C3A40();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000D1BEC()
{
  result = qword_1004469D0;
  if (!qword_1004469D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469D0);
  }

  return result;
}

uint64_t sub_1000D1C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100023140;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000D1D10(uint64_t a1)
{
  v2 = sub_1000D19C0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000D1D70(__int16 a1)
{
  result = 1953460082;
  switch(a1)
  {
    case 1:
    case 74:
    case 96:
    case 99:
    case 113:
    case 117:
    case 141:
    case 185:
    case 202:
    case 217:
    case 219:
    case 224:
    case 277:
    case 284:
    case 307:
    case 377:
    case 380:
    case 419:
    case 449:
    case 460:
    case 463:
    case 490:
    case 555:
    case 562:
    case 578:
    case 580:
    case 587:
    case 614:
    case 618:
    case 622:
      result = 0xD000000000000035;
      break;
    case 2:
    case 544:
      result = 0xD00000000000006FLL;
      break;
    case 3:
    case 19:
    case 83:
    case 116:
    case 118:
    case 123:
    case 195:
    case 204:
    case 207:
    case 215:
    case 238:
    case 280:
    case 375:
    case 401:
    case 416:
    case 447:
    case 458:
    case 589:
    case 630:
    case 633:
      result = 0xD000000000000039;
      break;
    case 4:
    case 208:
    case 577:
      result = 0xD00000000000003CLL;
      break;
    case 5:
    case 29:
    case 60:
    case 104:
    case 148:
    case 177:
    case 305:
    case 358:
    case 360:
    case 382:
    case 413:
    case 415:
    case 440:
    case 442:
    case 443:
    case 461:
    case 467:
    case 479:
    case 531:
    case 539:
    case 540:
    case 565:
    case 585:
    case 594:
    case 602:
    case 610:
      result = 0xD00000000000002DLL;
      break;
    case 6:
    case 22:
    case 23:
    case 63:
    case 72:
    case 73:
    case 75:
    case 77:
    case 125:
    case 128:
    case 133:
    case 138:
    case 175:
    case 176:
    case 222:
    case 265:
    case 297:
    case 318:
    case 323:
    case 343:
    case 374:
    case 422:
    case 455:
    case 457:
    case 523:
    case 556:
    case 576:
    case 588:
    case 619:
      result = 0xD000000000000033;
      break;
    case 7:
      result = 0xD000000000000031;
      break;
    case 8:
    case 221:
    case 267:
    case 298:
    case 335:
    case 342:
    case 345:
    case 353:
    case 387:
    case 456:
    case 551:
    case 595:
      result = 0xD000000000000021;
      break;
    case 9:
    case 32:
    case 53:
    case 65:
    case 66:
    case 127:
    case 163:
    case 165:
    case 191:
    case 203:
    case 214:
    case 233:
    case 240:
    case 252:
    case 270:
    case 308:
    case 309:
    case 311:
    case 367:
    case 383:
    case 385:
    case 400:
    case 410:
    case 426:
    case 427:
    case 487:
    case 581:
      result = 0xD00000000000003DLL;
      break;
    case 10:
    case 21:
    case 45:
    case 85:
    case 327:
    case 393:
    case 512:
      result = 0xD00000000000004BLL;
      break;
    case 11:
    case 26:
    case 42:
    case 81:
    case 108:
    case 156:
    case 179:
    case 193:
    case 206:
    case 213:
    case 216:
    case 229:
    case 268:
    case 273:
    case 274:
    case 303:
    case 366:
    case 386:
    case 396:
    case 418:
    case 424:
    case 439:
    case 446:
    case 472:
    case 473:
    case 499:
    case 517:
    case 535:
    case 569:
    case 572:
    case 624:
      result = 0xD000000000000025;
      break;
    case 12:
      result = 0xD000000000000031;
      break;
    case 13:
    case 18:
    case 43:
    case 78:
    case 120:
    case 155:
    case 170:
    case 184:
    case 201:
    case 241:
    case 243:
    case 281:
    case 283:
    case 361:
    case 368:
    case 372:
    case 384:
    case 404:
    case 405:
    case 453:
    case 459:
    case 492:
    case 495:
    case 506:
    case 536:
    case 597:
    case 623:
      result = 0xD00000000000002FLL;
      break;
    case 14:
    case 37:
    case 40:
    case 61:
    case 82:
    case 102:
    case 109:
    case 114:
    case 129:
    case 137:
    case 150:
    case 218:
    case 287:
    case 379:
    case 408:
    case 417:
    case 436:
    case 437:
    case 445:
    case 514:
    case 524:
    case 534:
    case 542:
    case 558:
    case 559:
    case 564:
    case 609:
      result = 0xD000000000000029;
      break;
    case 15:
      result = 0xD000000000000031;
      break;
    case 16:
    case 20:
    case 69:
    case 139:
    case 143:
    case 159:
    case 169:
    case 190:
    case 198:
    case 226:
    case 276:
    case 278:
    case 346:
    case 378:
    case 390:
    case 430:
    case 444:
    case 451:
    case 511:
    case 516:
    case 521:
    case 532:
    case 547:
    case 549:
    case 582:
    case 590:
    case 600:
      result = 0xD000000000000037;
      break;
    case 17:
    case 79:
    case 119:
    case 136:
    case 180:
    case 248:
    case 293:
    case 333:
    case 465:
    case 471:
    case 553:
    case 592:
    case 593:
    case 605:
    case 621:
      result = 0xD00000000000001FLL;
      break;
    case 24:
    case 51:
    case 140:
    case 319:
    case 389:
    case 503:
    case 505:
    case 507:
    case 599:
    case 601:
      result = 0xD000000000000045;
      break;
    case 25:
    case 93:
    case 112:
    case 242:
    case 313:
    case 326:
    case 348:
      result = 0xD00000000000004DLL;
      break;
    case 27:
    case 257:
    case 258:
    case 259:
    case 613:
      result = 0xD000000000000051;
      break;
    case 28:
    case 67:
    case 160:
    case 162:
    case 164:
    case 183:
    case 199:
    case 234:
    case 261:
    case 330:
    case 391:
    case 398:
    case 399:
    case 438:
    case 541:
    case 567:
    case 568:
    case 583:
      result = 0xD00000000000003BLL;
      break;
    case 30:
    case 31:
    case 36:
    case 50:
    case 64:
    case 68:
    case 111:
    case 205:
    case 250:
    case 256:
    case 301:
    case 347:
    case 448:
    case 485:
    case 493:
    case 509:
      result = 0xD000000000000041;
      break;
    case 33:
    case 47:
    case 49:
    case 98:
    case 625:
    case 626:
    case 627:
      result = 0xD00000000000004FLL;
      break;
    case 34:
    case 52:
    case 76:
    case 122:
    case 126:
    case 212:
    case 239:
    case 266:
    case 279:
    case 329:
    case 362:
    case 365:
    case 381:
    case 392:
    case 411:
    case 441:
    case 454:
    case 462:
    case 468:
    case 482:
    case 501:
    case 571:
    case 586:
    case 628:
      result = 0xD00000000000002BLL;
      break;
    case 35:
    case 54:
    case 151:
    case 189:
    case 194:
    case 200:
    case 209:
    case 237:
    case 255:
    case 294:
    case 310:
    case 314:
    case 363:
    case 394:
    case 452:
    case 500:
    case 525:
    case 545:
    case 603:
      result = 0xD00000000000003FLL;
      break;
    case 38:
    case 41:
    case 182:
    case 211:
    case 315:
    case 543:
    case 570:
      result = 0xD000000000000032;
      break;
    case 39:
      result = 0xD000000000000031;
      break;
    case 44:
    case 90:
    case 91:
    case 253:
      result = 0xD000000000000057;
      break;
    case 46:
    case 121:
    case 124:
    case 145:
    case 146:
    case 173:
    case 337:
    case 373:
    case 596:
      result = 0xD000000000000043;
      break;
    case 48:
    case 92:
    case 228:
    case 325:
      result = 0xD000000000000053;
      break;
    case 55:
    case 395:
      result = 0xD000000000000048;
      break;
    case 56:
    case 80:
    case 130:
    case 131:
    case 220:
    case 227:
    case 245:
    case 246:
    case 247:
    case 249:
    case 289:
    case 302:
    case 316:
    case 317:
    case 351:
    case 357:
    case 407:
    case 414:
    case 431:
    case 464:
    case 480:
    case 518:
    case 526:
    case 528:
    case 537:
    case 548:
    case 550:
    case 574:
    case 615:
    case 629:
    case 631:
      result = 0xD000000000000023;
      break;
    case 57:
      result = 0xD000000000000031;
      break;
    case 58:
    case 105:
    case 115:
    case 135:
    case 157:
    case 174:
    case 186:
    case 225:
    case 235:
    case 244:
    case 264:
    case 272:
    case 285:
    case 292:
    case 306:
    case 312:
    case 338:
    case 344:
    case 359:
    case 421:
    case 433:
    case 450:
    case 486:
    case 488:
    case 497:
    case 515:
    case 520:
    case 530:
    case 546:
    case 561:
    case 584:
    case 608:
      result = 0xD000000000000027;
      break;
    case 59:
    case 188:
    case 286:
    case 339:
    case 484:
    case 611:
      result = 0xD000000000000030;
      break;
    case 62:
    case 71:
    case 144:
    case 263:
    case 300:
    case 522:
    case 552:
    case 612:
      result = 0xD00000000000001DLL;
      break;
    case 70:
      result = 0xD000000000000031;
      break;
    case 84:
    case 86:
    case 101:
    case 161:
    case 254:
    case 260:
    case 328:
    case 425:
    case 575:
      result = 0xD000000000000047;
      break;
    case 87:
    case 171:
    case 269:
    case 371:
    case 420:
    case 489:
      result = 0xD00000000000001BLL;
      break;
    case 88:
      result = 0xD000000000000031;
      break;
    case 89:
      result = 0xD000000000000067;
      break;
    case 94:
    case 110:
    case 632:
      result = 0xD00000000000005BLL;
      break;
    case 95:
      result = 0xD000000000000059;
      break;
    case 97:
    case 142:
    case 251:
    case 282:
    case 321:
    case 364:
    case 403:
    case 504:
    case 513:
      result = 0xD000000000000049;
      break;
    case 100:
    case 491:
    case 496:
    case 563:
    case 579:
      result = 0xD00000000000003ELL;
      break;
    case 103:
    case 172:
    case 476:
      result = 0xD000000000000024;
      break;
    case 106:
    case 154:
    case 483:
      result = 0xD000000000000034;
      break;
    case 107:
      result = 0xD000000000000031;
      break;
    case 132:
      result = 0xD000000000000022;
      break;
    case 134:
    case 288:
    case 336:
    case 432:
    case 494:
    case 502:
    case 560:
      result = 0xD000000000000017;
      break;
    case 147:
      result = 0xD000000000000031;
      break;
    case 149:
    case 322:
    case 324:
      result = 0xD000000000000055;
      break;
    case 152:
      result = 0xD000000000000031;
      break;
    case 153:
    case 295:
    case 332:
    case 356:
      result = 0xD00000000000003ALL;
      break;
    case 158:
      result = 0xD000000000000031;
      break;
    case 166:
    case 402:
      result = 0xD000000000000046;
      break;
    case 167:
      result = 0xD000000000000031;
      break;
    case 168:
      result = 0xD000000000000031;
      break;
    case 178:
      result = 0xD000000000000031;
      break;
    case 181:
    case 262:
    case 271:
    case 290:
    case 304:
    case 334:
    case 429:
    case 466:
      result = 0xD000000000000028;
      break;
    case 187:
      result = 0xD000000000000031;
      break;
    case 192:
    case 352:
    case 370:
    case 478:
    case 510:
    case 538:
    case 573:
    case 607:
    case 620:
      result = 0xD000000000000019;
      break;
    case 196:
    case 197:
    case 369:
    case 598:
      result = 0xD000000000000038;
      break;
    case 210:
      result = 0xD000000000000031;
      break;
    case 223:
      result = 0xD000000000000026;
      break;
    case 230:
    case 232:
    case 475:
    case 477:
    case 508:
    case 606:
      result = 0xD00000000000001CLL;
      break;
    case 231:
      result = 0xD000000000000020;
      break;
    case 236:
    case 354:
    case 498:
      result = 0xD00000000000002ALL;
      break;
    case 275:
    case 397:
    case 406:
      result = 0xD00000000000002ELL;
      break;
    case 291:
    case 296:
    case 299:
    case 320:
    case 331:
    case 340:
    case 341:
    case 355:
    case 388:
    case 412:
    case 423:
    case 428:
    case 470:
    case 474:
    case 519:
    case 527:
    case 554:
    case 557:
    case 591:
    case 604:
    case 634:
      result = 0xD000000000000031;
      break;
    case 349:
    case 376:
      result = 0xD000000000000042;
      break;
    case 350:
    case 533:
      result = 0xD000000000000040;
      break;
    case 409:
    case 481:
    case 529:
      result = 0xD00000000000002CLL;
      break;
    case 434:
    case 566:
      result = 0xD000000000000011;
      break;
    case 435:
    case 469:
      result = 0xD000000000000015;
      break;
    case 616:
      result = 0xD000000000000061;
      break;
    case 617:
      result = 0xD000000000000069;
      break;
    case 635:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D4AB8(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v3 = sub_1000D1D70(*a1);
  v5 = v4;
  if (v3 == sub_1000D1D70(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1002D8E40();
  }

  return v8 & 1;
}

unint64_t sub_1000D4B44()
{
  result = qword_1004469D8;
  if (!qword_1004469D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469D8);
  }

  return result;
}

Swift::Int sub_1000D4B98()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1000D1D70(v1);
  sub_1002D8D40();

  return sub_1002D8E70();
}

uint64_t sub_1000D4BFC(uint64_t a1)
{
  sub_1000D1D70(*v1);
  sub_1002D8D40();
}

Swift::Int sub_1000D4C50(uint64_t a1)
{
  v2 = *v1;
  sub_1002D8E50();
  sub_1000D1D70(v2);
  sub_1002D8D40();

  return sub_1002D8E70();
}

uint64_t sub_1000D4CB0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1000D5EEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000D4CE0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000D1D70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D4D68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _WORD *a3@<X8>)
{

  result = sub_1000D5EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D4DB0()
{
  v2 = sub_1000CDC88(*v0);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t getEnumTagSinglePayload for AccessibilityDynamicDestination(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD85)
  {
    goto LABEL_17;
  }

  if (a2 + 635 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 635 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 635;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 635;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 635;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27C;
  v8 = v6 - 636;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AccessibilityDynamicDestination(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 635 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 635 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD85)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD84)
  {
    v6 = ((a2 - 64901) >> 16) + 1;
    *result = a2 + 635;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 635;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

__n128 sub_1000D4F94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000D4FA0(uint64_t a1, int a2)
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

uint64_t sub_1000D4FE8(uint64_t result, int a2, int a3)
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

char *sub_1000D5044(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D5084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D5064(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D5190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D5084(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000321C(&qword_100446A28, &qword_1002F7728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000D5190(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000321C(&qword_100446A20, &qword_1002F7718);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_1000D528C()
{
  v18 = sub_1002D87A0();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_10000321C(&qword_100446A30, &qword_1002F7748);
  sub_1002D88F0();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = sub_1002D8570();
  v19 = 0;
  v20 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  sub_1000C3A40();
  return sub_1002D85E0();
}

void sub_1000D55A0()
{
  v0 = 0;
  while (1)
  {
    v3 = *(&off_10041E9C8 + v0 + 16);
    v4 = sub_1000D1D5C(v3);
    v5 = *(v4 + 16);

    if (v5)
    {
      break;
    }

LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000D5064(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v2 = *(&_swiftEmptyArrayStorage + 2);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    if (v2 >= v1 >> 1)
    {
      sub_1000D5064((v1 > 1), v2 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v2 + 1;
    *(&_swiftEmptyArrayStorage + v2 + 16) = v3;
LABEL_5:
    if (++v0 == 636)
    {
      v12 = *(&_swiftEmptyArrayStorage + 2);
      if (v12)
      {
        sub_1000D5044(0, v12, 0);
        v13 = 32;
        v14 = &_swiftEmptyArrayStorage;
        do
        {
          v15 = *(&_swiftEmptyArrayStorage + v13);
          sub_10000321C(&qword_100446A18, &qword_1002F7700);
          swift_allocObject();
          v16 = sub_1002D8880();
          v23 = v14;
          v18 = v14[2];
          v17 = v14[3];
          if (v18 >= v17 >> 1)
          {
            v20 = v16;
            sub_1000D5044((v17 > 1), v18 + 1, 1);
            v16 = v20;
            v14 = v23;
          }

          v14[2] = v18 + 1;
          v19 = &v14[2 * v18];
          *(v19 + 16) = v15;
          *(v19 + 5) = v16;
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      else
      {

        v14 = &_swiftEmptyArrayStorage;
      }

      v21 = *(v22 + 8);

      v21(v14);
      return;
    }
  }

  v6 = v4 + 40;
  v7 = -*(v4 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {

      goto LABEL_13;
    }

    if (++v8 >= *(v4 + 16))
    {
      break;
    }

    v9 = v6 + 16;

    v10 = sub_1002D8D00();

    v11 = AXHasCapability();

    v6 = v9;
    if ((v11 & 1) == 0)
    {

      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_1000D5874()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v26 = v1 + 32;
    while (1)
    {
      v6 = *(v26 + 2 * v3);
      v7 = sub_1000D1D5C(v6);
      v8 = *(v7 + 16);

      if (v8)
      {
        break;
      }

LABEL_14:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000D5064(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v5 = *(&_swiftEmptyArrayStorage + 2);
      v4 = *(&_swiftEmptyArrayStorage + 3);
      if (v5 >= v4 >> 1)
      {
        sub_1000D5064((v4 > 1), v5 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
      *(&_swiftEmptyArrayStorage + v5 + 16) = v6;
LABEL_6:
      if (++v3 == v2)
      {
        goto LABEL_16;
      }
    }

    v9 = v7 + 40;
    v10 = -*(v7 + 16);
    v11 = -1;
    while (1)
    {
      if (v10 + v11 == -1)
      {

        goto LABEL_14;
      }

      if (++v11 >= *(v7 + 16))
      {
        break;
      }

      v12 = v9 + 16;

      v13 = sub_1002D8D00();

      v14 = AXHasCapability();

      v9 = v12;
      if ((v14 & 1) == 0)
      {

        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v15 = *(&_swiftEmptyArrayStorage + 2);
    if (v15)
    {
      sub_1000D5044(0, v15, 0);
      v16 = 32;
      v17 = &_swiftEmptyArrayStorage;
      do
      {
        v18 = *(&_swiftEmptyArrayStorage + v16);
        sub_10000321C(&qword_100446A18, &qword_1002F7700);
        swift_allocObject();
        v19 = sub_1002D8880();
        v27 = v17;
        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          v23 = v19;
          sub_1000D5044((v20 > 1), v21 + 1, 1);
          v19 = v23;
          v17 = v27;
        }

        v17[2] = v21 + 1;
        v22 = &v17[2 * v21];
        *(v22 + 16) = v18;
        *(v22 + 5) = v19;
        v16 += 2;
        --v15;
      }

      while (v15);
    }

    else
    {

      v17 = &_swiftEmptyArrayStorage;
    }

    v24 = *(v25 + 8);

    v24(v17);
  }
}

void sub_1000D5B50()
{
  v0 = 0;
  while (1)
  {
    v3 = *(&off_10041E9C8 + v0 + 16);
    v4 = sub_1000D1D5C(v3);
    v5 = *(v4 + 16);

    if (v5)
    {
      break;
    }

LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000D5064(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v2 = *(&_swiftEmptyArrayStorage + 2);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    if (v2 >= v1 >> 1)
    {
      sub_1000D5064((v1 > 1), v2 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v2 + 1;
    *(&_swiftEmptyArrayStorage + v2 + 16) = v3;
LABEL_5:
    if (++v0 == 636)
    {
      if (*(&_swiftEmptyArrayStorage + 2))
      {
        v12 = *(&_swiftEmptyArrayStorage + 16);

        sub_10000321C(&qword_100446A18, &qword_1002F7700);
        swift_allocObject();
        v13 = sub_1002D8880();
      }

      else
      {

        v12 = 0;
        v13 = 0;
      }

      v14 = *(v15 + 8);

      v14(v12, v13);
      return;
    }
  }

  v6 = v4 + 40;
  v7 = -*(v4 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {

      goto LABEL_13;
    }

    if (++v8 >= *(v4 + 16))
    {
      break;
    }

    v9 = v6 + 16;

    v10 = sub_1002D8D00();

    v11 = AXHasCapability();

    v6 = v9;
    if ((v11 & 1) == 0)
    {

      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1000D5D90()
{
  sub_1000D5044(0, 636, 0);
  v1 = &stru_100000020;
  v2 = &_swiftEmptyArrayStorage;
  do
  {
    v3 = *(&off_10041E9C8 + v1);
    sub_10000321C(&qword_100446A18, &qword_1002F7700);
    swift_allocObject();
    v4 = sub_1002D8880();
    v11 = v2;
    v6 = v2[2];
    v5 = v2[3];
    if (v6 >= v5 >> 1)
    {
      v8 = v4;
      sub_1000D5044((v5 > 1), v6 + 1, 1);
      v4 = v8;
      v2 = v11;
    }

    v2[2] = v6 + 1;
    v7 = &v2[2 * v6];
    *(v7 + 16) = v3;
    *(v7 + 5) = v4;
    v1 += 2;
  }

  while (v1 != 1304);
  v9 = *(v0 + 8);

  return v9(v2);
}

uint64_t sub_1000D5EEC(uint64_t a1, void *a2)
{
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  sub_10000321C(&qword_1004469F0, &qword_1002F76B8);
  v2 = swift_allocObject();
  sub_10001EA94(v2, 636);
  *v3 = "root";
  *(v3 + 8) = 4;
  *(v3 + 48) = "ACCESSIBILITY_READER_AUTOMATICALLY_START_SPEAKING_ACCESSIBILITY_READER_AUTOMATICALLY_START_SPEAKING_DESCRIPTION";
  *(v3 + 72) = "ACCESSIBILITY_SHORTCUT_ACCESSIBILITY_SHORTCUT_DESCRIPTION";
  *(v3 + 96) = "ACCESSIBILITY_SHORTCUT_GA_ACCESSIBILITY_SHORTCUT_DESCRIPTION";
  *(v3 + 120) = "ACTIONS_FEEDBACK_ACTIONS_FEEDBACK_DESCRIPTION";
  *(v3 + 144) = "ACTION_CONFIRMATION_ACTION_CONFIRMATION_DESCRIPTION";
  *(v3 + 168) = "ACTIVE_PUNCTUATION_ACTIVE_PUNCTUATION_DESCRIPTION";
  *(v3 + 192) = "ACTIVITIES_ACTIVITIES_DESCRIPTION";
  *(v3 + 216) = "ADAPTIVE_VOICE_SHORTCUTS_ADAPTIVE_VOICE_SHORTCUTS_DESCRIPTION";
  *(v3 + 240) = "ADAPTIVE_VOICE_SHORTCUTS_SET_UP_ADAPTIVE_VOICE_SHORTCUTS_SET_UP_DESCRIPTION";
  *(v3 + 264) = "ADD_ACTIVITY_ADD_ACTIVITY_DESCRIPTION";
  *(v3 + 288) = "ADD_AUDIO_IN_CALLS_ADD_AUDIO_IN_CALLS_DESCRIPTION";
  *(v3 + 312) = "ADD_BRAILLE_TABLE_ADD_BRAILLE_TABLE_DESCRIPTION";
  *(v3 + 336) = "ADD_NEW_SWITCH_ADD_NEW_SWITCH_DESCRIPTION";
  *(v3 + 360) = "ADD_NEW_SWITCH_SET_ADD_NEW_SWITCH_SET_DESCRIPTION";
  *(v3 + 384) = "ADD_PUNCTUATION_GROUP_ADD_PUNCTUATION_GROUP_DESCRIPTION";
  *(v3 + 408) = "ADD_VOICE_ADD_VOICE_DESCRIPTION";
  *(v3 + 432) = "ADJUST_ZOOM_LEVEL_ADJUST_ZOOM_LEVEL_DESCRIPTION";
  *(v3 + 456) = "AIRPODS_AUDIO_SETTINGS_AIRPODS_AUDIO_SETTINGS_DESCRIPTION";
  *(v3 + 480) = "AIRPODS_FOLLOW_IPHONE_AIRPODS_FOLLOW_IPHONE_DESCRIPTION";
  *(v3 + 504) = "AIRPODS_PRESS_AND_HOLD_DURATION_AIRPODS_PRESS_AND_HOLD_DURATION_DESCRIPTION";
  *(v3 + 528) = "AIRPODS_PRESS_SPEED_AIRPODS_PRESS_SPEED_DESCRIPTION";
  *(v3 + 552) = "AIRPODS_TONE_VOLUME_AIRPODS_TONE_VOLUME_DESCRIPTION";
  *(v3 + 576) = "ALIGN_DISPLAYS_AUTOMATICALLY_ALIGN_DISPLAYS_AUTOMATICALLY_DESCRIPTION";
  *(v3 + 600) = "ALLOW_APPS_TO_ADD_AUDIO_IN_CALLS_ALLOW_APPS_TO_ADD_AUDIO_IN_CALLS_DESCRIPTION";
  *(v3 + 624) = "ALL_COMMANDS_ALL_COMMANDS_DESCRIPTION";
  *(v3 + 648) = "ALWAYS_ALLOW_SIRI_VOICE_ACTIVATION_ALWAYS_ALLOW_SIRI_VOICE_ACTIVATION_DESCRIPTION";
  *(v3 + 672) = "ALWAYS_PLAY_SIRI_SOUNDS_ALWAYS_PLAY_SIRI_SOUNDS_DESCRIPTION";
  *(v3 + 696) = "ALWAYS_SHOW_MENU_ALWAYS_SHOW_MENU_DESCRIPTION";
  *(v3 + 720) = "ALWAYS_SHOW_VOLUME_CONTROL_ALWAYS_SHOW_VOLUME_CONTROL_DESCRIPTION";
  *(v3 + 744) = "ALWAYS_SPEAK_NOTIFICATIONS_ALWAYS_SPEAK_NOTIFICATIONS_DESCRIPTION";
  *(v3 + 768) = "ALWAYS_TAP_KEYBOARD_KEYS_ALWAYS_TAP_KEYBOARD_KEYS_DESCRIPTION";
  *(v3 + 792) = "ANNOUNCE_NOTIFICATIONS_ON_SPEAKER_ANNOUNCE_NOTIFICATIONS_ON_SPEAKER_DESCRIPTION";
  *(v3 + 816) = "APPLE_TV_REMOTE_APPLE_TV_REMOTE_DESCRIPTION";
  *(v3 + 840) = "APPLE_WATCH_REMOTE_SCREEN_APPLE_WATCH_REMOTE_SCREEN_DESCRIPTION";
  *(v3 + 864) = "APPLY_TO_VIDEO_PASSTHROUGH_APPLY_TO_VIDEO_PASSTHROUGH_DESCRIPTION";
  *(v3 + 888) = "APP_FEEDBACK_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 912) = "APP_FEEDBACK_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 936) = "APP_HOVER_FEEDBACK_APP_HOVER_FEEDBACK_DESCRIPTION";
  *(v3 + 960) = "ASSISTIVETOUCH_ASSISTIVETOUCH_DESCRIPTION";
  *(v3 + 984) = "ASSISTIVETOUCH_ASSISTIVETOUCH_VISIONOS_DESCRIPTION";
  *(v3 + 1008) = "AST_KEYBOARD_AST_KEYBOARD_DESCRIPTION";
  *(v3 + 1032) = "AST_THREE_D_TOUCH_AST_THREE_D_TOUCH_DESCRIPTION";
  *(v3 + 1056) = "AST_USE_EXTENDED_KEYBOARD_PREDICTIONS_AST_USE_EXTENDED_KEYBOARD_PREDICTIONS_DESCRIPTION";
  *(v3 + 1064) = 87;
  *(v3 + 1080) = "AST_VIRTUAL_TRACKPAD_APPEARANCE_AST_VIRTUAL_TRACKPAD_APPEARANCE_DESCRIPTION";
  *(v3 + 1104) = "AST_VIRTUAL_TRACKPAD_BORDER_AST_VIRTUAL_TRACKPAD_BORDER_DESCRIPTION";
  *(v3 + 1128) = "AST_VIRTUAL_TRACKPAD_BORDER_COLOR_AST_VIRTUAL_TRACKPAD_BORDER_COLOR_DESCRIPTION";
  *(v3 + 1152) = "AST_VIRTUAL_TRACKPAD_BORDER_OPACITY_AST_VIRTUAL_TRACKPAD_BORDER_OPACITY_DESCRIPTION";
  *(v3 + 1176) = "AST_VIRTUAL_TRACKPAD_BORDER_WIDTH_AST_VIRTUAL_TRACKPAD_BORDER_WIDTH_DESCRIPTION";
  *(v3 + 1200) = "AST_VIRTUAL_TRACKPAD_COLOR_AST_VIRTUAL_TRACKPAD_COLOR_DESCRIPTION";
  *(v3 + 1224) = "AST_VIRTUAL_TRACKPAD_OPACITY_AST_VIRTUAL_TRACKPAD_OPACITY_DESCRIPTION";
  *(v3 + 1248) = "ATTENTION_AWARE_ATTENTION_AWARE_DESCRIPTION";
  *(v3 + 1272) = "ATTENTION_AWARE_FEATURES_ATTENTION_AWARE_FEATURES_DESCRIPTION";
  *(v3 + 1296) = "AT_SHOW_ONSCREEN_KEYBOARD_AT_SHOW_ONSCREEN_KEYBOARD_DESCRIPTION";
  *(v3 + 1320) = "AT_SHOW_ONSCREEN_KEYBOARD_AT_SHOW_ONSCREEN_KEYBOARD_VISIONOS_DESCRIPTION";
  *(v3 + 1344) = "AUDIOVISUAL_AUDIOVISUAL_DESCRIPTION";
  *(v3 + 1368) = "AUDIO_DESCRIPTIONS_AUDIO_DESCRIPTIONS_DESCRIPTION";
  *(v3 + 1392) = "AUDIO_DUCKING_AUDIO_DUCKING_DESCRIPTION";
  *(v3 + 1416) = "AUTOANSWER_CALLS_AUTOANSWER_CALLS_AV_DESCRIPTION";
  *(v3 + 1440) = "AUTOANSWER_CALLS_AUTOANSWER_CALLS_DESCRIPTION";
  *(v3 + 1464) = "AUTOBRIGHTNESS_AUTOBRIGHTNESS_DESCRIPTION";
  *(v3 + 1488) = "AUTOHIDE_AUTOHIDE_DESCRIPTION";
  *(v3 + 1512) = "AUTOHIDE_FOCUS_RING_AUTOHIDE_FOCUS_RING_DESCRIPTION";
  *(v3 + 1536) = "AUTOMATICALLY_HIDE_POINTER_AUTOMATICALLY_HIDE_POINTER_DESCRIPTION";
  *(v3 + 1560) = "AUTOPLAY_ANIMATED_IMAGES_AUTOPLAY_ANIMATED_IMAGES_DESCRIPTION";
  *(v3 + 1584) = "AUTOPLAY_MESSAGE_EFFECTS_AUTOPLAY_MESSAGE_EFFECTS_DESCRIPTION";
  *(v3 + 1608) = "AUTOPLAY_VIDEO_PREVIEWS_AUTOPLAY_VIDEO_PREVIEWS_DESCRIPTION";
  *(v3 + 1632) = "AUTOSELECT_SPEAKER_IN_CALL_AUTOSELECT_SPEAKER_IN_CALL_DESCRIPTION";
  *(v3 + 1656) = "AUTO_ADVANCE_DURATION_AUTO_ADVANCE_DURATION_DESCRIPTION";
  *(v3 + 1680) = "AUTO_SCANNING_TIME_AUTO_SCANNING_TIME_DESCRIPTION";
  *(v3 + 1704) = "BACK_TAP_BACK_TAP_DESCRIPTION";
  *(v3 + 1728) = "BACK_TAP_DOUBLE_TAP_BACK_TAP_DOUBLE_TAP_DESCRIPTION";
  *(v3 + 1752) = "BACK_TAP_TRIPLE_TAP_BACK_TAP_TRIPLE_TAP_DESCRIPTION";
  *(v3 + 1776) = "BANNER_NOTIFICATIONS_BANNER_NOTIFICATIONS_DESCRIPTION";
  *(v3 + 1800) = "BG_SOUNDS_EQUALIZER_BG_SOUNDS_EQUALIZER_DESCRIPTION";
  *(v3 + 1824) = "BG_SOUNDS_TIMER_BG_SOUNDS_TIMER_DESCRIPTION";
  *(v3 + 1848) = "BLUETOOTH_DEVICES_AST_BLUETOOTH_DEVICES_DESCRIPTION";
  *(v3 + 1864) = 2;
  *(v3 + 1872) = "BLUETOOTH_DEVICES_BLUETOOTH_DEVICES_DESCRIPTION";
  *(v3 + 1888) = 2;
  *(v3 + 1896) = "BOLD_TEXT_BOLD_TEXT_DESCRIPTION";
  *(v3 + 1904) = 31;
  *(v3 + 1912) = 2;
  *(v3 + 1920) = "BOTTOM_LEFT_BOTTOM_LEFT_DESCRIPTION";
  *(v3 + 1928) = 35;
  *(v3 + 1936) = 2;
  *(v3 + 1944) = "BOTTOM_RIGHT_BOTTOM_RIGHT_DESCRIPTION";
  *(v3 + 1952) = 37;
  *(v3 + 1960) = 2;
  *(v3 + 1968) = "BRAILLE_ACCESS_BRAILLE_ACCESS_DESCRIPTION";
  *(v3 + 1976) = 41;
  *(v3 + 1984) = 2;
  *(v3 + 1992) = "BRAILLE_ALERT_MESSAGES_BRAILLE_ALERT_MESSAGES_DESCRIPTION";
  *(v3 + 2000) = 57;
  *(v3 + 2008) = 2;
  *(v3 + 2016) = "BRAILLE_ALERT_MESSAGES_ENABLE_BRAILLE_ALERT_MESSAGES_ENABLE_DESCRIPTION";
  *(v3 + 2024) = 71;
  *(v3 + 2040) = "BRAILLE_ALERT_MESSAGES_INFINITE_BRAILLE_ALERT_MESSAGES_INFINITE_DESCRIPTION";
  *(v3 + 2064) = "BRAILLE_AUTOMATIC_TRANSLATION_BRAILLE_AUTOMATIC_TRANSLATION_DESCRIPTION";
  *(v3 + 2072) = 71;
  *(v3 + 2080) = 2;
  *(v3 + 2088) = "BRAILLE_BRAILLE_DESCRIPTION";
  *(v3 + 2112) = "BRAILLE_FORMATTING_BRAILLE_FORMATTING_DESCRIPTION";
  *(v3 + 2120) = 49;
  *(v3 + 2128) = 2;
  *(v3 + 2136) = "BRAILLE_GESTURES_AUTO_ACTIVATE_ON_TEXT_FIELDS_BRAILLE_GESTURES_AUTO_ACTIVATE_ON_TEXT_FIELDS_DESCRIPTION";
  *(v3 + 2144) = 103;
  *(v3 + 2152) = 2;
  *(v3 + 2160) = "BRAILLE_GESTURES_CHOOSE_BRAILLE_TABLE_BRAILLE_GESTURES_CHOOSE_BRAILLE_TABLE_DESCRIPTION";
  *(v3 + 2168) = 87;
  *(v3 + 2176) = 2;
  *(v3 + 2184) = "BRAILLE_GESTURES_DISPLAY_ENTERED_TEXT_BRAILLE_GESTURES_DISPLAY_ENTERED_TEXT_DESCRIPTION";
  *(v3 + 2192) = 87;
  *(v3 + 2200) = 2;
  *(v3 + 2208) = "BRAILLE_GESTURES_MODE_ANNOUNCEMENTS_BRAILLE_GESTURES_MODE_ANNOUNCEMENTS_DESCRIPTION";
  *(v3 + 2216) = 83;
  *(v3 + 2224) = 2;
  *(v3 + 2232) = "BRAILLE_GESTURES_TYPING_FEEDBACK_BRAILLE_GESTURES_TYPING_FEEDBACK_DESCRIPTION";
  *(v3 + 2240) = 77;
  *(v3 + 2248) = 2;
  *(v3 + 2256) = "BRAILLE_GESTURES_TYPING_FEEDBACK_HAPTIC_BRAILLE_GESTURES_TYPING_FEEDBACK_HAPTIC_DESCRIPTION";
  *(v3 + 2264) = 91;
  *(v3 + 2272) = 2;
  *(v3 + 2280) = "BRAILLE_GESTURES_TYPING_FEEDBACK_SOUND_BRAILLE_GESTURES_TYPING_FEEDBACK_SOUND_DESCRIPTION";
  *(v3 + 2288) = 89;
  *(v3 + 2296) = 2;
  *(v3 + 2304) = "BRAILLE_INPUT_OUTPUT_BRAILLE_INPUT_OUTPUT_DESCRIPTION";
  *(v3 + 2312) = 53;
  *(v3 + 2320) = 2;
  *(v3 + 2328) = "BRAILLE_KEYBOARD_INPUT_COMMAND_BRAILLE_KEYBOARD_INPUT_COMMAND_DESCRIPTION";
  *(v3 + 2336) = 73;
  *(v3 + 2344) = 2;
  *(v3 + 2352) = "BRAILLE_MATCH_INPUT_OUTPUT_TABLES_BRAILLE_MATCH_INPUT_OUTPUT_TABLES_DESCRIPTION";
  *(v3 + 2360) = 79;
  *(v3 + 2376) = "BRAILLE_SCREEN_INPUT_BRAILLE_SCREEN_INPUT_DESCRIPTION";
  *(v3 + 2384) = 53;
  *(v3 + 2392) = 2;
  *(v3 + 2400) = "BRAILLE_SCREEN_INPUT_COMMANDS_BRAILLE_SCREEN_INPUT_DESCRIPTION";
  *(v3 + 2408) = 62;
  *(v3 + 2416) = 2;
  *(v3 + 2424) = "BRAILLE_SCREEN_KEYBOARD_INPUT_BRAILLE_SCREEN_KEYBOARD_INPUT_DESCRIPTION";
  *(v3 + 2432) = 71;
  *(v3 + 2440) = 2;
  *(v3 + 2448) = "BRAILLE_TABLES_BRAILLE_TABLES_DESCRIPTION";
  *(v3 + 2456) = 41;
  *(v3 + 2464) = 2;
  *(v3 + 2472) = "BRAILLE_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 2480) = 36;
  *(v3 + 2488) = 2;
  *(v3 + 2496) = "BRAILLE_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 2504) = 45;
  *(v3 + 2512) = 2;
  *(v3 + 2520) = "BUTTON_SHAPES_BUTTON_SHAPES_DESCRIPTION";
  *(v3 + 2528) = 39;
  *(v3 + 2536) = 2;
  *(v3 + 2544) = "CALL_AUDIO_ROUTING_CALL_AUDIO_ROUTING_AV_DESCRIPTION";
  *(v3 + 2552) = 52;
  *(v3 + 2568) = "CALL_AUDIO_ROUTING_CALL_AUDIO_ROUTING_DESCRIPTION";
  *(v3 + 2592) = "CALL_HANG_UP_CALL_HANG_UP_DESCRIPTION";
  *(v3 + 2616) = "CAMERA_CONTROL_CAMERA_CONTROL_DESCRIPTION";
  *(v3 + 2640) = "CAMERA_CONTROL_DOUBLE_LIGHT_PRESS_SPEED_CAMERA_CONTROL_DOUBLE_LIGHT_PRESS_SPEED_DESCRIPTION";
  *(v3 + 2664) = "CAMERA_CONTROL_LIGHT_PRESS_CAMERA_CONTROL_LIGHT_PRESS_DESCRIPTION";
  *(v3 + 2688) = "CAMERA_CONTROL_LIGHT_PRESS_FORCE_CAMERA_CONTROL_LIGHT_PRESS_FORCE_DESCRIPTION";
  *(v3 + 2712) = "CAMERA_CONTROL_SWIPE_CAMERA_CONTROL_SWIPE_DESCRIPTION";
  *(v3 + 2736) = "CAPITAL_LETTER_CAPITAL_LETTER_DESCRIPTION";
  *(v3 + 2760) = "CAPTION_PANEL_CAPTION_PANEL_DESCRIPTION";
  *(v3 + 2784) = "CHOOSE_BRAILLE_DISPLAY_CHOOSE_BRAILLE_DISPLAY_DESCRIPTION";
  *(v3 + 2808) = "CLARITYUI_ALLOW_SIRI_CLARITYUI_ALLOW_SIRI_DESCRIPTION";
  *(v3 + 2832) = "CLARITYUI_APPLICATIONS_CLARITYUI_APPLICATIONS_DESCRIPTION";
  *(v3 + 2856) = "CLARITYUI_CLARITYUI_DESCRIPTION";
  *(v3 + 2880) = "CLARITYUI_OPTIONS_CLARITYUI_OPTIONS_DESCRIPTION";
  *(v3 + 2904) = "CLARITYUI_PASSCODE_SETTINGS_CLARITYUI_PASSCODE_SETTINGS_DESCRIPTION";
  *(v3 + 2928) = "CLARITYUI_SETUP_CLARITYUI_SETUP_DESCRIPTION";
  *(v3 + 2952) = "CLARITYUI_SHOW_BATTERY_CLARITYUI_SHOW_BATTERY_DESCRIPTION";
  *(v3 + 2976) = "CLARITYUI_SHOW_NOTIFICATION_CLARITYUI_SHOW_NOTIFICATION_DESCRIPTION";
  *(v3 + 3000) = "CLARITYUI_SHOW_TIME_CLARITYUI_SHOW_TIME_DESCRIPTION";
  *(v3 + 3024) = "CLARITYUI_START_CLARITYUI_START_DESCRIPTION";
  *(v3 + 3048) = "CLARITYUI_VOLUME_BUTTONS_CLARITYUI_VOLUME_BUTTONS_DESCRIPTION";
  *(v3 + 3072) = "CLARITYUI_WALLPAPER_CLARITYUI_WALLPAPER_DESCRIPTION";
  *(v3 + 3096) = "CLASSIC_INVERT_CLASSIC_INVERT_DESCRIPTION";
  *(v3 + 3120) = "CLICK_SPEED_HOME_BUTTON_DESCRIPTION";
  *(v3 + 2560) = 2;
  *(v3 + 3144) = "CLICK_SPEED_SIDE_BUTTON_DESCRIPTION";
  *(v3 + 3168) = "CLICK_SPEED_TOP_BUTTON_DESCRIPTION";
  *(v3 + 3176) = 34;
  *(v3 + 3192) = "CLOSED_CAPTIONS_SDH_CLOSED_CAPTIONS_SDH_DESCRIPTION";
  *(v3 + 3216) = "COLOR_COLOR_DESCRIPTION";
  *(v3 + 3240) = "COLOR_FILTERS_COLOR_FILTERS_DESCRIPTION";
  *(v3 + 3264) = "COLOR_FKA_COLOR_DESCRIPTION_FKA";
  *(v3 + 3288) = "COMFORT_SOUNDS_COMFORT_SOUNDS_DESCRIPTION";
  *(v3 + 3312) = "COMFORT_SOUNDS_LOCK_COMFORT_SOUNDS_LOCK_DESCRIPTION";
  *(v3 + 3336) = "COMFORT_SOUNDS_MIXING_COMFORT_SOUNDS_MIXING_DESCRIPTION";
  *(v3 + 3360) = "COMFORT_SOUNDS_MIXING_VOLUME_COMFORT_SOUNDS_MIXING_VOLUME_DESCRIPTION";
  *(v3 + 3384) = "COMFORT_SOUNDS_SOUND_COMFORT_SOUNDS_SOUND_DESCRIPTION";
  *(v3 + 3408) = "COMFORT_SOUNDS_STOP_WITH_TIMER_COMFORT_SOUNDS_STOP_WITH_TIMER_DESCRIPTION";
  *(v3 + 3432) = "COMFORT_SOUNDS_VOLUME_COMFORT_SOUNDS_VOLUME_DESCRIPTION";
  *(v3 + 3456) = "COMMANDS_COMMANDS_DESCRIPTION";
  *(v3 + 3480) = "CONFIRM_WITH_ASSISTIVETOUCH_CONFIRM_WITH_ASSISTIVETOUCH_DESCRIPTION";
  *(v3 + 3504) = "CONFIRM_WITH_SWITCH_CONTROL_CONFIRM_WITH_SWITCH_CONTROL_DESCRIPTION";
  *(v3 + 3528) = "CONTAINER_FEEDBACK_CONTAINER_FEEDBACK_DESCRIPTION";
  *(v3 + 3552) = "CONTROLLER_COLOR_CONTROLLER_COLOR_DESCRIPTION";
  *(v3 + 3576) = "CONTROL_DEVICE_USING_BRAILLE_GESTURE_CONTROL_DEVICE_USING_BRAILLE_GESTURE_DESCRIPTION";
  *(v3 + 3600) = "CONTROL_NEARBY_CONTROL_NEARBY_DESCRIPTION";
  *(v3 + 3624) = "CREATE_NEW_CUSTOM_COMMAND_CREATE_NEW_CUSTOM_COMMAND_DESCRIPTION";
  *(v3 + 3648) = "CREATE_NEW_GESTURE_CREATE_NEW_GESTURE_DESCRIPTION";
  *(v3 + 3672) = "CREATE_NEW_GESTURE_CREATE_NEW_GESTURE_VISIONOS_DESCRIPTION";
  *(v3 + 3696) = "CREATE_NEW_GESTURE_SC_CREATE_NEW_GESTURE_DESCRIPTION";
  *(v3 + 3720) = "CREATE_NEW_RECIPE_CREATE_NEW_RECIPE_DESCRIPTION";
  *(v3 + 3744) = "CURSOR_COLOR_CURSOR_COLOR_DESCRIPTION";
  *(v3 + 3768) = "CURSOR_OUTPUT_CURSOR_OUTPUT_DESCRIPTION";
  *(v3 + 3792) = "CUSTOMIZE_COMMANDS_CUSTOMIZE_COMMANDS_DESCRIPTION";
  *(v3 + 3816) = "CUSTOMIZE_MENU_DEVICE_CUSTOMIZE_MENU_DEVICE_DESCRIPTION";
  *(v3 + 3840) = "CUSTOMIZE_MENU_GESTURES_CUSTOMIZE_MENU_GESTURES_DESCRIPTION";
  *(v3 + 3864) = "CUSTOMIZE_MENU_MEDIA_CONTROLS_CUSTOMIZE_MENU_MEDIA_CONTROLS_DESCRIPTION";
  *(v3 + 3888) = "CUSTOMIZE_MENU_SETTINGS_CUSTOMIZE_MENU_SETTINGS_DESCRIPTION";
  *(v3 + 3912) = "CUSTOMIZE_MENU_TOP_LEVEL_CUSTOMIZE_MENU_TOP_LEVEL_DESCRIPTION";
  *(v3 + 3936) = "CUSTOMIZE_MOUSE_BUTTONS_CUSTOMIZE_MOUSE_BUTTONS_DESCRIPTION";
  *(v3 + 3960) = "CUSTOMIZE_TOP_LEVEL_MENU_CUSTOMIZE_TOP_LEVEL_MENU_DESCRIPTION";
  *(v3 + 3984) = "CUSTOMIZE_TOP_LEVEL_MENU_CUSTOMIZE_TOP_LEVEL_MENU_VISIONOS_DESCRIPTION";
  *(v3 + 4008) = "CUSTOM_AUDIO_SETUP_CUSTOM_AUDIO_SETUP_DESCRIPTION";
  *(v3 + 4032) = "DELAY_UNTIL_REPEAT_DELAY_UNTIL_REPEAT_DESCRIPTION";
  *(v3 + 4056) = "DELETE_ALL_VOCABULARY_DELETE_ALL_VOCABULARY_DESCRIPTION";
  *(v3 + 4080) = "DELETION_FEEDBACK_DELETION_FEEDBACK_DESCRIPTION";
  *(v3 + 4104) = "DEVICES_DEVICES_DESCRIPTION";
  *(v3 + 4128) = "DEVICES_DEVICES_VISIONOS_DESCRIPTION";
  *(v3 + 4152) = "DIFFERENTIATE_WITHOUT_COLOR_DIFFERENTIATE_WITHOUT_COLOR_DESCRIPTION";
  *(v3 + 4176) = "DIGITAL_CROWN_DIGITAL_CROWN_DESCRIPTION";
  *(v3 + 4200) = "DIM_FLASHING_LIGHTS_DIM_FLASHING_LIGHTS_DESCRIPTION";
  *(v3 + 4224) = "DIRECTIONAL_BUTTONS_DIRECTIONAL_BUTTONS_DESCRIPTION";
  *(v3 + 4248) = "DISPLAY_AUTOLOCK_DISPLAY_AUTOLOCK_DESCRIPTION";
  *(v3 + 4272) = "DISPLAY__TEXT_SIZE_DISPLAY__TEXT_SIZE_DESCRIPTION";
  *(v3 + 4296) = "DOMINANT_EYE_DOMINANT_EYE_DESCRIPTION";
  *(v3 + 4320) = "DOUBLETAP_DOUBLETAP_DESCRIPTION";
  *(v3 + 4344) = "DOUBLETAP_DOUBLETAP_VISIONOS_DESCRIPTION";
  *(v3 + 4368) = "DOUBLETAP_TIMEOUT_AT_DOUBLETAP_TIMEOUT_DESCRIPTION";
  *(v3 + 4392) = "DOUBLETAP_TIMEOUT_AT_DOUBLETAP_TIMEOUT_DESCRIPTION_VISIONOS";
  *(v3 + 4416) = "DOUBLETAP_TIMEOUT_DOUBLETAP_TIMEOUT_DESCRIPTION";
  *(v3 + 4440) = "DOUBLE_PINCH_TIMEOUT_DOUBLE_PINCH_TIMEOUT_DESCRIPTION";
  *(v3 + 4464) = "DWELL_CONTROL_DWELL_CONTROL_DESCRIPTION";
  *(v3 + 4488) = "DWELL_CONTROL_DWELL_CONTROL_TOP_LEVEL_DESCRIPTION";
  *(v3 + 4512) = "DWELL_CONTROL_DWELL_CONTROL_VISIONOS_DESCRIPTION";
  *(v3 + 4536) = "DWELL_CONTROL_MENU_FOLLOW_DWELL_CONTROL_MENU_FOLLOW_DESCRIPTION";
  *(v3 + 4560) = "DWELL_CONTROL_TIMEOUT_DWELL_CONTROL_TIMEOUT_DESCRIPTION";
  *(v3 + 4584) = "EDIT_APPS_ON_HOME_SCREEN_EDIT_APPS_ON_HOME_SCREEN_DESCRIPTION";
  *(v3 + 4608) = "EMOJIS_EMOJIS_DESCRIPTION";
  *(v3 + 4632) = "EMOJI_SUFFIX_EMOJI_SUFFIX_DESCRIPTION";
  *(v3 + 4656) = "ENABLE_BLUETOOTH_ON_START_ENABLE_BLUETOOTH_ON_START_DESCRIPTION";
  *(v3 + 4680) = "ENABLE_CONFRIM_ASSISTIVETOUCH_SIDE_BUTTON_AST_DESCRIPTION";
  *(v3 + 4704) = "ENABLE_CONFRIM_ASSISTIVETOUCH_TOP_BUTTON_AST_DESCRIPTION";
  *(v3 + 4728) = "ENABLE_CONFRIM_SWITCH_CONTROL_SIDE_BUTTON_SC_DESCRIPTION";
  *(v3 + 4752) = "ENABLE_CONFRIM_SWITCH_CONTROL_TOP_BUTTON_SC_DESCRIPTION";
  *(v3 + 4776) = "ENHANCE_TEXT_LEGIBILITY_ENHANCE_TEXT_LEGIBILITY_DESCRIPTION";
  *(v3 + 4800) = "EQUATIONS_USE_NEMETH_CODE_EQUATIONS_USE_NEMETH_CODE_DESCRIPTION";
  *(v3 + 4824) = "EXPORT_VOCABULARY_EXPORT_VOCABULARY_DESCRIPTION";
  *(v3 + 4848) = "EXTENDED_PREDICTIONS_EXTENDED_PREDICTIONS_DESCRIPTION";
  *(v3 + 4872) = "EXTENDED_VOICE_ISOLATION_EXTENDED_VOICE_ISOLATION_DESCRIPTION";
  *(v3 + 4896) = "EYE_TRACKING_AUTO_HIDE_EYE_TRACKING_AUTO_HIDE_DESCRIPTION";
  *(v3 + 4920) = "EYE_TRACKING_DWELL_CONTROL_EYE_TRACKING_DWELL_CONTROL_DESCRIPTION";
  *(v3 + 4944) = "EYE_TRACKING_EYE_TRACKING_DESCRIPTION";
  *(v3 + 4968) = "EYE_TRACKING_SMOOTHING_EYE_TRACKING_SMOOTHING_DESCRIPTION";
  *(v3 + 4992) = "EYE_TRACKING_SNAP_TO_ITEM_EYE_TRACKING_SMOOTHING_DESCRIPTION";
  *(v3 + 5016) = "EYE_TRACKING_ZOOM_ON_KEYS_EYE_TRACKING_ZOOM_ON_KEYS_DESCRIPTION";
  *(v3 + 5040) = "FACE_ID__ATTENTION_FACE_ID__ATTENTION_DESCRIPTION";
  *(v3 + 5064) = "FACE_TIME_CAPTIONS_LIVE_TRANSCRIPTIONS_DESCRIPTION";
  *(v3 + 5088) = "FALLBACK_ACTION_FALLBACK_ACTION_DESCRIPTION";
  *(v3 + 5112) = "FKA_COMMANDS_FKA_COMMANDS_DESCRIPTION";
  *(v3 + 5136) = "FLASHLIGHT_NOTIFICATIONS_FLASHLIGHT_NOTIFICATIONS_DESCRIPTION";
  *(v3 + 5160) = "FOCUSED_ITEM_AFTER_TAP_FOCUSED_ITEM_AFTER_TAP_DESCRIPTION";
  *(v3 + 5184) = "FOLLOW_FOCUS_FOLLOW_FOCUS_DESCRIPTION";
  *(v3 + 5208) = "FULL_KEYBOARD_ACCESS_FULL_KEYBOARD_ACCESS_DESCRIPTION";
  *(v3 + 5232) = "GLIDING_CURSOR_GLIDING_CURSOR_DESCRIPTION";
  *(v3 + 5256) = "GLIDING_CURSOR_SPEED_GLIDING_CURSOR_SPEED_DESCRIPTION";
  *(v3 + 5280) = "GROUP_ITEMS_GROUP_ITEMS_DESCRIPTION";
  *(v3 + 5304) = "GUEST_PASS_GUEST_PASS_DESCRIPTION";
  *(v3 + 2368) = 2;
  *(v3 + 5328) = "GUEST_PASS_SETTINGS_TRANSFER_GUEST_PASS_DESCRIPTION";
  *(v3 + 5352) = "GUEST_PASS_SYNC_GUEST_PASS_DESCRIPTION";
  *(v3 + 5360) = 38;
  *(v3 + 5376) = "GUIDED_ACCESS_FACEID_GUIDED_ACCESS_FACEID_DESCRIPTION";
  *(v3 + 5400) = "GUIDED_ACCESS_GUIDED_ACCESS_DESCRIPTION";
  *(v3 + 5424) = "GUIDED_ACCESS_TOUCHID_GUIDED_ACCESS_TOUCHID_DESCRIPTION";
  *(v3 + 5448) = "HANDWRITING_HANDWRITING_DESCRIPTION";
  *(v3 + 5472) = "HAPTIC_ON_SUCCESSFUL_AUTHENTICATION_HAPTIC_ON_SUCCESSFUL_AUTHENTICATION_DESCRIPTION";
  *(v3 + 5496) = "HAPTIC_TOUCH_HAPTIC_TOUCH_DESCRIPTION";
  *(v3 + 5520) = "HARDWARE_TTY_RTT_DESCRIPTION";
  *(v3 + 5544) = "HARDWARE_TTY_RTT_TTY_DESCRIPTION";
  *(v3 + 5552) = 32;
  *(v3 + 5568) = "HARDWARE_TTY_TTY_DESCRIPTION";
  *(v3 + 5592) = "HEADPHONE_ACCOMMODATIONS_HEADPHONE_ACCOMMODATIONS_DESCRIPTION";
  *(v3 + 5616) = "HEADPHONE_NOTIFICATIONS_HEADPHONE_NOTIFICATIONS_DESCRIPTION";
  *(v3 + 5640) = "HEAD_TRACKING_HEAD_TRACKING_DESCRIPTION";
  *(v3 + 5664) = "HEAD_TRACKING_SC_HEAD_TRACKING_DESCRIPTION";
  *(v3 + 5688) = "HEARING_AID_COMPATIBILITY_HEARING_AID_COMPATIBILITY_DESCRIPTION";
  *(v3 + 5712) = "HEARING_CONTROL_CENTER_HEARING_CONTROL_CENTER_DESCRIPTION";
  *(v3 + 5736) = "HEARING_DEVICES_HEARING_DEVICES_DESCRIPTION";
  *(v3 + 5760) = "HIGHLIGHT_CONTENT_COLORS_HIGHLIGHT_CONTENT_COLORS_DESCRIPTION";
  *(v3 + 5784) = "HIGHLIGHT_CONTENT_HIGHLIGHT_CONTENT_DESCRIPTION";
  *(v3 + 5808) = "HIGHLIGHT_CONTENT_SENTENCE_STYLE_HIGHLIGHT_CONTENT_SENTENCE_STYLE_DESCRIPTION";
  *(v3 + 5832) = "HIGHLIGHT_CONTROL_HIGHLIGHT_CONTROL_DESCRIPTION";
  *(v3 + 5856) = "HIGH_CONTRAST_HIGH_CONTRAST_DESCRIPTION";
  *(v3 + 5880) = "HINTS_TITLE_HINTS_TITLE_DESCRIPTION";
  *(v3 + 5904) = "HOME_BUTTON_HOME_BUTTON_DESCRIPTION";
  *(v3 + 5928) = "HOT_CORNERS_HOT_CORNERS_DESCRIPTION";
  *(v3 + 5952) = "HOVERTEXT_HOVERTEXT_DESCRIPTION";
  *(v3 + 5976) = "HOVERTYPING_HOVERTYPING_DESCRIPTION";
  *(v3 + 6000) = "HOVER_TEXT_ACTIVATION_LOCK_HOVER_TEXT_ACTIVATION_LOCK_DESCRIPTION";
  *(v3 + 6024) = "HOVER_TEXT_ACTIVATION_MODIFIER_HOVER_TEXT_ACTIVATION_MODIFIER_DESCRIPTION";
  *(v3 + 6048) = "HOVER_TEXT_COLOR_OPTIONS_HOVER_TEXT_COLOR_OPTIONS_DESCRIPTION";
  *(v3 + 6072) = "HOVER_TYPING_AUTOCORRECTED_WORD_COLOR_HOVER_TYPING_AUTOCORRECTED_WORD_COLOR_DESCRIPTION";
  *(v3 + 2096) = 27;
  *(v3 + 2104) = 2;
  *(v3 + 2032) = 2;
  *(v3 + 2048) = 75;
  *(v3 + 2056) = 2;
  *(v3 + 6080) = 87;
  *(v3 + 6096) = "HOVER_TYPING_BACKGROUND_COLOR_HOVER_TYPING_BACKGROUND_COLOR_DESCRIPTION";
  *(v3 + 6120) = "HOVER_TYPING_BORDER_COLOR_HOVER_TYPING_BORDER_COLOR_DESCRIPTION";
  *(v3 + 6144) = "HOVER_TYPING_COLOR_OPTIONS_HOVER_TYPING_COLOR_OPTIONS_DESCRIPTION";
  *(v3 + 6168) = "HOVER_TYPING_DISPLAY_COLOR_OPTIONS_HOVER_TYPING_DISPLAY_COLOR_OPTIONS_DESCRIPTION";
  *(v3 + 6192) = "HOVER_TYPING_INSERTION_POINT_COLOR_HOVER_TYPING_INSERTION_POINT_COLOR_DESCRIPTION";
  *(v3 + 6216) = "HOVER_TYPING_MISSPELLED_WORD_COLOR_HOVER_TYPING_MISSPELLED_WORD_COLOR_DESCRIPTION";
  *(v3 + 6240) = "HOVER_TYPING_RESET_TO_DEFAULT_HOVER_TYPING_RESET_TO_DEFAULT_DESCRIPTION";
  *(v3 + 6264) = "HOVER_TYPING_TEXT_COLOR_HOVER_TYPING_TEXT_COLOR_DESCRIPTION";
  *(v3 + 6288) = "HTT_DISPLAY_MODE_HOVERTYPING_DESCRIPTION";
  *(v3 + 6312) = "HTT_FONT_HTT_FONT_DESCRIPTION";
  *(v3 + 6336) = "HTT_TEXT_SIZE_HTT_TEXT_SIZE_DESCRIPTION";
  *(v3 + 6360) = "HT_BACKGROUND_COLOR_HT_BACKGROUND_COLOR_DESCRIPTION";
  *(v3 + 6384) = "HT_BORDER_COLOR_HT_BORDER_COLOR_DESCRIPTION";
  *(v3 + 6408) = "HT_CONTENT_HT_CONTENT_DESCRIPTION";
  *(v3 + 6432) = "HT_DISPLAY_MODE_HOVERTEXT_DESCRIPTION";
  *(v3 + 6456) = "HT_FONT_HT_FONT_DESCRIPTION";
  *(v3 + 6480) = "HT_INSERTION_POINT_COLOR_HT_INSERTION_POINT_COLOR_DESCRIPTION";
  *(v3 + 6504) = "HT_SCROLLING_SPEED_HOVERTEXT_DESCRIPTION";
  *(v3 + 6528) = "HT_TEXT_COLOR_HT_TEXT_COLOR_DESCRIPTION";
  *(v3 + 6552) = "HT_TEXT_SIZE_HT_TEXT_SIZE_DESCRIPTION";
  *(v3 + 1880) = 47;
  *(v3 + 6576) = "IDLE_OPACITY_IDLE_OPACITY_DESCRIPTION";
  *(v3 + 6600) = "IDLE_OPACITY_IDLE_OPACITY_VISIONOS_DESCRIPTION";
  *(v3 + 6624) = "IGNORE_CHORD_DURATION_IGNORE_CHORD_DURATION_DESCRIPTION";
  *(v3 + 1832) = 43;
  *(v3 + 1840) = 2;
  *(v3 + 1856) = 51;
  *(v3 + 1808) = 51;
  *(v3 + 1816) = 2;
  *(v3 + 6648) = "IGNORE_EYE_MOVEMENTS_IGNORE_EYE_MOVEMENTS_DESCRIPTION";
  *(v3 + 6672) = "IGNORE_INVALID_SWITCH_IGNORE_INVALID_SWITCH_DESCRIPTION";
  *(v3 + 1784) = 53;
  *(v3 + 1792) = 2;
  *(v3 + 6696) = "IGNORE_TRACKPAD_IGNORE_TRACKPAD_DESCRIPTION";
  *(v3 + 6720) = "IMPORT_CUSTOM_COMMANDS_IMPORT_CUSTOM_COMMANDS_DESCRIPTION";
  *(v3 + 1760) = 51;
  *(v3 + 1768) = 2;
  *(v3 + 1736) = 51;
  *(v3 + 1744) = 2;
  *(v3 + 6744) = "IMPORT_VOCABULARY_IMPORT_VOCABULARY_DESCRIPTION";
  *(v3 + 6768) = "INCLUDED_MODULES_SECTION_TITLE_INCLUDED_MODULES_SECTION_TITLE_DESCRIPTION";
  *(v3 + 1696) = 2;
  *(v3 + 1712) = 29;
  *(v3 + 1720) = 2;
  *(v3 + 1672) = 2;
  *(v3 + 1688) = 49;
  *(v3 + 6792) = "INCREASE_CONTRAST_INCREASE_CONTRAST_DESCRIPTION";
  *(v3 + 6816) = "INCREASE_FOCUS_STATE_INCREASE_FOCUS_STATE_DESCRIPTION";
  *(v3 + 1648) = 2;
  *(v3 + 1664) = 55;
  *(v3 + 6840) = "INITIAL_DELAY_INITIAL_DELAY_DESCRIPTION";
  *(v3 + 1616) = 59;
  *(v3 + 1624) = 2;
  *(v3 + 1640) = 65;
  *(v3 + 1592) = 61;
  *(v3 + 1600) = 2;
  *(v3 + 6864) = "INITIAL_DELAY_INITIAL_DELAY_VISIONOS_DESCRIPTION";
  *(v3 + 6888) = "INPUT_FEEDBACK_INPUT_FEEDBACK_DESCRIPTION";
  *(v3 + 1568) = 61;
  *(v3 + 1576) = 2;
  *(v3 + 6912) = "INPUT_INPUT_DESCRIPTION";
  *(v3 + 6936) = "INTERACTION_INTERACTION_DESCRIPTION";
  *(v3 + 1544) = 65;
  *(v3 + 1552) = 2;
  *(v3 + 6960) = "INTERACTION_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 1504) = 2;
  *(v3 + 1520) = 51;
  *(v3 + 1528) = 2;
  *(v3 + 6984) = "INTERACTION_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 1472) = 41;
  *(v3 + 1480) = 2;
  *(v3 + 1496) = 29;
  *(v3 + 7008) = "ITEM_OVERVIEW_ITEM_OVERVIEW_DESCRIPTION";
  *(v3 + 1448) = 45;
  *(v3 + 1456) = 2;
  *(v3 + 1424) = 48;
  *(v3 + 1432) = 2;
  *(v3 + 7032) = "KEYBOARDS_KEYBOARDS_DESCRIPTION";
  *(v3 + 7056) = "KEYBOARD_INTERACTION_TIME_KEYBOARD_INTERACTION_TIME_DESCRIPTION";
  *(v3 + 1400) = 39;
  *(v3 + 1408) = 2;
  *(v3 + 7080) = "KEYBOARD_SHORTCUTS_COMMANDS_KEYBOARD_SHORTCUTS_DESCRIPTION";
  *(v3 + 7104) = "KEYBOARD_SHORTCUTS_KEYBOARD_SHORTCUTS_DESCRIPTION";
  *(v3 + 1376) = 49;
  *(v3 + 1384) = 2;
  *(v3 + 7128) = "KEY_REPEAT_INTERVAL_KEY_REPEAT_INTERVAL_DESCRIPTION";
  *(v3 + 1352) = 35;
  *(v3 + 1360) = 2;
  *(v3 + 1328) = 72;
  *(v3 + 1336) = 2;
  *(v3 + 7152) = "KEY_REPEAT_KEY_REPEAT_DESCRIPTION";
  *(v3 + 7176) = "LANGUAGE_DETECTION_LANGUAGE_DETECTION_DESCRIPTION";
  *(v3 + 1288) = 2;
  *(v3 + 1304) = 63;
  *(v3 + 1312) = 2;
  *(v3 + 1264) = 2;
  *(v3 + 1280) = 61;
  *(v3 + 7200) = "LANGUAGE_LANGUAGE_DESCRIPTION";
  *(v3 + 7224) = "LARGER_ACCESSIBILITY_SIZES_LARGER_ACCESSIBILITY_SIZES_DESCRIPTION";
  *(v3 + 1232) = 69;
  *(v3 + 1240) = 2;
  *(v3 + 1256) = 43;
  *(v3 + 1208) = 65;
  *(v3 + 1216) = 2;
  *(v3 + 7248) = "LARGER_TEXT_LARGER_TEXT_DESCRIPTION";
  *(v3 + 24) = "ACCESSIBILITY_READER_ACCESSIBILITY_READER_DESCRIPTION";
  *(v3 + 32) = 53;
  *(v3 + 1160) = 83;
  *(v3 + 1168) = 2;
  *(v3 + 1184) = 79;
  *(v3 + 1192) = 2;
  *(v3 + 16) = 2;
  *(v3 + 1112) = 67;
  *(v3 + 1120) = 2;
  *(v3 + 1136) = 79;
  *(v3 + 1144) = 2;
  *(v3 + 40) = 2;
  *(v3 + 56) = 111;
  *(v3 + 1072) = 2;
  *(v3 + 1088) = 75;
  *(v3 + 1096) = 2;
  *(v3 + 64) = 2;
  *(v3 + 80) = 57;
  *(v3 + 88) = 2;
  *(v3 + 1024) = 2;
  *(v3 + 1040) = 47;
  *(v3 + 1048) = 2;
  *(v3 + 104) = 60;
  *(v3 + 976) = 2;
  *(v3 + 992) = 50;
  *(v3 + 1000) = 2;
  *(v3 + 1016) = 37;
  *(v3 + 112) = 2;
  *(v3 + 128) = 45;
  *(v3 + 928) = 2;
  *(v3 + 944) = 49;
  *(v3 + 952) = 2;
  *(v3 + 968) = 41;
  *(v3 + 136) = 2;
  *(v3 + 152) = 51;
  *(v3 + 880) = 2;
  *(v3 + 896) = 41;
  *(v3 + 904) = 2;
  *(v3 + 920) = 50;
  *(v3 + 160) = 2;
  *(v3 + 176) = 49;
  *(v3 + 832) = 2;
  *(v3 + 848) = 63;
  *(v3 + 856) = 2;
  *(v3 + 872) = 65;
  *(v3 + 184) = 2;
  *(v3 + 200) = 33;
  *(v3 + 784) = 2;
  *(v3 + 800) = 79;
  *(v3 + 808) = 2;
  *(v3 + 824) = 43;
  *(v3 + 208) = 2;
  *(v3 + 224) = 61;
  *(v3 + 736) = 2;
  *(v3 + 752) = 65;
  *(v3 + 760) = 2;
  *(v3 + 776) = 61;
  *(v3 + 232) = 2;
  *(v3 + 248) = 75;
  *(v3 + 256) = 2;
  *(v3 + 704) = 45;
  *(v3 + 712) = 2;
  *(v3 + 728) = 65;
  *(v3 + 272) = 37;
  *(v3 + 656) = 81;
  *(v3 + 664) = 2;
  *(v3 + 680) = 59;
  *(v3 + 688) = 2;
  *(v3 + 280) = 2;
  *(v3 + 296) = 49;
  *(v3 + 608) = 77;
  *(v3 + 616) = 2;
  *(v3 + 632) = 37;
  *(v3 + 640) = 2;
  *(v3 + 304) = 2;
  *(v3 + 320) = 47;
  *(v3 + 560) = 51;
  *(v3 + 568) = 2;
  *(v3 + 584) = 69;
  *(v3 + 592) = 2;
  *(v3 + 328) = 2;
  *(v3 + 344) = 41;
  *(v3 + 512) = 75;
  *(v3 + 520) = 2;
  *(v3 + 536) = 51;
  *(v3 + 544) = 2;
  *(v3 + 352) = 2;
  *(v3 + 368) = 49;
  *(v3 + 464) = 57;
  *(v3 + 472) = 2;
  *(v3 + 488) = 55;
  *(v3 + 496) = 2;
  *(v3 + 376) = 2;
  *(v3 + 392) = 55;
  *(v3 + 416) = 31;
  *(v3 + 424) = 2;
  *(v3 + 440) = 47;
  *(v3 + 448) = 2;
  *(v3 + 400) = 2;
  *(v3 + 2576) = 49;
  *(v3 + 2584) = 2;
  *(v3 + 2600) = 37;
  *(v3 + 2608) = 2;
  *(v3 + 2624) = 41;
  *(v3 + 2632) = 2;
  *(v3 + 2648) = 91;
  *(v3 + 2656) = 2;
  *(v3 + 2672) = 65;
  *(v3 + 2680) = 2;
  *(v3 + 2696) = 77;
  *(v3 + 2704) = 2;
  *(v3 + 2720) = 53;
  *(v3 + 2728) = 2;
  *(v3 + 2744) = 41;
  *(v3 + 2752) = 2;
  *(v3 + 2768) = 39;
  *(v3 + 2776) = 2;
  *(v3 + 2792) = 57;
  *(v3 + 2800) = 2;
  *(v3 + 2816) = 53;
  *(v3 + 2824) = 2;
  *(v3 + 2840) = 57;
  *(v3 + 2848) = 2;
  *(v3 + 2864) = 31;
  *(v3 + 2872) = 2;
  *(v3 + 2888) = 47;
  *(v3 + 2896) = 2;
  *(v3 + 2912) = 67;
  *(v3 + 2920) = 2;
  *(v3 + 2936) = 43;
  *(v3 + 2944) = 2;
  *(v3 + 2960) = 57;
  *(v3 + 2968) = 2;
  *(v3 + 2984) = 67;
  *(v3 + 2992) = 2;
  *(v3 + 3008) = 51;
  *(v3 + 3016) = 2;
  *(v3 + 3032) = 43;
  *(v3 + 3040) = 2;
  *(v3 + 3056) = 61;
  *(v3 + 3064) = 2;
  *(v3 + 3080) = 51;
  *(v3 + 3088) = 2;
  *(v3 + 3104) = 41;
  *(v3 + 3112) = 2;
  *(v3 + 3128) = 35;
  *(v3 + 3136) = 2;
  *(v3 + 3152) = 35;
  *(v3 + 3160) = 2;
  *(v3 + 3184) = 2;
  *(v3 + 3200) = 51;
  *(v3 + 3208) = 2;
  *(v3 + 3224) = 23;
  *(v3 + 3232) = 2;
  *(v3 + 3248) = 39;
  *(v3 + 3256) = 2;
  *(v3 + 7264) = 2;
  *(v3 + 7272) = "LARGE_CURSOR_LARGE_CURSOR_DESCRIPTION";
  *(v3 + 7296) = "LARGE_CURSOR_SC_LARGE_CURSOR_DESCRIPTION";
  *(v3 + 7320) = "LARGE_FOCUS_RING_LARGE_FOCUS_RING_DESCRIPTION";
  *(v3 + 7344) = "LAUNCH_RECIPE_LAUNCH_RECIPE_DESCRIPTION";
  *(v3 + 7368) = "LED_FLASH_FOR_ALERTS_LED_FLASH_FOR_ALERTS_DESCRIPTION";
  *(v3 + 7392) = "LED_FLASH_IN_SILENT_MODE_LED_FLASH_IN_SILENT_MODE_DESCRIPTION";
  *(v3 + 7416) = "LED_FLASH_WHILE_UNLOCKED_LED_FLASH_WHILE_UNLOCKED_DESCRIPTION";
  *(v3 + 7440) = "LEFT_RIGHT_STEREO_BALANCE_LEFT_RIGHT_STEREO_BALANCE_DESCRIPTION";
  *(v3 + 7464) = "LINK_ATTACHMENT_FEEDBACK_LINK_ATTACHMENT_FEEDBACK_DESCRIPTION";
  *(v3 + 7488) = "LIST_POSITION_LIST_POSITION_DESCRIPTION";
  *(v3 + 7512) = "LIVE_CAPTIONS_IDLE_OPACITY_TITLE_LIVE_CAPTIONS_IDLE_OPACITY_TITLE_DESCRIPTION";
  *(v3 + 7536) = "LIVE_CAPTIONS_LARGER_TEXT_LIVE_CAPTIONS_LARGER_TEXT_DESCRIPTION";
  *(v3 + 7560) = "LIVE_LISTEN_CONTROL_NEARBY_LIVE_LISTEN_DESCRIPTION";
  *(v3 + 7584) = "LIVE_LISTEN_LIVE_LISTEN_DESCRIPTION";
  *(v3 + 7608) = "LIVE_SPEECH_LIVE_SPEECH_DESCRIPTION";
  *(v3 + 7632) = "LIVE_SPEECH_PHRASES_LIVE_SPEECH_PHRASES_DESCRIPTION";
  *(v3 + 7656) = "LIVE_SPEECH_PREFERRED_VOICES_LIVE_SPEECH_PREFERRED_VOICES_DESCRIPTION";
  *(v3 + 7680) = "LIVE_SPEECH_VOICES_LIVE_SPEECH_VOICES_DESCRIPTION";
  *(v3 + 7704) = "LIVE_TRANSCRIPTIONS_APPEARANCE_LIVE_TRANSCRIPTIONS_APPEARANCE_DESCRIPTION";
  *(v3 + 7728) = "LIVE_TRANSCRIPTIONS_CURRENT_LANGUAGE_LIVE_TRANSCRIPTIONS_CURRENT_LANGUAGE_DESCRIPTION";
  *(v3 + 7752) = "LIVE_TRANSCRIPTIONS_LIVE_TRANSCRIPTIONS_DESCRIPTION";
  *(v3 + 7776) = "LIVE_TRANSCRIPTIONS_TRANSCRIBE_CALLS_LIVE_TRANSCRIPTIONS_TRANSCRIBE_CALLS_DESCRIPTION";
  *(v3 + 3584) = 85;
  *(v3 + 7736) = 85;
  *(v3 + 7784) = 85;
  *(v3 + 7800) = "LIVE_TRANSCRIPTION_BACKGROUND_COLOR_LIVE_TRANSCRIPTION_BACKGROUND_COLOR_DESCRIPTION";
  *(v3 + 5480) = 83;
  *(v3 + 7808) = 83;
  *(v3 + 7824) = "LIVE_TRANSCRIPTION_COLOR_OPTIONS_LIVE_TRANSCRIPTION_COLOR_OPTIONS_DESCRIPTION";
  *(v3 + 7848) = "LIVE_TRANSCRIPTION_RESET_COLORS_LIVE_TRANSCRIPTION_RESET_COLORS_DESCRIPTION";
  *(v3 + 7872) = "LIVE_TRANSCRIPTION_TEXT_COLOR_LIVE_TRANSCRIPTION_TEXT_COLOR_DESCRIPTION";
  *(v3 + 7896) = "LIVE_TV_BUTTONS_LIVE_TV_BUTTONS_DESCRIPTION";
  *(v3 + 7920) = "LOCK_BUTTON_TO_END_CALL_LOCK_BUTTON_TO_END_CALL_DESCRIPTION";
  *(v3 + 7944) = "LONGPRESS_DURATION_LONGPRESS_DURATION_DESCRIPTION";
  *(v3 + 7992) = "LONGPRESS_LONGPRESS_DESCRIPTION";
  *(v3 + 8016) = "LONGPRESS_LONGPRESS_VISIONOS_DESCRIPTION";
  *(v3 + 8040) = "LONG_PRESS_LONG_PRESS_DESCRIPTION";
  *(v3 + 8064) = "LOOPS_LOOPS_DESCRIPTION";
  *(v3 + 8088) = "MAGNIFYING_GLASS_CROWN_ZOOM_MAGNIFYING_GLASS_CROWN_ZOOM_DESCRIPTION";
  *(v3 + 8112) = "MAXIMUM_SPEED_MAXIMUM_SPEED_DESCRIPTION";
  *(v3 + 8136) = "MAXIMUM_SPEED_MAXIMUM_SPEED_VISIONOS_DESCRIPTION";
  *(v3 + 8160) = "MAXIMUM_ZOOM_LEVEL_MAXIMUM_ZOOM_LEVEL_DESCRIPTION";
  *(v3 + 8184) = "MEDIA_DESCRIPTIONS_MEDIA_DESCRIPTIONS_DESCRIPTION";
  *(v3 + 4096) = 2;
  *(v3 + 4120) = 2;
  *(v3 + 4144) = 2;
  *(v3 + 4168) = 2;
  *(v3 + 4192) = 2;
  *(v3 + 4216) = 2;
  *(v3 + 4240) = 2;
  *(v3 + 4264) = 2;
  *(v3 + 4288) = 2;
  *(v3 + 4312) = 2;
  *(v3 + 4336) = 2;
  *(v3 + 4360) = 2;
  *(v3 + 4384) = 2;
  *(v3 + 4408) = 2;
  *(v3 + 4432) = 2;
  *(v3 + 4456) = 2;
  *(v3 + 4480) = 2;
  *(v3 + 4504) = 2;
  *(v3 + 4528) = 2;
  *(v3 + 4552) = 2;
  *(v3 + 4576) = 2;
  *(v3 + 4600) = 2;
  *(v3 + 4624) = 2;
  *(v3 + 4648) = 2;
  *(v3 + 4672) = 2;
  *(v3 + 4696) = 2;
  *(v3 + 4720) = 2;
  *(v3 + 4744) = 2;
  *(v3 + 4768) = 2;
  *(v3 + 4792) = 2;
  *(v3 + 4816) = 2;
  *(v3 + 4840) = 2;
  *(v3 + 4864) = 2;
  *(v3 + 4888) = 2;
  *(v3 + 4912) = 2;
  *(v3 + 4936) = 2;
  *(v3 + 4960) = 2;
  *(v3 + 4984) = 2;
  *(v3 + 6952) = 2;
  *(v3 + 6968) = 40;
  *(v3 + 5008) = 2;
  *(v3 + 5032) = 2;
  *(v3 + 6904) = 2;
  *(v3 + 6920) = 23;
  *(v3 + 6928) = 2;
  *(v3 + 6944) = 35;
  *(v3 + 5056) = 2;
  *(v3 + 5080) = 2;
  *(v3 + 6856) = 2;
  *(v3 + 6872) = 48;
  *(v3 + 6880) = 2;
  *(v3 + 6896) = 41;
  *(v3 + 5104) = 2;
  *(v3 + 5128) = 2;
  *(v3 + 6808) = 2;
  *(v3 + 6824) = 53;
  *(v3 + 6832) = 2;
  *(v3 + 6848) = 39;
  *(v3 + 5152) = 2;
  *(v3 + 5176) = 2;
  *(v3 + 6760) = 2;
  *(v3 + 6776) = 73;
  *(v3 + 6784) = 2;
  *(v3 + 6800) = 47;
  *(v3 + 5200) = 2;
  *(v3 + 5224) = 2;
  *(v3 + 6712) = 2;
  *(v3 + 6728) = 57;
  *(v3 + 6736) = 2;
  *(v3 + 6752) = 47;
  *(v3 + 5248) = 2;
  *(v3 + 5272) = 2;
  *(v3 + 6664) = 2;
  *(v3 + 6680) = 55;
  *(v3 + 6688) = 2;
  *(v3 + 6704) = 43;
  *(v3 + 5296) = 2;
  *(v3 + 5320) = 2;
  *(v3 + 5344) = 2;
  *(v3 + 6632) = 55;
  *(v3 + 6640) = 2;
  *(v3 + 6656) = 53;
  *(v3 + 5368) = 2;
  *(v3 + 6584) = 37;
  *(v3 + 6592) = 2;
  *(v3 + 6608) = 46;
  *(v3 + 6616) = 2;
  *(v3 + 5392) = 2;
  *(v3 + 5416) = 2;
  *(v3 + 6536) = 39;
  *(v3 + 6544) = 2;
  *(v3 + 6560) = 37;
  *(v3 + 6568) = 2;
  *(v3 + 5440) = 2;
  *(v3 + 5456) = 35;
  *(v3 + 6488) = 61;
  *(v3 + 6496) = 2;
  *(v3 + 6512) = 40;
  *(v3 + 6520) = 2;
  *(v3 + 5464) = 2;
  *(v3 + 5488) = 2;
  *(v3 + 6440) = 37;
  *(v3 + 6448) = 2;
  *(v3 + 6464) = 27;
  *(v3 + 6472) = 2;
  *(v3 + 5504) = 37;
  *(v3 + 5512) = 2;
  *(v3 + 6392) = 43;
  *(v3 + 6400) = 2;
  *(v3 + 6416) = 33;
  *(v3 + 6424) = 2;
  *(v3 + 5528) = 28;
  *(v3 + 6344) = 39;
  *(v3 + 6352) = 2;
  *(v3 + 6368) = 51;
  *(v3 + 6376) = 2;
  *(v3 + 5536) = 2;
  *(v3 + 5560) = 2;
  *(v3 + 6296) = 40;
  *(v3 + 6304) = 2;
  *(v3 + 6320) = 29;
  *(v3 + 6328) = 2;
  *(v3 + 5576) = 28;
  *(v3 + 5584) = 2;
  *(v3 + 6248) = 71;
  *(v3 + 6256) = 2;
  *(v3 + 6272) = 59;
  *(v3 + 6280) = 2;
  *(v3 + 5600) = 61;
  *(v3 + 5608) = 2;
  *(v3 + 6200) = 81;
  *(v3 + 6208) = 2;
  *(v3 + 6224) = 81;
  *(v3 + 6232) = 2;
  *(v3 + 5624) = 59;
  *(v3 + 5632) = 2;
  *(v3 + 6152) = 65;
  *(v3 + 6160) = 2;
  *(v3 + 6176) = 81;
  *(v3 + 6184) = 2;
  *(v3 + 5648) = 39;
  *(v3 + 5656) = 2;
  *(v3 + 6112) = 2;
  *(v3 + 6128) = 63;
  *(v3 + 6136) = 2;
  *(v3 + 5672) = 42;
  *(v3 + 5680) = 2;
  *(v3 + 5696) = 63;
  *(v3 + 6064) = 2;
  *(v3 + 6088) = 2;
  *(v3 + 6104) = 71;
  *(v3 + 5704) = 2;
  *(v3 + 5720) = 57;
  *(v3 + 6016) = 2;
  *(v3 + 6032) = 73;
  *(v3 + 6040) = 2;
  *(v3 + 6056) = 61;
  *(v3 + 5728) = 2;
  *(v3 + 5744) = 43;
  *(v3 + 5968) = 2;
  *(v3 + 5984) = 35;
  *(v3 + 5992) = 2;
  *(v3 + 6008) = 65;
  *(v3 + 5752) = 2;
  *(v3 + 5768) = 61;
  *(v3 + 5920) = 2;
  *(v3 + 5936) = 35;
  *(v3 + 5944) = 2;
  *(v3 + 5960) = 31;
  *(v3 + 5776) = 2;
  *(v3 + 5792) = 47;
  *(v3 + 5872) = 2;
  *(v3 + 5888) = 35;
  *(v3 + 5896) = 2;
  *(v3 + 5912) = 35;
  *(v3 + 5800) = 2;
  *(v3 + 5816) = 77;
  *(v3 + 5824) = 2;
  *(v3 + 5840) = 47;
  *(v3 + 5848) = 2;
  *(v3 + 5864) = 39;
  *(v3 + 6976) = 2;
  *(v3 + 7000) = 2;
  *(v3 + 7024) = 2;
  *(v3 + 7048) = 2;
  *(v3 + 7072) = 2;
  *(v3 + 7096) = 2;
  *(v3 + 7120) = 2;
  *(v3 + 7144) = 2;
  *(v3 + 7168) = 2;
  *(v3 + 7192) = 2;
  *(v3 + 7216) = 2;
  *(v3 + 7240) = 2;
  *(v3 + 7288) = 2;
  *(v3 + 7312) = 2;
  *(v3 + 7336) = 2;
  *(v3 + 7360) = 2;
  *(v3 + 7384) = 2;
  *(v3 + 7408) = 2;
  *(v3 + 7432) = 2;
  *(v3 + 7456) = 2;
  *(v3 + 7480) = 2;
  *(v3 + 7504) = 2;
  *(v3 + 7528) = 2;
  *(v3 + 7552) = 2;
  *(v3 + 7576) = 2;
  *(v3 + 7600) = 2;
  *(v3 + 7624) = 2;
  *(v3 + 7648) = 2;
  *(v3 + 7672) = 2;
  *(v3 + 7696) = 2;
  *(v3 + 7720) = 2;
  *(v3 + 7744) = 2;
  *(v3 + 7768) = 2;
  *(v3 + 7792) = 2;
  *(v3 + 7816) = 2;
  *(v3 + 7840) = 2;
  *(v3 + 7864) = 2;
  *(v3 + 7888) = 2;
  *(v3 + 7912) = 2;
  *(v3 + 7936) = 2;
  *(v3 + 7984) = 2;
  *(v3 + 8008) = 2;
  *(v3 + 8032) = 2;
  *(v3 + 8056) = 2;
  *(v3 + 8080) = 2;
  *(v3 + 8104) = 2;
  *(v3 + 8128) = 2;
  *(v3 + 8152) = 2;
  *(v3 + 8176) = 2;
  *(v3 + 7960) = 2;
  *(v3 + 8208) = "MENU_ITEMS_MENU_ITEMS_DESCRIPTION";
  *(v3 + 8232) = "MFI_HEARING_DEVICES_MFI_HEARING_DEVICES_DESCRIPTION";
  *(v3 + 8256) = "MODIFIER_KEYS_MODIFIER_KEYS_DESCRIPTION";
  *(v3 + 5432) = 55;
  *(v3 + 8280) = "MONO_AUDIO_MONO_AUDIO_DESCRIPTION";
  *(v3 + 5408) = 39;
  *(v3 + 8304) = "MORE_CONTENT_FEEDBACK_MORE_CONTENT_FEEDBACK_DESCRIPTION";
  *(v3 + 5384) = 53;
  *(v3 + 8328) = "MORE_MODULES_SECTION_TITLE_MORE_MODULES_SECTION_TITLE_DESCRIPTION";
  *(v3 + 8352) = "MOTION_CUES_CUSTOMIZE_APPEARANCE_MOTION_CUES_CUSTOMIZE_APPEARANCE_DESCRIPTION";
  *(v3 + 7520) = 77;
  *(v3 + 7832) = 77;
  *(v3 + 8360) = 77;
  *(v3 + 8376) = "MOTION_CUES_LARGER_DOTS_MOTION_CUES_APPEARANCE_SETTING_DESCRIPTION";
  *(v3 + 8400) = "MOTION_CUES_MORE_DOTS_MOTION_CUES_APPEARANCE_SETTING_DESCRIPTION";
  *(v3 + 5336) = 51;
  *(v3 + 8424) = "MOTION_CUES_MOTION_CUES_DESCRIPTION";
  *(v3 + 5312) = 33;
  *(v3 + 8448) = "MOTION_MOTION_DESCRIPTION";
  *(v3 + 5288) = 35;
  *(v3 + 8472) = "MOUSE_KEYS_MOUSE_KEYS_DESCRIPTION";
  *(v3 + 8496) = "MOUSE_KEYS_MOUSE_VISIONOS_KEYS_DESCRIPTION";
  *(v3 + 8520) = "MOVEMENT_TOLERANCE_MOVEMENT_TOLERANCE_DESCRIPTION";
  *(v3 + 5264) = 53;
  *(v3 + 8544) = "MOVEMENT_TOLERANCE_MOVEMENT_TOLERANCE_VISIONOS_DESCRIPTION";
  *(v3 + 5240) = 41;
  *(v3 + 8568) = "MOVE_REPEAT_MOVE_REPEAT_DESCRIPTION";
  *(v3 + 5216) = 53;
  *(v3 + 8592) = "MOVE_ZOOM_WINDOW_MOVE_ZOOM_WINDOW_DESCRIPTION";
  *(v3 + 8616) = "MUSIC_HAPTICS_MUSIC_HAPTICS_DESCRIPTION";
  *(v3 + 8640) = "NAME_RECOGNITION_NAME_RECOGNITION_DESCRIPTION";
  *(v3 + 8664) = "NATURAL_SCROLLING_NATURAL_SCROLLING_DESCRIPTION";
  *(v3 + 8688) = "NAVIGATE_IMAGES_NAVIGATE_IMAGES_DESCRIPTION";
  *(v3 + 5192) = 37;
  *(v3 + 8712) = "NOTIFICATIONS_WHEN_LOCKED_NOTIFICATIONS_WHEN_LOCKED_DESCRIPTION";
  *(v3 + 5168) = 57;
  *(v3 + 8736) = "NOTIFICATION_USE_RINGER_SWITCH_NOTIFICATION_USE_RINGER_SWITCH_DESCRIPTION";
  *(v3 + 5144) = 61;
  *(v3 + 8760) = "NUMBER_FEEDBACK_NUMBER_FEEDBACK_DESCRIPTION";
  *(v3 + 8784) = "ONOFF_LABELS_ONOFF_LABELS_DESCRIPTION";
  *(v3 + 8808) = "OPEN_VOICE_CONTROL_GUIDE_OPEN_VOICE_CONTROL_GUIDE_DESCRIPTION";
  *(v3 + 5120) = 37;
  *(v3 + 8832) = "OPTION_KEY_TOGGLE_OPTION_KEY_TOGGLE_DESCRIPTION";
  *(v3 + 5096) = 43;
  *(v3 + 8856) = "OPTION_KEY_TOGGLE_OPTION_KEY_TOGGLE_VISIONOS_DESCRIPTION";
  *(v3 + 5072) = 50;
  *(v3 + 8880) = "OUTPUT_OUTPUT_DESCRIPTION";
  *(v3 + 8904) = "OVERLAY_OVERLAY_DESCRIPTION";
  *(v3 + 8928) = "PASSCODE_SETTINGS_PASSCODE_SETTINGS_DESCRIPTION";
  *(v3 + 8952) = "PAUSE_DURING_MEDIA_PLAYBACK_PAUSE_DURING_MEDIA_PLAYBACK_DESCRIPTION";
  *(v3 + 8976) = "PAUSE_ON_FIRST_ITEM_PAUSE_ON_FIRST_ITEM_DESCRIPTION";
  *(v3 + 5048) = 49;
  *(v3 + 9000) = "PERFORM_TOUCH_GESTURES_PERFORM_TOUCH_GESTURES_DESCRIPTION";
  *(v3 + 5024) = 63;
  *(v3 + 9024) = "PERFORM_TOUCH_GESTURES_PERFORM_TOUCH_GESTURES_VISIONOS_DESCRIPTION";
  *(v3 + 5000) = 60;
  *(v3 + 8384) = 66;
  *(v3 + 9032) = 66;
  *(v3 + 9048) = "PERSONAL_VOICE_ALLOW_PERSONAL_VOICE_ALLOW_DESCRIPTION";
  *(v3 + 9072) = "PERSONAL_VOICE_CREATE_PERSONAL_VOICE_CREATE_DESCRIPTION";
  *(v3 + 4976) = 57;
  *(v3 + 9096) = "PERSONAL_VOICE_PERSONAL_VOICE_DESCRIPTION";
  *(v3 + 4952) = 37;
  *(v3 + 9120) = "PERSONAL_VOICE_SHARE_PERSONAL_VOICE_SHARE_DESCRIPTION";
  *(v3 + 4928) = 65;
  *(v3 + 9144) = "PER_APP_ADD_APP_PER_APP_ADD_APP_DESCRIPTION";
  *(v3 + 9168) = "PER_APP_SETTINGS_PER_APP_SETTINGS_DESCRIPTION";
  *(v3 + 9192) = "PER_APP_SHOW_HIDDEN_APPS_PER_APP_SHOW_HIDDEN_APPS_DESCRIPTION";
  *(v3 + 4904) = 57;
  *(v3 + 9216) = "PHONETIC_FEEDBACK_PHONETIC_FEEDBACK_DESCRIPTION";
  *(v3 + 4880) = 61;
  *(v3 + 9240) = "PHONE_NOISE_CANCELLATION_PHONE_NOISE_CANCELLATION_DESCRIPTION";
  *(v3 + 4856) = 53;
  *(v3 + 9264) = "PITCH_CHANGE_PITCH_CHANGE_DESCRIPTION";
  *(v3 + 9288) = "PLAY_SOUND_PLAY_SOUND_DESCRIPTION";
  *(v3 + 9312) = "POINTER_ANIMATIONS_POINTER_ANIMATIONS_DESCRIPTION";
  *(v3 + 9336) = "POINTER_CONTROL_BORDER_WIDTH_POINTER_CONTROL_BORDER_WIDTH_DESCRIPTION";
  *(v3 + 9360) = "POINTER_CONTROL_COLOR_POINTER_CONTROL_COLOR_DESCRIPTION";
  *(v3 + 4832) = 47;
  *(v3 + 9384) = "POINTER_CONTROL_CONTROL_POINTER_CONTROL_CONTROL_DESCRIPTION";
  *(v3 + 4808) = 63;
  *(v3 + 9408) = "POINTER_CONTROL_POINTER_CONTROL_DESCRIPTION";
  *(v3 + 4784) = 59;
  *(v3 + 9432) = "POINTER_CONTROL_SCROLLING_SPEED_POINTER_CONTROL_SCROLLING_SPEED_DESCRIPTION";
  *(v3 + 9456) = "POINTER_INCREASE_CONTRAST_POINTER_INCREASE_CONTRAST_DESCRIPTION";
  *(v3 + 9480) = "POINTER_INCREASE_CONTRAST_POINTER_INCREASE_CONTRAST_VISIONOS_DESCRIPTION";
  *(v3 + 4760) = 55;
  *(v3 + 9488) = 72;
  *(v3 + 9504) = "POINTER_SIZE_POINTER_SIZE_DESCRIPTION";
  *(v3 + 4736) = 56;
  *(v3 + 9528) = "POINTER_SIZE_POINTER_SIZE_VISIONOS_DESCRIPTION";
  *(v3 + 4712) = 56;
  *(v3 + 9552) = "PREDICTIVE_TEXT_APPEARS_PREDICTIVE_TEXT_APPEARS_DESCRIPTION";
  *(v3 + 4688) = 57;
  *(v3 + 9576) = "PREDICTIVE_TEXT_ENTERED_PREDICTIVE_TEXT_ENTERED_DESCRIPTION";
  *(v3 + 9600) = "PREDICTIVE_TEXT_FEEDBACK_PREDICTIVE_TEXT_FEEDBACK_DESCRIPTION";
  *(v3 + 9624) = "PREFER_HORIZONTAL_TEXT_PREFER_HORIZONTAL_TEXT_DESCRIPTION";
  *(v3 + 4664) = 63;
  *(v3 + 9648) = "PREFER_NON_BLINKING_CURSOR_TEXT_PREFER_NON_BLINKING_CURSOR_DESCRIPTION";
  *(v3 + 3992) = 70;
  *(v3 + 4640) = 37;
  *(v3 + 9656) = 70;
  *(v3 + 9672) = "PREFER_NON_HEADLOCKED_CONTROLS_PREFER_NON_HEADLOCKED_CONTROLS_DESCRIPTION";
  *(v3 + 4616) = 25;
  *(v3 + 9696) = "PRESS_AND_HOLD_TO_SPEAK_HOME_BUTTON_DESCRIPTION";
  *(v3 + 4592) = 61;
  *(v3 + 9720) = "PRESS_AND_HOLD_TO_SPEAK_SIDE_BUTTON_DESCRIPTION";
  *(v3 + 9744) = "PRESS_AND_HOLD_TO_SPEAK_TOP_BUTTON_DESCRIPTION";
  *(v3 + 4568) = 55;
  *(v3 + 9536) = 46;
  *(v3 + 9752) = 46;
  *(v3 + 4544) = 63;
  *(v3 + 9768) = "PROGRAMMING_PROGRAMMING_DESCRIPTION";
  *(v3 + 9792) = "PRONUNCIATIONS_PRONUNCIATIONS_DESCRIPTION";
  *(v3 + 9816) = "PRONUNCIATIONS_VO_PRONUNCIATIONS_DESCRIPTION";
  *(v3 + 9840) = "PULSE_WIDTH_MAXIMIZATION_PULSE_WIDTH_MAXIMIZATION_DESCRIPTION";
  *(v3 + 9864) = "PUNCTUATION_ALL_PUNCTUATION_ALL_DESCRIPTION";
  *(v3 + 4520) = 48;
  *(v3 + 9888) = "PUNCTUATION_IMPORT_PUNCTUATION_IMPORT_DESCRIPTION";
  *(v3 + 4496) = 49;
  *(v3 + 9912) = "PUNCTUATION_NONE_PUNCTUATION_NONE_DESCRIPTION";
  *(v3 + 4472) = 39;
  *(v3 + 9936) = "PUNCTUATION_PUNCTUATION_DESCRIPTION";
  *(v3 + 9960) = "PUNCTUATION_SOME_PUNCTUATION_SOME_DESCRIPTION";
  *(v3 + 9984) = "QUICKNAV_ANNOUNCEMENTS_QUICKNAV_ANNOUNCEMENTS_DESCRIPTION";
  *(v3 + 4448) = 53;
  *(v3 + 10008) = "QUICK_SETTINGS_QUICK_SETTINGS_DESCRIPTION";
  *(v3 + 4424) = 47;
  *(v3 + 10056) = "REAL_WORLD_DETECTION_REAL_WORLD_DETECTION_DESCRIPTION";
  *(v3 + 4400) = 59;
  *(v3 + 10080) = "RECIPES_RECIPES_DESCRIPTION";
  *(v3 + 10104) = "REDUCE_MOTION_REDUCE_MOTION_DESCRIPTION";
  *(v3 + 10128) = "REDUCE_TRANSPARENCY_REDUCE_TRANSPARENCY_DESCRIPTION";
  *(v3 + 10152) = "REDUCE_WHITE_POINT_REDUCE_WHITE_POINT_DESCRIPTION";
  *(v3 + 10176) = "REFRESH_RATE_REFRESH_RATE_DESCRIPTION";
  *(v3 + 4376) = 50;
  *(v3 + 10200) = "REQUIRE_ATTENTION_FOR_FACE_ID_REQUIRE_ATTENTION_FOR_FACE_ID_DESCRIPTION";
  *(v3 + 4352) = 40;
  *(v3 + 10224) = "RESET_VOICEOVER_COMMANDS_RESET_VOICEOVER_COMMANDS_DESCRIPTION";
  *(v3 + 4328) = 31;
  *(v3 + 10248) = "RESET_VOICEOVER_SETTINGS_RESET_VOICEOVER_SETTINGS_DESCRIPTION";
  *(v3 + 10272) = "RESIZE_ZOOM_WINDOW_RESIZE_ZOOM_WINDOW_DESCRIPTION";
  *(v3 + 10296) = "REST_FINGER_OPEN_HOME_BUTTON_DESCRIPTION";
  *(v3 + 4304) = 37;
  *(v3 + 10320) = "REVERSE_DOT_POSITIONS_REVERSE_DOT_POSITIONS_DESCRIPTION";
  *(v3 + 4280) = 49;
  *(v3 + 10344) = "ROTOR_ITEMS_ROTOR_ITEMS_DESCRIPTION";
  *(v3 + 4256) = 45;
  *(v3 + 10368) = "ROTOR_ROTOR_DESCRIPTION";
  *(v3 + 10392) = "ROTOR_SUMMARY_ROTOR_SUMMARY_DESCRIPTION";
  *(v3 + 10416) = "RTT_ACCESSIBILITY";
  *(v3 + 10440) = "RTT_TTY_ACCESSIBILITY";
  *(v3 + 10464) = "SAVED_GESTURES_SAVED_GESTURES_DESCRIPTION";
  *(v3 + 4232) = 51;
  *(v3 + 10488) = "SCANNING_STYLE_SCANNING_STYLE_DESCRIPTION";
  *(v3 + 4208) = 51;
  *(v3 + 10512) = "SCAN_SAME_KEY_AFTER_TAP_SCAN_SAME_KEY_AFTER_TAP_DESCRIPTION";
  *(v3 + 4184) = 39;
  *(v3 + 10536) = "SCROLL_SPEED_SCROLL_SPEED_DESCRIPTION";
  *(v3 + 10560) = "SC_DWELL_CONTROL_SC_DWELL_CONTROL_DESCRIPTION";
  *(v3 + 10584) = "SC_EYE_TRACKING_SC_EYE_TRACKING_DESCRIPTION";
  *(v3 + 4160) = 67;
  *(v3 + 10608) = "SC_HOLD_DURATION_SC_HOLD_DURATION_DESCRIPTION";
  *(v3 + 4136) = 36;
  *(v3 + 10632) = "SC_IGNORE_REPEAT_SC_IGNORE_REPEAT_DESCRIPTION";
  *(v3 + 4112) = 27;
  *(v3 + 10656) = "SC_SHOW_FACE_GUIDANCE_SC_SHOW_FACE_GUIDANCE_DESCRIPTION";
  *(v3 + 10680) = "SELECTION_MODE_SELECTION_MODE_DESCRIPTION";
  *(v3 + 10704) = "SEND_TO_HDMI_SEND_TO_HDMI_DESCRIPTION";
  *(v3 + 4088) = 47;
  *(v3 + 10728) = "SETUP_NAME_RECOGNITION_SETUP_NAME_RECOGNITION_DESCRIPTION";
  *(v3 + 4048) = 2;
  *(v3 + 4064) = 55;
  *(v3 + 4072) = 2;
  *(v3 + 4024) = 2;
  *(v3 + 4040) = 49;
  *(v3 + 10752) = "SET_GUIDED_ACCESS_PASSCODE_SET_GUIDED_ACCESS_PASSCODE_DESCRIPTION";
  *(v3 + 10776) = "SET_UP_VOICE_CONTROL_SET_UP_VOICE_CONTROL_DESCRIPTION";
  *(v3 + 4000) = 2;
  *(v3 + 4016) = 49;
  *(v3 + 10800) = "SHAKE_TO_UNDO_SHAKE_TO_UNDO_DESCRIPTION";
  *(v3 + 10824) = "SHOW_APPS_BEHIND_SIRI_SHOW_APPS_BEHIND_SIRI_DESCRIPTION";
  *(v3 + 3968) = 61;
  *(v3 + 3976) = 2;
  *(v3 + 3944) = 59;
  *(v3 + 3952) = 2;
  *(v3 + 10848) = "SHOW_AUDIO_TRANSCRIPTIONS_SHOW_AUDIO_TRANSCRIPTIONS_DESCRIPTION";
  *(v3 + 10872) = "SHOW_CONFIRMATION_SHOW_CONFIRMATION_DESCRIPTION";
  *(v3 + 3920) = 61;
  *(v3 + 3928) = 2;
  *(v3 + 10896) = "SHOW_CONTROLLER_SHOW_CONTROLLER_DESCRIPTION";
  *(v3 + 10920) = "SHOW_GENERAL_STATUS_SHOW_GENERAL_STATUS_DESCRIPTION";
  *(v3 + 3896) = 59;
  *(v3 + 3904) = 2;
  *(v3 + 10944) = "SHOW_HINTS_SHOW_HINTS_DESCRIPTION";
  *(v3 + 3856) = 2;
  *(v3 + 3872) = 71;
  *(v3 + 3880) = 2;
  *(v3 + 10968) = "SHOW_LOWERCASE_KEYS_SHOW_LOWERCASE_KEYS_DESCRIPTION";
  *(v3 + 3824) = 55;
  *(v3 + 3832) = 2;
  *(v3 + 3848) = 59;
  *(v3 + 3800) = 49;
  *(v3 + 3808) = 2;
  *(v3 + 10992) = "SHOW_ONSCREEN_KEYBOARD_SHOW_ONSCREEN_KEYBOARD_DESCRIPTION";
  *(v3 + 11016) = "SHOW_ON_SKIP_BACK_SHOW_ON_SKIP_BACK_DESCRIPTION";
  *(v3 + 3776) = 39;
  *(v3 + 3784) = 2;
  *(v3 + 11040) = "SHOW_SCROLL_CONTROLS_SHOW_SCROLL_CONTROLS_DESCRIPTION";
  *(v3 + 11064) = "SHOW_TEXT_STATUS_SHOW_TEXT_STATUS_DESCRIPTION";
  *(v3 + 3752) = 37;
  *(v3 + 3760) = 2;
  *(v3 + 11088) = "SHOW_WHEN_MUTED_SHOW_WHEN_MUTED_DESCRIPTION";
  *(v3 + 3712) = 2;
  *(v3 + 3728) = 47;
  *(v3 + 3736) = 2;
  *(v3 + 3688) = 2;
  *(v3 + 3704) = 52;
  *(v3 + 11112) = "SHOW_WHILE_MIRRORING_SHOW_WHILE_MIRRORING_DESCRIPTION";
  *(v3 + 11136) = "SIDE_BUTTON_SIDE_BUTTON_DESCRIPTION";
  *(v3 + 3656) = 49;
  *(v3 + 3664) = 2;
  *(v3 + 3680) = 58;
  *(v3 + 3632) = 63;
  *(v3 + 3640) = 2;
  *(v3 + 11160) = "SINGLETAP_SINGLETAP_DESCRIPTION";
  *(v3 + 11184) = "SINGLETAP_SINGLETAP_VISIONOS_DESCRIPTION";
  *(v3 + 3592) = 2;
  *(v3 + 3608) = 41;
  *(v3 + 3616) = 2;
  *(v3 + 7304) = 40;
  *(v3 + 8024) = 40;
  *(v3 + 10304) = 40;
  *(v3 + 11192) = 40;
  *(v3 + 3544) = 2;
  *(v3 + 3560) = 45;
  *(v3 + 3568) = 2;
  *(v3 + 11208) = "SIRI_BARGE_IN_LABEL_SIRI_BARGE_IN_DESCRIPTION";
  *(v3 + 3512) = 67;
  *(v3 + 3520) = 2;
  *(v3 + 3536) = 49;
  *(v3 + 3488) = 67;
  *(v3 + 3496) = 2;
  *(v3 + 11232) = "SIRI_PAUSE_TIME_SIRI_PAUSE_TIME_DESCRIPTION";
  *(v3 + 11256) = "SIRI_SIRI_DESCRIPTION";
  *(v3 + 3440) = 55;
  *(v3 + 3448) = 2;
  *(v3 + 3464) = 29;
  *(v3 + 3472) = 2;
  *(v3 + 3272) = 31;
  *(v3 + 3280) = 2;
  *(v3 + 3392) = 53;
  *(v3 + 3400) = 2;
  *(v3 + 3416) = 73;
  *(v3 + 3424) = 2;
  *(v3 + 3296) = 41;
  *(v3 + 3304) = 2;
  *(v3 + 3344) = 55;
  *(v3 + 3352) = 2;
  *(v3 + 3368) = 69;
  *(v3 + 3376) = 2;
  *(v3 + 3320) = 51;
  *(v3 + 3328) = 2;
  *(v3 + 6992) = 49;
  *(v3 + 7016) = 39;
  *(v3 + 7040) = 31;
  *(v3 + 7064) = 63;
  *(v3 + 7088) = 58;
  *(v3 + 7112) = 49;
  *(v3 + 7136) = 51;
  *(v3 + 7160) = 33;
  *(v3 + 7184) = 49;
  *(v3 + 7208) = 29;
  *(v3 + 7232) = 65;
  *(v3 + 7256) = 35;
  *(v3 + 11280) = "SIRI_SPEAKING_RATE_SIRI_SPEAKING_RATE_DESCRIPTION";
  *(v3 + 11304) = "SLOW_KEYS_SLOW_KEYS_DESCRIPTION";
  *(v3 + 11328) = "SMART_INVERT_SMART_INVERT_DESCRIPTION";
  *(v3 + 11352) = "SMART_TYPING_SMART_TYPING_DESCRIPTION";
  *(v3 + 11376) = "SOFTWARE_KEYBOARDS_SOFTWARE_KEYBOARDS_DESCRIPTION";
  *(v3 + 11400) = "SOFTWARE_RTT_RTT_DESCRIPTION";
  *(v3 + 11424) = "SOFTWARE_RTT_TTY_RTT_TTY_DESCRIPTION";
  *(v3 + 11432) = 36;
  *(v3 + 11448) = "SOFTWARE_TTY_TTY_DESCRIPTION";
  *(v3 + 11472) = "SOUNDS_SOUNDS_DESCRIPTION";
  *(v3 + 11496) = "SOUNDS_SOUND_AND_NAME_RECOGNITION_DESCRIPTION";
  *(v3 + 11520) = "SOUNDS_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 11544) = "SOUNDS_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 11568) = "SOUND_ACTIONS_SOUND_ACTIONS_AST_DESCRIPTION";
  *(v3 + 11592) = "SOUND_ACTIONS_SOUND_ACTIONS_AST_DESCRIPTION_VISIONOS";
  *(v3 + 11600) = 52;
  *(v3 + 11616) = "SOUND_ACTIONS_SOUND_ACTIONS_DESCRIPTION_VISIONOS";
  *(v3 + 11640) = "SOUND_AND_NAME_RECOGNITION_SOUND_AND_NAME_RECOGNITION_DESCRIPTION";
  *(v3 + 11688) = "SOUND_EFFECTS_PREFERENCE_SOUND_EFFECTS_PREFERENCE_DESCRIPTION";
  *(v3 + 11736) = "SOUND_GAX_SOUND_DESCRIPTION";
  *(v3 + 11808) = "SOUND_RECOGNITION_SOUND_RECOGNITION_DESCRIPTION";
  *(v3 + 11832) = "SOUND_RECOGNITION_SOUND_RECOGNITION_WITH_NAME_SUPPORT_DESCRIPTION";
  *(v3 + 11880) = "SPATIALIZE_SPEECH_SPATIALIZE_SPEECH_DESCRIPTION";
  *(v3 + 11952) = "SPEAKING_RATE_VO_SPEAKING_RATE_DESCRIPTION";
  *(v3 + 12048) = "SPEAK_SPEAK_DESCRIPTION";
  *(v3 + 12072) = "SPEECH_CONTROLLER_DOUBLE_TAP_SPEECH_CONTROLLER_DOUBLE_TAP_DESCRIPTION";
  *(v3 + 12144) = "SPEECH_CONTROLLER_SPEECH_CONTROLLER_DESCRIPTION";
  *(v3 + 12216) = "SPEECH_SPEAKS_TRAITS_LABEL_SPEECH_SPEAKS_TRAITS_LABEL_DESCRIPTION";
  *(v3 + 12240) = "SPEECH_SPEECH_DESCRIPTION";
  *(v3 + 12360) = "STARTUP_SOUND_STARTUP_SOUND_DESCRIPTION";
  *(v3 + 12696) = "SYSTEM_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 12744) = "TABLE_ROW_COLUMN_TABLE_ROW_COLUMN_DESCRIPTION";
  *(v3 + 12768) = "TAP_AN_ICON_TO_CHANGE_TAP_AN_ICON_TO_CHANGE_DESCRIPTION";
  *(v3 + 13176) = "TOGGLE_WITH_SHIFT_KEY_TOGGLE_WITH_SHIFT_KEY_DESCRIPTION";
  *(v3 + 13200) = "TOGGLE_ZOOM_TOGGLE_ZOOM_DESCRIPTION";
  *(v3 + 13184) = 55;
  *(v3 + 13192) = 2;
  *(v3 + 13208) = 35;
  *(v3 + 13160) = 35;
  *(v3 + 13168) = 2;
  *(v3 + 13032) = "TEXT_EDITING_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 13152) = "TIME_LIMITS_TIME_LIMITS_DESCRIPTION";
  *(v3 + 13136) = 55;
  *(v3 + 13144) = 2;
  *(v3 + 13104) = "THREE_D_TOUCH_THREE_D_TOUCH_DESCRIPTION";
  *(v3 + 13128) = "THREE_D__HAPTIC_TOUCH_THREE_D__HAPTIC_TOUCH_DESCRIPTION";
  *(v3 + 13112) = 39;
  *(v3 + 13120) = 2;
  *(v3 + 13080) = "THREE_D_TOUCH_SENSITIVITY_THREE_D_TOUCH_SENSITIVITY_DESCRIPTION";
  *(v3 + 13072) = 2;
  *(v3 + 13088) = 63;
  *(v3 + 13096) = 2;
  *(v3 + 13056) = "THREE_D_TOUCH_SENSITIVITY_AND_TOUCH_DURATION_TEST_THREE_D_TOUCH_SENSITIVITY_AND_TOUCH_DURATION_TEST_DESCRIPTION";
  *(v3 + 13064) = 111;
  *(v3 + 13040) = 50;
  *(v3 + 13048) = 2;
  *(v3 + 13016) = 41;
  *(v3 + 13024) = 2;
  *(v3 + 12888) = "TAP_TO_WAKE_TAP_TO_WAKE_DESCRIPTION";
  *(v3 + 13008) = "TEXT_EDITING_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 12992) = 59;
  *(v3 + 13000) = 2;
  *(v3 + 12960) = "TA_IGNORE_REPEAT_TA_IGNORE_REPEAT_DESCRIPTION";
  *(v3 + 12984) = "TEMPORARILY_TOGGLE_ZOOM_TEMPORARILY_TOGGLE_ZOOM_DESCRIPTION";
  *(v3 + 12968) = 45;
  *(v3 + 12976) = 2;
  *(v3 + 12936) = "TA_HOLD_DURATION_TA_HOLD_DURATION_DESCRIPTION";
  *(v3 + 12928) = 2;
  *(v3 + 12944) = 45;
  *(v3 + 12952) = 2;
  *(v3 + 12912) = "TARGET_TARGET_DESCRIPTION";
  *(v3 + 12896) = 35;
  *(v3 + 12904) = 2;
  *(v3 + 12920) = 25;
  *(v3 + 12872) = 47;
  *(v3 + 12880) = 2;
  *(v3 + 12840) = "TAP_BEHAVIOR_TAP_BEHAVIOR_DESCRIPTION";
  *(v3 + 12864) = "TAP_TOUCH_TO_WAKE_TAP_TOUCH_TO_WAKE_DESCRIPTION";
  *(v3 + 12848) = 37;
  *(v3 + 12856) = 2;
  *(v3 + 12816) = "TAP_ASSISTANCE_TAP_ASSISTANCE_DESCRIPTION";
  *(v3 + 12808) = 2;
  *(v3 + 12824) = 41;
  *(v3 + 12832) = 2;
  *(v3 + 12792) = "TAP_AN_ICON_TO_CHANGE_TAP_AN_ICON_TO_CHANGE_VISIONOS_DESCRIPTION";
  *(v3 + 8408) = 64;
  *(v3 + 12800) = 64;
  *(v3 + 12776) = 55;
  *(v3 + 12784) = 2;
  *(v3 + 9824) = 44;
  *(v3 + 11552) = 44;
  *(v3 + 12736) = 2;
  *(v3 + 12752) = 45;
  *(v3 + 12760) = 2;
  *(v3 + 12704) = 44;
  *(v3 + 12720) = "TABLE_HEADERS_TABLE_HEADERS_DESCRIPTION";
  *(v3 + 12712) = 2;
  *(v3 + 12728) = 39;
  *(v3 + 12680) = 35;
  *(v3 + 12688) = 2;
  *(v3 + 12552) = "SWITCH_CONTROL_MODE_SWITCH_CONTROL_MODE_DESCRIPTION";
  *(v3 + 12672) = "SYSTEM_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 12656) = 49;
  *(v3 + 12664) = 2;
  *(v3 + 12624) = "SWITCH_SETS_SWITCH_SETS_DESCRIPTION";
  *(v3 + 12648) = "SWITCH_ZOOM_REGION_SWITCH_ZOOM_REGION_DESCRIPTION";
  *(v3 + 12632) = 35;
  *(v3 + 12640) = 2;
  *(v3 + 12600) = "SWITCH_GESTURE_HANDEDNESS_SWITCH_GESTURE_HANDEDNESS_DESCRIPTION";
  *(v3 + 12592) = 2;
  *(v3 + 12608) = 63;
  *(v3 + 12616) = 2;
  *(v3 + 12576) = "SWITCH_CONTROL_SWITCH_CONTROL_DESCRIPTION";
  *(v3 + 12560) = 51;
  *(v3 + 12568) = 2;
  *(v3 + 12584) = 41;
  *(v3 + 12536) = 29;
  *(v3 + 12544) = 2;
  *(v3 + 12384) = "STATUS_CELLS_POSITION_STATUS_CELLS_POSITION_DESCRIPTION";
  *(v3 + 12528) = "SWITCHES_SWITCHES_DESCRIPTION";
  *(v3 + 12512) = 55;
  *(v3 + 12520) = 2;
  *(v3 + 12480) = "SUBTCAP_STYLE_SUBTCAP_STYLE_DESCRIPTION";
  *(v3 + 12504) = "SUBTITLES__CAPTIONING_SUBTITLES__CAPTIONING_DESCRIPTION";
  *(v3 + 12488) = 39;
  *(v3 + 12496) = 2;
  *(v3 + 12456) = "STICKY_ROTOR_TITLE_STICKY_ROTOR_TITLE_DESCRIPTION";
  *(v3 + 12448) = 2;
  *(v3 + 12464) = 49;
  *(v3 + 12472) = 2;
  *(v3 + 12432) = "STICKY_KEYS_STICKY_KEYS_DESCRIPTION";
  *(v3 + 12416) = 37;
  *(v3 + 12424) = 2;
  *(v3 + 12440) = 35;
  *(v3 + 12408) = "STATUS_CELLS_STATUS_CELLS_DESCRIPTION";
  *(v3 + 12352) = 2;
  *(v3 + 12392) = 55;
  *(v3 + 12400) = 2;
  *(v3 + 12368) = 39;
  *(v3 + 12376) = 2;
  *(v3 + 12288) = "SPOKEN_CONTENT_DEFAULT_LANGUAGE_SPOKEN_CONTENT_DEFAULT_LANGUAGE_DESCRIPTION";
  *(v3 + 12336) = "SPOKEN_CONTENT_SPOKEN_CONTENT_DESCRIPTION";
  *(v3 + 7856) = 75;
  *(v3 + 12320) = 73;
  *(v3 + 12328) = 2;
  *(v3 + 12344) = 41;
  *(v3 + 9440) = 75;
  *(v3 + 12296) = 75;
  *(v3 + 12312) = "SPOKEN_CONTENT_DETECT_LANGUAGE_SPOKEN_CONTENT_DETECT_LANGUAGE_DESCRIPTION";
  *(v3 + 12304) = 2;
  *(v3 + 7968) = "LONGPRESS_DURATION_LONGPRESS_DURATION_VISIONOS_DESCRIPTION";
  *(v3 + 12280) = 2;
  *(v3 + 12264) = "SPEECH_VARIANCE_LABEL_SPEECH_VARIANCE_LABEL_DESCRIPTION";
  *(v3 + 12248) = 25;
  *(v3 + 12256) = 2;
  *(v3 + 12272) = 55;
  *(v3 + 12224) = 65;
  *(v3 + 12232) = 2;
  *(v3 + 12168) = "SPEECH_PAUSES_SCANNING_LABEL_SPEECH_PAUSES_SCANNING_LABEL_DESCRIPTION";
  *(v3 + 12192) = "SPEECH_SC_SPEECH_DESCRIPTION";
  *(v3 + 12176) = 69;
  *(v3 + 12184) = 2;
  *(v3 + 12200) = 28;
  *(v3 + 12208) = 2;
  *(v3 + 7712) = 73;
  *(v3 + 8744) = 73;
  *(v3 + 9680) = 73;
  *(v3 + 12136) = 2;
  *(v3 + 12152) = 47;
  *(v3 + 12160) = 2;
  *(v3 + 12104) = 73;
  *(v3 + 12120) = "SPEECH_CONTROLLER_LONG_PRESS_SPEECH_CONTROLLER_LONG_PRESS_DESCRIPTION";
  *(v3 + 12112) = 2;
  *(v3 + 12128) = 69;
  *(v3 + 12096) = "SPEECH_CONTROLLER_IDLE_OPACITY_SPEECH_CONTROLLER_IDLE_OPACITY_DESCRIPTION";
  *(v3 + 12064) = 2;
  *(v3 + 12080) = 69;
  *(v3 + 12088) = 2;
  *(v3 + 8504) = 42;
  *(v3 + 12032) = 43;
  *(v3 + 12040) = 2;
  *(v3 + 12056) = 23;
  *(v3 + 11960) = 42;
  *(v3 + 12024) = "SPEAK_SELECTION_SPEAK_SELECTION_DESCRIPTION";
  *(v3 + 12008) = 63;
  *(v3 + 12016) = 2;
  *(v3 + 11976) = "SPEAK_SCREEN_SPEAK_SCREEN_DESCRIPTION";
  *(v3 + 12000) = "SPEAK_SELECTION_HIGHLIGHT_SPEAK_SELECTION_HIGHLIGHT_DESCRIPTION";
  *(v3 + 11984) = 37;
  *(v3 + 11992) = 2;
  *(v3 + 11944) = 2;
  *(v3 + 11968) = 2;
  *(v3 + 11904) = "SPATIALIZE_SPEECH_SPATIALIZE_SPEECH_SPOKEN_CONTENT_DESCRIPTION";
  *(v3 + 11928) = "SPEAKING_RATE_SPEAKING_RATE_DESCRIPTION";
  *(v3 + 11896) = 2;
  *(v3 + 11912) = 62;
  *(v3 + 11920) = 2;
  *(v3 + 11936) = 39;
  *(v3 + 8336) = 65;
  *(v3 + 10760) = 65;
  *(v3 + 11648) = 65;
  *(v3 + 11864) = 23;
  *(v3 + 11872) = 2;
  *(v3 + 11888) = 47;
  *(v3 + 11840) = 65;
  *(v3 + 11856) = "SOUND_SOUND_DESCRIPTION";
  *(v3 + 11800) = 2;
  *(v3 + 11848) = 2;
  *(v3 + 11816) = 47;
  *(v3 + 11824) = 2;
  *(v3 + 11760) = "SOUND_ON_MOUSE_CLICK_SOUND_ON_MOUSE_CLICK_DESCRIPTION";
  *(v3 + 11784) = "SOUND_ON_MOUSE_CLICK_SOUND_ON_MOUSE_CLICK_VISIONOS_DESCRIPTION";
  *(v3 + 8912) = 27;
  *(v3 + 11768) = 53;
  *(v3 + 11776) = 2;
  *(v3 + 11792) = 62;
  *(v3 + 10088) = 27;
  *(v3 + 11744) = 27;
  *(v3 + 11728) = 2;
  *(v3 + 11752) = 2;
  *(v3 + 11712) = "SOUND_EFFECTS_SOUND_EFFECTS_DESCRIPTION";
  *(v3 + 11696) = 61;
  *(v3 + 11704) = 2;
  *(v3 + 11720) = 39;
  *(v3 + 11664) = "SOUND_CURTAIN_SOUND_CURTAIN_DESCRIPTION";
  *(v3 + 8200) = 2;
  *(v3 + 8224) = 2;
  *(v3 + 11656) = 2;
  *(v3 + 11672) = 39;
  *(v3 + 11680) = 2;
  *(v3 + 8248) = 2;
  *(v3 + 8272) = 2;
  *(v3 + 8296) = 2;
  *(v3 + 11608) = 2;
  *(v3 + 11624) = 48;
  *(v3 + 11632) = 2;
  *(v3 + 8320) = 2;
  *(v3 + 8344) = 2;
  *(v3 + 8368) = 2;
  *(v3 + 11560) = 2;
  *(v3 + 11576) = 43;
  *(v3 + 11584) = 2;
  *(v3 + 8392) = 2;
  *(v3 + 8416) = 2;
  *(v3 + 11504) = 45;
  *(v3 + 11512) = 2;
  *(v3 + 11528) = 35;
  *(v3 + 11536) = 2;
  *(v3 + 8440) = 2;
  *(v3 + 8464) = 2;
  *(v3 + 11456) = 28;
  *(v3 + 11464) = 2;
  *(v3 + 11480) = 25;
  *(v3 + 11488) = 2;
  *(v3 + 8488) = 2;
  *(v3 + 8512) = 2;
  *(v3 + 8536) = 2;
  *(v3 + 11408) = 28;
  *(v3 + 11416) = 2;
  *(v3 + 11440) = 2;
  *(v3 + 8560) = 2;
  *(v3 + 8584) = 2;
  *(v3 + 11360) = 37;
  *(v3 + 11368) = 2;
  *(v3 + 11384) = 49;
  *(v3 + 11392) = 2;
  *(v3 + 8608) = 2;
  *(v3 + 8632) = 2;
  *(v3 + 11312) = 31;
  *(v3 + 11320) = 2;
  *(v3 + 11336) = 37;
  *(v3 + 11344) = 2;
  *(v3 + 8656) = 2;
  *(v3 + 11264) = 21;
  *(v3 + 11272) = 2;
  *(v3 + 11288) = 49;
  *(v3 + 11296) = 2;
  *(v3 + 8680) = 2;
  *(v3 + 8704) = 2;
  *(v3 + 11216) = 45;
  *(v3 + 11224) = 2;
  *(v3 + 11240) = 43;
  *(v3 + 11248) = 2;
  *(v3 + 8728) = 2;
  *(v3 + 8752) = 2;
  *(v3 + 8776) = 2;
  *(v3 + 11168) = 31;
  *(v3 + 11176) = 2;
  *(v3 + 11200) = 2;
  *(v3 + 8800) = 2;
  *(v3 + 8824) = 2;
  *(v3 + 11120) = 53;
  *(v3 + 11128) = 2;
  *(v3 + 11144) = 35;
  *(v3 + 11152) = 2;
  *(v3 + 8848) = 2;
  *(v3 + 8872) = 2;
  *(v3 + 11072) = 45;
  *(v3 + 11080) = 2;
  *(v3 + 11096) = 43;
  *(v3 + 11104) = 2;
  *(v3 + 8896) = 2;
  *(v3 + 8920) = 2;
  *(v3 + 11024) = 47;
  *(v3 + 11032) = 2;
  *(v3 + 11048) = 53;
  *(v3 + 11056) = 2;
  *(v3 + 8944) = 2;
  *(v3 + 8968) = 2;
  *(v3 + 10976) = 51;
  *(v3 + 10984) = 2;
  *(v3 + 11000) = 57;
  *(v3 + 11008) = 2;
  *(v3 + 8992) = 2;
  *(v3 + 9016) = 2;
  *(v3 + 10928) = 51;
  *(v3 + 10936) = 2;
  *(v3 + 10952) = 33;
  *(v3 + 10960) = 2;
  *(v3 + 9040) = 2;
  *(v3 + 9064) = 2;
  *(v3 + 10880) = 47;
  *(v3 + 10888) = 2;
  *(v3 + 10904) = 43;
  *(v3 + 10912) = 2;
  *(v3 + 9088) = 2;
  *(v3 + 9112) = 2;
  *(v3 + 10832) = 55;
  *(v3 + 10840) = 2;
  *(v3 + 10856) = 63;
  *(v3 + 10864) = 2;
  *(v3 + 9136) = 2;
  *(v3 + 9160) = 2;
  *(v3 + 10784) = 53;
  *(v3 + 10792) = 2;
  *(v3 + 10808) = 39;
  *(v3 + 10816) = 2;
  *(v3 + 9184) = 2;
  *(v3 + 9208) = 2;
  *(v3 + 9232) = 2;
  *(v3 + 10736) = 57;
  *(v3 + 10744) = 2;
  *(v3 + 10768) = 2;
  *(v3 + 9256) = 2;
  *(v3 + 9280) = 2;
  *(v3 + 10688) = 41;
  *(v3 + 10696) = 2;
  *(v3 + 10712) = 37;
  *(v3 + 10720) = 2;
  *(v3 + 9304) = 2;
  *(v3 + 9328) = 2;
  *(v3 + 10640) = 45;
  *(v3 + 10648) = 2;
  *(v3 + 10664) = 55;
  *(v3 + 10672) = 2;
  *(v3 + 9352) = 2;
  *(v3 + 9376) = 2;
  *(v3 + 10592) = 43;
  *(v3 + 10600) = 2;
  *(v3 + 10616) = 45;
  *(v3 + 10624) = 2;
  *(v3 + 9400) = 2;
  *(v3 + 9424) = 2;
  *(v3 + 10544) = 37;
  *(v3 + 10552) = 2;
  *(v3 + 10568) = 45;
  *(v3 + 10576) = 2;
  *(v3 + 9448) = 2;
  *(v3 + 9472) = 2;
  *(v3 + 10496) = 41;
  *(v3 + 10504) = 2;
  *(v3 + 10520) = 59;
  *(v3 + 10528) = 2;
  *(v3 + 9496) = 2;
  *(v3 + 9520) = 2;
  *(v3 + 10448) = 21;
  *(v3 + 10456) = 2;
  *(v3 + 10472) = 41;
  *(v3 + 10480) = 2;
  *(v3 + 9544) = 2;
  *(v3 + 10400) = 39;
  *(v3 + 10408) = 2;
  *(v3 + 10424) = 17;
  *(v3 + 10432) = 2;
  *(v3 + 9568) = 2;
  *(v3 + 9592) = 2;
  *(v3 + 10352) = 35;
  *(v3 + 10360) = 2;
  *(v3 + 10376) = 23;
  *(v3 + 10384) = 2;
  *(v3 + 9616) = 2;
  *(v3 + 9640) = 2;
  *(v3 + 9664) = 2;
  *(v3 + 10312) = 2;
  *(v3 + 10328) = 55;
  *(v3 + 10336) = 2;
  *(v3 + 9688) = 2;
  *(v3 + 9712) = 2;
  *(v3 + 10256) = 61;
  *(v3 + 10264) = 2;
  *(v3 + 10280) = 49;
  *(v3 + 10288) = 2;
  *(v3 + 9736) = 2;
  *(v3 + 9760) = 2;
  *(v3 + 10208) = 71;
  *(v3 + 10216) = 2;
  *(v3 + 10232) = 61;
  *(v3 + 10240) = 2;
  *(v3 + 9784) = 2;
  *(v3 + 9808) = 2;
  *(v3 + 10160) = 49;
  *(v3 + 10168) = 2;
  *(v3 + 10184) = 37;
  *(v3 + 10192) = 2;
  *(v3 + 9832) = 2;
  *(v3 + 9856) = 2;
  *(v3 + 10112) = 39;
  *(v3 + 10120) = 2;
  *(v3 + 10136) = 51;
  *(v3 + 10144) = 2;
  *(v3 + 9880) = 2;
  *(v3 + 9904) = 2;
  *(v3 + 9928) = 2;
  *(v3 + 9952) = 2;
  *(v3 + 10072) = 2;
  *(v3 + 10096) = 2;
  *(v3 + 9976) = 2;
  *(v3 + 10000) = 2;
  *(v3 + 10048) = 2;
  *(v3 + 10064) = 53;
  *(v3 + 10024) = 2;
  *(v3 + 10032) = "REACHABILITY_REACHABILITY_DESCRIPTION";
  *(v3 + 13224) = "TOP_BUTTON_TOP_BUTTON_DESCRIPTION";
  *(v3 + 10040) = 37;
  *(v3 + 13248) = "TOP_LEFT_TOP_LEFT_DESCRIPTION";
  *(v3 + 10016) = 41;
  *(v3 + 13272) = "TOP_RIGHT_TOP_RIGHT_DESCRIPTION";
  *(v3 + 9992) = 57;
  *(v3 + 13296) = "TOP_TOUCHID_BUTTON_TOP_TOUCHID_BUTTON_DESCRIPTION";
  *(v3 + 13320) = "TOUCH_ACCOMMODATIONS_TOUCH_ACCOMMODATIONS_DESCRIPTION";
  *(v3 + 13344) = "TOUCH_DURATION_TEST_TOUCH_DURATION_TEST_DESCRIPTION";
  *(v3 + 9968) = 45;
  *(v3 + 13368) = "TOUCH_DURATION_THREE_D_TOUCH_DURATION_DESCRIPTION";
  *(v3 + 9944) = 35;
  *(v3 + 13392) = "TOUCH_DURATION_TOUCH_DURATION_DESCRIPTION";
  *(v3 + 9920) = 45;
  *(v3 + 13416) = "TOUCH_GESTURES_TOUCH_GESTURES_DESCRIPTION";
  *(v3 + 13440) = "TOUCH_TOUCH_DESCRIPTION";
  *(v3 + 8072) = 23;
  *(v3 + 9896) = 49;
  *(v3 + 13448) = 23;
  *(v3 + 13464) = "TRACKING_MODE_HEAD_TRACKING_DESCRIPTION";
  *(v3 + 13488) = "TRACKING_SENSITIVITY_TRACKING_SENSITIVITY_DESCRIPTION";
  *(v3 + 9872) = 43;
  *(v3 + 13512) = "TRACKING_SENSITIVITY_TRACKING_SENSITIVITY_VISIONOS_DESCRIPTION";
  *(v3 + 9848) = 61;
  *(v3 + 13536) = "TRACKING_SPEED_TRACKING_SPEED_DESCRIPTION";
  *(v3 + 13560) = "TRACKPAD_INERTIA_TRACKPAD_INERTIA_DESCRIPTION";
  *(v3 + 13584) = "TTY_ACCESSIBILITY";
  *(v3 + 13592) = 17;
  *(v3 + 13608) = "TURN_OFF_GLIDING_CURSOR_TURN_OFF_GLIDING_CURSOR_DESCRIPTION";
  *(v3 + 9800) = 41;
  *(v3 + 13632) = "TURN_PAGES_WHEN_PANNING_TURN_PAGES_WHEN_PANNING_DESCRIPTION";
  *(v3 + 9776) = 35;
  *(v3 + 13656) = "TYPE_TO_SIRI_TYPE_TO_SIRI_DESCRIPTION";
  *(v3 + 13680) = "TYPING_FEEDBACK_SPEECH_TYPING_FEEDBACK_DESCRIPTION";
  *(v3 + 7568) = 50;
  *(v3 + 13688) = 50;
  *(v3 + 13704) = "TYPING_FEEDBACK_TYPING_FEEDBACK_DESCRIPTION";
  *(v3 + 13728) = "TYPING_STYLE_TYPING_STYLE_DESCRIPTION";
  *(v3 + 13752) = "TYPING_TYPING_DESCRIPTION";
  *(v3 + 9728) = 47;
  *(v3 + 13776) = "UPWARDS_HUD_UPWARDS_HUD_DESCRIPTION";
  *(v3 + 13800) = "UPWARDS_HUD_VERTICAL_POSITION_UPWARDS_HUD_VERTICAL_POSITION_DESCRIPTION";
  *(v3 + 7880) = 71;
  *(v3 + 9704) = 47;
  *(v3 + 13808) = 71;
  *(v3 + 13824) = "USE_GAME_CONTROLLER_USE_GAME_CONTROLLER_DESCRIPTION";
  *(v3 + 13848) = "USE_GAME_CONTROLLER_USE_GAME_CONTROLLER_VISIONOS_DESCRIPTION";
  *(v3 + 13856) = 60;
  *(v3 + 13872) = "USE_PRIMARY_KEYBOARD_USE_PRIMARY_KEYBOARD_DESCRIPTION";
  *(v3 + 9632) = 57;
  *(v3 + 13896) = "USE_PRIMARY_KEYBOARD_USE_PRIMARY_KEYBOARD_VISIONOS_DESCRIPTION";
  *(v3 + 13520) = 62;
  *(v3 + 13904) = 62;
  *(v3 + 9608) = 61;
  *(v3 + 13920) = "VC_CMD_ACCESSIBILITY_VC_CMD_ACCESSIBILITY_DESCRIPTION";
  *(v3 + 9584) = 59;
  *(v3 + 13944) = "VC_CMD_ADVANCED_GESTURES_VC_CMD_ADVANCED_GESTURES_DESCRIPTION";
  *(v3 + 7400) = 61;
  *(v3 + 7424) = 61;
  *(v3 + 7472) = 61;
  *(v3 + 8816) = 61;
  *(v3 + 9560) = 59;
  *(v3 + 9200) = 61;
  *(v3 + 9248) = 61;
  *(v3 + 13952) = 61;
  *(v3 + 9512) = 37;
  *(v3 + 13968) = "VC_CMD_BASIC_GESTURES_VC_CMD_BASIC_GESTURES_DESCRIPTION";
  *(v3 + 13992) = "VC_CMD_BASIC_NAVIGATION_VC_CMD_BASIC_NAVIGATION_DESCRIPTION";
  *(v3 + 7928) = 59;
  *(v3 + 9464) = 63;
  *(v3 + 9392) = 59;
  *(v3 + 13616) = 59;
  *(v3 + 13640) = 59;
  *(v3 + 14000) = 59;
  *(v3 + 14016) = "VC_CMD_DEVICE_VC_CMD_DEVICE_DESCRIPTION";
  *(v3 + 14040) = "VC_CMD_DICTATION_VC_CMD_DICTATION_DESCRIPTION";
  *(v3 + 14064) = "VC_CMD_OVERLAYS_VC_CMD_OVERLAYS_DESCRIPTION";
  *(v3 + 9416) = 43;
  *(v3 + 14088) = "VC_CMD_TEXT_DELETION_VC_CMD_TEXT_DELETION_DESCRIPTION";
  *(v3 + 14112) = "VC_CMD_TEXT_EDITING_VC_CMD_TEXT_EDITING_DESCRIPTION";
  *(v3 + 14136) = "VC_CMD_TEXT_NAVIGATION_VC_CMD_TEXT_NAVIGATION_DESCRIPTION";
  *(v3 + 14160) = "VC_CMD_TEXT_SELECTION_VC_CMD_TEXT_SELECTION_DESCRIPTION";
  *(v3 + 14184) = "VERBOSITY_CONTROLS_VERBOSITY_CONTROLS_DESCRIPTION";
  *(v3 + 9368) = 55;
  *(v3 + 14208) = "VERBOSITY_VERBOSITY_DESCRIPTION";
  *(v3 + 9344) = 69;
  *(v3 + 14232) = "VIBRATION_VIBRATION_DESCRIPTION";
  *(v3 + 9320) = 49;
  *(v3 + 14256) = "VIRTUAL_TRACKPAD_VIRTUAL_TRACKPAD_DESCRIPTION";
  *(v3 + 14280) = "VOCABULARY_VOCABULARY_DESCRIPTION";
  *(v3 + 8048) = 33;
  *(v3 + 8096) = 67;
  *(v3 + 9272) = 37;
  *(v3 + 9296) = 33;
  *(v3 + 8216) = 33;
  *(v3 + 8288) = 33;
  *(v3 + 8480) = 33;
  *(v3 + 8960) = 67;
  *(v3 + 9224) = 47;
  *(v3 + 13232) = 33;
  *(v3 + 14288) = 33;
  *(v3 + 14304) = "VOICEOVER_DELAY_UNTIL_SPEAK_VOICEOVER_DELAY_UNTIL_SPEAK_DESCRIPTION";
  *(v3 + 14312) = 67;
  *(v3 + 14328) = "VOICEOVER_FEEDBACK_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 14352) = "VOICEOVER_FEEDBACK_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 8864) = 56;
  *(v3 + 9152) = 43;
  *(v3 + 9176) = 45;
  *(v3 + 14360) = 56;
  *(v3 + 14376) = "VOICEOVER_IMAGE_DESCRIPTIONS_VOICEOVER_IMAGE_DESCRIPTIONS_DESCRIPTION";
  *(v3 + 14400) = "VOICEOVER_RECOGNITION_VOICEOVER_RECOGNITION_DESCRIPTION";
  *(v3 + 8312) = 55;
  *(v3 + 9080) = 55;
  *(v3 + 9128) = 53;
  *(v3 + 9104) = 41;
  *(v3 + 13976) = 55;
  *(v3 + 14168) = 55;
  *(v3 + 14408) = 55;
  *(v3 + 14424) = "VOICEOVER_SCREEN_RECOGNITION_VOICEOVER_SCREEN_RECOGNITION_DESCRIPTION";
  *(v3 + 7448) = 63;
  *(v3 + 7544) = 63;
  *(v3 + 7664) = 69;
  *(v3 + 8720) = 63;
  *(v3 + 9056) = 53;
  *(v3 + 8984) = 51;
  *(v3 + 9008) = 57;
  *(v3 + 14384) = 69;
  *(v3 + 14432) = 69;
  *(v3 + 14448) = "VOICEOVER_SOUNDS_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 14472) = "VOICEOVER_SOUNDS__HAPTICS_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 14480) = 63;
  *(v3 + 14496) = "VOICEOVER_TUTORIAL_VOICEOVER_TUTORIAL_DESCRIPTION";
  *(v3 + 14520) = "VOICEOVER_VOICEOVER_DESCRIPTION";
  *(v3 + 14544) = "VOICES_SC_VOICES_DESCRIPTION";
  *(v3 + 14552) = 28;
  *(v3 + 8120) = 39;
  *(v3 + 8144) = 48;
  *(v3 + 8936) = 47;
  *(v3 + 8168) = 49;
  *(v3 + 0x2000) = 49;
  *(v3 + 8240) = 51;
  *(v3 + 8264) = 39;
  *(v3 + 8432) = 35;
  *(v3 + 8888) = 25;
  *(v3 + 8456) = 25;
  *(v3 + 8528) = 49;
  *(v3 + 8552) = 58;
  *(v3 + 8576) = 35;
  *(v3 + 8600) = 45;
  *(v3 + 8840) = 47;
  *(v3 + 8624) = 39;
  *(v3 + 8648) = 45;
  *(v3 + 8672) = 47;
  *(v3 + 8696) = 43;
  *(v3 + 8768) = 43;
  *(v3 + 8792) = 37;
  *(v3 + 13216) = 2;
  *(v3 + 13240) = 2;
  *(v3 + 13264) = 2;
  *(v3 + 13288) = 2;
  *(v3 + 13312) = 2;
  *(v3 + 13336) = 2;
  *(v3 + 13360) = 2;
  *(v3 + 13384) = 2;
  *(v3 + 13408) = 2;
  *(v3 + 13432) = 2;
  *(v3 + 13456) = 2;
  *(v3 + 13480) = 2;
  *(v3 + 13504) = 2;
  *(v3 + 13528) = 2;
  *(v3 + 13552) = 2;
  *(v3 + 13576) = 2;
  *(v3 + 13600) = 2;
  *(v3 + 13624) = 2;
  *(v3 + 13648) = 2;
  *(v3 + 13672) = 2;
  *(v3 + 13696) = 2;
  *(v3 + 13720) = 2;
  *(v3 + 13744) = 2;
  *(v3 + 13768) = 2;
  *(v3 + 13792) = 2;
  *(v3 + 13816) = 2;
  *(v3 + 13840) = 2;
  *(v3 + 13864) = 2;
  *(v3 + 13888) = 2;
  *(v3 + 13912) = 2;
  *(v3 + 13936) = 2;
  *(v3 + 13960) = 2;
  *(v3 + 13984) = 2;
  *(v3 + 14008) = 2;
  *(v3 + 14032) = 2;
  *(v3 + 14056) = 2;
  *(v3 + 14080) = 2;
  *(v3 + 14104) = 2;
  *(v3 + 14128) = 2;
  *(v3 + 14152) = 2;
  *(v3 + 14176) = 2;
  *(v3 + 14200) = 2;
  *(v3 + 14224) = 2;
  *(v3 + 14248) = 2;
  *(v3 + 14272) = 2;
  *(v3 + 14296) = 2;
  *(v3 + 14320) = 2;
  *(v3 + 14344) = 2;
  *(v3 + 14368) = 2;
  *(v3 + 14392) = 2;
  *(v3 + 14416) = 2;
  *(v3 + 14440) = 2;
  *(v3 + 14464) = 2;
  *(v3 + 14488) = 2;
  *(v3 + 14512) = 2;
  *(v3 + 14536) = 2;
  *(v3 + 14560) = 2;
  *(v3 + 14584) = 2;
  *(v3 + 14608) = 2;
  *(v3 + 14632) = 2;
  *(v3 + 14656) = 2;
  *(v3 + 14680) = 2;
  *(v3 + 14704) = 2;
  *(v3 + 14728) = 2;
  *(v3 + 14752) = 2;
  *(v3 + 14776) = 2;
  *(v3 + 14800) = 2;
  *(v3 + 14824) = 2;
  *(v3 + 14848) = 2;
  *(v3 + 14872) = 2;
  *(v3 + 14896) = 2;
  *(v3 + 14920) = 2;
  *(v3 + 14944) = 2;
  *(v3 + 14968) = 2;
  *(v3 + 14992) = 2;
  *(v3 + 15016) = 2;
  *(v3 + 15040) = 2;
  *(v3 + 15064) = 2;
  *(v3 + 15088) = 2;
  *(v3 + 15112) = 2;
  *(v3 + 15136) = 2;
  *(v3 + 15160) = 2;
  *(v3 + 15184) = 2;
  *(v3 + 15208) = 2;
  *(v3 + 15232) = 2;
  *(v3 + 15256) = 2;
  *(v3 + 14568) = "VOICES_VOICES_DESCRIPTION";
  *(v3 + 14592) = "VOICE_CONTROL_VOICE_CONTROL_DESCRIPTION";
  *(v3 + 7352) = 39;
  *(v3 + 7496) = 39;
  *(v3 + 13472) = 39;
  *(v3 + 14024) = 39;
  *(v3 + 14600) = 39;
  *(v3 + 14616) = "VOICE_FEEDBACK_VOICE_FEEDBACK_DESCRIPTION";
  *(v3 + 7952) = 49;
  *(v3 + 8000) = 31;
  *(v3 + 13400) = 41;
  *(v3 + 13424) = 41;
  *(v3 + 13544) = 41;
  *(v3 + 14624) = 41;
  *(v3 + 14640) = "VO_APPLY_TO_APPS_VO_APPLY_TO_APPS_DESCRIPTION";
  *(v3 + 7328) = 45;
  *(v3 + 13568) = 45;
  *(v3 + 14048) = 45;
  *(v3 + 14264) = 45;
  *(v3 + 14456) = 45;
  *(v3 + 14648) = 45;
  *(v3 + 14664) = "VO_APPLY_TO_APPS_VO_APPLY_TO_APPS_SR_DESCRIPTION";
  *(v3 + 7904) = 43;
  *(v3 + 13256) = 29;
  *(v3 + 14672) = 48;
  *(v3 + 14688) = "VO_AUDIO_VO_AUDIO_DESCRIPTION";
  *(v3 + 14696) = 29;
  *(v3 + 14712) = "VO_BRAILLE_SCREEN_KEYBOARD_COMMAND_VO_BRAILLE_SCREEN_KEYBOARD_COMMAND_DESCRIPTION";
  *(v3 + 14720) = 81;
  *(v3 + 14736) = "VO_DIRECT_TOUCH_APPS_VO_DIRECT_TOUCH_APPS_DESCRIPTION";
  *(v3 + 14760) = "VO_FEEDBACK_VO_FEEDBACK_DESCRIPTION";
  *(v3 + 14784) = "VO_IMAGE_DESCRIPTIONS_ADDITIONAL_LANGUAGES_VO_IMAGE_DESCRIPTIONS_ADDITIONAL_LANGUAGES_DESCRIPTION";
  *(v3 + 14792) = 97;
  *(v3 + 14808) = "VO_IMAGE_DESCRIPTIONS_SENSITIVE_CONTENT_OUTPUT_VO_IMAGE_DESCRIPTIONS_SENSITIVE_CONTENT_OUTPUT_DESCRIPTION";
  *(v3 + 14816) = 105;
  *(v3 + 14832) = "VO_MAGIC_TAP_COMMAND_VO_MAGIC_TAP_COMMAND_DESCRIPTION";
  *(v3 + 14856) = "VO_NAVIGATION_STYLE_VO_NAVIGATION_STYLE_DESCRIPTION";
  *(v3 + 7640) = 51;
  *(v3 + 7760) = 51;
  *(v3 + 13352) = 51;
  *(v3 + 13832) = 51;
  *(v3 + 14120) = 51;
  *(v3 + 14864) = 51;
  *(v3 + 14880) = "VO_OCR_VO_OCR_DESCRIPTION";
  *(v3 + 13760) = 25;
  *(v3 + 14576) = 25;
  *(v3 + 14888) = 25;
  *(v3 + 14904) = "WORD_WRAP_WORD_WRAP_DESCRIPTION";
  *(v3 + 7688) = 49;
  *(v3 + 13280) = 31;
  *(v3 + 14216) = 31;
  *(v3 + 14240) = 31;
  *(v3 + 14528) = 31;
  *(v3 + 14912) = 31;
  *(v3 + 14928) = "ZOOM_AS_DEFAULT_DIAL_ZOOM_AS_DEFAULT_DIAL_DESCRIPTION";
  *(v3 + 7376) = 53;
  *(v3 + 7592) = 35;
  *(v3 + 7616) = 35;
  *(v3 + 13328) = 53;
  *(v3 + 13496) = 53;
  *(v3 + 13880) = 53;
  *(v3 + 13928) = 53;
  *(v3 + 14096) = 53;
  *(v3 + 14336) = 47;
  *(v3 + 14744) = 53;
  *(v3 + 14840) = 53;
  *(v3 + 14936) = 53;
  *(v3 + 14952) = "ZOOM_BORDER_COLOR_ZOOM_BORDER_COLOR_DESCRIPTION";
  *(v3 + 14960) = 47;
  *(v3 + 14976) = "ZOOM_CONTENT_ZOOM_CONTENT_DESCRIPTION";
  *(v3 + 7280) = 37;
  *(v3 + 13664) = 37;
  *(v3 + 13736) = 37;
  *(v3 + 14984) = 37;
  *(v3 + 15000) = "ZOOM_CONTROLLER_ACTION_DOUBLE_TAP_ZOOM_CONTROLLER_ACTION_DOUBLE_TAP_DESCRIPTION";
  *(v3 + 15024) = "ZOOM_CONTROLLER_ACTION_SINGLE_TAP_ZOOM_CONTROLLER_ACTION_SINGLE_TAP_DESCRIPTION";
  *(v3 + 15048) = "ZOOM_CONTROLLER_ACTION_TRIPLE_TAP_ZOOM_CONTROLLER_ACTION_TRIPLE_TAP_DESCRIPTION";
  *(v3 + 15008) = 79;
  *(v3 + 15032) = 79;
  *(v3 + 15056) = 79;
  *(v3 + 15072) = "ZOOM_CONTROLLER_ZOOM_CONTROLLER_DESCRIPTION";
  *(v3 + 13712) = 43;
  *(v3 + 14072) = 43;
  *(v3 + 15080) = 43;
  *(v3 + 15096) = "ZOOM_FILTER_ZOOM_FILTER_DESCRIPTION";
  *(v3 + 15120) = "ZOOM_IDLE_SLUG_OPACITY_ZOOM_IDLE_SLUG_OPACITY_DESCRIPTION";
  *(v3 + 15144) = "ZOOM_REGION_ZOOM_REGION_DESCRIPTION";
  *(v3 + 13784) = 35;
  *(v3 + 14768) = 35;
  *(v3 + 15104) = 35;
  *(v3 + 15152) = 35;
  *(v3 + 15168) = "ZOOM_TAP_AND_SLIDE_TO_ADJUST_ZOOM_LEVEL_ZOOM_TAP_AND_SLIDE_TO_ADJUST_ZOOM_LEVEL_DESCRIPTION";
  *(v3 + 14144) = 57;
  *(v3 + 15128) = 57;
  *(v3 + 15176) = 91;
  *(v3 + 15192) = "ZOOM_WITH_SCROLL_WHEEL_ZOOM_WITH_SCROLL_WHEEL_DESCRIPTION";
  *(v3 + 15200) = 57;
  *(v3 + 15216) = "ZOOM_WITH_TRACKPAD_ZOOM_WITH_TRACKPAD_DESCRIPTION";
  *(v3 + 13304) = 49;
  *(v3 + 13376) = 49;
  *(v3 + 14192) = 49;
  *(v3 + 14504) = 49;
  *(v3 + 15224) = 49;
  *(v3 + 15240) = "ZOOM_ZOOM_DESCRIPTION";
  *(v3 + 15248) = 21;
  *(v3 + 7976) = 58;
  nullsub_1();
  v4 = sub_1002D8E30(v9, v8);

  v5 = v4 - 128;
  if (v4 < 0x80)
  {
    return v4;
  }

  if (v5 < 0x40)
  {
    return v5 | 0x80;
  }

  if (v4 - 192 < 0x40)
  {
    return (v4 - 192) | 0xC0u;
  }

  if (v4 - 256 < 0x40)
  {
    return (v4 - 256) | 0x100u;
  }

  if (v4 - 320 < 0x40)
  {
    return (v4 - 320) | 0x140u;
  }

  if (v4 - 384 < 0x40)
  {
    return (v4 - 384) | 0x180u;
  }

  if (v4 - 448 < 0x40)
  {
    return (v4 - 448) | 0x1C0u;
  }

  v7 = v4 - 512;
  result = 534;
  v4 = 512;
  switch(v7)
  {
    case 0uLL:
      return v4;
    case 1uLL:
      return 513;
    case 2uLL:
      return 514;
    case 3uLL:
      return 515;
    case 4uLL:
      return 516;
    case 5uLL:
      return 517;
    case 6uLL:
      return 518;
    case 7uLL:
      return 519;
    case 8uLL:
      return 520;
    case 9uLL:
      return 521;
    case 0xAuLL:
      return 522;
    case 0xBuLL:
      return 523;
    case 0xCuLL:
      return 524;
    case 0xDuLL:
      return 525;
    case 0xEuLL:
      return 526;
    case 0xFuLL:
      return 527;
    case 0x10uLL:
      return 528;
    case 0x11uLL:
      return 529;
    case 0x12uLL:
      return 530;
    case 0x13uLL:
      return 531;
    case 0x14uLL:
      return 532;
    case 0x15uLL:
      return 533;
    case 0x16uLL:
      return result;
    case 0x17uLL:
      result = 535;
      break;
    case 0x18uLL:
      result = 536;
      break;
    case 0x19uLL:
      result = 537;
      break;
    case 0x1AuLL:
      result = 538;
      break;
    case 0x1BuLL:
      result = 539;
      break;
    case 0x1CuLL:
      result = 540;
      break;
    case 0x1DuLL:
      result = 541;
      break;
    case 0x1EuLL:
      result = 542;
      break;
    case 0x1FuLL:
      result = 543;
      break;
    case 0x20uLL:
      result = 544;
      break;
    case 0x21uLL:
      result = 545;
      break;
    case 0x22uLL:
      result = 546;
      break;
    case 0x23uLL:
      result = 547;
      break;
    case 0x24uLL:
      result = 548;
      break;
    case 0x25uLL:
      result = 549;
      break;
    case 0x26uLL:
      result = 550;
      break;
    case 0x27uLL:
      result = 551;
      break;
    case 0x28uLL:
      result = 552;
      break;
    case 0x29uLL:
      result = 553;
      break;
    case 0x2AuLL:
      result = 554;
      break;
    case 0x2BuLL:
      result = 555;
      break;
    case 0x2CuLL:
      result = 556;
      break;
    case 0x2DuLL:
      result = 557;
      break;
    case 0x2EuLL:
      result = 558;
      break;
    case 0x2FuLL:
      result = 559;
      break;
    case 0x30uLL:
      result = 560;
      break;
    case 0x31uLL:
      result = 561;
      break;
    case 0x32uLL:
      result = 562;
      break;
    case 0x33uLL:
      result = 563;
      break;
    case 0x34uLL:
      result = 564;
      break;
    case 0x35uLL:
      result = 565;
      break;
    case 0x36uLL:
      result = 566;
      break;
    case 0x37uLL:
      result = 567;
      break;
    case 0x38uLL:
      result = 568;
      break;
    case 0x39uLL:
      result = 569;
      break;
    case 0x3AuLL:
      result = 570;
      break;
    case 0x3BuLL:
      result = 571;
      break;
    case 0x3CuLL:
      result = 572;
      break;
    case 0x3DuLL:
      result = 573;
      break;
    case 0x3EuLL:
      result = 574;
      break;
    case 0x3FuLL:
      result = 575;
      break;
    default:
      result = 636;
      break;
  }

  return result;
}

unint64_t sub_1000D970C()
{
  result = qword_1004469F8;
  if (!qword_1004469F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469F8);
  }

  return result;
}

unint64_t sub_1000D9764()
{
  result = qword_100446A38;
  if (!qword_100446A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446A38);
  }

  return result;
}

unint64_t sub_1000D97B8()
{
  result = qword_100446A40;
  if (!qword_100446A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446A40);
  }

  return result;
}

unint64_t sub_1000D9830()
{
  result = qword_1004476B8;
  if (!qword_1004476B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476B8);
  }

  return result;
}

uint64_t sub_1000D98C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000321C(&qword_10043F808, &unk_100352800);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002AC00(a3, v25 - v10, &qword_10043F808, &unk_100352800);
  v12 = sub_1002D8DB0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1002D59BC(v11);
  }

  else
  {
    sub_1002D8DA0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1002D8D70();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1002D8D30() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1002D59BC(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1002D59BC(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000D9BA8()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051C6C8);
  sub_10001EDB8(v5, qword_10051C6C8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000D9D18@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_1000DA088()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C6E0);
  sub_10001EDB8(v0, qword_10051C6E0);
  return sub_1002D88F0();
}

uint64_t sub_1000DA0EC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C6F8);
  v1 = sub_10001EDB8(v0, qword_10051C6F8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000DA1AC()
{
  result = swift_getKeyPath();
  qword_10051C710 = result;
  return result;
}

uint64_t sub_1000DA1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456940, &qword_1003541B0);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456948, &qword_1003541B8);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA3B4, 0, 0);
}

uint64_t sub_1000DA3B4()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000DB730();
  *v2 = v0;
  v2[1] = sub_1000DA498;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E14, 0, &type metadata for AccessibilityReaderEnabledEntity, v3);
}

uint64_t sub_1000DA498()
{

  return _swift_task_switch(sub_1000DA594, 0, 0);
}

uint64_t sub_1000DA594()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A0C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051C710;
  *(v0 + 288) = qword_10051C710;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456928, &qword_100456930, &unk_100354190, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000DA6F8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000DA6F8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000DA868;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DA868()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1000D9830();
  sub_1000DBA04();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000DAAE0()
{
  v0 = sub_10000321C(&qword_100456950, &qword_1003541C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A0C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000DBA04();
  sub_10002B6E4(&qword_100456958, &qword_100456950, &qword_1003541C0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000DAC5C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void *sub_1000DACD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002D85B0();
  *a1 = v3;
  return result;
}

void (*sub_1000DAD44(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_1000DADFC()
{
  result = qword_1004476D0;
  if (!qword_1004476D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476D0);
  }

  return result;
}

unint64_t sub_1000DAE54()
{
  result = qword_1004476D8;
  if (!qword_1004476D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476D8);
  }

  return result;
}

uint64_t sub_1000DAF50(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000DA1D4(a1, v5, v4);
}

uint64_t sub_1000DAFFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029D0D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000DB044()
{
  result = qword_1004476E0;
  if (!qword_1004476E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476E0);
  }

  return result;
}

unint64_t sub_1000DB09C()
{
  result = qword_1004476E8;
  if (!qword_1004476E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476E8);
  }

  return result;
}

uint64_t sub_1000DB110()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 accessibilityReaderIsActive];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000DB1E4()
{
  sub_10000321C(&qword_10043F808, &unk_100352800);
  *(v0 + 16) = swift_task_alloc();

  return _swift_task_switch(sub_1000DB27C, 0, 0);
}

uint64_t sub_1000DB27C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1002D8DB0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1000D98C8(0, 0, v1, &unk_1002EE9E8, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000DB398(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000DB428, 0, 0);
}

uint64_t sub_1000DB428()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_1004476C8, qword_1002F7750);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456928, &qword_100456930, &unk_100354190, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD00000000000003CLL;
  v1[1] = 0x8000000100362380;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000DB578()
{
  result = qword_1004476F0;
  if (!qword_1004476F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476F0);
  }

  return result;
}

uint64_t sub_1000DB5CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000DBD1C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000DB680()
{
  result = qword_1004476F8;
  if (!qword_1004476F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476F8);
  }

  return result;
}

unint64_t sub_1000DB6D8()
{
  result = qword_100447700;
  if (!qword_100447700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447700);
  }

  return result;
}

unint64_t sub_1000DB730()
{
  result = qword_100447708;
  if (!qword_100447708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447708);
  }

  return result;
}

uint64_t sub_1000DB784(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000DBD1C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000DB838(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000DBD1C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_1000DB8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000D9828;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

unint64_t sub_1000DB9AC()
{
  result = qword_100447710;
  if (!qword_100447710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447710);
  }

  return result;
}

unint64_t sub_1000DBA04()
{
  result = qword_100447718;
  if (!qword_100447718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447718);
  }

  return result;
}

uint64_t sub_1000DBA9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000DB578();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000DBB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002B72C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1000DBC08()
{
  result = qword_100447730;
  if (!qword_100447730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447730);
  }

  return result;
}

unint64_t sub_1000DBC60()
{
  result = qword_100447738;
  if (!qword_100447738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447738);
  }

  return result;
}

unint64_t sub_1000DBCB8()
{
  result = qword_100447740;
  if (!qword_100447740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447740);
  }

  return result;
}

unint64_t sub_1000DBD1C()
{
  result = qword_100447748;
  if (!qword_100447748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447748);
  }

  return result;
}

uint64_t sub_1000DBD70()
{
  v0 = qword_100446A48;

  return v0;
}

unint64_t sub_1000DBDAC()
{
  result = qword_100447750;
  if (!qword_100447750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447750);
  }

  return result;
}

uint64_t sub_1000DBE00(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456918, &qword_100354170);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456920, &qword_100354178);
  __chkstk_darwin(v5);
  sub_1000DB730();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_1000DBFC8()
{
  result = qword_100447758;
  if (!qword_100447758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447758);
  }

  return result;
}

unint64_t sub_1000DC020()
{
  result = qword_100447760;
  if (!qword_100447760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447760);
  }

  return result;
}

unint64_t sub_1000DC078()
{
  result = qword_100447768;
  if (!qword_100447768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447768);
  }

  return result;
}

uint64_t sub_1000DC0D8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000DC0E4(uint64_t a1)
{
  sub_1002D6D30();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000DC1CC(uint64_t a1)
{
  v2 = sub_1000DB730();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000DC21C()
{
  result = qword_100447780;
  if (!qword_100447780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447780);
  }

  return result;
}

uint64_t sub_1000DC274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002B72C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000DC338(uint64_t a1)
{
  v2 = sub_1000DC078();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000DC388()
{
  result = qword_100447788;
  if (!qword_100447788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447788);
  }

  return result;
}

uint64_t sub_1000DC420()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051C718);
  sub_10001EDB8(v5, qword_10051C718);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000DC590@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_1000DC900()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C730);
  sub_10001EDB8(v0, qword_10051C730);
  return sub_1002D88F0();
}

uint64_t sub_1000DC964()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C748);
  v1 = sub_10001EDB8(v0, qword_10051C748);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000DCA24()
{
  result = swift_getKeyPath();
  qword_10051C760 = result;
  return result;
}

uint64_t sub_1000DCA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004568F0, &qword_100354130);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004568F8, &qword_100354138);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000DCC2C, 0, 0);
}

uint64_t sub_1000DCC2C()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000DDDF8();
  *v2 = v0;
  v2[1] = sub_1000DCD10;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E18, 0, &type metadata for AppleTVRemoteDirectionalButtonsEntity, v3);
}

uint64_t sub_1000DCD10()
{

  return _swift_task_switch(sub_1000DCE0C, 0, 0);
}

uint64_t sub_1000DCE0C()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A0E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051C760;
  *(v0 + 288) = qword_10051C760;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004568D8, &qword_1004568E0, &qword_100354118, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000DCF70;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000DCF70()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000DD0E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DD0E0()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1000DC388();
  sub_1000DE00C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000DD358()
{
  v0 = sub_10000321C(&qword_100456900, &qword_100354140);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A0E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000DE00C();
  sub_10002B6E4(&qword_100456908, &qword_100456900, &qword_100354140, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000DD4CC(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_1000DD540(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_1000DD5DC()
{
  result = qword_1004477A0;
  if (!qword_1004477A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477A0);
  }

  return result;
}

unint64_t sub_1000DD634()
{
  result = qword_1004477A8;
  if (!qword_1004477A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477A8);
  }

  return result;
}

uint64_t sub_1000DD730@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  v7 = sub_10001EDB8(v6, a2);
  return sub_10002AC00(v7, a4, &qword_100452A70, &qword_10034E3D0);
}

uint64_t sub_1000DD7AC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000DCA4C(a1, v5, v4);
}

uint64_t sub_1000DD858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029D538();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000DD8A0()
{
  result = qword_1004477B0;
  if (!qword_1004477B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477B0);
  }

  return result;
}

unint64_t sub_1000DD8F8()
{
  result = qword_1004477B8;
  if (!qword_1004477B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477B8);
  }

  return result;
}

uint64_t sub_1000DD96C()
{
  v1 = *(v0 + 16);
  *v1 = _AXSAppleTVRemoteUsesSimpleGestures() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DDA00()
{
  _AXSSetAppleTVRemoteUsesSimpleGestures();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DDA64(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000DDAF4, 0, 0);
}

uint64_t sub_1000DDAF4()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100447798, qword_1002F7D88);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004568D8, &qword_1004568E0, &qword_100354118, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000025;
  v1[1] = 0x800000010035FB10;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000DDC40()
{
  result = qword_1004477C0;
  if (!qword_1004477C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477C0);
  }

  return result;
}

uint64_t sub_1000DDC94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000DE264();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000DDD48()
{
  result = qword_1004477C8;
  if (!qword_1004477C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477C8);
  }

  return result;
}

unint64_t sub_1000DDDA0()
{
  result = qword_1004477D0;
  if (!qword_1004477D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477D0);
  }

  return result;
}

unint64_t sub_1000DDDF8()
{
  result = qword_1004477D8;
  if (!qword_1004477D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477D8);
  }

  return result;
}

uint64_t sub_1000DDE4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000DE264();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000DDF00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000DE264();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000DDFB4()
{
  result = qword_1004477E0;
  if (!qword_1004477E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477E0);
  }

  return result;
}

unint64_t sub_1000DE00C()
{
  result = qword_1004477E8;
  if (!qword_1004477E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477E8);
  }

  return result;
}

uint64_t sub_1000DE0A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000DDC40();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000DE15C()
{
  result = qword_100447800;
  if (!qword_100447800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447800);
  }

  return result;
}

unint64_t sub_1000DE1B4()
{
  result = qword_100447808;
  if (!qword_100447808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447808);
  }

  return result;
}

unint64_t sub_1000DE20C()
{
  result = qword_100447810;
  if (!qword_100447810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447810);
  }

  return result;
}

unint64_t sub_1000DE264()
{
  result = qword_100447818;
  if (!qword_100447818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447818);
  }

  return result;
}

uint64_t sub_1000DE2B8()
{
  v0 = qword_100446A58;

  return v0;
}

unint64_t sub_1000DE2F4()
{
  result = qword_100447820;
  if (!qword_100447820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447820);
  }

  return result;
}

uint64_t sub_1000DE348(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004568C8, &qword_1003540F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004568D0, &qword_100354100);
  __chkstk_darwin(v5);
  sub_1000DDDF8();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_1000DE510()
{
  result = qword_100447828;
  if (!qword_100447828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447828);
  }

  return result;
}

unint64_t sub_1000DE568()
{
  result = qword_100447830;
  if (!qword_100447830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447830);
  }

  return result;
}

unint64_t sub_1000DE5C0()
{
  result = qword_100447838;
  if (!qword_100447838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447838);
  }

  return result;
}

uint64_t sub_1000DE614(uint64_t a1)
{
  sub_1002D6CDC();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000DE6FC(uint64_t a1)
{
  v2 = sub_1000DDDF8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000DE74C()
{
  result = qword_100447850;
  if (!qword_100447850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447850);
  }

  return result;
}

uint64_t sub_1000DE7A4(uint64_t a1)
{
  v2 = sub_1000DE5C0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000DE7F4()
{
  result = qword_100447858;
  if (!qword_100447858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447858);
  }

  return result;
}

uint64_t sub_1000DE8B8@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_1000DEC34()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C780);
  sub_10001EDB8(v0, qword_10051C780);
  return sub_1002D88F0();
}

uint64_t sub_1000DEC98()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C798);
  v1 = sub_10001EDB8(v0, qword_10051C798);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000DED58()
{
  result = swift_getKeyPath();
  qword_10051C7B0 = result;
  return result;
}

uint64_t sub_1000DED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_1004568A0, &qword_1003540B8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004568A8, &qword_1003540C0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000DEF60, 0, 0);
}

uint64_t sub_1000DEF60()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000E00AC();
  *v2 = v0;
  v2[1] = sub_1000DF044;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E1C, 0, &type metadata for AppleTVRemoteLiveTVButtonsEntity, v3);
}

uint64_t sub_1000DF044()
{

  return _swift_task_switch(sub_1000DF140, 0, 0);
}

uint64_t sub_1000DF140()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A100 != -1)
  {
    swift_once();
  }

  v3 = qword_10051C7B0;
  *(v0 + 288) = qword_10051C7B0;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456888, &qword_100456890, &qword_1003540A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000DF2A4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000DF2A4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000DF414;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DF414()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1000DE7F4();
  sub_1000E02C0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000DF68C()
{
  v0 = sub_10000321C(&qword_1004568B0, &qword_1003540C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A100 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000E02C0();
  sub_10002B6E4(&qword_1004568B8, &qword_1004568B0, &qword_1003540C8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000DF800(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_1000DF874(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_1000DF910()
{
  result = qword_100447870;
  if (!qword_100447870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447870);
  }

  return result;
}

unint64_t sub_1000DF968()
{
  result = qword_100447878;
  if (!qword_100447878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447878);
  }

  return result;
}

uint64_t sub_1000DFA64(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000DED80(a1, v5, v4);
}

uint64_t sub_1000DFB10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029D9A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000DFB58()
{
  result = qword_100447880;
  if (!qword_100447880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447880);
  }

  return result;
}

unint64_t sub_1000DFBB0()
{
  result = qword_100447888;
  if (!qword_100447888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447888);
  }

  return result;
}

uint64_t sub_1000DFC24()
{
  v1 = *(v0 + 16);
  *v1 = _AXSAppleTVRemoteForceLiveTVButtons() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DFCB8()
{
  _AXSSetAppleTVRemoteForceLiveTVButtons();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DFD1C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000DFDAC, 0, 0);
}

uint64_t sub_1000DFDAC()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100447868, qword_1002F83C0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456888, &qword_100456890, &qword_1003540A0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000024;
  v1[1] = 0x800000010035DAA0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000DFEF4()
{
  result = qword_100447890;
  if (!qword_100447890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447890);
  }

  return result;
}

uint64_t sub_1000DFF48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000E0518();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000DFFFC()
{
  result = qword_100447898;
  if (!qword_100447898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447898);
  }

  return result;
}

unint64_t sub_1000E0054()
{
  result = qword_1004478A0;
  if (!qword_1004478A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478A0);
  }

  return result;
}

unint64_t sub_1000E00AC()
{
  result = qword_1004478A8;
  if (!qword_1004478A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478A8);
  }

  return result;
}

uint64_t sub_1000E0100(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000E0518();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000E01B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000E0518();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000E0268()
{
  result = qword_1004478B0;
  if (!qword_1004478B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478B0);
  }

  return result;
}

unint64_t sub_1000E02C0()
{
  result = qword_1004478B8;
  if (!qword_1004478B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478B8);
  }

  return result;
}

uint64_t sub_1000E0358(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000DFEF4();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000E0410()
{
  result = qword_1004478D0;
  if (!qword_1004478D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478D0);
  }

  return result;
}

unint64_t sub_1000E0468()
{
  result = qword_1004478D8;
  if (!qword_1004478D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478D8);
  }

  return result;
}

unint64_t sub_1000E04C0()
{
  result = qword_1004478E0;
  if (!qword_1004478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478E0);
  }

  return result;
}

unint64_t sub_1000E0518()
{
  result = qword_1004478E8;
  if (!qword_1004478E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478E8);
  }

  return result;
}

uint64_t sub_1000E056C()
{
  v0 = qword_100446A68;

  return v0;
}

unint64_t sub_1000E05A8()
{
  result = qword_1004478F0;
  if (!qword_1004478F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478F0);
  }

  return result;
}

uint64_t sub_1000E05FC(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456878, &qword_100354080);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456880, &qword_100354088);
  __chkstk_darwin(v5);
  sub_1000E00AC();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_1000E07C4()
{
  result = qword_1004478F8;
  if (!qword_1004478F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478F8);
  }

  return result;
}

unint64_t sub_1000E081C()
{
  result = qword_100447900;
  if (!qword_100447900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447900);
  }

  return result;
}

unint64_t sub_1000E0874()
{
  result = qword_100447908;
  if (!qword_100447908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447908);
  }

  return result;
}

uint64_t sub_1000E08C8(uint64_t a1)
{
  sub_1002D6C88();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000E09B0(uint64_t a1)
{
  v2 = sub_1000E00AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000E0A00()
{
  result = qword_100447920;
  if (!qword_100447920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447920);
  }

  return result;
}

uint64_t sub_1000E0A58(uint64_t a1)
{
  v2 = sub_1000E0874();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000E0AA8()
{
  result = qword_100447928;
  if (!qword_100447928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447928);
  }

  return result;
}

uint64_t sub_1000E0B40()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1002D8910();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1002D8840();
  sub_10001EDF0(v5, qword_10051C7B8);
  sub_10001EDB8(v5, qword_10051C7B8);
  sub_1002D88F0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1002D8830();
}

uint64_t sub_1000E0CB0@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_1000E102C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C7D0);
  sub_10001EDB8(v0, qword_10051C7D0);
  return sub_1002D88F0();
}

uint64_t sub_1000E1090()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C7E8);
  v1 = sub_10001EDB8(v0, qword_10051C7E8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000E1150()
{
  result = swift_getKeyPath();
  qword_10051C800 = result;
  return result;
}

uint64_t sub_1000E1178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456850, &qword_100354040);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456858, &qword_100354048);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1358, 0, 0);
}

uint64_t sub_1000E1358()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000E2498();
  *v2 = v0;
  v2[1] = sub_1000E143C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E20, 0, &type metadata for AccessibilityAppleWatchRemoteScreenEnabledEntity, v3);
}

uint64_t sub_1000E143C()
{

  return _swift_task_switch(sub_1000E1538, 0, 0);
}

uint64_t sub_1000E1538()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A120 != -1)
  {
    swift_once();
  }

  v3 = qword_10051C800;
  *(v0 + 288) = qword_10051C800;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_100456838, &qword_100456840, &qword_100354028, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000E169C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000E169C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000E180C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E180C()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1000E0AA8();
  sub_1000E26AC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E1A84()
{
  v0 = sub_10000321C(&qword_100456860, &qword_100354050);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A120 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000E26AC();
  sub_10002B6E4(&qword_100456868, &qword_100456860, &qword_100354050, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000E1BF8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_1000E1C6C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_1000E1D08()
{
  result = qword_100447940;
  if (!qword_100447940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447940);
  }

  return result;
}

unint64_t sub_1000E1D60()
{
  result = qword_100447948;
  if (!qword_100447948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447948);
  }

  return result;
}

uint64_t sub_1000E1E5C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000E1178(a1, v5, v4);
}

uint64_t sub_1000E1F08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029DE08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000E1F50()
{
  result = qword_100447950;
  if (!qword_100447950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447950);
  }

  return result;
}

unint64_t sub_1000E1FA8()
{
  result = qword_100447958;
  if (!qword_100447958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447958);
  }

  return result;
}

uint64_t sub_1000E201C()
{
  v1 = *(v0 + 16);
  *v1 = _AXSTwiceRemoteScreenEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E20B0()
{
  _AXSTwiceRemoteScreenSetEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E2114(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000E21A4, 0, 0);
}

uint64_t sub_1000E21A4()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100447938, qword_1002F89F8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456838, &qword_100456840, &qword_100354028, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000019;
  v1[1] = 0x8000000100359410;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000E22E0()
{
  result = qword_100447960;
  if (!qword_100447960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447960);
  }

  return result;
}

uint64_t sub_1000E2334(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000E2904();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000E23E8()
{
  result = qword_100447968;
  if (!qword_100447968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447968);
  }

  return result;
}

unint64_t sub_1000E2440()
{
  result = qword_100447970;
  if (!qword_100447970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447970);
  }

  return result;
}

unint64_t sub_1000E2498()
{
  result = qword_100447978;
  if (!qword_100447978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447978);
  }

  return result;
}

uint64_t sub_1000E24EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000E2904();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000E25A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000E2904();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000E2654()
{
  result = qword_100447980;
  if (!qword_100447980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447980);
  }

  return result;
}

unint64_t sub_1000E26AC()
{
  result = qword_100447988;
  if (!qword_100447988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447988);
  }

  return result;
}

uint64_t sub_1000E2744(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000E22E0();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000E27FC()
{
  result = qword_1004479A0;
  if (!qword_1004479A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479A0);
  }

  return result;
}

unint64_t sub_1000E2854()
{
  result = qword_1004479A8;
  if (!qword_1004479A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479A8);
  }

  return result;
}

unint64_t sub_1000E28AC()
{
  result = qword_1004479B0;
  if (!qword_1004479B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479B0);
  }

  return result;
}

unint64_t sub_1000E2904()
{
  result = qword_1004479B8;
  if (!qword_1004479B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479B8);
  }

  return result;
}

uint64_t sub_1000E2958()
{
  v0 = qword_100446A78;

  return v0;
}

unint64_t sub_1000E2994()
{
  result = qword_1004479C0;
  if (!qword_1004479C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479C0);
  }

  return result;
}

uint64_t sub_1000E29E8(uint64_t a1)
{
  v1 = sub_10000321C(&qword_100456828, &qword_100354008);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_100456830, &qword_100354010);
  __chkstk_darwin(v5);
  sub_1000E2498();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_1000E2BB0()
{
  result = qword_1004479C8;
  if (!qword_1004479C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479C8);
  }

  return result;
}

unint64_t sub_1000E2C08()
{
  result = qword_1004479D0;
  if (!qword_1004479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479D0);
  }

  return result;
}

unint64_t sub_1000E2C60()
{
  result = qword_1004479D8;
  if (!qword_1004479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479D8);
  }

  return result;
}

uint64_t sub_1000E2CB4(uint64_t a1)
{
  sub_1002D6C34();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000E2D9C(uint64_t a1)
{
  v2 = sub_1000E2498();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000E2DEC()
{
  result = qword_1004479F0;
  if (!qword_1004479F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479F0);
  }

  return result;
}

uint64_t sub_1000E2E44(uint64_t a1)
{
  v2 = sub_1000E2C60();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000E2E94()
{
  result = qword_1004479F8;
  if (!qword_1004479F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479F8);
  }

  return result;
}

uint64_t sub_1000E2F58@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_1000E32EC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C820);
  sub_10001EDB8(v0, qword_10051C820);
  return sub_1002D88F0();
}

uint64_t sub_1000E3350()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C838);
  v1 = sub_10001EDB8(v0, qword_10051C838);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000E3410()
{
  result = swift_getKeyPath();
  qword_10051C850 = result;
  return result;
}

uint64_t sub_1000E3438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[23] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100456800, &qword_100353FC8);
  v3[25] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_10000321C(&qword_100456808, &qword_100353FD0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000E3618, 0, 0);
}

uint64_t sub_1000E3618()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_1000E47D0();
  *v2 = v0;
  v2[1] = sub_1000E36FC;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E24, 0, &type metadata for AccessibilityAssistiveTouchEnabledEntity, v3);
}

uint64_t sub_1000E36FC()
{

  return _swift_task_switch(sub_1000E37F8, 0, 0);
}

uint64_t sub_1000E37F8()
{
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A140 != -1)
  {
    swift_once();
  }

  v3 = qword_10051C850;
  *(v0 + 288) = qword_10051C850;

  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  v5 = sub_10002B6E4(&qword_1004567E8, &qword_1004567F0, &qword_100353FB0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000E395C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000E395C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002D6DFC;
  }

  else
  {
    v2 = sub_1000E3ACC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E3ACC()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1000E2E94();
  sub_1000E49E4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E3D44()
{
  v0 = sub_10000321C(&qword_100456810, &qword_100353FD8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A140 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000E49E4();
  sub_10002B6E4(&qword_100456818, &qword_100456810, &qword_100353FD8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000E3EB8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_1000E3F2C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_1000E3FC8()
{
  result = qword_100447A10;
  if (!qword_100447A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A10);
  }

  return result;
}

unint64_t sub_1000E4020()
{
  result = qword_100447A18;
  if (!qword_100447A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A18);
  }

  return result;
}

uint64_t sub_1000E411C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000E3438(a1, v5, v4);
}

uint64_t sub_1000E41C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029E270();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000E4210()
{
  result = qword_100447A20;
  if (!qword_100447A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A20);
  }

  return result;
}

unint64_t sub_1000E4268()
{
  result = qword_100447A28;
  if (!qword_100447A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A28);
  }

  return result;
}

uint64_t sub_1000E42DC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = _AXSAssistiveTouchEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E43A0()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  _AXSAssistiveTouchSetEnabled();
  _AXSAssistiveTouchSetUIEnabled();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E4440(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000E44D0, 0, 0);
}

uint64_t sub_1000E44D0()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100447A08, qword_1002F9030);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004567E8, &qword_1004567F0, &qword_100353FB0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88A0();
  *v1 = 0xD000000000000046;
  v1[1] = 0x8000000100361B10;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000E4618()
{
  result = qword_100447A30;
  if (!qword_100447A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A30);
  }

  return result;
}

uint64_t sub_1000E466C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000E4C3C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000E4720()
{
  result = qword_100447A38;
  if (!qword_100447A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A38);
  }

  return result;
}

unint64_t sub_1000E4778()
{
  result = qword_100447A40;
  if (!qword_100447A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A40);
  }

  return result;
}

unint64_t sub_1000E47D0()
{
  result = qword_100447A48;
  if (!qword_100447A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A48);
  }

  return result;
}

uint64_t sub_1000E4824(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000E4C3C();
  *v5 = v2;
  v5[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000E48D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000E4C3C();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000E498C()
{
  result = qword_100447A50;
  if (!qword_100447A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A50);
  }

  return result;
}

unint64_t sub_1000E49E4()
{
  result = qword_100447A58;
  if (!qword_100447A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A58);
  }

  return result;
}

uint64_t sub_1000E4A7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000E4618();
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000E4B34()
{
  result = qword_100447A70;
  if (!qword_100447A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A70);
  }

  return result;
}

unint64_t sub_1000E4B8C()
{
  result = qword_100447A78;
  if (!qword_100447A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A78);
  }

  return result;
}

unint64_t sub_1000E4BE4()
{
  result = qword_100447A80;
  if (!qword_100447A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A80);
  }

  return result;
}

unint64_t sub_1000E4C3C()
{
  result = qword_100447A88;
  if (!qword_100447A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A88);
  }

  return result;
}

uint64_t sub_1000E4C90()
{
  v0 = qword_100446A88;

  return v0;
}

unint64_t sub_1000E4CCC()
{
  result = qword_100447A90;
  if (!qword_100447A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A90);
  }

  return result;
}

uint64_t sub_1000E4D20(uint64_t a1)
{
  v1 = sub_10000321C(&qword_1004567D8, &qword_100353F90);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000321C(&qword_1004567E0, &qword_100353F98);
  __chkstk_darwin(v5);
  sub_1000E47D0();
  sub_1002D8800();
  v8._object = 0x8000000100373AF0;
  v8._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1002D87E0();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1002D87F0(v9);
  return sub_1002D8810();
}

unint64_t sub_1000E4EE8()
{
  result = qword_100447A98;
  if (!qword_100447A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A98);
  }

  return result;
}

unint64_t sub_1000E4F40()
{
  result = qword_100447AA0;
  if (!qword_100447AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AA0);
  }

  return result;
}

unint64_t sub_1000E4F98()
{
  result = qword_100447AA8;
  if (!qword_100447AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AA8);
  }

  return result;
}

uint64_t sub_1000E4FEC(uint64_t a1)
{
  sub_1002D6BE0();
  v2 = sub_1002D87B0();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000E50D4(uint64_t a1)
{
  v2 = sub_1000E47D0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000E5124()
{
  result = qword_100447AC0;
  if (!qword_100447AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AC0);
  }

  return result;
}

uint64_t sub_1000E517C(uint64_t a1)
{
  v2 = sub_1000E4F98();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000E51CC()
{
  result = qword_100447AC8;
  if (!qword_100447AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AC8);
  }

  return result;
}

uint64_t sub_1000E528C@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1002D8900();
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002D8CF0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1002D8690();
  v15 = sub_1002D86B0();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1002D8CE0();
  sub_1000B4F14(v4);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_1000E5604()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C870);
  sub_10001EDB8(v0, qword_10051C870);
  return sub_1002D88F0();
}

uint64_t sub_1000E5668()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C888);
  v1 = sub_10001EDB8(v0, qword_10051C888);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000E5728()
{
  result = swift_getKeyPath();
  qword_10051C8A0 = result;
  return result;
}

uint64_t sub_1000E5750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  sub_10000321C(&qword_100452A40, &qword_10034E380);
  v3[24] = swift_task_alloc();
  sub_10000321C(&qword_100452A48, &qword_10034E388);
  v3[25] = swift_task_alloc();
  sub_10000321C(&qword_1004567B0, &qword_100353F50);
  v3[26] = swift_task_alloc();
  v4 = sub_1002D8570();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = sub_10000321C(&qword_1004567B8, &qword_100353F58);
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000E5930, 0, 0);
}

uint64_t sub_1000E5930()
{
  sub_1002D85B0();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  v3 = sub_1000E6B4C();
  *v2 = v0;
  v2[1] = sub_1000E5A14;
  v4 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1002D6E28, 0, &type metadata for AccessibilityAssistiveTouchOpacityEntity, v3);
}

uint64_t sub_1000E5A14()
{

  return _swift_task_switch(sub_1000E5B10, 0, 0);
}

uint64_t sub_1000E5B10()
{
  sub_1002D85B0();
  v0[11] = v0[8];
  v1 = v0[9];
  v2 = v0[10];
  v0[35] = v1;
  v0[36] = v2;
  v0[12] = v1;
  v0[13] = v2;
  sub_1002D85B0();
  if (qword_10043A160 != -1)
  {
    swift_once();
  }

  v3 = qword_10051C8A0;
  v0[37] = qword_10051C8A0;

  v4 = swift_task_alloc();
  v0[38] = v4;
  v5 = sub_10002B6E4(&qword_100456798, &qword_1004567A0, &qword_100353F38, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v4 = v0;
  v4[1] = sub_1000E5C6C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v3, &type metadata for Double, v5);
}

uint64_t sub_1000E5C6C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002D6E00;
  }

  else
  {
    v2 = sub_1000E5DDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E5DDC()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v11 = v0[33];
  v12 = v0[29];
  v14 = v0[28];
  v15 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  sub_1002D85B0();
  v6 = v0[15];
  v13 = v0[16];
  v0[17] = v0[14];
  v0[18] = v6;
  v0[19] = v13;
  v7 = sub_1002D8820();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1002D8850();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1000E51CC();
  sub_1000E6D60();
  sub_1002D8540();
  (*(v3 + 16))(v1, v11, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v14 + 8))(v12, v15);

  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E6054()
{
  v0 = sub_10000321C(&qword_1004567C0, &qword_100353F60);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10043A160 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000E6D60();
  sub_10002B6E4(&qword_1004567C8, &qword_1004567C0, &qword_100353F60, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1002D8670();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_1000E61C8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

double sub_1000E623C@<D0>(double *a1@<X8>)
{
  sub_1002D85B0();
  result = v3;
  *a1 = v3;
  return result;
}

void (*sub_1000E62B0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_1000E634C()
{
  result = qword_100447AE0;
  if (!qword_100447AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AE0);
  }

  return result;
}

unint64_t sub_1000E63A4()
{
  result = qword_100447AE8;
  if (!qword_100447AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AE8);
  }

  return result;
}

uint64_t sub_1000E64A0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000E5750(a1, v5, v4);
}

uint64_t sub_1000E654C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029E6D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000E6594()
{
  result = qword_100447AF0;
  if (!qword_100447AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AF0);
  }

  return result;
}

unint64_t sub_1000E65EC()
{
  result = qword_100447AF8;
  if (!qword_100447AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AF8);
  }

  return result;
}

uint64_t sub_1000E6660()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 assistiveTouchIdleOpacity];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E6728()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchIdleOpacity:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000E67C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002D8910();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000E6850, 0, 0);
}

uint64_t sub_1000E6850()
{
  v1 = *(v0 + 16);
  sub_10000321C(&qword_100447AD8, qword_1002F9668);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456798, &qword_1004567A0, &qword_100353F38, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v2 = sub_1002D88B0();
  *v1 = 0xD000000000000034;
  v1[1] = 0x80000001003803F0;
  v1[2] = v2;

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000E6994()
{
  result = qword_100447B00;
  if (!qword_100447B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B00);
  }

  return result;
}

uint64_t sub_1000E69E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000E6FB8();
  *v4 = v2;
  v4[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000E6A9C()
{
  result = qword_100447B08;
  if (!qword_100447B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B08);
  }

  return result;
}

unint64_t sub_1000E6AF4()
{
  result = qword_100447B10;
  if (!qword_100447B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B10);
  }

  return result;
}

unint64_t sub_1000E6B4C()
{
  result = qword_100447B18;
  if (!qword_100447B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B18);
  }

  return result;
}