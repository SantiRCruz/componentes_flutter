
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Avatar App Bar'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/fife/AAWUweVS0cXfPAmv0Zbl84vubgbXPUaCEmWMPOR6VfxNfNI0m2BSkqc51nYA5lANtoLjnhrISYeSmQzvxq07k-0zol_koYVJ7vl9JnTQR_GNxEt4b3zONvf4qi282rr32Fdve5A-eKhzfZ0k9u0WNh49IaFSlYIg_jSCmKTtMNYpVru1UcWpZQNvUk_gmrm00bs6S1uIysPV68N4wyzCMc02cG2TYNMAfszAmPV17pE7W_sQ-TInavIea9rDNZq2b99AvKg5WaykIDwZ277DD0VHy-iUrfln27ZozgrMDfbxslHnVFp61rPWBzbf_fjyNlmVDxQOYPtneieGWhsu3BCRI3I5tCP3q7uwifh-y6Etren7dTGAsn3P9wOhglgQgzJNMISV0EG6hJFMYkV0WTo3HrjNHHDWpmb_eQphm3lnrrNMYw_DD2n2x072IVeegUhbgloiiwNi1NoWe10ZsfO_y-xq3oZ8q4nDh3jGTem22Q0jcu0soRwWEX3GA6fQgLlgMELgUL8DmfHEXeH1GoAIMnES6ElOpXkVGvJ0XPpnN7iC3XFPSTMD8FFOmQRI-VpWqWbtfE3yfkGkPC9BuvBPw4pFnmK4ZKMsmQ7b1teaTgC7FHpq9trQ_ltmCP26pPxGoFJHH4RuwPyhBSEogg_8x9lmFeWnbiPUUy_yPnD5gDryEJB8ng2MmBr3tfofc2CHrMIgy37goJrB93Eaq3OB4v7R-nGLfoeP3EIX3WHYC9PSSs4=s83-c') ,
              radius: 25.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text('SR'),
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Text('Hello Avatar'),
        ),
      ),
    );
  }
}
