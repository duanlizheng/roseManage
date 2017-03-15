<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="public/header.jsp" %>
<%@ include file="public/aside.jsp" %>

<div id="container" class="container">
  <p class="path">
    <i class="fa fa-angle-double-left fa-lg"></i>
    <span>花容月貌 管理中心</span>
  </p>
  <div class="main">
    <div class="main-box">
      <div class="box-title">版块说明</div>
      <div class="description">
        <p>
        你可以在本版块添加新的月季品种，请填写具体的月季性状，还可以上传月季照片。
        </p>
      </div> <!-- description -->
    </div> <!-- main-box -->

    <div class="main-box">
      <div class="box-title">添加月季
		<!-- <a class="add" href=""> <i class="fa fa-plus"></i> &nbsp;增加月季</a> -->
      </div>
      
      <table class="addRose list">
        <tr>
          <td>品种名</td>
          <td><input id="specie" name="specie" type="text"></td>
          <td>分类</td>
          <td>
          	<select id="classification" name="classification">
          		<option value="">蔷薇属原种</option>
          		<option value="">古老蔷薇/月季</option>
          		<option value="">现代月季</option>
          	</select>
          </td>
        </tr>

        <tr>
          <td>培育地</td>
          <td><input id="cultivate" type="text" name="cultivate"></td>
          <td>引种地</td>
          <td><input id="Introduction" type="text" name="Introduction"></td>
        </tr>

        <tr>
          <td>株型</td>
          <td>
          	<select id="type" name="type">
          		<option value="">灌木</option>
          		<option value="">藤本</option>
          		<option value="">微型</option>
          		<option value="">匍匐</option>
          	</select>
          </td>
          <td>生长势</td>
          <td>
          	<select id="growthpotential" name="growthpotential">
          		<option value="">强</option>
          		<option value="">中</option>
          		<option value="">弱</option>
          	</select>
          </td>
        </tr>

        <tr>
          <td>株高</td>
          <td><input id="height" type="text" name="height"></td>
          <td>株幅</td>
          <td><input id="wide" type="text" name="wide"></td>
        </tr>

        <tr>
          <td>茎干粗度</td>
          <td><input id="stemroughness" type="text" name="stemroughness"></td>
          <td>节间长</td>
          <td><input id="sectionlong" type="text" name="sectionlong"></td>
        </tr> 
			
		<tr>
		  <td>枝条曲直</td>
		  <td>
		  	<select id="isbranchestraight" name="isbranchestraight">
		  		<option value="">直</option>
		  		<option value="">曲</option>
		  	</select>
		  </td>
		  <td>分枝角度</td>
		  <td><input id="branchangle" type="text" name="branchangle"></td>
		</tr>	
		
		<tr>
		  <td>嫩枝颜色</td>
		  <td><input id="twigscolor" type="text" name="twigscolor"></td>
		  <td>有无刺</td>
		  <td>
		  	<select id="hasthorn" name="hasthorn">
		  		<option value="">有</option>
		  		<option value="">无</option>
		  	</select>
		  </td>
		</tr>

		<tr>
		  <td>刺形状</td>
		  <td>
		  	<select id="thornshape" name="thornshape">
		  		<option value="">平直刺</option>
		  		<option value="">斜直刺</option>
		  		<option value="">弯刺</option>
		  		<option value="">钩刺</option>
		  	</select>
		  </td>
		  <td>刺密度</td>
		  <td>
		  	<select id="thorndensity" name="thorndensity">
		  		<option value="">稠密</option>
		  		<option value="">中等</option>
		  		<option value="">稀疏</option>
		  	</select>
		  </td>
		</tr>

		<tr>
          <td>长刺数量</td>
          <td><input id="longthornnumber" type="text" name="longthornnumber"></td>
          <td>短刺数量</td>
          <td><input id="shortthornnumber" type="text" name="shortthornnumber"></td>
        </tr>

        <tr>
          <td>小叶数量</td>
          <td><input id="lobularnumber" type="text" name="lobularnumber"></td>
          <td>叶面积大小</td>
          <td><input id="leafarea" type="text" name="leafarea"></td>
        </tr>

        <tr>
          <td>顶端小叶长</td>
          <td><input id="topleafletslong" type="text" name="topleafletslong"></td>
          <td>顶端小叶宽</td>
          <td><input id="topleafletswide" type="text" name="topleafletswide"></td>
        </tr>

        <tr>
		  <td>小叶形态</td>
		  <td>
		  	<select id="leftletsform" name="leftletsform">
		  		<option value="">披针形</option>
		  		<option value="">卵形</option>
		  		<option value="">圆形</option>
		  	</select>
		  </td>
		  <td>叶片质地</td>
		  <td>
		  	<select id="leaftexture" name="leaftexture">
		  		<option value="">光滑</option>
		  		<option value="">皱缩</option>
		  	</select>
		  </td>
		</tr>

		<tr>
		  <td>叶片光泽</td>
		  <td>
		  	<select id="leaveluster" name="leaveluster">
		  		<option value="">无/很弱</option>
		  		<option value="">弱</option>
		  		<option value="">中等</option>
		  		<option value="">强</option>
		  		<option value="">很强</option>
		  	</select>
		  </td>
		  <td>新叶叶色</td>
		  <td>
		  	<select id="newleafcolor" name="newleafcolor">
		  		<option value="">绿色系</option>
		  		<option value="">红色系</option>
		  	</select>
		  </td>
		</tr>

		<tr>
		  <td>老叶颜色</td>
		  <td>
		  	<select id="oldleafcolor" name="oldleafcolor">
		  		<option value="">绿色系</option>
		  		<option value="">红色系</option>
		  </td>
		  <td>叶缘锯齿形状</td>
		  <td>
		  	<select id="serrat" name="serrat">
		  		<option value="">细锯齿</option>
		  		<option value="">粗锯齿</option>
		  		<option value="">复锯齿</option>
		  	</select>
		  </td>
		</tr>

		<tr>
		  <td>田间综合表现</td>
		  <td>
		  	<select id="fieldperformance" name="fieldperformance">
		  		<option value="">弱</option>
		  		<option value="">较弱</option>
		  		<option value="">中等</option>
		  		<option value="">良好</option>
		  		<option value="">优秀</option>
		  </td>
		  <td>耐热性</td>
		  <td>
		  	<select id="heatresistance" name="heatresistance">
		  		<option value="">很好</option>
		  		<option value="">较好</option>
		  		<option value="">中等</option>
		  		<option value="">较差</option>
		  		<option value="">差</option>
		  	</select>
		  </td>
		</tr>

		<tr>
          <td>耐寒性</td>
          <td>
		  	<select id="coldresistance" name="coldresistance">
		  		<option value="">很好</option>
		  		<option value="">较好</option>
		  		<option value="">中等</option>
		  		<option value="">较差</option>
		  		<option value="">差</option>
		  	</select>
		  </td>
          <td>白粉病抗性</td>
          <td><input id="powderymildew" type="text" name="powderymildew"></td>
        </tr>

        <tr>
          <td>黑斑病抗性</td>
          <td><input id="blackspot" type="text" name="blackspot"></td>
          <td>开花时间</td>
          <td>
		  	<select id="flowertime" name="flowertime">
		  		<option value="">一季</option>
		  		<option value="">两季</option>
		  		<option value="">多季</option>
		  	</select>
		  </td>
        </tr>

        <tr>
          <td>始花期</td>
          <td><input id="flowerstart" type="text" name="flowerstart"></td>
          <td>盛花期</td>
          <td><input id="flowerbloom" type="text" name="flowerbloom"></td>
        </tr>
		
		<tr>
          <td>末花期</td>
          <td><input id="flowerend" type="text" name="flowerend"></td>
          <td>花量</td>
          <td>
		  	<select id="floweramount" name="floweramount">
		  		<option value="">大</option>
		  		<option value="">中</option>
		  		<option value="">小</option>
		  	</select>
		  </td>
        </tr>

        <tr>
		  <td>花序</td>
		  <td>
		  	<select id="inflorescence" name="inflorescence">
		  		<option value="">单花序</option>
		  		<option value="">聚伞花序</option>
		  		<option value="">伞形</option>
		  		<option value="">圆锥花序</option>
		  </td>
		  <td>花色</td>
		  <td>
		  	<select id="flowercolor" name="flowercolor">
		  		<option value="">单色</option>
		  		<option value="">复色</option>
		  	</select>
		  </td>
		</tr>

		<tr>
          <td>花香</td>
          <td>
		  	<select id="floral" name="floral">
		  		<option value="">无</option>
		  		<option value="">淡</option>
		  		<option value="">浓</option>
		  	</select>
		  </td>
          <td>花径</td>
          <td><input id="flowerdiameter" type="text" name="flowerdiameter"></td>
        </tr>

        <tr>
          <td>单重瓣</td>
          <td><input id="singledoublepetal" type="text" name="singledoublepetal"></td>
          <td>花型</td>
          <td>
		  	<select id="flowerpattern" name="flowerpattern">
		  		<option value="">平展</option>
		  		<option value="">盘状</option>
		  		<option value="">杯状</option>
		  		<option value="">坛状</option>
		  		<option value="">牡丹型</option>
		  		<option value="">菊花型</option>
		  		<option value="">莲座型</option>
		  		<option value="">四分莲座型</option>
		  		<option value="">绒球型</option>
		  		<option value="">其他型</option>
		  	</select>
		  </td>
        </tr>

        <tr>
          <td>花心纽扣眼</td>
          <td>
		  	<select id="isbuttoneye" name="isbuttoneye">
		  		<option value="">是</option>
		  		<option value="">否</option>
		  	</select>
		  </td>
          <td>花心数目</td>
          <td><input id="flowerheartnumber" type="text" name="flowerheartnumber"></td>
        </tr>

        <tr>
		  <td>花瓣翻卷</td>
		  <td>
		  	<select id="flowerroll" name="flowerroll">
		  		<option value="">外翻</option>
		  		<option value="">平展</option>
		  		<option value="">内兜</option>
		  		<option value="">内折</option>
		  </td>
		  <td>花瓣形状</td>
		  <td>
		  	<select id="petalshape" name="petalshape">
		  		<option value="">圆瓣</option>
		  		<option value="">阔瓣</option>
		  		<option value="">长阔瓣</option>
		  		<option value="">尖瓣</option>
		  		<option value="">扇形瓣</option>
		  		<option value="">波形瓣</option>
		  		<option value="">齿瓣</option>
		  		<option value="">畸形瓣</option>
		  	</select>
		  </td>
		</tr>

		<tr>
		  <td>花瓣质地</td>
		  <td>
		  	<select id="petaltexturel" name="petaltexturel">
		  		<option value="">有绒光</option>
		  		<option value="">无绒光</option>
		  </td>
		  <td>花瓣硬度</td>
		  <td>
		  	<select id="petalshardness" name="petalshardness">
		  		<option value="">软</option>
		  		<option value="">中等</option>
		  		<option value="">硬</option>
		  	</select>
		  </td>
		</tr>

		<tr>
		  <td>结实性</td>
		  <td>
		  	<select id="firmness" name="firmness">
		  		<option value="">易结实</option>
		  		<option value="">可结实</option>
		  		<option value="">不易结实</option>
		  		<option value="">不结实</option>
		  </td>
		  <td>花粉量</td>
		  <td>
		  	<select id="pollenamount" name="pollenamount">
		  		<option value="">多</option>
		  		<option value="">较多</option>
		  		<option value="">少</option>
		  	</select>
		  </td>
		</tr>

		<tr>
		  <td>花粉活力</td>
		  <td colspan="3">
		  	<select id="pollenvitality" name="pollenvitality">
		  		<option value="">高</option>
		  		<option value="">一般</option>
		  		<option value="">低</option>
		  	</select>
		  </td>
		</tr>

		<tr>
		  <td>图片</td>
		  <td colspan="3">
		  	<input type="file">
		  </td>
		</tr>

		<tr>
		  <td class="valign-top" valign="top">备注</td>
		  <td colspan="3">
		  	<textarea name="remark" id="remark"></textarea>
		  </td>
		</tr>

		<tr>
		  <td></td>
		  <td colspan="3">
		  	<input class="btn" type="submit" value="提交">
		  </td>
		</tr>

      </table>
    </div> <!-- main-box -->

<%@ include file="public/footer.jsp" %>