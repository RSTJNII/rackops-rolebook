node.default[:'rackspace-iptables'][:config][:chains][:INPUT] = {

  #BASTIONS
  :"-s 69.20.0.1/32 -j ACCEPT" => { :comment => "RS Bastions", :weight => 50 },
  :"-s 50.57.22.125/32 -j ACCEPT" => { :comment => "RS Bastions", :weight => 50 },
  :"-s 120.136.34.22/32 -j ACCEPT" => { :comment => "RS Bastions", :weight => 50 },
  :"-s 212.100.225.49/32 -j ACCEPT" => { :comment => "RS Bastions", :weight => 50 },
  :"-s 212.100.225.42/32 -j ACCEPT" => { :comment => "RS Bastions", :weight => 50 },
  :"-s 119.9.4.2/32 -j ACCEPT" => { :comment => "RS Bastions", :weight => 50 },

  #MAAS
  :"-s 50.56.142.128/26 -j ACCEPT" => { :comment => "RS Monitoring", :weight => 45 },
  :"-s 50.57.61.0/26 -j ACCEPT" => { :comment => "RS Monitoring", :weight => 45 },
  :"-s 78.136.44.0/26 -j ACCEPT" => { :comment => "RS Monitoring", :weight => 45 },
  :"-s 80.150.149.64/26 -j ACCEPT" => { :comment => "RS Monitoring", :weight => 45 },
  :"-s 69.20.52.192/26 -j ACCEPT" => { :comment => "RS Monitoring", :weight => 45 },

  #OFFICES
  :"-s 50.56.230.0/24 -j ACCEPT" => { :comment => "Austin Support", :weight => 40 },
  :"-s 50.56.228.0/24 -j ACCEPT" => { :comment => "San Antonio Support", :weight => 40 },

  #DEFAULT DROP
  :"-m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT" => { :comment => "allow established", :weight => 2 },
  :"-s 0.0.0.0/0 -j REJECT" => { :comment => :"default deny", :weight => 1 }
}