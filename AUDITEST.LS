/PROG  AUDITEST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 715;
CREATE		= DATE 19-04-19  TIME 14:03:54;
MODIFIED	= DATE 19-04-19  TIME 14:03:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 1027;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  PAYLOAD[1:gripper] ;
   2:  UFRAME_NUM=1 ;
   3:  UTOOL_NUM=R[5:toolNbre] ;
   1: !Frame offset
   4:  PR[3,1:Frame offset]=R[1:x_offset]    ;
   5:  PR[3,2:Frame offset]=R[2:y_offset]    ;
   1: ! Rotation around Z offset ;
   6:  PR[5,6]=R[3:orientation_off]    ;
   7:  !J P[1] 100% CNT100 ;
   8:  ! Approach point ;
   9:J PR[5:point] 10% CNT0 Offset,PR[3:Frame offset]    ;
  10:  !Go inside ;
  11:L PR[5:point] 100mm/sec CNT0 Offset,PR[3:Frame offset] Tool_Offset,PR[1:Approach TO]    ;
  12:  !retreat ;
  13:L PR[5:point] 100mm/sec CNT10 Offset,PR[3:Frame offset] Tool_Offset,PR[2:Retreat TO]    ;
  14:   ;
  15:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -478.600  mm,	Y =   178.563  mm,	Z =  -820.000  mm,
	W =  -179.939 deg,	P =     -.140 deg,	R =  -124.872 deg
};
/END
