class axi_driver extends uvm_driver #(axi_transaction);

   virtual axi_if vif;

   task run_phase(uvm_phase phase);

      forever begin

         seq_item_port.get_next_item(req);

         drive_transfer(req);

         seq_item_port.item_done();

      end

   endtask

endclass
