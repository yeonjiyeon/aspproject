﻿using System;
using System.Data.Entity;
using System.Linq;

namespace DevStandardControl2
{
    public class FrmXml : DbContext
    {
        // 컨텍스트가 응용 프로그램의 구성 파일(App.config 또는 Web.config)의 'FrmXml' 연결 문자열을 
        // 사용하도록 구성되었습니다. 기본적으로 이 연결 문자열은 LocalDb 인스턴스의  
        // 'DevStandardControl2.FrmXml' 데이터베이스를 대상으로 합니다. 
        // 
        // 다른 데이터베이스 및/또는 데이터베이스 공급자를 대상으로 할 경우 응용 프로그램 구성 파일에서 'FrmXml' 
        // 연결 문자열을 수정하십시오.
        public FrmXml()
            : base("name=FrmXml.xsl")
        {
        }

        // 모델에 포함할 각 엔터티 형식에 대한 DbSet을 추가합니다. Code First 모델 구성 및 사용에 대한 
        // 자세한 내용은 http://go.microsoft.com/fwlink/?LinkId=390109를 참조하십시오.

        // public virtual DbSet<MyEntity> MyEntities { get; set; }
    }

    //public class MyEntity
    //{
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //}
}