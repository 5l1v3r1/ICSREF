CoDeSys+╠   М          0         @        @   2.3.9.48^   @   ConfigExtensionF         CommConfigEx7             CommConfigExEnd   MEХ                  IB                    % QB                    %   ME_End   CMй      CM_End   CT┼              CT_End   ME                 IB                    % QB                    %   ME_End   CM.     CM_End   CTJ             CT_End   Pa         P_End   CT|             CT_End   PУ         P_End   CTо             CT_End   P┼         P_End   CTр             CT_End   Pў         P_End   CT             CT_End   MEg                 IB                    % QB                    %   ME_End   CM{     CM_End   CTЧ             CT_End   Pо         P_End   CT╔             CT_End   Pр         P_End   CT√             CT_End   P         P_End   CT-             CT_End   PD         P_End   CT_             CT_End   Pv         P_End   CTС             CT_End   Pи         P_End   CT├             CT_End   P┌         P_End   CTї             CT_End   P         P_End   CT'             CT_End   P>         P_End   CTY             CT_End   Pp         P_End   CTЛ             CT_End   Pв         P_End   CT╜             CT_End   P╘         P_End   CTя             CT_End   P         P_End   CT!             CT_End   P8         P_End   CTS             CT_End   Pj         P_End   CTЕ             CT_End   PЬ         P_End   CT╖             CT_End   ME                 IB                    % QB                    %   ME_End   CM      CM_End   CT<             CT_End   ConfigExtensionEnd/    @                             ■^╦Z   c:\users\domin\desktop\autonomes_auto\sps\lib\;c:\users\domin\desktop\autonomes_auto\sps\lib\;c:\users\domin\desktop\autonomes_auto\sps\lib\;c:\users\domin\desktop\autonomes_auto\sps\lib\;c:\users\domin\desktop\autonomes_auto\sps\lib\ @      ════════             "┘TZ        ╝M  @
   H   D:\Programme\kotysis\CODESYS V2.3\Targets\WAGO\Libraries\PFC200\Util.lib       
   BCD_TO_INT               B           ¤            byte containing the BCD value    
   BCD_TO_INT                                     h■Q  А                   BLINK           CLOCK                TP    ¤                  ENABLE            ¤        +    TRUE:run Blink, FALSE: OUT keeps its value   TIMELOW           ¤            Time for OUT=FALSE    TIMEHIGH           ¤            Time for OUT=TRUE       OUT            ¤ 	       &    output variable, starting with FALSE             h■Q  А                	   CHARCURVE           I            ¤                  IN           ¤            input signal    N           ¤        @    number of  points defining the characteristic curve : 2<=N<=11       OUT           ¤            output variable    ERR           ¤        я    error :
												0 : 	no error
												1 :	error in ARRAY: wrong sequence ( completely tested, only if IN is equal to largest X-value of P)
												2 :	IN outside of limits of P
												4 :	number of POINTS (N) invalid       P    	  
                    POINT          ¤        8    ARRAY of N points to describe the characteristic curve         h■Q  А                
   DERIVATIVE           X3             ¤               X2             ¤               X1             ¤               T2            ¤               T1            ¤               INIT            ¤                  IN            ¤            input variable    TM           ¤            time since last call in msec    RESET            ¤            reset: set OUT to zero       OUT            ¤ 
           derivative             h■Q  А                   EXTRACT               X           ¤            value    N           ¤            number of bit to be extracted       EXTRACT                                      h■Q  А                   GEN           CET            ¤               PER            ¤               COUNTER            ¤               CLOCK                TON    ¤                  MODE               GEN_MODE   ¤        p   define type :
								TRIANGLE				triangular	from - AMPL. to + AMPL.
								TRIANGLE_POS		triangular	from 0 to AMPL. 
								SAWTOOTH_RISE	sawtooth increasing from -AMPL. to +AMPL.
								SAWTOOTH_FALL	sawtooth decreasing from AMPL to -AMPL
								RECTANGLE			rectangular switching from  -AMPL. to +AMPL 
								SINUS					sinus
								COSINUS				cosinus    BASE            ¤        A    FALSE: period referring to call; TRUE: period referring to time    PERIOD    ш     ¤        )    period time, only relevant if BASE=TRUE    CYCLES    ш     ¤        9    number of calls per period, only relevant if BASE=FALSE 	   AMPLITUDE           ¤            amplitude    RESET            ¤            reset       OUT           ¤            generated function variable             h■Q  А                
   HYSTERESIS               IN           ¤            input value    HIGH           ¤            upper threshold value    LOW           ¤            lower threshold value       OUT            ¤ 	           hysteresis value             h■Q  А                
   INT_TO_BCD               I           ¤        !    INT value to be converted to BCD   
   INT_TO_BCD                                     h■Q  А                   INTEGRAL               IN            ¤            input variable    TM           ¤            time since last call in msec    RESET            ¤        1    reset: OUT is set to zero and OVERFLOW to false       OUT            ¤ 	           value of the integral    OVERFLOW            ¤ 
       
    overflow             h■Q  А                
   LIMITALARM               IN           ¤            INPUT value    HIGH           ¤            upper threshold value    LOW           ¤            lower threshold value       O            ¤ 	            TRUE, if IN > HIGH, else FALSE    U            ¤ 
           TRUE, if IN < LOW, else FALSE    IL            ¤            neither O nor U             h■Q  А                   PACK               B0            ¤            value of bit 0    B1            ¤            value of bit 1    B2            ¤            value of bit 2    B3            ¤            value of bit 3    B4            ¤            value of bit 4    B5            ¤ 	           value of bit 5    B6            ¤ 
           value of bit 6    B7            ¤            value of bit 7       PACK                                     h■Q  А                   PD           CLOCK                TON    ¤               D        
             
   DERIVATIVE    ¤               TMDIFF            ¤               ERROR             ¤               INIT            ¤               Y_ADDOFFSET             ¤            
      ACTUAL            ¤             actual value, process variable 	   SET_POINT            ¤            desired value, set point    KP            ¤            proportionality const. (P)   TV            ¤        '    rate time, derivative time (D) in sec    Y_MANUAL            ¤        /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ¤ 	       !    offset for manipulated variable    Y_MIN            ¤ 
       (    minimum value for manipulated variable    Y_MAX            ¤        (    maximum value for manipulated variable    MANUAL            ¤        [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ¤        !    reset: set Y output to Y_OFFSET       Y            ¤             manipulated variable, set value   LIMITS_ACTIVE            ¤        1    true set value would exceed limits Y_MIN, Y_MAX             h■Q  А                   PID           CLOCK                TON    ¤               I                   INTEGRAL    ¤               D        
             
   DERIVATIVE    ¤               TMDIFF            ¤               ERROR             ¤               INIT            ¤               Y_ADDOFFSET             ¤                  ACTUAL            ¤             actual value, process variable 	   SET_POINT            ¤            desired value, set point    KP            ¤            proportionality const. (P)   TN            ¤            reset time (I) in sec    TV            ¤        &    rate time, derivative time (D) in sec   Y_MANUAL            ¤ 	       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ¤ 
       !    offset for manipulated variable    Y_MIN            ¤        (    minimum value for manipulated variable    Y_MAX            ¤        (    maximum value for manipulated variable    MANUAL            ¤        [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ¤        9    reset: set Y output to Y_OFFSET and reset integral part       Y            ¤             manipulated variable, set value   LIMITS_ACTIVE            ¤        1    true set value would exceed limits Y_MIN, Y_MAX    OVERFLOW            ¤            overflow in integral part             h■Q  А                   PUTBIT               X           ¤            value to be manipulated    N           ¤            position of bit to be changed    B            ¤            value of specified bit       PUTBIT                                     h■Q  А                   RAMP_INT           DIFF            ¤               OLD_IN            ¤               TB            ¤               CET            ¤               CH            ¤               CLOCK                TON    ¤                  IN           ¤            input variable    ASCEND           ¤            maximum positive slope    DESCEND           ¤        )    maximum negative slope (non-negative!!)    TIMEBASE           ¤        П    reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            ¤ 
           reset       OUT           ¤        &    value of function with limited slope             h■Q  А                	   RAMP_REAL           DIFF             ¤               OLD_IN             ¤               TB            ¤               CET            ¤               CLOCK                TON    ¤               probe             ¤                  IN            ¤            input variable    ASCEND            ¤            maximum positive slope    DESCEND            ¤        )    maximum negative slope (non-negative!!)    TIMEBASE           ¤        П    reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            ¤ 
           reset       OUT            ¤        &    value of function with limited slope             h■Q  А                   STATISTICS_INT           SUM            ¤               COUNTER            ¤                  IN           ¤            input value   RESET            ¤        J    reset: average set to 0, min and max to minimum and maximum possible INTs      MN          ¤            minimum value   MX     А     ¤ 	           maximum value   AVG           ¤ 
           average value            h■Q  А                   STATISTICS_REAL           COUNTER            ¤               SUM             ¤                  IN            ¤            input value   RESET            ¤        K    reset: average set to 0, min and max to minimum and maximum possible REALs      MN    ц▒a   3E+38   ¤            minimum value   MX    ъ   1E-37   ¤ 	           maximum value   AVG            ¤ 
           average value            h■Q  А                   UNPACK               B           ¤            byte to be unpacked       B0            ¤            value of bit 0    B1            ¤            value of bit 1    B2            ¤ 	           value of bit 2    B3            ¤ 
           value of bit 3    B4            ¤            value of bit 4    B5            ¤            value of bit 5    B6            ¤            value of bit 6    B7            ¤            value of bit 7             h■Q  А                   VARIANCE           Z            ¤               A             ¤               B             ¤                  IN            ¤            input variable    RESET            ¤            reset       OUT            ¤        
    variance             h■Q  А                   VERSION_UTIL               B            ¤                  Version_Util                                     h■Q  А            Q   D:\Programme\kotysis\CODESYS V2.3\Targets\WAGO\Libraries\PFC200\SysLibSockets.lib          SYSSOCKACCEPT               diSocket           ¤            	   pSockAddr           ¤        (    Address of SocketAddress (SOCKADDRESS)    piSockAddrSize           ¤        &    Address of socket address size (DINT)      SysSockAccept                                     ░°}S  А                  SYSSOCKBIND               diSocket           ¤            	   pSockAddr           ¤        (    Address of SocketAddress (SOCKADDRESS)    diSockAddrSize           ¤            Size of socket address       SysSockBind                                      ░°}S  А                  SYSSOCKCLOSE               diSocket           ¤                  SysSockClose                                      ░°}S  А                  SYSSOCKCONNECT               diSocket           ¤            	   pSockAddr           ¤        (    Address of SocketAddress (SOCKADDRESS)    diSockAddrSize           ¤            Size of socket address       SysSockConnect                                      ░°}S  А                  SYSSOCKCREATE               diAddressFamily           ¤               diType           ¤            
   diProtocol           ¤                  SysSockCreate                                     ░°}S  А                  SYSSOCKGETHOSTBYNAME            
   stHostName     Q       Q         ¤                  SysSockGetHostByName                                     ░°}S  А                  SYSSOCKGETHOSTNAME            
   stHostName     Q       Q         ¤               diNameLength           ¤                  SysSockGetHostName                                      ░°}S  А                  SYSSOCKGETLASTERROR        
   adwJobData   	                          ¤            
   bOldEnable             ¤                  bEnable            ¤               diSocket           ¤                  bDone            ¤               bBusy            ¤               bError            ¤ 	              wErrorId           ¤ 
              dwLastError           ¤                        ░°}S  А                  SYSSOCKGETLASTERRORSYNC               diSocket           ¤                  SysSockGetLastErrorSync                                     ░°}S  А                  SYSSOCKGETOPTION               diSocket           ¤               diLevel           ¤               diOption           ¤               pOptionValue           ¤            Address of option    piOptionLength           ¤            Address of option size (DINT)       SysSockGetOption                                      ░°}S  А                  SYSSOCKHTONL               dwHost           ¤                  SysSockHtonl                                     ░°}S  А                  SYSSOCKHTONS               wHost           ¤                  SysSockHtons                                     ░°}S  А                  SYSSOCKINETADDR               stIPAddr    Q       Q    ¤                  SysSockInetAddr                                     ░°}S  А                  SYSSOCKINETNTOA               InAddr               INADDR   ¤               stIPAddr    Q       Q    ¤               diIPAddrSize           ¤                  SysSockInetNtoa                                      ░°}S  А                  SYSSOCKIOCTL               diSocket           ¤            	   diCommand           ¤               piParameter           ¤            Address of parameter (DINT)       SysSockIoctl                                     ░°}S  А                  SYSSOCKLISTEN               diSocket           ¤               diMaxConnections           ¤                  SysSockListen                                      ░°}S  А                  SYSSOCKNTOHL               dwNet           ¤                  SysSockNtohl                                     ░°}S  А                  SYSSOCKNTOHS               wNet           ¤                  SysSockNtohs                                     ░°}S  А                  SYSSOCKRECV               diSocket           ¤            	   pbyBuffer           ¤            Address of buffer to receive    diBufferSize           ¤               diFlags           ¤                  SysSockRecv                                     ░°}S  А                  SYSSOCKRECVFROM               diSocket           ¤            	   pbyBuffer           ¤            Address of buffer to receive    diBufferSize           ¤               diFlags           ¤            	   pSockAddr           ¤        &    Address of socket address SOCKADDRESS   diSockAddrSize           ¤            Size of socket address       SysSockRecvFrom                                     ░°}S  А                  SYSSOCKSELECT               diWidth           ¤            Typically SOCKET_FD_SETSIZE    fdRead           ¤            Address of  SOCKET_FD_SET    fdWrite           ¤            Address of  SOCKET_FD_SET    fdExcept           ¤            Address of  SOCKET_FD_SET 
   ptvTimeout           ¤            Address of SOCKET_TIMEVAL       SysSockSelect                                     ░°}S  А                  SYSSOCKSEND               diSocket           ¤            	   pbyBuffer           ¤            Address of buffer to receive    diBufferSize           ¤               diFlags           ¤                  SysSockSend                                     ░°}S  А                  SYSSOCKSENDTO               diSocket           ¤            	   pbyBuffer           ¤            Address of buffer to receive    diBufferSize           ¤               diFlags           ¤            	   pSockAddr           ¤        '    Address of socket address SOCKADDRESS    diSockAddrSize           ¤            Size of socket address       SysSockSendTo                                     ░°}S  А                  SYSSOCKSETIPADDRESS            
   stCardName    Q       Q    ¤               stIPAddress    Q       Q    ¤                  SysSockSetIPAddress                                      ░°}S  А                  SYSSOCKSETOPTION               diSocket           ¤               diLevel           ¤               diOption           ¤               pOptionValue           ¤            Address of option    diOptionLength           ¤            Length of option       SysSockSetOption                                      ░°}S  А                  SYSSOCKSHUTDOWN               diSocket           ¤               diHow           ¤                  SysSockShutdown                                      ░°}S  А           W   c:\users\domin\desktop\autonomes_auto\sps\lib\WagoLibEthernet-01\WagoLibEthernet_01.lib          IP_FINDBLOCK           pbyByteA                  ¤               pbyByteB                  ¤               pbyByteAMax                  ¤               pbyByteBMax                  ¤                  pMemoryBlockA           ¤            address of MemoryBlockA    uiLengthBlockA           ¤             length of MemoryBlockA in byte    pMemoryBlockB           ¤            address of MemoryBlockB    uiLengthBlockB           ¤             length of MemoryBlockB in byte       IP_FindBlock                                     Ъ WZ  А                   IP_FINDBYTE           uiByteCounter            ¤               pbyByte                  ¤                  pMemoryBlock           ¤ 
           address of MemoryBlock    uiLength           ¤            length of MemoryBlock in byte    byValue           ¤        "    value to look for in MemoryBlock       IP_FindByte                                     Ъ WZ  А                	   IP_MEMCPY               pSourceAddress    	                             ¤               pDestinationAddress    	                             ¤               BytesToCopy           ¤               	   IP_MEMCPY                                      Ъ WZ  А                
   IP_VERSION               xDummy            ¤               
   IP_Version    Q       Q                              Ъ WZ  А                
   TCP_CLIENT           STATE_CREATE           ¤            
   STATE_OPEN          ¤               STATE_IOCTL          ¤               STATE_CONNECT    
      ¤               STATE_TX          ¤               STATE_RX          ¤               STATE_CLOSE    (      ¤               STATE_ERROR_TRAP    ╚      ¤               m_State            ¤ <              m_ReceiveBuffer   	  ▄                       ¤ =              m_Socket            ¤ >              m_AddressInfo                  SOCKADDRESS    ¤ ?              m_BytesReceived            ¤ @           
   m_diReturn            ¤ A           	   m_xReturn             ¤ B              m_IoCtlParameter           ¤ C       2    IOCTL-Parameter for non-blocking mode of sockets    i            ¤ D           	   T_Connect                TON    ¤ E              m_count            ¤ F              diOption           ¤ G           
   m_Blocking            ¤ H           
   mKeepAlive                      typEthKeepAlive    ¤ I                 xOpenConnection            ¤ !           
   sIPaddress               ¤ "              wPortNumber           ¤ #           
   ptSendData    	  Ш:                           ¤ $              diSendCount           ¤ %              
   xConnected            ¤ (              diError           ¤ )              
   xStartSend            ¤ 7              aReceiveBuffer    	  ▄                     ¤ 8              diReceiveCount           ¤ 9                   Ъ WZ  А                  TCP_CLIENT2           STATE_CREATE           ¤            
   STATE_OPEN          ¤               STATE_IOCTL          ¤               STATE_CONNECT    
      ¤               STATE_TX          ¤               STATE_RX          ¤               STATE_CLOSE    (      ¤               STATE_ERROR_TRAP    ╚      ¤               m_State            ¤ ;              m_ReceiveBuffer   	  ▄                       ¤ <              m_Socket            ¤ =              m_AddressInfo                  SOCKADDRESS    ¤ >              m_BytesReceived            ¤ ?           
   m_diReturn            ¤ @           	   m_xReturn             ¤ A              m_IoCtlParameter           ¤ B       2    IOCTL-Parameter for non-blocking mode of sockets    i            ¤ C           	   T_Connect                TON    ¤ D              m_count            ¤ E              diOption           ¤ F           
   m_Blocking            ¤ G           
   mKeepAlive                      typEthKeepAlive    ¤ H                 xOpenConnection            ¤            
   sIPaddress               ¤                wPortNumber           ¤ !           
   ptSendData    	  Ш:                           ¤ "              diSendCount           ¤ #              tConnectWatchdogTime    '     ¤ $              
   xConnected            ¤ '              diError           ¤ (              
   xStartSend            ¤ 6              aReceiveBuffer    	  ▄                     ¤ 7              diReceiveCount           ¤ 8                   Ъ WZ  А                  TCP_CLIENT3           STATE_CREATE           ¤            
   STATE_OPEN          ¤               STATE_IOCTL          ¤               STATE_CONNECT    
      ¤               STATE_TX          ¤               STATE_RX          ¤               STATE_CLOSE    (      ¤               STATE_ERROR_TRAP    ╚      ¤               m_State            ¤ 9              m_ReceiveBuffer   	  ▄                       ¤ :              m_Socket            ¤ ;              m_AddressInfo                  SOCKADDRESS    ¤ <              m_BytesReceived            ¤ =           
   m_diReturn            ¤ >           	   m_xReturn             ¤ ?              m_IoCtlParameter           ¤ @       2    IOCTL-Parameter for non-blocking mode of sockets    i            ¤ A           	   T_Connect                TON    ¤ B              m_count            ¤ C              diOption           ¤ D           
   m_Blocking            ¤ E           
   mKeepAlive                      typEthKeepAlive    ¤ F              mENABLE_KEEP_ALIVE            ¤ G       $   TRUE will enable KEEP_ALIVE messages      xOpenConnection            ¤            
   sIPaddress               ¤               wPortNumber           ¤               udiKeepAliveProbes          ¤        H   count of probes to be transmitted before a broken connection is detected   diKeepAliveTimeout    ╕     ¤           in ms->3000 =3s   diKeepAliveIntervall    ╕     ¤            in ms->3000 =3s
   ptSendData    	  Ш:                           ¤ !              diSendCount           ¤ "              
   xConnected            ¤ %              diError           ¤ &              
   xStartSend            ¤ 4              aReceiveBuffer    	  ▄                     ¤ 5              diReceiveCount           ¤ 6                   Ъ WZ  А               
   TCP_SERVER        
   STATE_INIT           ¤            
   STATE_OPEN          ¤               STATE_TX          ¤               STATE_RX          ¤               STATE_CLOSE    (      ¤               STATE_ERROR_TRAP    ╚      ¤               m_State            ¤ =              m_ReceiveBuffer   	  ▄                       ¤ >              m_ServerSocket            ¤ ?              m_Socket            ¤ @              m_AddressInfo                  SOCKADDRESS    ¤ A              m_BytesReceived            ¤ B           
   m_diReturn            ¤ C           	   m_xReturn             ¤ D              m_SizeSockadr            ¤ E              m_ConnectionWatchdog                TON    ¤ F              m_Flags            ¤ G              m_NoneBlocking           ¤ H           
   m_Blocking            ¤ I              i            ¤ J              m_count            ¤ K              diOption           ¤ L              on            ¤ M           
   mKeepAlive                      typEthKeepAlive    ¤ N                 xEnable            ¤        %    Set TRUE to enable function block			   wPortNumber           ¤             Port   tServerTimeOut    P├     ¤ !           
   ptSendData    	  `ъ                           ¤ "              diSendCount           ¤ #                 xClientConnected            ¤ &              diError           ¤ '              dwIP_AddressOfClient           ¤ (              
   xStartSend            ¤ 7              aReceiveBuffer    	  ╕                     ¤ 8              diReceiveCount           ¤ 9                   Ъ WZ  А                  TCP_SERVER3        
   STATE_INIT           ¤            
   STATE_OPEN          ¤               STATE_TX          ¤               STATE_RX          ¤               STATE_CLOSE    (      ¤               STATE_ERROR_TRAP    ╚      ¤               m_State            ¤ 9              m_ReceiveBuffer   	  ▄                       ¤ :              m_ServerSocket            ¤ ;              m_Socket            ¤ <              m_AddressInfo                  SOCKADDRESS    ¤ =              m_BytesReceived            ¤ >           
   m_diReturn            ¤ ?           	   m_xReturn             ¤ @              m_SizeSockadr            ¤ A              m_ConnectionWatchdog                TON    ¤ B              m_Flags            ¤ C              m_NoneBlocking           ¤ D           
   m_Blocking            ¤ E              i            ¤ F              m_count            ¤ G              diOption           ¤ H              on            ¤ I           
   mKeepAlive                      typEthKeepAlive    ¤ J              tServerTimeOut    P├      ¤ K              mENABLE_KEEP_ALIVE            ¤ L       $   TRUE will enable KEEP_ALIVE messages      xEnable            ¤        %    Set TRUE to enable function block			   wPortNumber           ¤            Port   udiKeepAliveProbes          ¤        H   count of probes to be transmitted before a broken connection is detected   diKeepAliveTimeout    ╕     ¤           in ms->3000 =3s   diKeepAliveIntervall    ╕     ¤           in ms->3000 =3s
   ptSendData    	  `ъ                           ¤               diSendCount           ¤                  xClientConnected            ¤ "              diError           ¤ #              dwIP_AddressOfClient           ¤ $              
   xStartSend            ¤ 3              aReceiveBuffer    	  ╕                     ¤ 4              diReceiveCount           ¤ 5                   Ъ WZ  А               
   UDP_CLIENT           m_State            ¤ +              m_Socket            ¤ ,            socket descriptor    aux_AddressInfo                  SOCKADDRESS    ¤ -           address info for RECEIVE   m_AddressInfo                  SOCKADDRESS    ¤ .           address info for transmit   m_BytesReceived            ¤ /           count of received data    m_ReceiveBuffer   	  └                       ¤ 0           
   m_diReturn            ¤ 1           	   m_xReturn             ¤ 2              i            ¤ 3              m_IoCtlParameter           ¤ 4              first             ¤ 5              diOption           ¤ 6              STATE_CREATE           ¤ :              STATE_RX          ¤ ;              STATE_CLOSE    (      ¤ <                 xOpenSocket            ¤               sIP_Address    Q       Q    ¤           IP address of server   wPort           ¤        
    Port-Nr.	   diBytesToSend           ¤               ptSendBuffer    	  ┐                           ¤                  xSocket_Is_Open            ¤               diErrorCode           ¤               
   xStartSend            ¤ %              aReceiveBuffer    	  └                     ¤ &              diReceiveCount           ¤ '                   Ъ WZ  А                  UDP_CLIENT_2           m_State            ¤ *              m_Socket            ¤ +            socket descriptor    aux_AddressInfo                  SOCKADDRESS    ¤ ,           address info for RECEIVE   m_AddressInfo                  SOCKADDRESS    ¤ -           address info for transmit   m_BytesReceived            ¤ .           count of received data    m_ReceiveBuffer   	  └                       ¤ /           
   m_diReturn            ¤ 0           	   m_xReturn             ¤ 1              i            ¤ 2              m_IoCtlParameter           ¤ 3              first             ¤ 4              diOption           ¤ 5              m1_AddressInfo                  SOCKADDRESS    ¤ 6           address info for transmit   binddone             ¤ 7              STATE_CREATE           ¤ ;              STATE_RX          ¤ <              STATE_CLOSE    (      ¤ =                 xOpenSocket            ¤               sIP_Address    Q       Q    ¤            IP address of server   wPort           ¤            Destination Port-No.	   wSourcePort           ¤            Source Port-No.   diBytesToSend           ¤               ptSendBuffer    	  ┐                           ¤                  xSocket_Is_Open            ¤               diErrorCode           ¤               
   xStartSend            ¤ $              aReceiveBuffer    	  └                     ¤ %              diReceiveCount           ¤ &                   Ъ WZ  А               
   UDP_SERVER           m_State            ¤ '              m_Socket            ¤ (            socket descriptor   m_AddressInfo                  SOCKADDRESS    ¤ )              aux_addresse                  SOCKADDRESS    ¤ *              m_BytesReceived            ¤ +           count of received bytes    m_ReceiveBuffer   	  └                       ¤ ,           
   m_diReturn            ¤ -           	   m_xReturn             ¤ .              i            ¤ /              first             ¤ 0              m_IoCtlParameter           ¤ 1              diOption           ¤ 2              STATE_CREATE           ¤ 6           
   STATE_BIND          ¤ 7              STATE_RX          ¤ 8              STATE_CLOSE    (      ¤ 9                 xOpenSocket            ¤               wPort           ¤        
    Port-Nr.	   diBytesToSend           ¤               ptSendBuffer    	  ┐                           ¤                  xSocket_Is_Open            ¤               diErrorCode           ¤               
   xStartSend            ¤               aReceiveBuffer    	  └                     ¤               diReceiveCount           ¤                    Ъ WZ  А                  UDP_SERVER2           m_State            ¤ '              m_Socket            ¤ (            socket descriptor   m_AddressInfo                  SOCKADDRESS    ¤ )              aux_addresse                  SOCKADDRESS    ¤ *              m_BytesReceived            ¤ +           count of received bytes    m_ReceiveBuffer   	  └                       ¤ ,           
   m_diReturn            ¤ -           	   m_xReturn             ¤ .              i            ¤ /              first             ¤ 0              m_IoCtlParameter           ¤ 1              diOption           ¤ 2              STATE_CREATE           ¤ 6           
   STATE_BIND          ¤ 7              STATE_RX          ¤ 8              STATE_CLOSE    (      ¤ 9                 xOpenSocket            ¤               wPort           ¤        
    Port-Nr.	   diBytesToSend           ¤               ptSendBuffer    	  ┐                           ¤                  xSocket_Is_Open            ¤               udiIP_Address           ¤        #   IP address of client which transmit   diErrorCode           ¤               
   xStartSend            ¤               aReceiveBuffer    	  └                     ¤               diReceiveCount           ¤                    Ъ WZ  А               
   UDP_SNDRCV           m_State            ¤ (              m_Socket            ¤ )            socket descriptor    aux_AddressInfo                  SOCKADDRESS    ¤ *           address info for RECEIVE   m_AddressInfo                  SOCKADDRESS    ¤ +           address info for transmit   m_BytesReceived            ¤ ,           count of received data    m_ReceiveBuffer   	  └                       ¤ -           
   m_diReturn            ¤ .           	   m_xReturn             ¤ /              i            ¤ 0              m_IoCtlParameter           ¤ 1              first             ¤ 2              diOption           ¤ 3              m1_AddressInfo                  SOCKADDRESS    ¤ 4           address info for transmit   binddone             ¤ 5              STATE_CREATE           ¤ 9              STATE_RX          ¤ :              STATE_CLOSE    (      ¤ ;                 xOpenSocket            ¤               sIP_Address    Q       Q    ¤        "    IP address of server sending data   wPort           ¤        #    Destination Port-No. sending data	   diBytesToSend           ¤               ptSendBuffer    	  ┐                           ¤                  xSocket_Is_Open            ¤               dwIP_Address           ¤        /   IP address of client which has transmitted data   diErrorCode           ¤               
   xStartSend            ¤ "              aReceiveBuffer    	  └                     ¤ #              diReceiveCount           ¤ $                   Ъ WZ  А           G   c:\users\domin\desktop\autonomes_auto\sps\lib\Stepper-03\Stepper_03.lib          MC3_CONFIGURATIONTABLE           state            ¤               i            ¤            	   togglembx            ¤                crc            ¤ !              crc_calc            ¤ "              error            ¤ #              watchdogTimer                TON    ¤ $           	   state_old            ¤ %           
   ReturnCode            ¤ &              warmstartTON                TON    ¤ '              aMoveOut    	                               ¤ (       N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ )       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤ *                 xExecute            ¤               xRead            ¤               xWrite            ¤        
   True:write   ptData    	                              ¤                  xDone            ¤               xBusy            ¤               xError            ¤               wStatus           ¤                  Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_CONFIGURATIONVALUE           state            ¤               i            ¤             	   state_old            ¤ !              watchdogTimer                TON    ¤ "              error            ¤ #           
   ReturnCode            ¤ $           	   togglembx            ¤ %              ptValue    	                               ¤ &              aMoveOut    	                               ¤ '       N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ (       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤ )                 xExecute            ¤               wAddress           ¤            
   bReadWrite           ¤        ,   0:Read,1:Write without Save,2:Write and Save
   bValueSize           ¤                  xDone            ¤               xBusy            ¤               xError            ¤               wStatus           ¤                  dwValue           ¤               Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_DRIVEPROGRAM           state            ¤               aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤               aux1             ¤                  xExecute            ¤           Enable Stepper module   wStartPositionDriveProgram           ¤                  xDone            ¤            Stepper on target    xBusy            ¤            drive program activ    wActualDriveProgramPosition           ¤            Actual position      Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_DRIVEPROGRAMTABLE           ptData    	  ?                            ¤             max number of data sets = 400    bRam            ¤ !              state            ¤ "              i            ¤ #           	   togglembx            ¤ $              crc            ¤ %              crc_calc            ¤ &              error            ¤ '              watchdogTimer                TON    ¤ (           	   state_old            ¤ )           
   ReturnCode            ¤ *              activeTable            ¤ +              data                  MC3_typData         ¤ ,              aMoveOut    	                               ¤ -       N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ .       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1       xExecute            ¤               xRead            ¤               xWrite            ¤        
   True:write   xFlashProgram            ¤        '   True:Save drive program to flash memory
   wDataCount           ¤            1..400       xDone            ¤               xBusy            ¤               xError            ¤               wStatus           ¤                  aData    	  ?                     ¤            max number of data sets = 400    Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                  MC3_GETVARIABLE           state            ¤            	   togglembx            ¤               aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤                   iIndex           ¤                  dwValue           ¤                  Stepper                 MC3_StepperCommunication  ¤               xExecute            ¤                    а╣UZ  А                   MC3_HOME           state            ¤               aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤                  xExecute            ¤           Enable Stepper module   xRefPositive            ¤            Homing direction positive    xRefNegative            ¤            Homing direction negative       xDone            ¤            Stepper on target    xBusy            ¤            Job active       Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_JOG_670           state            ¤               aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤               aux1             ¤                   xEnable            ¤           enable jog mode   xPos            ¤               xNeg            ¤               wJogTimeOut           ¤                  xBusy            ¤           job active       Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_JOG_672           state            ¤               aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤               aux1             ¤                  xEnable            ¤           enable jog mode   wJogTimeOut           ¤                  xBusy            ¤           job active       Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_MODESELECT               xMoveAbsoluteRequest            ¤        $    Anforderung Positionierung absolut    xMoveRelativeRequest            ¤        $    Anforderung Positionierung relativ    xHomingRequest            ¤            Anforderung Homing    xJoggingRequest            ¤            Anforderung Tippen    xVelocityCtrlRequest            ¤        &    Anforderung Geschwindigkeits Control    xDrivePrgRequest            ¤            Anforderung Verfahrprogramm    xTorqueEdge            ¤        5    Anforderung flankengesteuerte Drehmomentenkontrolle    xTorqueLevel            ¤        3    Anforderung pegelgesteuerte Drehmomentenkontrolle       MC3_ModeSelect               MC3_Mode                             а╣UZ  А                   MC3_MOVEABSOLUTE           state            ¤               diPosition_old            ¤            
   iSpeed_old            ¤               aMoveOut    	                               ¤         N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ !       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤ "                 xExecute            ¤            start drive    iSpeed           ¤        "    Speed 1...25000 while positioning   wAcceleration           ¤            Acceleration 1...32767
   diPosition           ¤        +    Position range from  -8388607... +8388607       xDone            ¤            Stepper on target    xBusy            ¤            Job active       Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_MOVERELATIVE           state            ¤ !           	   togglembx            ¤ "           
   ReturnCode            ¤ #           
   iSpeed_old            ¤ $              wAcceleration_old            ¤ %              wDeceleration_old            ¤ &              diPosition_old            ¤ '              aMoveOut    	                               ¤ (       N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ )       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤ *           
   auxcounter            ¤ +              auxActualMode            ¤ ,                 xExecute            ¤           Enable Stepper module   iSpeed           ¤        #    Speed 1...25000 while positioning    wAcceleration           ¤            Acceleration 1...32767    wDeceleration           ¤            Deceleration 1...32767 
   diPosition           ¤        +    Position range from  -8388607... +8388607       xDone            ¤            Stepper on target    xBusy            ¤            Job active    xError            ¤               wStatus           ¤                  Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_MOVETORQUE           state            ¤               diPosition_old            ¤            
   iSpeed_old            ¤               aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤                   xExecute            ¤            start drive    iSpeed           ¤        "    Speed 1...25000 while positioning   wCurrent           ¤            Current 1...150%      xDone            ¤            Stepper on target    xBusy            ¤            Job active       Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_MOVETORQUE2           state            ¤               diPosition_old            ¤            
   iSpeed_old            ¤               aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤                aux1             ¤ !                 xEnable            ¤            start drive    iSpeed           ¤        "    Speed 1...25000 while positioning   wCurrent           ¤            Current 1...150%      xDone            ¤            Stepper on target    xBusy            ¤            Job active       Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_MOVEVELOCITY_670           state            ¤            
   iSpeed_old            ¤               auxMC2_Config                                   MC3_ConfigurationValue    ¤                auxvalue            ¤ !              aMoveOut    	                               ¤ "       N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ #       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤ $                 xExecute            ¤           Enable Stepper module   iSpeed           ¤        I    Speed 1...25000 while positioning,-25000...25000 while velocity control    wAcceleration           ¤            Acceleration 1...32767       xInVelocity            ¤            Stepper on target    xBusy            ¤            Job active       Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_MOVEVELOCITY_672           state            ¤            
   iSpeed_old            ¤               aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤                  xExecute            ¤           Enable Stepper module   iSpeed           ¤        I    Speed 1...25000 while positioning,-25000...25000 while velocity control    wAcceleration           ¤            Acceleration 1...32767       xInVelocity            ¤            Stepper on target    xBusy            ¤            Job active       Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_POSITIONTABLE           ptData    	  ╟                             ¤             max number of data sets = 50    state            ¤ !              i            ¤ "           	   togglembx            ¤ #              crc            ¤ $              crc_calc            ¤ %              error            ¤ &              watchdogTimer                TON    ¤ '           	   state_old            ¤ (           
   ReturnCode            ¤ )              data                  MC3_typData         ¤ *              aMoveOut    	                               ¤ +       N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ ,       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1       xExecute            ¤               xRead            ¤               xWrite            ¤        
   True:write
   bDataCount           ¤            1..50       xDone            ¤               xBusy            ¤               xError            ¤               wStatus           ¤                  aData    	  ╟                      ¤            max number of data sets = 50    Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А               	   MC3_POWER           aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤                  xEnable            ¤           Enable Stepper module      xStatus            ¤            power stage enabled       Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_PWM_MODE_670        !   MC3_ConfigurationValueReadWrite_1                                   MC3_ConfigurationValue    ¤               ConfigurationValue            ¤                startconfiguration             ¤ !              mode1            ¤ "              status1            ¤ #              state            ¤ $              JobType_old            ¤ %              LatchPosition            ¤ &           
   LatchSpeed            ¤ '              periodChanged             ¤ (              aMoveOut    	                               ¤ )       N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ *       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤ +                 xEnable            ¤               wPulsDutyFactor           ¤            5000 -> 50%on 50%off   udiPulsPeriod           ¤            10.000 -> 10ms on    wAcceleration           ¤           0..32767      xError            ¤               xBusy            ¤               wActualPulsDutyFactor           ¤                  xStart            ¤               xStop            ¤               xErrorReset            ¤               Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_READACTUALPOSITION           LatchPosition            ¤            
   LatchSpeed            ¤               temp            ¤                tmp            ¤ !              dwtemp            ¤ "              dwtmp            ¤ #              aMoveOut    	                               ¤ $       N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ %       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤ &              state            ¤ '           	   togglembx            ¤ (           
   ReturnCode            ¤ )                 xEnable            ¤           Enable Stepper module      xValid            ¤            Stepper on target    diActualPosition           ¤            Actual position   iActualSpeed           ¤               bActualMode           ¤               xMailboxActive            ¤        *   actualPosition and actualSpeed are latched   xModulReset            ¤                  Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_READERROR     	      state            ¤               MyDiagnoseEnable             ¤               MyDiagnoseErrorText               MC3_ERROR_CODES    ¤               wErrorCodes            ¤                aMoveOut    	                               ¤ !       N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ "       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤ #              aux1             ¤ $              mailboxstate_old            ¤ %          new with V1.1      xEnable            ¤           Enable Stepper module      xDone            ¤            Stepper on target    xBusy            ¤            Job active    xError            ¤               wStatus           ¤               typErrorCodes               MC3_ERROR_CODES   ¤            error value string        Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                	   MC3_RESET           aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤                  xExecute            ¤           Enable Stepper module      xDone            ¤            Stepper on target       Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_RESTOREDEFAULT           state            ¤            	   state_old            ¤               watchdogTimer                TON    ¤               aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤         K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤ !                 xExecute            ¤               wFactoryDefault_No          ¤           2:Default 1,3:Default 2      xDone            ¤               xBusy            ¤               xError            ¤               wStatus           ¤                  Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_SETFILTERVARIABLE           state            ¤            	   togglembx            ¤               aMoveOut    	                               ¤         N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ !       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤ "                 iFilter           ¤        #   1..8 according to the filter number	   wSetValue           ¤                  xDone            ¤            Position set   xBusy            ¤            Job active    xError            ¤                  Stepper                 MC3_StepperCommunication  ¤               xExecute            ¤                    а╣UZ  А                   MC3_SETPOSITION           state            ¤            	   togglembx            ¤               aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤                   xExecute            ¤           Enable Stepper module
   diPosition           ¤        +    Position range from  -8388607... +8388607       xDone            ¤            Position set   xBusy            ¤            Job active    xError            ¤                  Stepper                 MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_STEPPERCOMMUNICATION           data                 MC3_typData    ¤                  aMoveIn   	                         ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1       aMoveOut   	                         ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1             а╣UZ  А                   MC3_STEPPERCONTROLBASIC            MyMC3_Power                 	   MC3_Power    ¤ /              xPowerEnabled             ¤ 0              MyMC3_Reset                 	   MC3_Reset    ¤ 1              myreset             ¤ 2           
   MyMC3_Stop                MC3_Stop    ¤ 3              MyMC3_ReadActualPosition                                  MC3_ReadActualPosition    ¤ 4              MyMC3_ReadError                              MC3_ReadError    ¤ 5              error             ¤ 6              enableerror             ¤ 7              MyMC3_MoveAbsolute                           MC3_MoveAbsolute    ¤ 8              execute             ¤ 9           
   MyMC3_Home        
                MC3_Home    ¤ :              MyMC3_MoveRelative                                    MC3_MoveRelative    ¤ ;              MyMC3_Jog_672        	               MC3_Jog_672    ¤ <              MyMC3_Jog_670                         MC3_Jog_670    ¤ =              gc_JogTimeOut            ¤ >              MyMC3_DriveProgram                         MC3_DriveProgram    ¤ ?              MyMC3_MoveVelocity_672                         MC3_MoveVelocity_672    ¤ @              MyMC3_MoveVelocity_670                           MC3_MoveVelocity_670    ¤ A              MyMC3_ConfigurationValue                                   MC3_ConfigurationValue    ¤ B           	   aux1state            ¤ C           	   parameter            ¤ D              execute1             ¤ E              aMoveOut    	                               ¤ F       N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤ G       K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤ H              MyMC3_MoveTorque                          MC3_MoveTorque    ¤ I              MyMC3_MoveTorque2                           MC3_MoveTorque2    ¤ J              warningFirstTime             ¤ K              warning_old             ¤ L              auxtypErrorCodes               MC3_ERROR_CODES    ¤ M           error value string  
   auxwStatus            ¤ N           
      xEnable            ¤            Enable Stepper module   JobType               MC3_Mode   ¤        !    MoveAbsolute / Homing / JogMode    wModule    Ю     ¤            670,671,672,673   xDirPos            ¤            Direction positive    xDirNeg            ¤            Direction negative    xStop            ¤            stop drive    iSpeed           ¤        I    Speed 1...25000 while positioning,-25000...25000 while velocity control    wAcceleration           ¤        8    Acceleration 1...32767 or if TorqueControlMode 0..150%    wDeceleration           ¤             Deceleration 1...32767 
   diPosition           ¤ !       +    Position range from  -8388607... +8388607 	      xDone            ¤ $           Stepper on target    xBusy            ¤ %           Job active    diActualPosition           ¤ &           Actual position   iActualSpeed           ¤ '              xMailboxActive            ¤ (       *   actualPosition and actualSpeed are latched   xError            ¤ )              xWarning            ¤ *              wStatus           ¤ +              typErrorCodes               MC3_ERROR_CODES   ¤ ,           error value string        xStart            ¤            start drive    xErrorReset            ¤               Stepper                  MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_STOP           aMoveOut    	                               ¤        N    Stepperklemme Output; [9] := Control 3, [10] := Control 2, [11] := Control 1    aMoveIn    	                               ¤        K    Stepperklemme Input; [9] := Status 3, [10] := Status 2,  [11] := Status 1    data                  MC3_typData         ¤                  xExecute            ¤           Enable Stepper module      xDone            ¤            Stepper standstill       Stepper                  MC3_StepperCommunication  ¤                    а╣UZ  А                   MC3_VERSION               iVersionElement           ¤        ╬   	1 : major number		new function for function blocks, new parameters, new input/output
										2 :	minor number		new internal function, no changes input / ouptut
										3 :	revision number	only update      MC3_Version                                     а╣UZ  А            9   c:\users\domin\desktop\autonomes_auto\sps\lib\SerComm.lib          SERCOMM           INTERNAL_USE_DO_NOT_MODIFY   	  Е                       ¤                  EN            ¤            Initial = FALSE    COMPORT           ¤            Initial = COM1    BAUDRATE               COM_BAUDRATE   ¤            Initial = 19200 Baud    PARITY            
   COM_PARITY   ¤            Initial = even parity    STOPBITS               COM_STOPBITS   ¤ 	           Initial = one stopbit    BYTESIZE               COM_BYTESIZE   ¤ 
           Initial = 8 Databits    FLOW_CONTROL               COM_FLOW_CONTROL   ¤            Initial = No flow control 	   FB_ACTION            
   COM_ACTION   ¤            Initial = Open    BYTES_TO_DO           ¤            Initial = 0    SEND_BUFFER           ¤            Address of the send buffer    RECEIVE_BUFFER           ¤            Address of the receive buffer       ENO            ¤               ERROR            ¤            Indicates an error 
   LAST_ERROR           ¤            Error code 
   BYTES_DONE           ¤            Number of write/read bytes             h■Q  А                  SERCOMM_VERSION               EN            ¤           Activate the function       SERCOMM_VERSION                                     h■Q  А           Y   c:\users\domin\desktop\autonomes_auto\sps\lib\Serial-Interface-01\Serial_Interface_01.lib          SERIAL_COM_OBJECT           COM                SERIAL_INTERFACE    ¤               INIT             ¤                  OPEN_COM_PORT           ¤               COM_PORT_NR          ¤               BAUDRATE       
    BAUD_9600       COM_BAUDRATE   ¤               PARITY       
    PARITY_NO    
   COM_PARITY   ¤               STOPBITS           STOPBITS_1       COM_STOPBITS   ¤               BYTESIZE           BS_8        COM_BYTESIZE   ¤               FLOW_CONTROL           FLOW_CONTROL_TERMINAL_DEFAULT        COM_FLOW_CONTROL   ¤            	   Interface                     I_SERIAL_COM   ¤                            ╩╪TZ  А                   SERIAL_INTERFACE     	   	   Interface                              SERCOMM    ¤ ,              Com_Port_Ist_Offen             ¤ .              Senden_Ist_Aktiv             ¤ /              Fehler            ¤ 0              Buffer   	  А                       ¤ 2              i            ¤ 3              Receive_aktiv             ¤ 4              Byte_to_read            ¤ 5              step            ¤ 7           	      xOPEN_COM_PORT            ¤               bCOM_PORT_NR           ¤            
   cbBAUDRATE           BAUDRATE_TERMINAL_DEFAULT       COM_BAUDRATE   ¤               cpPARITY           PARITY_TERMINAL_DEFAULT    
   COM_PARITY   ¤            
   csSTOPBITS           STOPBITS_TERMINAL_DEFAULT       COM_STOPBITS   ¤               cbsBYTESIZE           BYTESIZE_TERMINAL_DEFAULT        COM_BYTESIZE   ¤               cfFLOW_CONTROL           FLOW_CONTROL_TERMINAL_DEFAULT        COM_FLOW_CONTROL   ¤               iBYTES_TO_SEND           ¤               ptSEND_BUFFER                 ¤                   bERROR           ¤ (              xCOM_PORT_IS_OPEN            ¤ )                 xSTART_SEND            ¤ #              utRECEIVE_BUFFER                 typRING_BUFFER  ¤ $              xINIT            ¤ %                   ╩╪TZ  А                   VERSION_SERIALINTERFACE           _VERSION         ¤            Version 2.6   |  28.11.2012       EN            ¤                  Version_SerialInterface                                     ╩╪TZ  А            L   D:\Programme\kotysis\CODESYS V2.3\Targets\WAGO\Libraries\PFC200\Standard.lib          ASCIIBYTE_TO_STRING               byt           ¤                  ASCIIBYTE_TO_STRING                                         vфzS  А                  CONCAT               STR1               ¤               STR2               ¤                  CONCAT                                         vфzS  А                  CTD           M             ¤            Variable for CD Edge Detection      CD            ¤            Count Down on rising edge    LOAD            ¤ 	           Load Start Value    PV           ¤ 
           Start Value       Q            ¤            Counter reached 0    CV           ¤            Current Counter Value             vфzS  А                  CTU           M             ¤             Variable for CU Edge Detection       CU            ¤        
    Count Up    RESET            ¤ 	           Reset Counter to 0    PV           ¤ 
           Counter Limit       Q            ¤            Counter reached the Limit    CV           ¤            Current Counter Value             vфzS  А                  CTUD           MU             ¤             Variable for CU Edge Detection    MD             ¤             Variable for CD Edge Detection       CU            ¤ 
       
    Count Up    CD            ¤            Count Down    RESET            ¤            Reset Counter to Null    LOAD            ¤            Load Start Value    PV           ¤            Start Value / Counter Limit       QU            ¤            Counter reached Limit    QD            ¤            Counter reached Null    CV           ¤            Current Counter Value             vфzS  А                  DELETE               STR               ¤               LEN           ¤ 	              POS           ¤ 
                 DELETE                                         vфzS  А                  F_TRIG           M             ¤                  CLK            ¤            Signal to detect       Q            ¤ 	           Edge detected             vфzS  А                  FIND               STR1               ¤ 	              STR2               ¤ 
                 FIND                                     vфzS  А                  INSERT               STR1               ¤ 	              STR2               ¤ 
              POS           ¤                  INSERT                                         vфzS  А                  LEFT               STR               ¤               SIZE           ¤                  LEFT                                         vфzS  А                  LEN               STR               ¤                  LEN                                     vфzS  А                  MID               STR               ¤               LEN           ¤ 	              POS           ¤ 
                 MID                                         vфzS  А                  R_TRIG           M             ¤                  CLK            ¤            Signal to detect       Q            ¤ 	           Edge detected             vфzS  А               
   REAL_STATE               RESET            ¤            Reset the variable       ERROR           ¤            Error detected             vфzS  А                  REPLACE               STR1               ¤ 	              STR2               ¤ 
              L           ¤               P           ¤                  REPLACE                                         vфzS  А                  RIGHT               STR               ¤               SIZE           ¤                  RIGHT                                         vфzS  А                  RS               SET            ¤               RESET1            ¤ 	                 Q1            ¤                        vфzS  А                  RTC           M             ¤               DiffTime            ¤                  EN            ¤               PDT           ¤                  Q            ¤               CDT           ¤                        vфzS  А                  SEMA           X             ¤                  CLAIM            ¤ 
              RELEASE            ¤                  BUSY            ¤                        vфzS  А                  SR               SET1            ¤               RESET            ¤                  Q1            ¤                        vфzS  А                  STANDARD_VERSION               EN            ¤                  STANDARD_VERSION                                     vфzS  А                  STRING_COMPARE               STR1               ¤               STR2               ¤                  STRING_COMPARE                                      vфzS  А                  STRING_TO_ASCIIBYTE               str               ¤                  STRING_TO_ASCIIBYTE                                     vфzS  А                  TOF           M             ¤            internal variable 	   StartTime            ¤            internal variable       IN            ¤        ?    starts timer with falling edge, resets timer with rising edge    PT           ¤            time to pass, before Q is set       Q            ¤        2    is FALSE, PT seconds after IN had a falling edge    ET           ¤            elapsed time             vфzS  А                  TON           M             ¤            internal variable 	   StartTime            ¤            internal variable       IN            ¤        ?    starts timer with rising edge, resets timer with falling edge    PT           ¤            time to pass, before Q is set       Q            ¤        0    is TRUE, PT seconds after IN had a rising edge    ET           ¤            elapsed time             vфzS  А                  TP        	   StartTime            ¤            internal variable       IN            ¤        !    Trigger for Start of the Signal    PT           ¤        '    The length of the High-Signal in 10ms       Q            ¤            The pulse    ET           ¤        &    The current phase of the High-Signal             vфzS  А           J   D:\Programme\kotysis\CODESYS V2.3\Targets\WAGO\Libraries\PFC200\Iecsfc.lib          SFCACTIONCONTROL     
      S_FF                 RS    ¤               L_TMR                    TON    ¤               D_TMR                    TON    ¤               P_TRIG                 R_TRIG    ¤               SD_TMR                    TON    ¤               SD_FF                 RS    ¤               DS_FF                 RS    ¤               DS_TMR                    TON    ¤               SL_FF                 RS    ¤               SL_TMR                    TON    ¤            
      N            ¤            Non stored action qualifier    R0            ¤        #    Overriding reset action qualifier    S0            ¤            Set (stored) action qualifier    L            ¤ 	           Time limited action qualifier    D            ¤ 
           Time delayed action qualifier    P            ¤            Pulse action qualifier    SD            ¤        *    Stored and time delayed action qualifier    DS            ¤        %    Delayed and stored action qualifier    SL            ¤        *    Stored and time limited action qualifier    T           ¤            Current time       Q            ¤        1    Associated action is executed, if Q equals TRUE             h■Q  А            R   D:\Programme\kotysis\CODESYS V2.3\Targets\WAGO\Libraries\PFC200\SYSLIBCALLBACK.LIB          SYSCALLBACKREGISTER            	   iPOUIndex           ¤        !    POU Index of callback function.    Event            	   RTS_EVENT   ¤            Event to register       SysCallbackRegister                                      h■Q  А                  SYSCALLBACKUNREGISTER            	   iPOUIndex           ¤        !    POU Index of callback function.    Event            	   RTS_EVENT   ¤            Event to register       SysCallbackUnregister                                      h■Q  А                         BUFFERTOINT           i            Ц               inte    Q       Q     Ц                  pBuffer    	  └                           Ц               iLen           Ц                  BufferToInt                                     +v╟Z  @                  PLC_PRG           Socket_1                                  SocketCommunication    В               xConnectToServer            В            
   xConnected             В               iAngle            В               diErrorCode            В            	   Stepper_1        =                                                                   StepperControl    В 
           input    xStartControl            В            	   xTraining             В     IX                   %           xEmergencyStop             В     IX                  %        output    iCurrentAngle            В               xTrainingActive             В               xStepperError             В               typStepperErrorCode               MC3_ERROR_CODES    В            testvariables   iAngle2            В               xTrainingActive2             В               iCurrentAngle2            В                                +v╟Z  @                   SOCKETCOMMUNICATION           Client1                                    
   UDP_Client    e            	   xOpenSock             e               sIP_Address    Q      192.168.1.5Q     e            CHANGE - IP address of server   wPort    @      e            CHANGE - Port-Nr.	   diBytesToSend            e               arSendBuffer   	  └                       e               arReceiveBuffer   	  └                       e            
   xStartSend             e               diReceiveCount            e               ptSendBuffer    	  └                            e               comState           Connect    
   enComState    e            
   iBufferLen            e               iPreviousAngle            e               sConnectMessage    Q      PFC200 connectedQ     e        B    Message which is sent to UPD-Server if connection is established       xConnectToServer            e               iCurrentAngle           e            	   xSendData            e               
   xConnected            e               iSteeringAngle           e 	              diErrorCode           e 
                       ╗Є╟Z  @                  STEPPERCONTROL     5      StepperCommunication_673                 MC3_StepperCommunication    Щ               stepperInputArray   	                          Щ     IB                    %           stepperOutputArray   	                          Щ     QB                    %           SetPosition_673                         MC3_SetPosition    Щ               xSetPosition             Щ               diZeroPosition            Щ               xDoneSetPos             Щ               xBusySetPos             Щ               xErrorSetPos             Щ               StepperControlBasic        6                                                            MC3_StepperControlBasic    Щ               xEnableControl             Щ            
   typJobType           MC3_TorqueControl_Edge       MC3_Mode    Щ               wModule_673    б      Щ               xStopStepper             Щ               iSpeedControl            Щ                wAcceleration    ш      Щ !              diTargetPosition            Щ "              xStartStepper             Щ #              xErrorReset             Щ $              xDoneControl             Щ %              xBusyControl             Щ &              diCurrentPosition            Щ '              iCurrentSpeed            Щ (              xMailboxActive             Щ )              xErrorControl             Щ *              xWarningControl             Щ +              wStatusControl            Щ ,              typErrorCodesControl               MC3_ERROR_CODES    Щ -              MoveTorque2                           MC3_MoveTorque2    Щ /              xEnableTorque             Щ 0              iSpeedTorque            Щ 1              wCurrentTorqueProcent            Щ 2              xDoneTorque             Щ 3              xBusyTorque             Щ 4              programState       
    undefined       enProgramState    Щ 6              rDiaGearMotor       A   10.0    Щ 7           DO NOT CHANGE    rDiaGearSteering       A   10.0    Щ 8           DO NOT CHANGE 
   rGearRatio      А@   4    Щ 9           DO NOT CHANGE    rMotorstepsPerTurnWithRatio             Щ :              xHomingDone             Щ ;              iSpeedNominal             Щ <              iSteeringAngle            Щ =           
   iDiffAngle            Щ >              rDecelerarionFac             Щ ?              iDEGREE_CIRCLE    h     Щ C           DO NOT CHANGE    iMOTOR_STEPS_PER_TURN    ╚      Щ D           DO NOT CHANGE    rFAC_MICROSTEP      АB   64.0   Щ E           DO NOT CHANGE    iSPEED_STOP           Щ F           DO NOT CHANGE    wCURRENT_PERCENT_TRAIN           Щ G       #    DO NOT CHANGE - for training mode 
   iSPEED_RUN    '     Щ H           0...25000    wCURRENT_PERCENT_RUN    P      Щ I       Z    for autonomous mode - if torque to small to turn steering wheel, change value to max 150    rDECELERATION_ANGLE       A   10.0   Щ J       H    DO NOT CHANGE - slow down turningspeed to reach targetposition exactly    iMAX_STEERING_ANGLE    ╚      Щ K       &    max steering angle of steering wheel       xStartControl            Щ               xEmergencyStop            Щ            	   xTraining            Щ               iTargetAngle           Щ                  iCurrentAngle           Щ 
              xTrainingActive            Щ               xStepperError            Щ               typStepperErrorCode               MC3_ERROR_CODES   Щ                        +v╟Z  @                   STRINGTOBUFFER           iStringLength            Ъ               i            Ъ               k            Ъ 	           
   iSizeAscii            Ъ 
              sChar    Q       Q     Ъ                  pBuffer    	  └                           Ъ               sValue    Q       Q    Ъ                  StringToBuffer                                     +v╟Z  @                   
 э   Ъ   e   Щ   Ц   В   ( їU     K   V    K   V    K   V    K   4V                AV        +     ║╗localhost   8534  └853Ш┘ @┘ Nи
tЖN
t╧C      3                     ┘  ┌ ╔п  Ё|       ╝|@            А    ╔п  1]E l┘ ─ф hD|┘ ╧Сф     CЬу ░А═          ╔п  1]E 4       ╔п  1]E ░┘ ─ф hD└┘ ЁШу 	   ░А▄┘ ╢Шу                  РАЁо             A▒ЁСБ·╙мH ZJ▓            Tcp/Ip (Level 2 Route)  autoCar 3S Tcp/Ip Level 2 Router Driver    9   щ  Address IP address or hostname 
   192.168.1.110    ш  Port     Ч	   №  TargetId         7   d   Motorola byteorder                No    Yes                A▒ЁСБ·╙мH ZJ▓            Tcp/Ip (Level 2 Route)  autoCar 3S Tcp/Ip Level 2 Router Driver    9   щ  Address IP address or hostname 
   192.168.1.110    ш  Port     Ч	   №  TargetId         7   d   Motorola byteorder                No    Yes 
      A▒ЁСБ·╙мH ZJ▓            Tcp/Ip (Level 2 Route)  autoCar_Timo 3S Tcp/Ip Level 2 Router Driver    8   щ  Address IP address or hostname 
   192.168.1.17    ш  Port     Ч	   №  TargetId         7   d   Motorola byteorder                No    Yes   K         @   +v╟Z╨Т     , /e^▄                     CoDeSys 1-2.2   р     ════════                     ░.  W       ы      
   Є         є         ў          °                    "          $                                                   '          (          ▒          │          ╡          ╣          ║         ╢          ╧          ╨          ╤         ╝          ╛          └          ┬          ─         ╞      А   ╩       P  ╚          ╠         ╬       А  ╥                    ~          А          С          Т          У          Ф          Х          Ц          Ч          Ш          Щ          Б          В          Г          Д          Е          Ж          З       @  И       @  К       @  Л       @  М       @  П       @  в         а         и          Ю       А  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         т          ф         ц      
   ш         ъ         ь         ю         ё         я          Ё          Є         є          Ї          ї          ў      (                                                                        "         !          #          $         Ы          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          д          е          l          o          p          q          r          s         u          ▐          v         ж          з          |         ~         А         x          z      (   й          л         %         н          о          п         @         ▌          ф          ╪         &          Ё          	                   ц          ч          ш         щ          ъ         к          ▓          ┤          м          н          п          ░          ╖          ╕          ╛          ь          э                            I         J         K          	          L         M          Щ                             ▐          P         Q          S          )          	          	          Б           	          +	       @  ,	       @  -	          Z	          ════            ╚   Є         є         ў          °                    "          $                                                   '          (          ▒          │          ╡          ╣          ║         ╢          ╧          ╨          ╤         ╝          ╛          └          ┬          ─         ╞      А   ╩       P  ╚          ╠         ╬       А  ╥          Ф         Х          Ц          Ч          Ш          Щ         Ж          З          И          К       А  Л       А  М       А  П       А  в         и          a          t          y          z          b         c         X          d         e         _          Q          \         R          K          U         X         Z         т          ф         ц      
   ш         ъ         ь         ю         ё         я          Ё          Є         є          Ї          ї          ў      (                                                                        "         !          #          $         Ы          ^          f          g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          д         е          l          o          p          q          r          s         u          ▐          v         ж          w          x          з          |         ~         А         x          z      (   й          л         %         н          о          п         @         ▄          ▌          р      ╨  с      ╨  у         ф          ╪         &          Ё          	                   ц          ч          ш         щ          ъ         к          ▓          ┤          м          н          п          ░          ╖          ╕          ╛          ы          ь          э          ■                                                            I         J         K          	          L         M          Щ                             ▐          P         Q          S          )          	          	          Б           	          +	       @  ,	       @  -	          Z	          ════                                        ║.  Є         є         ў          °                    "          $                                                   '          (          ▒          │          ╡          ╣          ║         ╢          ╧          ╨          ╤         ╝          ╛          └          ┬          ─         ╞      А   ╩       P  ╚          ╠         ╬       А  ╥          И         К       `  П      ЇЯ в         и          N         O         `         a          t          y          z          b          c          X          _         \         R          K          U         X         Z         т          ф         ц      
   ш         ъ         ь         ю         ё         я          Ё          Є         є          Ї          ї          ў      (   #         $         Ы          g          h         i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          д          o          p          q          r          s         u          ▐          v         ж          w          з          |         ~         А         x          z      (   й          л          %         н          о          п         @         ▌          р         с      X  ф          ╪         &         `Ё          	                   ц          ч          ш         щ          ъ         к          ▓          ┤          м          н          п          ░          ╖          ╕          ╛          ь          э          ■                                                  I         J         K          	          L         M          Щ                             ▐          P         Q          S          )          	          	          Б           	          +	       @  ,	       @  -	          Z	          ════            ░.  Є         є         ў          °                    "          $                                                   '          (          ▒          │          ╡          ╣          ║         ╢          ╧          ╨          ╤         ╝          ╛          └          ┬          ─         ╞      А   ╩       P  ╚          ╠         ╬       А  ╥          И         К       `  П      ЇЯ в         и          N         O         `         a          t          y          z          b          c          X          _         \         R          K          U         X         Z         т          ф         ц      
   ш         ъ         ь         ю         ё         я          Ё          Є         є          Ї          ї          ў      (   #         $          Ы          g          h         i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          д          o          p          q          r          s         u          ▐          v         ж          w          з          |         ~         А         x          z      (   й          л          %         н          о          п         @         ▌          р         с      X  ф          ╪         &         `Ё          	                   ц          ч          ш         щ          ъ         к          ▓          ┤          м          н          п          ░          ╖          ╕          ╛          ь          э          ■                                                  I         J         K          	          L         M          Щ                             ▐          P         Q          S          )          	          	          Б           	          +	       @  ,	       @  -	          Z	         ════                                                                                                                                                                                                                                                                                                                            ════∙     ════════                                                   з  	   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	                 
   Value                Variable       Min                Variable       Max                Variable          5  
   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          5  
   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          d        Member    	                    Index-Offset                            SubIndex-Offset                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          Я  	   	   Name                        Member    	                 
   Value                Member    
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          з  	   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	                 
   Value                Variable       Min                Variable       Max                Variable                         Є     ════════               В   _Dummy@    @   @@    @   @             дя@             дя@@   @     Аv@@   ; @+   ё     ════════                                  Аv@      4@   ░             Аv@      D@   ░                       └       @                           Аf@      4@     Аf@                Аv@     Аf@     @u@     Аf@        ў┴ы            Module.Root-1__not_found__    PLC Configuration     IB          % QB          % MB          %   o     Module.K_Bus1Module.Root   Parameter.KbusBusMode	201019000Module.K_Bus11  DINTParameter.KbusCycleTime	201019001Module.K_Bus100001000050010000DINTParameter.KbusThreadPriority	201019002Module.K_Bus00020DINT/Parameter.KbusSetOutputsToZeroOnApplicationStop	201019003Module.K_Bus11  BOOLK-Bus     IB          % QB          % MB          %    o     Module.PFC200MODBUS2Module.Root   Parameter.PlcStopBehaviour
2010330101Module.PFC200MODBUS11  BYTE Parameter.FiledbusErrorBehaviour
2010330102Module.PFC200MODBUS11  BYTEParameter.TcpOperation
2010330201Module.PFC200MODBUS11  BOOLParameter.TcpPort
2010330202Module.PFC200MODBUS502502165535UINTParameter.TcpTimeout
2010330203Module.PFC200MODBUS600600165535UDINTParameter.UdpOperation
2010330301Module.PFC200MODBUS11  BOOLParameter.UdpPort
2010330302Module.PFC200MODBUS502502165535UINTParameter.RtuOperation
2010330401Module.PFC200MODBUS00  BOOLParameter.NodeId
2010330402Module.PFC200MODBUS111247BYTEParameter.ResponseTimeout
2010330403Module.PFC200MODBUS500050002000
4294967295UDINTParameter.Interface
2010330404Module.PFC200MODBUS00  BYTEParameter.Baud
2010330405Module.PFC200MODBUS115200115200  UDINTParameter.StopBits
2010330406Module.PFC200MODBUS1112BYTEParameter.Parity
2010330407Module.PFC200MODBUS11  BYTEParameter.FlowCtrl
2010330408Module.PFC200MODBUS00  BYTEParameter.PhysInterface
2010330409Module.PFC200MODBUS00  BYTEModbus variables    IB          % QB          % MB          %    o     Module.MB_MASTER3Module.Root    Modbus-Master    IB          % QB          % MB          %    +v╟Z	,v╟Z     ════════           VAR_GLOBAL
END_VAR
                                                                                  "   , ^  Нw              main        
PLC_PRG();                   +v╟Z                   start   Called when program starts    k   FUNCTION systemevent: DWORD
VAR_INPUT
  dwEvent: DWORD;
  dwFilter: DWORD;
  dwOwner: DWORD;
END_VAR
    ░.     stop   Called when program stops    k   FUNCTION systemevent: DWORD
VAR_INPUT
  dwEvent: DWORD;
  dwFilter: DWORD;
  dwOwner: DWORD;
END_VAR
    ░.     before_reset   Called before reset takes place    k   FUNCTION systemevent: DWORD
VAR_INPUT
  dwEvent: DWORD;
  dwFilter: DWORD;
  dwOwner: DWORD;
END_VAR
    ░.     after_reset   Called after reset took place    k   FUNCTION systemevent: DWORD
VAR_INPUT
  dwEvent: DWORD;
  dwFilter: DWORD;
  dwOwner: DWORD;
END_VAR
    ░.     shutdown#   Called before shutdown is performed    k   FUNCTION systemevent: DWORD
VAR_INPUT
  dwEvent: DWORD;
  dwFilter: DWORD;
  dwOwner: DWORD;
END_VAR
    ░.     excpt_watchdog%   Software watchdog OF IEC-task expired    k   FUNCTION systemevent: DWORD
VAR_INPUT
  dwEvent: DWORD;
  dwFilter: DWORD;
  dwOwner: DWORD;
END_VAR
    ░.     excpt_access_violation   Access violation    k   FUNCTION systemevent: DWORD
VAR_INPUT
  dwEvent: DWORD;
  dwFilter: DWORD;
  dwOwner: DWORD;
END_VAR
    ░.     excpt_dividebyzero   Division BY zero    k   FUNCTION systemevent: DWORD
VAR_INPUT
  dwEvent: DWORD;
  dwFilter: DWORD;
  dwOwner: DWORD;
END_VAR
    ░.     after_reading_inputs   Called after reading of inputs    k   FUNCTION systemevent: DWORD
VAR_INPUT
  dwEvent: DWORD;
  dwFilter: DWORD;
  dwOwner: DWORD;
END_VAR
    ░.     before_writing_outputs    Called before writing of outputs    k   FUNCTION systemevent: DWORD
VAR_INPUT
  dwEvent: DWORD;
  dwFilter: DWORD;
  dwOwner: DWORD;
END_VAR
    ░.  
   debug_loop   Debug loop at breakpoint    k   FUNCTION systemevent: DWORD
VAR_INPUT
  dwEvent: DWORD;
  dwFilter: DWORD;
  dwOwner: DWORD;
END_VAR
    ░.     online_change+   Is called after CodeInit() at Online-Change    _   FUNCTION systemevent: DWORD VAR_INPUT dwEvent: DWORD; dwFilter: DWORD; dwOwner: DWORD; END_VAR  !   ░.     before_download$   Is called before the Download starts    _   FUNCTION systemevent: DWORD VAR_INPUT dwEvent: DWORD; dwFilter: DWORD; dwOwner: DWORD; END_VAR  "   ░.  $√     ════════               ════════           Standard "┘TZ	"┘TZ      ════════                         	+v╟Z     ════════           VAR_CONFIG
END_VAR
                                                                                   '              , /  ^w            Globale_Variablen +v╟Z	+v╟Z     ════════          VAR_GLOBAL
	ascii:ARRAY[0..255] OF STRING(1):=33(' '), '!', '"','#','$$' ,'%' ,'&' ,'┤','(' ,')' ,'*' ,'+' ,',' ,'-' ,'.' ,'/' ,'0' ,'1' ,'2' ,'3' ,'4' ,'5' ,'6' ,'7' ,'8' ,'9' ,':' ,';' ,'<' ,'=' ,'>' ,'?' , '@','A' ,'B' ,'C' ,'D' ,'E' ,'F' ,'G' ,'H' ,'I' ,'J' ,'K' ,'L' ,'M' ,'N' ,'O' ,'P' ,'Q' ,'R' ,'S' ,'T' ,'U' ,'V' ,'W' ,'X' ,'Y' ,'Z' ,'[','\' ,']' ,'^' ,'_' ,'`' ,'a' ,'b' ,'c' ,'d' ,'e' ,'f' ,'g' ,'h' ,'i' ,'j' ,'k' ,'l' ,'m' ,'n' ,'o' ,'p' ,'q' ,'r' ,'s' ,'t' ,'u' ,'v' ,'w' ,'x' ,'y' ,'z' ,'{' ,'|' ,'}' ,'~' ;
END_VAR
                                                                                               '           	     ════════           Variablen_Konfiguration +v╟Z	+v╟Z	     ════════           VAR_CONFIG
END_VAR
                                                                                                 ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssЇ   Р                               ,              ╠3                 
    @ А          @      DEFAULT             System      ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssЇ   Р                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   Ч   ,   >/▌        
   enComState +v╟Z	+v╟Z      ════════        e   TYPE enComState :
(
	Connect          	:= 0,
	ReceiveData	:= 1,
	SendData	    	:= 2
);
END_TYPE             Х   , ^w Ню            enProgramState +v╟Z	+v╟Z      ════════        Й   TYPE enProgramState :
(
	undefined		:= 0,
	standby		:= 1,
	homing          	:= 2,
	autonomous   := 3,
	training		:= 4
);
END_TYPE              Ц   , /w ^ю            BufferToInt +v╟Z	+v╟Z      ════════        з   FUNCTION BufferToInt : INT
VAR_INPUT
	pBuffer		: POINTER TO ARRAY[0..MAX_RECEIVE_UDP_SERVER] OF BYTE;
	iLen		: INT;
END_VAR
VAR
	i: INT;
	inte: STRING;
END_VARs   FOR i := 0 TO iLen-1 DO
	inte := CONCAT(inte, ascii[pBuffer^[i]]);
END_FOR

BufferToInt := STRING_TO_INT(inte);               В   ,     /Я            PLC_PRG +v╟Z	+v╟Z      ════════          		PROGRAM PLC_PRG
VAR
	Socket_1				: SocketCommunication;
	xConnectToServer		: BOOL := TRUE;
	xConnected			: BOOL;
	iAngle					: INT;
	diErrorCode			: DINT;


	Stepper_1: StepperControl;
	(* input *)
	xStartControl			: BOOL := TRUE;
	xTraining 	AT %IX6.0	: BOOL;
	xEmergencyStop AT %IX6.1 : BOOL;
	(* output *)
	iCurrentAngle	 		: INT;
	xTrainingActive		: BOOL;
	xStepperError			: BOOL;
	typStepperErrorCode	: MC3_ERROR_CODES;

	(* testvariables*)
	iAngle2: INT;
	xTrainingActive2: BOOL;
	iCurrentAngle2: INT;
END_VAR '   IP has to be changed to servers ip/port Socket_1xConnectToServeriCurrentAngleAxTrainingActiveSocketCommunication  iAngle diErrorCode      
xConnected     	Stepper_1xStartControlAxEmergencyStopNOT	xTrainingAiAngle2StepperControl  xTrainingActive xStepperError typStepperErrorCode      iCurrentAngled                  e   ,   Я />           SocketCommunication ╗Є╟Z	╗Є╟Z      ════════        г  FUNCTION_BLOCK SocketCommunication
VAR_INPUT
	xConnectToServer			: BOOL;
	iCurrentAngle				: INT;
	xSendData				: BOOL;
END_VAR
VAR_OUTPUT
	xConnected				: BOOL;
	iSteeringAngle			: INT;
	diErrorCode				: DINT;
END_VAR
VAR
	Client1						: UDP_Client;
	xOpenSock				: BOOL;
	sIP_Address				: STRING := '192.168.1.5';		(* CHANGE - IP address of server*)
	wPort						: WORD := 8000;					(* CHANGE - Port-Nr.	*)
	diBytesToSend			: DINT;
	arSendBuffer				: ARRAY[0..MAX_RECEIVE_UDP_SERVER] OF BYTE;
	arReceiveBuffer			: ARRAY[0..MAX_RECEIVE_UDP_CLIENT] OF BYTE;
	xStartSend					: BOOL;
	diReceiveCount			: DINT := 0;
	ptSendBuffer				: POINTER TO ARRAY[0..MAX_RECEIVE_UDP_SERVER] OF BYTE;
	comState					: enComState := Connect;
	iBufferLen					: INT;
	iPreviousAngle			: INT := 0;
	sConnectMessage		: STRING := 'PFC200 connected';	 (* Message which is sent to UPD-Server if connection is established *)
END_VARж  



ptSendBuffer := ADR(arSendBuffer);

(* versuchen: ptSendBuffer := ADR(diSendData) *)

Client1(
	xOpenSocket:= xOpenSock,
	sIP_Address:= sIP_Address,
	wPort:= wPort,
	diBytesToSend:= diBytesToSend,
	ptSendBuffer:= ptSendBuffer,
	xStartSend:= xStartSend,
	aReceiveBuffer:= arReceiveBuffer,
	diReceiveCount:= diReceiveCount,
	xSocket_Is_Open=> xConnected,
	diErrorCode=> diErrorCode);

iSteeringAngle := BufferToInt(pBuffer := ADR(arReceiveBuffer), iLen := DINT_TO_INT(diReceiveCount));

IF xConnectToServer
THEN

	CASE comState OF

	Connect:
		xOpenSock := TRUE;
		iBufferLen := StringToBuffer(pBuffer := ptSendBuffer, sValue := sConnectMessage);
		diBytesToSend := iBufferLen;
		xStartSend := TRUE;
		IF xSendData
		THEN
			comState := SendData;
		ELSE
			comState := ReceiveData;
		END_IF

	ReceiveData:
		IF xSendData
		THEN
			comState := SendData;
		END_IF

	SendData:
		IF iCurrentAngle <> iPreviousAngle
		THEN
			iBufferLen := StringToBuffer(pBuffer := ptSendBuffer, sValue := INT_TO_STRING(iCurrentAngle));
			diBytesToSend := iBufferLen;
			xStartSend := TRUE;

			iPreviousAngle := iCurrentAngle;
		END_IF
	END_CASE
END_IF               Щ   , /ю ^e           StepperControl +v╟Z	+v╟Z      ════════        ┼	  FUNCTION_BLOCK StepperControl
VAR_INPUT
	xStartControl			: BOOL;
	xEmergencyStop		: BOOL;
	xTraining				: BOOL;
	iTargetAngle			: INT;

END_VAR
VAR_OUTPUT
	iCurrentAngle			: INT;
	xTrainingActive		: BOOL;
	xStepperError			: BOOL;
	typStepperErrorCode	: MC3_ERROR_CODES;
END_VAR
VAR
	StepperCommunication_673           	: MC3_StepperCommunication;
	stepperInputArray	AT %IB0         		: ARRAY [0..11] OF BYTE;
	stepperOutputArray AT %QB0   	       : ARRAY [0..11] OF BYTE;

	SetPosition_673		: MC3_SetPosition;
	xSetPosition			: BOOL := FALSE;
	diZeroPosition		: DINT := 0;
	xDoneSetPos			: BOOL;
	xBusySetPos			: BOOL;
	xErrorSetPos			: BOOL;

	StepperControlBasic	: MC3_StepperControlBasic;
	xEnableControl		: BOOL;
	typJobType			: MC3_Mode := MC3_TorqueControl_Edge;
	wModule_673			: WORD := 673;
	xStopStepper			: BOOL;
	iSpeedControl			: INT;
	wAcceleration			: WORD := 1000;
	diTargetPosition		: DINT;
	xStartStepper			: BOOL;
	xErrorReset			: BOOL;
	xDoneControl			: BOOL;
	xBusyControl			: BOOL;
	diCurrentPosition		: DINT;
	iCurrentSpeed		: INT;
	xMailboxActive			: BOOL;
	xErrorControl			: BOOL;
	xWarningControl		: BOOL;
	wStatusControl		: WORD;
	typErrorCodesControl 	: MC3_ERROR_CODES;

	MoveTorque2			: MC3_MoveTorque2;
	xEnableTorque		: BOOL;
	iSpeedTorque			: INT;
	wCurrentTorqueProcent	: WORD;
	xDoneTorque			: BOOL;
	xBusyTorque			: BOOL;

	programState			: enProgramState := undefined;
	rDiaGearMotor		: REAL := 10.0;			(* DO NOT CHANGE *)
	rDiaGearSteering		: REAL := 10.0;			(* DO NOT CHANGE *)
	rGearRatio			: REAL := 4;				(* DO NOT CHANGE *)
	rMotorstepsPerTurnWithRatio: REAL;
	xHomingDone			: BOOL;
	iSpeedNominal		: BOOL;
	iSteeringAngle		: INT;
	iDiffAngle				: INT;
	rDecelerarionFac		: REAL;
END_VAR

VAR CONSTANT
	iDEGREE_CIRCLE				: INT := 360;		(* DO NOT CHANGE *)
	iMOTOR_STEPS_PER_TURN	: INT := 200;		(* DO NOT CHANGE *)
	rFAC_MICROSTEP				: REAL := 64.0;	(* DO NOT CHANGE *)
	iSPEED_STOP					: INT := 0;			(* DO NOT CHANGE *)
	wCURRENT_PERCENT_TRAIN 	: WORD := 0;		(* DO NOT CHANGE - for training mode *)
	iSPEED_RUN						: INT := 10000;		(* 0...25000 *)
	wCURRENT_PERCENT_RUN 	: WORD := 80;		(* for autonomous mode - if torque to small to turn steering wheel, change value to max 150 *)
	rDECELERATION_ANGLE		: REAL := 10.0;	(* DO NOT CHANGE - slow down turningspeed to reach targetposition exactly *)
	iMAX_STEERING_ANGLE		: INT := 200;		(* max steering angle of steering wheel *)
END_VAR╛  
(*------> steppercontroller part <-----------------------------------------------------------------*)

(* inputArray --> statusbyte IB0 ; outputArray --> controlbyte QB0  *)
StepperCommunication_673(
	aMoveIn:= stepperInputArray,
	aMoveOut=> stepperOutputArray);


(* set current position to "0" *)
SetPosition_673(
	xExecute:= xSetPosition,
	diPosition:= diZeroPosition,
	Stepper:= StepperCommunication_673,
	xDone => xDoneSetPos,
	xBusy => xBusySetPos,
	xError => xErrorSetPos);


StepperControlBasic(
	xEnable:= xEnableControl,
	JobType:= typJobType,
	wModule:= wModule_673,
	xDirPos:= TRUE,
	xStop:= xStopStepper,
(*	iSpeed:= iSpeedControl,*)
	wAcceleration:= wAcceleration,
(*	diPosition:= diTargetPosition,*)
	xStart:= xStartStepper,
	xErrorReset:= xErrorReset,
	Stepper:= StepperCommunication_673,
	xDone=> xDoneControl,
	xBusy=> xBusyControl,
	diActualPosition=> diCurrentPosition,
	iActualSpeed=> iCurrentSpeed,
	xMailboxActive=> xMailboxActive,
	xError=> xErrorControl,
	xWarning=> xWarningControl,
	wStatus=> wStatusControl,
	typErrorCodes=> typErrorCodesControl);

	typStepperErrorCode := typErrorCodesControl;

MoveTorque2(
	xEnable:= xEnableTorque,
	iSpeed:= iSpeedTorque,
	wCurrent:= wCurrentTorqueProcent,
	Stepper:= StepperCommunication_673,
	xDone=> xDoneTorque,
	xBusy=> xBusyTorque);



(*-------> logic part<---------------------------------------------------------------------------------------*)
IF xStartControl
THEN
	rMotorstepsPerTurnWithRatio := (iMOTOR_STEPS_PER_TURN * rFAC_MICROSTEP) * (rDiaGearSteering / rDiaGearMotor) * rGearRatio;
	iCurrentAngle :=  REAL_TO_INT(diCurrentPosition * (iDEGREE_CIRCLE / rMotorstepsPerTurnWithRatio));

	(* limit targetangle *)
	IF iTargetAngle > iMAX_STEERING_ANGLE THEN
		iSteeringAngle := iMAX_STEERING_ANGLE;
	ELSE
		iSteeringAngle := iTargetAngle;
	END_IF


	CASE programState OF

		undefined:
			xEnableControl := TRUE;

			IF xErrorControl AND NOT xEmergencyStop THEN
				xErrorReset := TRUE;
			ELSIF NOT xErrorControl THEN
				xErrorReset := FALSE;
				programState := standby;
			END_IF


		standby:
			IF NOT xHomingDone THEN
				programState := homing;
			ELSE
				IF xDoneSetPos THEN
					xSetPosition := FALSE;
					typJobType :=  MC3_TorqueControl_Edge;
					xEnableTorque := TRUE;

					IF NOT xTraining THEN
						programState := autonomous;
					ELSE
						programState := training;
					END_IF
				ELSE
					xHomingDone := FALSE;
				END_IF
			END_IF


		homing:
			(* initialize stepper *)
			typJobType := MC3_Homing;
	             xStartStepper := TRUE;
	             IF xDoneControl THEN
				xSetPosition := TRUE;
	                    xHomingDone := TRUE;
				xStartStepper := FALSE;
				programState := standby;
	             END_IF

	
		autonomous:
			IF xErrorControl THEN
				programState := undefined;
			END_IF

			IF iCurrentAngle < iSteeringAngle THEN
				(*turn cw *)
				wCurrentTorqueProcent := wCURRENT_PERCENT_RUN;
				iDiffAngle := iSteeringAngle - iCurrentAngle;

				IF iDiffAngle < rDECELERATION_ANGLE THEN
					rDecelerarionFac := (iDiffAngle / rDECELERATION_ANGLE);
					iSpeedTorque := REAL_TO_INT(iSPEED_RUN * rDecelerarionFac);
				ELSE
					iSpeedTorque := iSPEED_RUN;
				END_IF

			ELSIF iCurrentAngle > iSteeringAngle THEN
				(* turn ccw *)
				wCurrentTorqueProcent := wCURRENT_PERCENT_RUN;
				iDiffAngle := iCurrentAngle - iSteeringAngle;

				IF iDiffAngle < rDECELERATION_ANGLE THEN
					rDecelerarionFac := (iDiffAngle / rDECELERATION_ANGLE);
					iSpeedTorque := REAL_TO_INT(iSPEED_RUN * (-1) * rDecelerarionFac);
				ELSE
					iSpeedTorque := iSPEED_RUN * (-1);
				END_IF

			ELSE
				(* hold position *)
				iSpeedTorque := iSPEED_STOP;
			END_IF

			(* check current to recognize correction by driver *)
			IF xTraining THEN
				programState := Training;
			END_IF


		training:
			IF xErrorControl THEN
				programState := undefined;
			END_IF

			(* torque is 0 *)
			wCurrentTorqueProcent := wCURRENT_PERCENT_TRAIN;
			iSpeedTorque := iSPEED_RUN;
			xTrainingActive := TRUE;

			IF NOT xTraining THEN
				xTrainingActive := FALSE;
				programState := autonomous;
			END_IF

	END_CASE
END_IF               Ъ   , ^ю Нe           StringToBuffer +v╟Z	+v╟Z      ════════        у   FUNCTION StringToBuffer : INT
VAR_INPUT
	pBuffer		: POINTER TO ARRAY[0..MAX_RECEIVE_UDP_SERVER] OF BYTE;
	sValue		: STRING;
END_VAR
VAR
	iStringLength: INT;
	i: INT;
	k: INT;
	iSizeAscii: INT;
	sChar: STRING;
END_VARк  (* clear buffer *)
i := 0;
WHILE pBuffer^[i] <> 00
DO
	pBuffer^[i] := 00;
	i := i + 1;
END_WHILE

(* write bytes in buffer *)
iStringLength := LEN(sValue);
iSizeAscii :=  SIZEOF(ascii);
FOR i := 0 TO iStringLength
DO
	sChar := MID(sValue, 1, i+1);
	FOR k := 0 TO iSizeAscii
	DO
		IF  sChar = ascii[k]
		THEN
			pBuffer^[i] := INT_TO_BYTE(k);
		END_IF
	END_FOR
END_FOR

StringToBuffer := iStringLength;
                 ¤   , ^eН▄        	    Util.lib 30.1.13 13:05:12 @h■Q(   SysLibSockets.lib 22.5.14 16:16:32 @└~S@   WagoLibEthernet-01\WagoLibEthernet_01.lib 11.1.18 10:30:18 @Ъ WZ0   Stepper-03\Stepper_03.lib 10.1.18 08:58:40 @а╣UZ"   SerComm.lib 30.1.13 13:05:12 @h■QA   Serial-Interface-01\Serial_Interface_01.lib 9.1.18 16:59:22 @╩╪TZ#   Standard.lib 20.5.14 08:13:26 @ЖЄzS!   Iecsfc.lib 30.1.13 13:05:12 @h■Q)   SYSLIBCALLBACK.LIB 30.1.13 13:05:12 @h■Q   5   BCD_TO_INT @      GEN_MODE       POINT                  BLINK @          CHARCURVE @          DERIVATIVE @          EXTRACT @       	   GEN @          HYSTERESIS @          INT_TO_BCD @          INTEGRAL @          LIMITALARM @       
   PACK @          PD @       	   PID @          PUTBIT @          RAMP_INT @          RAMP_REAL @          STATISTICS_INT @          STATISTICS_REAL @          UNPACK @          VARIANCE @          Version_Util @             Globale_Variablen @           и   SysSockAccept @      INADDR       SOCK_IP_MREQ       SOCKADDRESS       SOCKET_FD_SET       SOCKET_KEEPALIVE       SOCKET_LINGER       SOCKET_TIMEVAL                   SysSockBind @           SysSockClose @           SysSockConnect @           SysSockCreate @           SysSockGetHostByName @           SysSockGetHostName @           SysSockGetLastError @          SysSockGetLastErrorSync @          SysSockGetOption @           SysSockHtonl @           SysSockHtons @           SysSockInetAddr @           SysSockInetNtoa @           SysSockIoctl @           SysSockListen @           SysSockNtohl @           SysSockNtohs @           SysSockRecv @           SysSockRecvFrom @           SysSockSelect @           SysSockSend @           SysSockSendTo @           SysSockSetIPAddress @           SysSockSetOption @           SysSockShutdown @              Globale_Variablen @           1   IP_FindBlock @      typEthKeepAlive                  IP_FindByte @          IP_MEMCPY @          IP_Version @          TCP_Client @          TCP_Client2 @          TCP_Client3 @          TCP_Server @          TCP_Server3 @          UDP_Client @          UDP_Client_2 @          UDP_Server @          UDP_Server2 @          UDP_SndRcv @             Globale_Variablen @          ╜  MC3_ConfigurationTable @      MC3_ERROR_CODES       MC3_Mode       MC3_StepperVisu       MC3_typConfiguration_670       MC3_typConfiguration_671       MC3_typConfiguration_672       MC3_typConfiguration_673       MC3_typData          MC3_MOVE_STEPPER       MC3_MOVE_STEPPER_673       MC3_STEPPER_CONFIGURATION_670       MC3_STEPPER_CONFIGURATION_671       MC3_STEPPER_CONFIGURATION_672       MC3_STEPPER_CONFIGURATION_673              MC3_ConfigurationValue @          MC3_DriveProgram @          MC3_DriveProgramTable @          MC3_GetVariable @          MC3_Home @          MC3_Jog_670 @          MC3_Jog_672 @          MC3_ModeSelect @          MC3_MoveAbsolute @          MC3_MoveRelative @          MC3_MoveTorque @          MC3_MoveTorque2 @          MC3_MoveVelocity_670 @          MC3_MoveVelocity_672 @          MC3_PositionTable @          MC3_Power @          MC3_PWM_Mode_670 @          MC3_PWM_Mode_670.PWM_Mode @          MC3_ReadActualPosition @          MC3_ReadError @          MC3_Reset @          MC3_RestoreDefault @          MC3_SetFilterVariable @          MC3_SetPosition @          MC3_StepperCommunication @          MC3_StepperControlBasic @          MC3_Stop @          MC3_Version @             Global_Variables @          Н   SERCOMM @   
   COM_ACTION       COM_BAUDRATE       COM_BYTESIZE       COM_FLOW_CONTROL    
   COM_PARITY       COM_STOPBITS                   SERCOMM_VERSION @              Globale_Variablen @           I   SERIAL_COM_OBJECT @      I_SERIAL_COM       typRING_BUFFER                  SERIAL_INTERFACE @       !   SERIAL_INTERFACE.CLOSE_PORT @           SERIAL_INTERFACE.OPEN_PORT @       #   SERIAL_INTERFACE.RECEIVE_DATA @           SERIAL_INTERFACE.SEND_DATA @          Version_SerialInterface @             Globale_InterfaceConstant @           !   ASCIIBYTE_TO_STRING @                  CONCAT @        	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REAL_STATE @          REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @           STANDARD_VERSION @          STRING_COMPARE @          STRING_TO_ASCIIBYTE @       	   TOF @        	   TON @           TP @              Global Variables 0 @           F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @           b   SysCallbackRegister @   	   RTS_EVENT       RTS_EVENT_FILTER       RTS_EVENT_SOURCE                   SysCallbackUnregister @              Globale_Variablen @           Version @                          ════════           2 є  є                             
             ·     ════════        °   ,     p`                   	   Bausteine                 BufferToInt  Ц                  PLC_PRG  В                   SocketCommunication  e                   StepperControl  Щ                   StringToBuffer  Ъ                  
   Datentypen             
   enComState  Ч                   enProgramState  Х                    Visualisierungen                    Globale Variablen                 Globale_Variablen                     Variablen_Konfiguration  	                                                ════════             #┘TZ░.             ░.      ║.                	   localhost            P      	   localhost            P      	   localhost            P     v╟Z ╒I╖