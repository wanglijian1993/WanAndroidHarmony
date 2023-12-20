export class NewsTypeBean {
  id: number = 0;
  name: string = '';
  selectIcon:Resource;
  nonSelectIcon:Resource;
}

export class Banners{
  desc:string='';
  id:number=0;
  imagePath:string='';
  isVisible:boolean;
  order:number;
  title:string;
  type:number;
  url:string;
}

export class ArticleInfo{
  curPage:number;
  datas:Array<Article>;
  offset:number;
  over:boolean;
  pageCount:number;
  size:number;
  total:number;
}
export class Article{

  adminAdd:boolean;
  apkLink:String;
  audit:number;
  author:string;
  canEdit:boolean;
  chapterId:number;
  chapterName:string;
  collect:boolean;
  courseId:number;
  desc:string;
  descMd:string;
  envelopePic:string;
  fresh:boolean;
  host:string;
  id:string;
  isAdminAdd:boolean;
  link:string;
  niceDate:string;
  niceShareDate:string;
  origin:string;
  prefix:string;
  projectLink:string;
  publishTime:number;
  realSuperChapterId:number;
  selfVisible:number;
  shareDate:string;
  shareUser:string;
  superChapterId:number;
  superChapterName:string;
  tags:Array<string>;
  title:string;
  type:number;
  userId:number;
  visible:number;
  zan:number;

}