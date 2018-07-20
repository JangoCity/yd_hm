package util

import (
	"crypto/md5"
	"math/rand"
	"fmt"
	"crypto/aes"
	"os"
	"crypto/cipher"
	"encoding/hex"
	"net"
)

var commonIV = []byte{0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f}
//aes加密,返回16进制数据
func AesEn(s string) string{
	//需要去加密的字符串
	plaintext := []byte(s)
	//如果传入加密串的话，plaint就是传入的字符串
	if len(os.Args) > 1 {
		plaintext = []byte(os.Args[1])
	}

	//aes的加密字符串,经测试,任意32位字符
	key_text := "astaxie12798akljzmknm.ahkjkljl;k"
	if len(os.Args) > 2 {
		key_text = os.Args[2]
	}

	fmt.Println(len(key_text))

	// 创建加密算法aes
	c, err := aes.NewCipher([]byte(key_text))
	if err != nil {
		fmt.Printf("Error: NewCipher(%d bytes) = %s", len(key_text), err)
		os.Exit(-1)
	}

	//加密字符串
	cfb := cipher.NewCFBEncrypter(c, commonIV)
	ciphertext := make([]byte, len(plaintext))
	cfb.XORKeyStream(ciphertext, plaintext)
	fmt.Printf("%s=>%x\n", plaintext, ciphertext)
	return string(hex.EncodeToString(ciphertext))//16进制转换

	/*// 解密字符串
	cfbdec := cipher.NewCFBDecrypter(c, commonIV)
	plaintextCopy := make([]byte, len(plaintext))
	cfbdec.XORKeyStream(plaintextCopy, ciphertext)
	fmt.Printf("%x=>%s\n", ciphertext, plaintextCopy)*/
}

//MD5加密
func Md5(s string) string{
	data := []byte(s)
	tt := md5.Sum(data)
	 //hex.EncodeToString(tt)
	s = string(tt[:])
	return s
}
//8位数的加盐
func Salt() string{
	rnd := rand.New(rand.NewSource(8))//随机8位数
	rand := rnd.Int()
	s := Md5(string(rand))
	data := []byte(s)
	s = string(data[:8])
	return s
}

//返回本地一个ip(dock0,ipv4)
func GetIntranetIp() string{
	addrs, err := net.InterfaceAddrs()

	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	for _, address := range addrs {

		// 检查ip地址判断是否回环地址
		if ipnet, ok := address.(*net.IPNet); ok && !ipnet.IP.IsLoopback() {
			if ipnet.IP.To4() != nil {
				return ipnet.IP.String()
				//fmt.Println("ip:", ipnet.IP.String())
			}

		}
	}
	return ""
}
