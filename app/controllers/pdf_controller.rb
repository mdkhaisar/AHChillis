class PdfController < ApplicationController
  def generate
    
    @id = params[:quotation]
    @customer = Customer.find(@id)
    
    filename = @customer.name + ".pdf"
    puts "Quotation: #{@customer}"
    puts params[:customer]
    html = render_to_string(template: 'pdf/generate')
    pdf = WickedPdf.new.pdf_from_string(html)

    send_data pdf, filename: filename, type: 'application/pdf',
                  disposition: 'attachment'
    headers['Content-Type'] = 'application/pdf'
    headers['Content-Disposition'] = "attachment; filename=\"#{filename}\""
  end
end
