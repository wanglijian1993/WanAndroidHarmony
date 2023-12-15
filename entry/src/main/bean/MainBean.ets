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