#ifndef _ACU_H_
#define _ACU_H_

#define aAcuMaxLen				64							/* ACU最大数据长度. */

/*****************************************************************************************************/
/*
	Function	:
	Description	:
	Input		:
	Output		:
	Return		:
	Notes		:
*/
/*****************************************************************************************************/
u32 aes_enc(u8 *din, u32 inlen, u8 *dout, u8 *key_enc, u8 *key_dec);

/*****************************************************************************************************/
/*
	Function	:
	Description	:
	Input		:
	Output		:
	Return		:
	Notes		:
*/
/*****************************************************************************************************/
u32 aes_dec(u8 *din, u32 inlen, u8 *dout, u8 *key_dec, u8 *key_enc);

#endif
